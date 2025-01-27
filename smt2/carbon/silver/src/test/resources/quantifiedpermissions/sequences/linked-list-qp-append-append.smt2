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
(declare-sort T@Field_22563_53 0)
(declare-sort T@Field_22576_22577 0)
(declare-sort T@Field_28728_28733 0)
(declare-sort T@Seq_28731 0)
(declare-sort T@Field_29168_29169 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_35579_35584 0)
(declare-sort T@Field_28651_3244 0)
(declare-sort T@Field_13317_13407 0)
(declare-sort T@Field_28793_28795 0)
(declare-sort T@Seq_3107 0)
(declare-sort T@Field_13317_35584 0)
(declare-sort T@Field_13406_35501 0)
(declare-sort T@Field_13406_3244 0)
(declare-sort T@Field_13406_13311 0)
(declare-sort T@Field_13406_53 0)
(declare-sort T@Field_13406_28795 0)
(declare-datatypes ((T@PolymorphicMapType_22524 0)) (((PolymorphicMapType_22524 (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| (Array T@Ref T@Field_29168_29169 Real)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| (Array T@Ref T@Field_28728_28733 Real)) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| (Array T@Ref T@Field_28651_3244 Real)) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| (Array T@Ref T@Field_22576_22577 Real)) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| (Array T@Ref T@Field_13406_35501 Real)) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| (Array T@Ref T@Field_13406_3244 Real)) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| (Array T@Ref T@Field_13406_13311 Real)) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| (Array T@Ref T@Field_13406_53 Real)) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| (Array T@Ref T@Field_13406_28795 Real)) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| (Array T@Ref T@Field_35579_35584 Real)) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| (Array T@Ref T@Field_13317_13407 Real)) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| (Array T@Ref T@Field_22563_53 Real)) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| (Array T@Ref T@Field_28793_28795 Real)) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| (Array T@Ref T@Field_13317_35584 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_23052 0)) (((PolymorphicMapType_23052 (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (Array T@Ref T@Field_28728_28733 Bool)) (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (Array T@Ref T@Field_28651_3244 Bool)) (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (Array T@Ref T@Field_22576_22577 Bool)) (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (Array T@Ref T@Field_22563_53 Bool)) (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (Array T@Ref T@Field_28793_28795 Bool)) (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (Array T@Ref T@Field_13317_13407 Bool)) (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (Array T@Ref T@Field_13317_35584 Bool)) (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (Array T@Ref T@Field_13406_35501 Bool)) (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (Array T@Ref T@Field_13406_3244 Bool)) (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (Array T@Ref T@Field_13406_13311 Bool)) (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (Array T@Ref T@Field_13406_53 Bool)) (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (Array T@Ref T@Field_13406_28795 Bool)) (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (Array T@Ref T@Field_29168_29169 Bool)) (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (Array T@Ref T@Field_35579_35584 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_22503 0)) (((PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| (Array T@Ref T@Field_22563_53 Bool)) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| (Array T@Ref T@Field_22576_22577 T@Ref)) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| (Array T@Ref T@Field_28728_28733 T@Seq_28731)) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| (Array T@Ref T@Field_29168_29169 T@FrameType)) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| (Array T@Ref T@Field_35579_35584 T@PolymorphicMapType_23052)) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| (Array T@Ref T@Field_28651_3244 Int)) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| (Array T@Ref T@Field_13317_13407 T@FrameType)) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| (Array T@Ref T@Field_28793_28795 T@Seq_3107)) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| (Array T@Ref T@Field_13317_35584 T@PolymorphicMapType_23052)) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| (Array T@Ref T@Field_13406_35501 T@Seq_28731)) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| (Array T@Ref T@Field_13406_3244 Int)) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| (Array T@Ref T@Field_13406_13311 T@Ref)) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| (Array T@Ref T@Field_13406_53 Bool)) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| (Array T@Ref T@Field_13406_28795 T@Seq_3107)) ) ) ))
(declare-fun $allocated () T@Field_22563_53)
(declare-fun next () T@Field_22576_22577)
(declare-fun val () T@Field_28651_3244)
(declare-fun value_1 () T@Field_28651_3244)
(declare-fun nodes_1 () T@Field_28728_28733)
(declare-fun data () T@Field_28793_28795)
(declare-fun |Seq#Length_13318| (T@Seq_28731) Int)
(declare-fun |Seq#Drop_13318| (T@Seq_28731 Int) T@Seq_28731)
(declare-fun |Seq#Length_3107| (T@Seq_3107) Int)
(declare-fun |Seq#Drop_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun succHeap (T@PolymorphicMapType_22503 T@PolymorphicMapType_22503) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_22503 T@PolymorphicMapType_22503) Bool)
(declare-fun |List#condqp1| (T@PolymorphicMapType_22503 T@Ref) Int)
(declare-fun |sk_List#condqp1| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Index_13318| (T@Seq_28731 Int) T@Ref)
(declare-fun |List#condqp2| (T@PolymorphicMapType_22503 T@Ref) Int)
(declare-fun |sk_List#condqp2| (Int Int) Int)
(declare-fun state (T@PolymorphicMapType_22503 T@PolymorphicMapType_22524) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_22524) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_23052)
(declare-fun |itemAt'| (T@PolymorphicMapType_22503 T@Ref Int) Int)
(declare-fun dummyFunction_3496 (Int) Bool)
(declare-fun |itemAt#triggerStateless| (T@Ref Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3107| (T@Seq_3107 Int) Int)
(declare-fun |Seq#Empty_13318| () T@Seq_28731)
(declare-fun |Seq#Empty_3107| () T@Seq_3107)
(declare-fun List (T@Ref) T@Field_29168_29169)
(declare-fun IsPredicateField_13406_13407 (T@Field_29168_29169) Bool)
(declare-fun |length'| (T@PolymorphicMapType_22503 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_13406| (T@PolymorphicMapType_22503 T@Field_29168_29169) Bool)
(declare-fun |List#everUsed_13406| (T@Field_29168_29169) Bool)
(declare-fun |Seq#Update_13318| (T@Seq_28731 Int T@Ref) T@Seq_28731)
(declare-fun |Seq#Update_3107| (T@Seq_3107 Int Int) T@Seq_3107)
(declare-fun length_1 (T@PolymorphicMapType_22503 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Take_13318| (T@Seq_28731 Int) T@Seq_28731)
(declare-fun |Seq#Take_3107| (T@Seq_3107 Int) T@Seq_3107)
(declare-fun |Seq#Contains_3107| (T@Seq_3107 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3107)
(declare-fun |Seq#Contains_13318| (T@Seq_28731 T@Ref) Bool)
(declare-fun |Seq#Skolem_13318| (T@Seq_28731 T@Ref) Int)
(declare-fun |Seq#Skolem_3107| (T@Seq_3107 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_22503 T@PolymorphicMapType_22503 T@PolymorphicMapType_22524) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13406 (T@Field_29168_29169) T@Field_35579_35584)
(declare-fun HasDirectPerm_13406_13407 (T@PolymorphicMapType_22524 T@Ref T@Field_29168_29169) Bool)
(declare-fun IsPredicateField_13317_78755 (T@Field_13317_13407) Bool)
(declare-fun PredicateMaskField_13317 (T@Field_13317_13407) T@Field_13317_35584)
(declare-fun HasDirectPerm_13317_13407 (T@PolymorphicMapType_22524 T@Ref T@Field_13317_13407) Bool)
(declare-fun IsWandField_13406_83226 (T@Field_29168_29169) Bool)
(declare-fun WandMaskField_13406 (T@Field_29168_29169) T@Field_35579_35584)
(declare-fun IsWandField_13317_82869 (T@Field_13317_13407) Bool)
(declare-fun WandMaskField_13317 (T@Field_13317_13407) T@Field_13317_35584)
(declare-fun |Seq#Singleton_13459| (T@Ref) T@Seq_28731)
(declare-fun |Seq#Singleton_3107| (Int) T@Seq_3107)
(declare-fun |List#sm| (T@Ref) T@Field_35579_35584)
(declare-fun |Seq#Append_13318| (T@Seq_28731 T@Seq_28731) T@Seq_28731)
(declare-fun |Seq#Append_3107| (T@Seq_3107 T@Seq_3107) T@Seq_3107)
(declare-fun dummyHeap () T@PolymorphicMapType_22503)
(declare-fun ZeroMask () T@PolymorphicMapType_22524)
(declare-fun InsidePredicate_29168_29168 (T@Field_29168_29169 T@FrameType T@Field_29168_29169 T@FrameType) Bool)
(declare-fun InsidePredicate_22563_22563 (T@Field_13317_13407 T@FrameType T@Field_13317_13407 T@FrameType) Bool)
(declare-fun IsPredicateField_13310_13311 (T@Field_22576_22577) Bool)
(declare-fun IsWandField_13310_13311 (T@Field_22576_22577) Bool)
(declare-fun IsPredicateField_13313_3244 (T@Field_28651_3244) Bool)
(declare-fun IsWandField_13313_3244 (T@Field_28651_3244) Bool)
(declare-fun IsPredicateField_13317_28755 (T@Field_28728_28733) Bool)
(declare-fun IsWandField_13317_28781 (T@Field_28728_28733) Bool)
(declare-fun IsPredicateField_13321_28814 (T@Field_28793_28795) Bool)
(declare-fun IsWandField_13321_28837 (T@Field_28793_28795) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13317_92554 (T@Field_13317_35584) Bool)
(declare-fun IsWandField_13317_92570 (T@Field_13317_35584) Bool)
(declare-fun IsPredicateField_13317_53 (T@Field_22563_53) Bool)
(declare-fun IsWandField_13317_53 (T@Field_22563_53) Bool)
(declare-fun IsPredicateField_13406_91443 (T@Field_35579_35584) Bool)
(declare-fun IsWandField_13406_91459 (T@Field_35579_35584) Bool)
(declare-fun IsPredicateField_13406_28795 (T@Field_13406_28795) Bool)
(declare-fun IsWandField_13406_28795 (T@Field_13406_28795) Bool)
(declare-fun IsPredicateField_13406_53 (T@Field_13406_53) Bool)
(declare-fun IsWandField_13406_53 (T@Field_13406_53) Bool)
(declare-fun IsPredicateField_13406_13311 (T@Field_13406_13311) Bool)
(declare-fun IsWandField_13406_13311 (T@Field_13406_13311) Bool)
(declare-fun IsPredicateField_13406_3244 (T@Field_13406_3244) Bool)
(declare-fun IsWandField_13406_3244 (T@Field_13406_3244) Bool)
(declare-fun IsPredicateField_13406_30311 (T@Field_13406_35501) Bool)
(declare-fun IsWandField_13406_30311 (T@Field_13406_35501) Bool)
(declare-fun HasDirectPerm_13406_78510 (T@PolymorphicMapType_22524 T@Ref T@Field_35579_35584) Bool)
(declare-fun HasDirectPerm_13406_28795 (T@PolymorphicMapType_22524 T@Ref T@Field_13406_28795) Bool)
(declare-fun HasDirectPerm_13406_53 (T@PolymorphicMapType_22524 T@Ref T@Field_13406_53) Bool)
(declare-fun HasDirectPerm_13406_13311 (T@PolymorphicMapType_22524 T@Ref T@Field_13406_13311) Bool)
(declare-fun HasDirectPerm_13406_3244 (T@PolymorphicMapType_22524 T@Ref T@Field_13406_3244) Bool)
(declare-fun HasDirectPerm_13406_35501 (T@PolymorphicMapType_22524 T@Ref T@Field_13406_35501) Bool)
(declare-fun HasDirectPerm_13317_76911 (T@PolymorphicMapType_22524 T@Ref T@Field_13317_35584) Bool)
(declare-fun HasDirectPerm_13317_28795 (T@PolymorphicMapType_22524 T@Ref T@Field_28793_28795) Bool)
(declare-fun HasDirectPerm_13317_53 (T@PolymorphicMapType_22524 T@Ref T@Field_22563_53) Bool)
(declare-fun HasDirectPerm_13310_13311 (T@PolymorphicMapType_22524 T@Ref T@Field_22576_22577) Bool)
(declare-fun HasDirectPerm_13313_3244 (T@PolymorphicMapType_22524 T@Ref T@Field_28651_3244) Bool)
(declare-fun HasDirectPerm_13317_35501 (T@PolymorphicMapType_22524 T@Ref T@Field_28728_28733) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun itemAt (T@PolymorphicMapType_22503 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_22524 T@PolymorphicMapType_22524 T@PolymorphicMapType_22524) Bool)
(declare-fun |Seq#Equal_28731| (T@Seq_28731 T@Seq_28731) Bool)
(declare-fun |Seq#Equal_3107| (T@Seq_3107 T@Seq_3107) Bool)
(declare-fun |Seq#ContainsTrigger_13318| (T@Seq_28731 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3107| (T@Seq_3107 Int) Bool)
(declare-fun |itemAt#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_13406_13407 (T@Field_29168_29169) Int)
(declare-fun |Seq#SkolemDiff_28731| (T@Seq_28731 T@Seq_28731) Int)
(declare-fun |Seq#SkolemDiff_3107| (T@Seq_3107 T@Seq_3107) Int)
(declare-fun InsidePredicate_29168_22563 (T@Field_29168_29169 T@FrameType T@Field_13317_13407 T@FrameType) Bool)
(declare-fun InsidePredicate_22563_29168 (T@Field_13317_13407 T@FrameType T@Field_29168_29169 T@FrameType) Bool)
(assert (distinct val value_1)
)
(assert (forall ((s T@Seq_28731) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_13318| s)) (= (|Seq#Length_13318| (|Seq#Drop_13318| s n)) (- (|Seq#Length_13318| s) n))) (=> (< (|Seq#Length_13318| s) n) (= (|Seq#Length_13318| (|Seq#Drop_13318| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_13318| (|Seq#Drop_13318| s n)) (|Seq#Length_13318| s))))
 :qid |stdinbpl.319:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_13318| (|Seq#Drop_13318| s n)))
 :pattern ( (|Seq#Length_13318| s) (|Seq#Drop_13318| s n))
)))
(assert (forall ((s@@0 T@Seq_3107) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3107| s@@0)) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (- (|Seq#Length_3107| s@@0) n@@0))) (=> (< (|Seq#Length_3107| s@@0) n@@0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)) (|Seq#Length_3107| s@@0))))
 :qid |stdinbpl.319:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3107| (|Seq#Drop_3107| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3107| s@@0) (|Seq#Drop_3107| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_22503) (Heap1 T@PolymorphicMapType_22503) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_22503) (Heap1Heap T@PolymorphicMapType_22503) (this T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap) this nodes_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap1Heap) this nodes_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) (< (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap) this nodes_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap2Heap) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap) this nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap1Heap) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap1Heap) this nodes_1) (|sk_List#condqp1| (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this))) val)))) (= (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this)))
 :qid |stdinbpl.1046:15|
 :skolemid |108|
 :pattern ( (|List#condqp1| Heap2Heap this) (|List#condqp1| Heap1Heap this) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_22503) (Heap1Heap@@0 T@PolymorphicMapType_22503) (this@@0 T@Ref) ) (!  (=> (and (=  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap1Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) (< (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap@@0) this@@0 nodes_1)))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap2Heap@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap2Heap@@0) this@@0 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap1Heap@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap1Heap@@0) this@@0 nodes_1) (|sk_List#condqp2| (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0))) next)))) (= (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0)))
 :qid |stdinbpl.1057:15|
 :skolemid |109|
 :pattern ( (|List#condqp2| Heap2Heap@@0 this@@0) (|List#condqp2| Heap1Heap@@0 this@@0) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_22503) (Mask T@PolymorphicMapType_22524) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_22503) (Heap1@@0 T@PolymorphicMapType_22503) (Heap2 T@PolymorphicMapType_22503) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_35579_35584) ) (!  (not (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_29168_29169) ) (!  (not (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13406_28795) ) (!  (not (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13406_53) ) (!  (not (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13406_13311) ) (!  (not (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13406_3244) ) (!  (not (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_13406_35501) ) (!  (not (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_13317_35584) ) (!  (not (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_13317_13407) ) (!  (not (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_28793_28795) ) (!  (not (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_22563_53) ) (!  (not (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_22576_22577) ) (!  (not (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_28651_3244) ) (!  (not (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_28728_28733) ) (!  (not (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_22503) (this@@1 T@Ref) (index Int) ) (! (dummyFunction_3496 (|itemAt#triggerStateless| this@@1 index))
 :qid |stdinbpl.803:15|
 :skolemid |81|
 :pattern ( (|itemAt'| Heap@@0 this@@1 index))
)))
(assert (forall ((s@@1 T@Seq_28731) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_13318| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_13318| (|Seq#Drop_13318| s@@1 n@@1) j) (|Seq#Index_13318| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.340:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_13318| (|Seq#Drop_13318| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3107) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3107| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@0) (|Seq#Index_3107| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.340:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3107| (|Seq#Drop_3107| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_13318| |Seq#Empty_13318|) 0))
(assert (= (|Seq#Length_3107| |Seq#Empty_3107|) 0))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_13406_13407 (List this@@2))
 :qid |stdinbpl.1016:15|
 :skolemid |103|
 :pattern ( (List this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_22503) (this@@3 T@Ref) ) (! (dummyFunction_3496 (|length#triggerStateless| this@@3))
 :qid |stdinbpl.617:15|
 :skolemid |59|
 :pattern ( (|length'| Heap@@1 this@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_22503) (this@@4 T@Ref) ) (! (|List#everUsed_13406| (List this@@4))
 :qid |stdinbpl.1035:15|
 :skolemid |107|
 :pattern ( (|List#trigger_13406| Heap@@2 (List this@@4)))
)))
(assert (forall ((s@@3 T@Seq_28731) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_13318| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_13318| (|Seq#Update_13318| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_13318| (|Seq#Update_13318| s@@3 i v) n@@3) (|Seq#Index_13318| s@@3 n@@3)))))
 :qid |stdinbpl.295:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_13318| (|Seq#Update_13318| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_13318| s@@3 n@@3) (|Seq#Update_13318| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3107) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3107| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3107| s@@4 n@@4)))))
 :qid |stdinbpl.295:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3107| (|Seq#Update_3107| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3107| s@@4 n@@4) (|Seq#Update_3107| s@@4 i@@0 v@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_22503) (Mask@@0 T@PolymorphicMapType_22524) (this@@5 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@0) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@3 this@@5) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@3) this@@5 nodes_1))))
 :qid |stdinbpl.623:15|
 :skolemid |60|
 :pattern ( (state Heap@@3 Mask@@0) (length_1 Heap@@3 this@@5))
 :pattern ( (state Heap@@3 Mask@@0) (|length#triggerStateless| this@@5) (|List#trigger_13406| Heap@@3 (List this@@5)))
)))
(assert (forall ((s@@5 T@Seq_28731) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_13318| s@@5)) (= (|Seq#Length_13318| (|Seq#Take_13318| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_13318| s@@5) n@@5) (= (|Seq#Length_13318| (|Seq#Take_13318| s@@5 n@@5)) (|Seq#Length_13318| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_13318| (|Seq#Take_13318| s@@5 n@@5)) 0)))
 :qid |stdinbpl.306:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_13318| (|Seq#Take_13318| s@@5 n@@5)))
 :pattern ( (|Seq#Take_13318| s@@5 n@@5) (|Seq#Length_13318| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3107) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3107| s@@6)) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3107| s@@6) n@@6) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) (|Seq#Length_3107| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)) 0)))
 :qid |stdinbpl.306:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3107| (|Seq#Take_3107| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3107| s@@6 n@@6) (|Seq#Length_3107| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.580:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_28731) (x T@Ref) ) (!  (=> (|Seq#Contains_13318| s@@7 x) (and (and (<= 0 (|Seq#Skolem_13318| s@@7 x)) (< (|Seq#Skolem_13318| s@@7 x) (|Seq#Length_13318| s@@7))) (= (|Seq#Index_13318| s@@7 (|Seq#Skolem_13318| s@@7 x)) x)))
 :qid |stdinbpl.438:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_13318| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3107) (x@@0 Int) ) (!  (=> (|Seq#Contains_3107| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3107| s@@8 x@@0)) (< (|Seq#Skolem_3107| s@@8 x@@0) (|Seq#Length_3107| s@@8))) (= (|Seq#Index_3107| s@@8 (|Seq#Skolem_3107| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.438:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3107| s@@8 x@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_22503) (this@@6 T@Ref) ) (!  (and (= (length_1 Heap@@4 this@@6) (|length'| Heap@@4 this@@6)) (dummyFunction_3496 (|length#triggerStateless| this@@6)))
 :qid |stdinbpl.613:15|
 :skolemid |58|
 :pattern ( (length_1 Heap@@4 this@@6))
)))
(assert (forall ((s@@9 T@Seq_28731) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_13318| s@@9 n@@7) s@@9))
 :qid |stdinbpl.422:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_13318| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3107) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3107| s@@10 n@@8) s@@10))
 :qid |stdinbpl.422:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3107| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.275:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.273:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_22503) (ExhaleHeap T@PolymorphicMapType_22503) (Mask@@1 T@PolymorphicMapType_22524) (pm_f_37 T@Field_29168_29169) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_13406_13407 Mask@@1 null pm_f_37) (IsPredicateField_13406_13407 pm_f_37)) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@5) null (PredicateMaskField_13406 pm_f_37)) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap) null (PredicateMaskField_13406 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_13406_13407 pm_f_37) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap) null (PredicateMaskField_13406 pm_f_37)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_22503) (ExhaleHeap@@0 T@PolymorphicMapType_22503) (Mask@@2 T@PolymorphicMapType_22524) (pm_f_37@@0 T@Field_13317_13407) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_13317_13407 Mask@@2 null pm_f_37@@0) (IsPredicateField_13317_78755 pm_f_37@@0)) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@6) null (PredicateMaskField_13317 pm_f_37@@0)) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@0) null (PredicateMaskField_13317 pm_f_37@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsPredicateField_13317_78755 pm_f_37@@0) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@0) null (PredicateMaskField_13317 pm_f_37@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_22503) (ExhaleHeap@@1 T@PolymorphicMapType_22503) (Mask@@3 T@PolymorphicMapType_22524) (pm_f_37@@1 T@Field_29168_29169) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_13406_13407 Mask@@3 null pm_f_37@@1) (IsWandField_13406_83226 pm_f_37@@1)) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@7) null (WandMaskField_13406 pm_f_37@@1)) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@1) null (WandMaskField_13406 pm_f_37@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsWandField_13406_83226 pm_f_37@@1) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@1) null (WandMaskField_13406 pm_f_37@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_22503) (ExhaleHeap@@2 T@PolymorphicMapType_22503) (Mask@@4 T@PolymorphicMapType_22524) (pm_f_37@@2 T@Field_13317_13407) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_13317_13407 Mask@@4 null pm_f_37@@2) (IsWandField_13317_82869 pm_f_37@@2)) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@8) null (WandMaskField_13317 pm_f_37@@2)) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@2) null (WandMaskField_13317 pm_f_37@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_13317_82869 pm_f_37@@2) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@2) null (WandMaskField_13317 pm_f_37@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_13318| (|Seq#Singleton_13459| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.563:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_13318| (|Seq#Singleton_13459| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.563:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3107| (|Seq#Singleton_3107| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_28731) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_13318| s@@11))) (= (|Seq#Index_13318| (|Seq#Take_13318| s@@11 n@@9) j@@3) (|Seq#Index_13318| s@@11 j@@3)))
 :qid |stdinbpl.314:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_13318| (|Seq#Take_13318| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_13318| s@@11 j@@3) (|Seq#Take_13318| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3107) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3107| s@@12))) (= (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@4) (|Seq#Index_3107| s@@12 j@@4)))
 :qid |stdinbpl.314:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3107| (|Seq#Take_3107| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3107| s@@12 j@@4) (|Seq#Take_3107| s@@12 n@@10))
)))
(assert (forall ((this@@7 T@Ref) (this2 T@Ref) ) (!  (=> (= (List this@@7) (List this2)) (= this@@7 this2))
 :qid |stdinbpl.1026:15|
 :skolemid |105|
 :pattern ( (List this@@7) (List this2))
)))
(assert (forall ((this@@8 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|List#sm| this@@8) (|List#sm| this2@@0)) (= this@@8 this2@@0))
 :qid |stdinbpl.1030:15|
 :skolemid |106|
 :pattern ( (|List#sm| this@@8) (|List#sm| this2@@0))
)))
(assert (forall ((s@@13 T@Seq_28731) (t T@Seq_28731) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_13318| s@@13))) (< n@@11 (|Seq#Length_13318| (|Seq#Append_13318| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_13318| s@@13)) (|Seq#Length_13318| s@@13)) n@@11) (= (|Seq#Take_13318| (|Seq#Append_13318| s@@13 t) n@@11) (|Seq#Append_13318| s@@13 (|Seq#Take_13318| t (|Seq#Sub| n@@11 (|Seq#Length_13318| s@@13)))))))
 :qid |stdinbpl.399:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_13318| (|Seq#Append_13318| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3107) (t@@0 T@Seq_3107) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3107| s@@14))) (< n@@12 (|Seq#Length_3107| (|Seq#Append_3107| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)) (|Seq#Length_3107| s@@14)) n@@12) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12) (|Seq#Append_3107| s@@14 (|Seq#Take_3107| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3107| s@@14)))))))
 :qid |stdinbpl.399:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_22503) (ExhaleHeap@@3 T@PolymorphicMapType_22503) (Mask@@5 T@PolymorphicMapType_22524) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (=> (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@9) o_20 $allocated) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@3) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@5) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@3) o_20 $allocated))
)))
(assert (forall ((p T@Field_29168_29169) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_29168_29168 p v_1 p w))
 :qid |stdinbpl.217:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_29168_29168 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_13317_13407) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_22563_22563 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.217:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22563_22563 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_28731) (s1 T@Seq_28731) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_13318|)) (not (= s1 |Seq#Empty_13318|))) (<= (|Seq#Length_13318| s0) n@@13)) (< n@@13 (|Seq#Length_13318| (|Seq#Append_13318| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_13318| s0)) (|Seq#Length_13318| s0)) n@@13) (= (|Seq#Index_13318| (|Seq#Append_13318| s0 s1) n@@13) (|Seq#Index_13318| s1 (|Seq#Sub| n@@13 (|Seq#Length_13318| s0))))))
 :qid |stdinbpl.286:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_13318| (|Seq#Append_13318| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3107) (s1@@0 T@Seq_3107) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3107|)) (not (= s1@@0 |Seq#Empty_3107|))) (<= (|Seq#Length_3107| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3107| (|Seq#Append_3107| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0)) (|Seq#Length_3107| s0@@0)) n@@14) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14) (|Seq#Index_3107| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3107| s0@@0))))))
 :qid |stdinbpl.286:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_13310_13311 next)))
(assert  (not (IsWandField_13310_13311 next)))
(assert  (not (IsPredicateField_13313_3244 val)))
(assert  (not (IsWandField_13313_3244 val)))
(assert  (not (IsPredicateField_13313_3244 value_1)))
(assert  (not (IsWandField_13313_3244 value_1)))
(assert  (not (IsPredicateField_13317_28755 nodes_1)))
(assert  (not (IsWandField_13317_28781 nodes_1)))
(assert  (not (IsPredicateField_13321_28814 data)))
(assert  (not (IsWandField_13321_28837 data)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_22503) (ExhaleHeap@@4 T@PolymorphicMapType_22503) (Mask@@6 T@PolymorphicMapType_22524) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6) (succHeap Heap@@10 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_22524) (o_2@@13 T@Ref) (f_4@@13 T@Field_13317_35584) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@@7) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_13317_92554 f_4@@13))) (not (IsWandField_13317_92570 f_4@@13))) (<= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@@7) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@@7) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_22524) (o_2@@14 T@Ref) (f_4@@14 T@Field_28793_28795) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_13321_28814 f_4@@14))) (not (IsWandField_13321_28837 f_4@@14))) (<= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_22524) (o_2@@15 T@Ref) (f_4@@15 T@Field_22563_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_13317_53 f_4@@15))) (not (IsWandField_13317_53 f_4@@15))) (<= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_22524) (o_2@@16 T@Ref) (f_4@@16 T@Field_22576_22577) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_13310_13311 f_4@@16))) (not (IsWandField_13310_13311 f_4@@16))) (<= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_22524) (o_2@@17 T@Ref) (f_4@@17 T@Field_28651_3244) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_13313_3244 f_4@@17))) (not (IsWandField_13313_3244 f_4@@17))) (<= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_22524) (o_2@@18 T@Ref) (f_4@@18 T@Field_28728_28733) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_13317_28755 f_4@@18))) (not (IsWandField_13317_28781 f_4@@18))) (<= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_22524) (o_2@@19 T@Ref) (f_4@@19 T@Field_13317_13407) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_13317_78755 f_4@@19))) (not (IsWandField_13317_82869 f_4@@19))) (<= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_22524) (o_2@@20 T@Ref) (f_4@@20 T@Field_35579_35584) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_13406_91443 f_4@@20))) (not (IsWandField_13406_91459 f_4@@20))) (<= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_22524) (o_2@@21 T@Ref) (f_4@@21 T@Field_13406_28795) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_13406_28795 f_4@@21))) (not (IsWandField_13406_28795 f_4@@21))) (<= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_22524) (o_2@@22 T@Ref) (f_4@@22 T@Field_13406_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_13406_53 f_4@@22))) (not (IsWandField_13406_53 f_4@@22))) (<= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_22524) (o_2@@23 T@Ref) (f_4@@23 T@Field_13406_13311) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_13406_13311 f_4@@23))) (not (IsWandField_13406_13311 f_4@@23))) (<= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_22524) (o_2@@24 T@Ref) (f_4@@24 T@Field_13406_3244) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_13406_3244 f_4@@24))) (not (IsWandField_13406_3244 f_4@@24))) (<= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_22524) (o_2@@25 T@Ref) (f_4@@25 T@Field_13406_35501) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_13406_30311 f_4@@25))) (not (IsWandField_13406_30311 f_4@@25))) (<= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_22524) (o_2@@26 T@Ref) (f_4@@26 T@Field_29168_29169) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_13406_13407 f_4@@26))) (not (IsWandField_13406_83226 f_4@@26))) (<= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_22524) (o_2@@27 T@Ref) (f_4@@27 T@Field_35579_35584) ) (! (= (HasDirectPerm_13406_78510 Mask@@21 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@@21) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_78510 Mask@@21 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_22524) (o_2@@28 T@Ref) (f_4@@28 T@Field_13406_28795) ) (! (= (HasDirectPerm_13406_28795 Mask@@22 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@@22) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_28795 Mask@@22 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_22524) (o_2@@29 T@Ref) (f_4@@29 T@Field_13406_53) ) (! (= (HasDirectPerm_13406_53 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_53 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_22524) (o_2@@30 T@Ref) (f_4@@30 T@Field_29168_29169) ) (! (= (HasDirectPerm_13406_13407 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_13407 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_22524) (o_2@@31 T@Ref) (f_4@@31 T@Field_13406_13311) ) (! (= (HasDirectPerm_13406_13311 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_13311 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_22524) (o_2@@32 T@Ref) (f_4@@32 T@Field_13406_3244) ) (! (= (HasDirectPerm_13406_3244 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_3244 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_22524) (o_2@@33 T@Ref) (f_4@@33 T@Field_13406_35501) ) (! (= (HasDirectPerm_13406_35501 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13406_35501 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_22524) (o_2@@34 T@Ref) (f_4@@34 T@Field_13317_35584) ) (! (= (HasDirectPerm_13317_76911 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13317_76911 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_22524) (o_2@@35 T@Ref) (f_4@@35 T@Field_28793_28795) ) (! (= (HasDirectPerm_13317_28795 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13317_28795 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_22524) (o_2@@36 T@Ref) (f_4@@36 T@Field_22563_53) ) (! (= (HasDirectPerm_13317_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13317_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_22524) (o_2@@37 T@Ref) (f_4@@37 T@Field_13317_13407) ) (! (= (HasDirectPerm_13317_13407 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13317_13407 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_22524) (o_2@@38 T@Ref) (f_4@@38 T@Field_22576_22577) ) (! (= (HasDirectPerm_13310_13311 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13310_13311 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_22524) (o_2@@39 T@Ref) (f_4@@39 T@Field_28651_3244) ) (! (= (HasDirectPerm_13313_3244 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13313_3244 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_22524) (o_2@@40 T@Ref) (f_4@@40 T@Field_28728_28733) ) (! (= (HasDirectPerm_13317_35501 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13317_35501 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.205:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.578:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3107| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_22503) (ExhaleHeap@@5 T@PolymorphicMapType_22503) (Mask@@35 T@PolymorphicMapType_22524) (o_20@@0 T@Ref) (f_29 T@Field_35579_35584) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@35) (=> (HasDirectPerm_13406_78510 Mask@@35 o_20@@0 f_29) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@11) o_20@@0 f_29) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@5) o_20@@0 f_29))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@35) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@5) o_20@@0 f_29))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_22503) (ExhaleHeap@@6 T@PolymorphicMapType_22503) (Mask@@36 T@PolymorphicMapType_22524) (o_20@@1 T@Ref) (f_29@@0 T@Field_13406_28795) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@36) (=> (HasDirectPerm_13406_28795 Mask@@36 o_20@@1 f_29@@0) (= (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@12) o_20@@1 f_29@@0) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@6) o_20@@1 f_29@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@36) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@6) o_20@@1 f_29@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_22503) (ExhaleHeap@@7 T@PolymorphicMapType_22503) (Mask@@37 T@PolymorphicMapType_22524) (o_20@@2 T@Ref) (f_29@@1 T@Field_13406_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@37) (=> (HasDirectPerm_13406_53 Mask@@37 o_20@@2 f_29@@1) (= (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@13) o_20@@2 f_29@@1) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@7) o_20@@2 f_29@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@37) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@7) o_20@@2 f_29@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_22503) (ExhaleHeap@@8 T@PolymorphicMapType_22503) (Mask@@38 T@PolymorphicMapType_22524) (o_20@@3 T@Ref) (f_29@@2 T@Field_29168_29169) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@38) (=> (HasDirectPerm_13406_13407 Mask@@38 o_20@@3 f_29@@2) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@14) o_20@@3 f_29@@2) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@8) o_20@@3 f_29@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@8 Mask@@38) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@8) o_20@@3 f_29@@2))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_22503) (ExhaleHeap@@9 T@PolymorphicMapType_22503) (Mask@@39 T@PolymorphicMapType_22524) (o_20@@4 T@Ref) (f_29@@3 T@Field_13406_13311) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@39) (=> (HasDirectPerm_13406_13311 Mask@@39 o_20@@4 f_29@@3) (= (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@15) o_20@@4 f_29@@3) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@9) o_20@@4 f_29@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@39) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@9) o_20@@4 f_29@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_22503) (ExhaleHeap@@10 T@PolymorphicMapType_22503) (Mask@@40 T@PolymorphicMapType_22524) (o_20@@5 T@Ref) (f_29@@4 T@Field_13406_3244) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@40) (=> (HasDirectPerm_13406_3244 Mask@@40 o_20@@5 f_29@@4) (= (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@16) o_20@@5 f_29@@4) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@10) o_20@@5 f_29@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@40) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@10) o_20@@5 f_29@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_22503) (ExhaleHeap@@11 T@PolymorphicMapType_22503) (Mask@@41 T@PolymorphicMapType_22524) (o_20@@6 T@Ref) (f_29@@5 T@Field_13406_35501) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@41) (=> (HasDirectPerm_13406_35501 Mask@@41 o_20@@6 f_29@@5) (= (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@17) o_20@@6 f_29@@5) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@11) o_20@@6 f_29@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@41) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@11) o_20@@6 f_29@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_22503) (ExhaleHeap@@12 T@PolymorphicMapType_22503) (Mask@@42 T@PolymorphicMapType_22524) (o_20@@7 T@Ref) (f_29@@6 T@Field_13317_35584) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@42) (=> (HasDirectPerm_13317_76911 Mask@@42 o_20@@7 f_29@@6) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@18) o_20@@7 f_29@@6) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@12) o_20@@7 f_29@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@42) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@12) o_20@@7 f_29@@6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_22503) (ExhaleHeap@@13 T@PolymorphicMapType_22503) (Mask@@43 T@PolymorphicMapType_22524) (o_20@@8 T@Ref) (f_29@@7 T@Field_28793_28795) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@43) (=> (HasDirectPerm_13317_28795 Mask@@43 o_20@@8 f_29@@7) (= (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@19) o_20@@8 f_29@@7) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@13) o_20@@8 f_29@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@43) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@13) o_20@@8 f_29@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_22503) (ExhaleHeap@@14 T@PolymorphicMapType_22503) (Mask@@44 T@PolymorphicMapType_22524) (o_20@@9 T@Ref) (f_29@@8 T@Field_22563_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@44) (=> (HasDirectPerm_13317_53 Mask@@44 o_20@@9 f_29@@8) (= (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@20) o_20@@9 f_29@@8) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@14) o_20@@9 f_29@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@44) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@14) o_20@@9 f_29@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_22503) (ExhaleHeap@@15 T@PolymorphicMapType_22503) (Mask@@45 T@PolymorphicMapType_22524) (o_20@@10 T@Ref) (f_29@@9 T@Field_13317_13407) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@45) (=> (HasDirectPerm_13317_13407 Mask@@45 o_20@@10 f_29@@9) (= (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@21) o_20@@10 f_29@@9) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@15) o_20@@10 f_29@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@45) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@15) o_20@@10 f_29@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_22503) (ExhaleHeap@@16 T@PolymorphicMapType_22503) (Mask@@46 T@PolymorphicMapType_22524) (o_20@@11 T@Ref) (f_29@@10 T@Field_22576_22577) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@46) (=> (HasDirectPerm_13310_13311 Mask@@46 o_20@@11 f_29@@10) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@22) o_20@@11 f_29@@10) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@16) o_20@@11 f_29@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@46) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@16) o_20@@11 f_29@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_22503) (ExhaleHeap@@17 T@PolymorphicMapType_22503) (Mask@@47 T@PolymorphicMapType_22524) (o_20@@12 T@Ref) (f_29@@11 T@Field_28651_3244) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@47) (=> (HasDirectPerm_13313_3244 Mask@@47 o_20@@12 f_29@@11) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@23) o_20@@12 f_29@@11) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@17) o_20@@12 f_29@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@47) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@17) o_20@@12 f_29@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_22503) (ExhaleHeap@@18 T@PolymorphicMapType_22503) (Mask@@48 T@PolymorphicMapType_22524) (o_20@@13 T@Ref) (f_29@@12 T@Field_28728_28733) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@48) (=> (HasDirectPerm_13317_35501 Mask@@48 o_20@@13 f_29@@12) (= (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@24) o_20@@13 f_29@@12) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@18) o_20@@13 f_29@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@48) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@18) o_20@@13 f_29@@12))
)))
(assert (forall ((s0@@1 T@Seq_28731) (s1@@1 T@Seq_28731) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_13318|)) (not (= s1@@1 |Seq#Empty_13318|))) (= (|Seq#Length_13318| (|Seq#Append_13318| s0@@1 s1@@1)) (+ (|Seq#Length_13318| s0@@1) (|Seq#Length_13318| s1@@1))))
 :qid |stdinbpl.255:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_13318| (|Seq#Append_13318| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3107) (s1@@2 T@Seq_3107) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3107|)) (not (= s1@@2 |Seq#Empty_3107|))) (= (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)) (+ (|Seq#Length_3107| s0@@2) (|Seq#Length_3107| s1@@2))))
 :qid |stdinbpl.255:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3107| (|Seq#Append_3107| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_13317_35584) ) (! (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_28793_28795) ) (! (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_22563_53) ) (! (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_22576_22577) ) (! (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_28651_3244) ) (! (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_28728_28733) ) (! (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_13317_13407) ) (! (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_35579_35584) ) (! (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_13406_28795) ) (! (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_13406_53) ) (! (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_13406_13311) ) (! (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_13406_3244) ) (! (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_13406_35501) ) (! (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_29168_29169) ) (! (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((s@@15 T@Seq_28731) (t@@1 T@Seq_28731) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_13318| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_13318| s@@15)) (|Seq#Length_13318| s@@15)) n@@15) (= (|Seq#Drop_13318| (|Seq#Append_13318| s@@15 t@@1) n@@15) (|Seq#Drop_13318| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_13318| s@@15))))))
 :qid |stdinbpl.412:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_13318| (|Seq#Append_13318| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3107) (t@@2 T@Seq_3107) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3107| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16)) (|Seq#Length_3107| s@@16)) n@@16) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16) (|Seq#Drop_3107| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3107| s@@16))))))
 :qid |stdinbpl.412:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_22503) (this@@9 T@Ref) (index@@0 Int) ) (!  (and (= (itemAt Heap@@25 this@@9 index@@0) (|itemAt'| Heap@@25 this@@9 index@@0)) (dummyFunction_3496 (|itemAt#triggerStateless| this@@9 index@@0)))
 :qid |stdinbpl.799:15|
 :skolemid |80|
 :pattern ( (itemAt Heap@@25 this@@9 index@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_22524) (SummandMask1 T@PolymorphicMapType_22524) (SummandMask2 T@PolymorphicMapType_22524) (o_2@@55 T@Ref) (f_4@@55 T@Field_13317_35584) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ResultMask) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| SummandMask1) o_2@@55 f_4@@55) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| SummandMask2) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ResultMask) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| SummandMask1) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| SummandMask2) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_22524) (SummandMask1@@0 T@PolymorphicMapType_22524) (SummandMask2@@0 T@PolymorphicMapType_22524) (o_2@@56 T@Ref) (f_4@@56 T@Field_28793_28795) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ResultMask@@0) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| SummandMask1@@0) o_2@@56 f_4@@56) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| SummandMask2@@0) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ResultMask@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| SummandMask1@@0) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| SummandMask2@@0) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_22524) (SummandMask1@@1 T@PolymorphicMapType_22524) (SummandMask2@@1 T@PolymorphicMapType_22524) (o_2@@57 T@Ref) (f_4@@57 T@Field_22563_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ResultMask@@1) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| SummandMask1@@1) o_2@@57 f_4@@57) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| SummandMask2@@1) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ResultMask@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| SummandMask1@@1) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| SummandMask2@@1) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_22524) (SummandMask1@@2 T@PolymorphicMapType_22524) (SummandMask2@@2 T@PolymorphicMapType_22524) (o_2@@58 T@Ref) (f_4@@58 T@Field_22576_22577) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ResultMask@@2) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| SummandMask1@@2) o_2@@58 f_4@@58) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| SummandMask2@@2) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ResultMask@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| SummandMask1@@2) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| SummandMask2@@2) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_22524) (SummandMask1@@3 T@PolymorphicMapType_22524) (SummandMask2@@3 T@PolymorphicMapType_22524) (o_2@@59 T@Ref) (f_4@@59 T@Field_28651_3244) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ResultMask@@3) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| SummandMask1@@3) o_2@@59 f_4@@59) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| SummandMask2@@3) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ResultMask@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| SummandMask1@@3) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| SummandMask2@@3) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_22524) (SummandMask1@@4 T@PolymorphicMapType_22524) (SummandMask2@@4 T@PolymorphicMapType_22524) (o_2@@60 T@Ref) (f_4@@60 T@Field_28728_28733) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ResultMask@@4) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| SummandMask1@@4) o_2@@60 f_4@@60) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| SummandMask2@@4) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ResultMask@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| SummandMask1@@4) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| SummandMask2@@4) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_22524) (SummandMask1@@5 T@PolymorphicMapType_22524) (SummandMask2@@5 T@PolymorphicMapType_22524) (o_2@@61 T@Ref) (f_4@@61 T@Field_13317_13407) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ResultMask@@5) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| SummandMask1@@5) o_2@@61 f_4@@61) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| SummandMask2@@5) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ResultMask@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| SummandMask1@@5) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| SummandMask2@@5) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_22524) (SummandMask1@@6 T@PolymorphicMapType_22524) (SummandMask2@@6 T@PolymorphicMapType_22524) (o_2@@62 T@Ref) (f_4@@62 T@Field_35579_35584) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ResultMask@@6) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| SummandMask1@@6) o_2@@62 f_4@@62) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| SummandMask2@@6) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ResultMask@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| SummandMask1@@6) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| SummandMask2@@6) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_22524) (SummandMask1@@7 T@PolymorphicMapType_22524) (SummandMask2@@7 T@PolymorphicMapType_22524) (o_2@@63 T@Ref) (f_4@@63 T@Field_13406_28795) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ResultMask@@7) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| SummandMask1@@7) o_2@@63 f_4@@63) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| SummandMask2@@7) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ResultMask@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| SummandMask1@@7) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| SummandMask2@@7) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_22524) (SummandMask1@@8 T@PolymorphicMapType_22524) (SummandMask2@@8 T@PolymorphicMapType_22524) (o_2@@64 T@Ref) (f_4@@64 T@Field_13406_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ResultMask@@8) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| SummandMask1@@8) o_2@@64 f_4@@64) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| SummandMask2@@8) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ResultMask@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| SummandMask1@@8) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| SummandMask2@@8) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_22524) (SummandMask1@@9 T@PolymorphicMapType_22524) (SummandMask2@@9 T@PolymorphicMapType_22524) (o_2@@65 T@Ref) (f_4@@65 T@Field_13406_13311) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ResultMask@@9) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| SummandMask1@@9) o_2@@65 f_4@@65) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| SummandMask2@@9) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ResultMask@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| SummandMask1@@9) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| SummandMask2@@9) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_22524) (SummandMask1@@10 T@PolymorphicMapType_22524) (SummandMask2@@10 T@PolymorphicMapType_22524) (o_2@@66 T@Ref) (f_4@@66 T@Field_13406_3244) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ResultMask@@10) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| SummandMask1@@10) o_2@@66 f_4@@66) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| SummandMask2@@10) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ResultMask@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| SummandMask1@@10) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| SummandMask2@@10) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_22524) (SummandMask1@@11 T@PolymorphicMapType_22524) (SummandMask2@@11 T@PolymorphicMapType_22524) (o_2@@67 T@Ref) (f_4@@67 T@Field_13406_35501) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ResultMask@@11) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| SummandMask1@@11) o_2@@67 f_4@@67) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| SummandMask2@@11) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ResultMask@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| SummandMask1@@11) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| SummandMask2@@11) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_22524) (SummandMask1@@12 T@PolymorphicMapType_22524) (SummandMask2@@12 T@PolymorphicMapType_22524) (o_2@@68 T@Ref) (f_4@@68 T@Field_29168_29169) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ResultMask@@12) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| SummandMask1@@12) o_2@@68 f_4@@68) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| SummandMask2@@12) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ResultMask@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| SummandMask1@@12) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| SummandMask2@@12) o_2@@68 f_4@@68))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.577:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3107| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_22503) (Mask@@49 T@PolymorphicMapType_22524) (this@@10 T@Ref) (index@@1 Int) ) (!  (=> (and (state Heap@@26 Mask@@49) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 index@@1) (< index@@1 (length_1 Heap@@26 this@@10))) (= (itemAt Heap@@26 this@@10 index@@1) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@26) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@26) this@@10 nodes_1) index@@1) val))))
 :qid |stdinbpl.809:15|
 :skolemid |82|
 :pattern ( (state Heap@@26 Mask@@49) (itemAt Heap@@26 this@@10 index@@1))
 :pattern ( (state Heap@@26 Mask@@49) (|itemAt#triggerStateless| this@@10 index@@1) (|List#trigger_13406| Heap@@26 (List this@@10)))
)))
(assert (forall ((a T@Seq_28731) (b T@Seq_28731) ) (!  (=> (|Seq#Equal_28731| a b) (= a b))
 :qid |stdinbpl.550:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_28731| a b))
)))
(assert (forall ((a@@0 T@Seq_3107) (b@@0 T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.550:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3107| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_28731) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_13318| s@@17))) (|Seq#ContainsTrigger_13318| s@@17 (|Seq#Index_13318| s@@17 i@@3)))
 :qid |stdinbpl.443:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_13318| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3107) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3107| s@@18))) (|Seq#ContainsTrigger_3107| s@@18 (|Seq#Index_3107| s@@18 i@@4)))
 :qid |stdinbpl.443:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3107| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_28731) (s1@@3 T@Seq_28731) ) (!  (and (=> (= s0@@3 |Seq#Empty_13318|) (= (|Seq#Append_13318| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_13318|) (= (|Seq#Append_13318| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.261:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_13318| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3107) (s1@@4 T@Seq_3107) ) (!  (and (=> (= s0@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3107|) (= (|Seq#Append_3107| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.261:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3107| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_13318| (|Seq#Singleton_13459| t@@3) 0) t@@3)
 :qid |stdinbpl.265:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_13459| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3107| (|Seq#Singleton_3107| t@@4) 0) t@@4)
 :qid |stdinbpl.265:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3107| t@@4))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_22503) (Mask@@50 T@PolymorphicMapType_22524) (this@@11 T@Ref) (index@@2 Int) ) (!  (=> (state Heap@@27 Mask@@50) (= (|itemAt'| Heap@@27 this@@11 index@@2) (|itemAt#frame| (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@27) null (List this@@11)) this@@11 index@@2)))
 :qid |stdinbpl.816:15|
 :skolemid |83|
 :pattern ( (state Heap@@27 Mask@@50) (|itemAt'| Heap@@27 this@@11 index@@2))
)))
(assert (forall ((s@@19 T@Seq_28731) ) (! (<= 0 (|Seq#Length_13318| s@@19))
 :qid |stdinbpl.244:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_13318| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3107) ) (! (<= 0 (|Seq#Length_3107| s@@20))
 :qid |stdinbpl.244:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3107| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_28731) (s1@@5 T@Seq_28731) ) (!  (=> (|Seq#Equal_28731| s0@@5 s1@@5) (and (= (|Seq#Length_13318| s0@@5) (|Seq#Length_13318| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_13318| s0@@5))) (= (|Seq#Index_13318| s0@@5 j@@6) (|Seq#Index_13318| s1@@5 j@@6)))
 :qid |stdinbpl.540:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_13318| s0@@5 j@@6))
 :pattern ( (|Seq#Index_13318| s1@@5 j@@6))
))))
 :qid |stdinbpl.537:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_28731| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3107) (s1@@6 T@Seq_3107) ) (!  (=> (|Seq#Equal_3107| s0@@6 s1@@6) (and (= (|Seq#Length_3107| s0@@6) (|Seq#Length_3107| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3107| s0@@6))) (= (|Seq#Index_3107| s0@@6 j@@7) (|Seq#Index_3107| s1@@6 j@@7)))
 :qid |stdinbpl.540:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3107| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3107| s1@@6 j@@7))
))))
 :qid |stdinbpl.537:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3107| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_22503) (Mask@@51 T@PolymorphicMapType_22524) (this@@12 T@Ref) ) (!  (=> (state Heap@@28 Mask@@51) (= (|length'| Heap@@28 this@@12) (|length#frame| (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@28) null (List this@@12)) this@@12)))
 :qid |stdinbpl.630:15|
 :skolemid |61|
 :pattern ( (state Heap@@28 Mask@@51) (|length'| Heap@@28 this@@12))
)))
(assert (forall ((this@@13 T@Ref) ) (! (= (getPredWandId_13406_13407 (List this@@13)) 0)
 :qid |stdinbpl.1020:15|
 :skolemid |104|
 :pattern ( (List this@@13))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_13318| (|Seq#Singleton_13459| t@@5)) 1)
 :qid |stdinbpl.252:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_13459| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3107| (|Seq#Singleton_3107| t@@6)) 1)
 :qid |stdinbpl.252:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3107| t@@6))
)))
(assert (forall ((s@@21 T@Seq_28731) (t@@7 T@Seq_28731) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_13318| s@@21))) (= (|Seq#Take_13318| (|Seq#Append_13318| s@@21 t@@7) n@@17) (|Seq#Take_13318| s@@21 n@@17)))
 :qid |stdinbpl.394:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_13318| (|Seq#Append_13318| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3107) (t@@8 T@Seq_3107) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3107| s@@22))) (= (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18) (|Seq#Take_3107| s@@22 n@@18)))
 :qid |stdinbpl.394:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3107| (|Seq#Append_3107| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_28731) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_13318| s@@23))) (= (|Seq#Length_13318| (|Seq#Update_13318| s@@23 i@@5 v@@2)) (|Seq#Length_13318| s@@23)))
 :qid |stdinbpl.293:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_13318| (|Seq#Update_13318| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_13318| s@@23) (|Seq#Update_13318| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3107) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3107| s@@24))) (= (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)) (|Seq#Length_3107| s@@24)))
 :qid |stdinbpl.293:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3107| (|Seq#Update_3107| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3107| s@@24) (|Seq#Update_3107| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_22503) (o_13 T@Ref) (f_66 T@Field_13406_28795) (v@@4 T@Seq_3107) ) (! (succHeap Heap@@29 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@29) (store (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@29) o_13 f_66 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@29) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@29) (store (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@29) o_13 f_66 v@@4)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_22503) (o_13@@0 T@Ref) (f_66@@0 T@Field_13406_3244) (v@@5 Int) ) (! (succHeap Heap@@30 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@30) (store (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@30) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@30) (store (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@30) o_13@@0 f_66@@0 v@@5) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@30) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_22503) (o_13@@1 T@Ref) (f_66@@1 T@Field_35579_35584) (v@@6 T@PolymorphicMapType_23052) ) (! (succHeap Heap@@31 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@31) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@31) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@31) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@31) o_13@@1 f_66@@1 v@@6) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@31) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_22503) (o_13@@2 T@Ref) (f_66@@2 T@Field_29168_29169) (v@@7 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@32) (store (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@32) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@32) (store (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@32) o_13@@2 f_66@@2 v@@7) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@32) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_22503) (o_13@@3 T@Ref) (f_66@@3 T@Field_13406_35501) (v@@8 T@Seq_28731) ) (! (succHeap Heap@@33 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@33) (store (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@33) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@33) (store (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@33) o_13@@3 f_66@@3 v@@8) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@33) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_22503) (o_13@@4 T@Ref) (f_66@@4 T@Field_13406_13311) (v@@9 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@34) (store (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@34) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@34) (store (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@34) o_13@@4 f_66@@4 v@@9) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@34) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_22503) (o_13@@5 T@Ref) (f_66@@5 T@Field_13406_53) (v@@10 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@35) (store (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@35) o_13@@5 f_66@@5 v@@10) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@35) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@35) (store (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@35) o_13@@5 f_66@@5 v@@10) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_22503) (o_13@@6 T@Ref) (f_66@@6 T@Field_28793_28795) (v@@11 T@Seq_3107) ) (! (succHeap Heap@@36 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@36) (store (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@36) o_13@@6 f_66@@6 v@@11) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@36) (store (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@36) o_13@@6 f_66@@6 v@@11) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@36) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_22503) (o_13@@7 T@Ref) (f_66@@7 T@Field_28651_3244) (v@@12 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@37) (store (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@37) o_13@@7 f_66@@7 v@@12) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@37) (store (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@37) o_13@@7 f_66@@7 v@@12) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@37) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_22503) (o_13@@8 T@Ref) (f_66@@8 T@Field_13317_35584) (v@@13 T@PolymorphicMapType_23052) ) (! (succHeap Heap@@38 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@38) (store (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@38) o_13@@8 f_66@@8 v@@13) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@38) (store (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@38) o_13@@8 f_66@@8 v@@13) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@38) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_22503) (o_13@@9 T@Ref) (f_66@@9 T@Field_13317_13407) (v@@14 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@39) (store (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@39) o_13@@9 f_66@@9 v@@14) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@39) (store (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@39) o_13@@9 f_66@@9 v@@14) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@39) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_22503) (o_13@@10 T@Ref) (f_66@@10 T@Field_28728_28733) (v@@15 T@Seq_28731) ) (! (succHeap Heap@@40 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@40) (store (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@40) o_13@@10 f_66@@10 v@@15) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@40) (store (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@40) o_13@@10 f_66@@10 v@@15) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@40) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_22503) (o_13@@11 T@Ref) (f_66@@11 T@Field_22576_22577) (v@@16 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@41) (store (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@41) o_13@@11 f_66@@11 v@@16) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@41) (store (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@41) o_13@@11 f_66@@11 v@@16) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@41) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_22503) (o_13@@12 T@Ref) (f_66@@12 T@Field_22563_53) (v@@17 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_22503 (store (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@42) o_13@@12 f_66@@12 v@@17) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_22503 (store (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@42) o_13@@12 f_66@@12 v@@17) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@42) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@42)))
)))
(assert (forall ((this@@14 T@Ref) ) (! (= (PredicateMaskField_13406 (List this@@14)) (|List#sm| this@@14))
 :qid |stdinbpl.1012:15|
 :skolemid |102|
 :pattern ( (PredicateMaskField_13406 (List this@@14)))
)))
(assert (forall ((s@@25 T@Seq_28731) (t@@9 T@Seq_28731) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_13318| s@@25))) (= (|Seq#Drop_13318| (|Seq#Append_13318| s@@25 t@@9) n@@19) (|Seq#Append_13318| (|Seq#Drop_13318| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.408:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_13318| (|Seq#Append_13318| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3107) (t@@10 T@Seq_3107) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3107| s@@26))) (= (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20) (|Seq#Append_3107| (|Seq#Drop_3107| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.408:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3107| (|Seq#Append_3107| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_28731) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_13318| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_13318| (|Seq#Drop_13318| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_13318| s@@27 i@@7))))
 :qid |stdinbpl.344:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_13318| s@@27 n@@21) (|Seq#Index_13318| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3107) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3107| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3107| (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3107| s@@28 i@@8))))
 :qid |stdinbpl.344:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3107| s@@28 n@@22) (|Seq#Index_3107| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_28731) (s1@@7 T@Seq_28731) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_13318|)) (not (= s1@@7 |Seq#Empty_13318|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_13318| s0@@7))) (= (|Seq#Index_13318| (|Seq#Append_13318| s0@@7 s1@@7) n@@23) (|Seq#Index_13318| s0@@7 n@@23)))
 :qid |stdinbpl.284:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_13318| (|Seq#Append_13318| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_13318| s0@@7 n@@23) (|Seq#Append_13318| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3107) (s1@@8 T@Seq_3107) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3107|)) (not (= s1@@8 |Seq#Empty_3107|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3107| s0@@8))) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24) (|Seq#Index_3107| s0@@8 n@@24)))
 :qid |stdinbpl.284:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3107| (|Seq#Append_3107| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3107| s0@@8 n@@24) (|Seq#Append_3107| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_28731) (s1@@9 T@Seq_28731) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_13318|)) (not (= s1@@9 |Seq#Empty_13318|))) (<= 0 m)) (< m (|Seq#Length_13318| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_13318| s0@@9)) (|Seq#Length_13318| s0@@9)) m) (= (|Seq#Index_13318| (|Seq#Append_13318| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_13318| s0@@9))) (|Seq#Index_13318| s1@@9 m))))
 :qid |stdinbpl.289:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_13318| s1@@9 m) (|Seq#Append_13318| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3107) (s1@@10 T@Seq_3107) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3107|)) (not (= s1@@10 |Seq#Empty_3107|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3107| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10)) (|Seq#Length_3107| s0@@10)) m@@0) (= (|Seq#Index_3107| (|Seq#Append_3107| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3107| s0@@10))) (|Seq#Index_3107| s1@@10 m@@0))))
 :qid |stdinbpl.289:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3107| s1@@10 m@@0) (|Seq#Append_3107| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_22503) (ExhaleHeap@@19 T@PolymorphicMapType_22503) (Mask@@52 T@PolymorphicMapType_22524) (pm_f_37@@3 T@Field_29168_29169) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@52) (=> (and (HasDirectPerm_13406_13407 Mask@@52 null pm_f_37@@3) (IsPredicateField_13406_13407 pm_f_37@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29@@13 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37 f_29@@13) (= (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@43) o2_37 f_29@@13) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37 f_29@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37 f_29@@13))
)) (forall ((o2_37@@0 T@Ref) (f_29@@14 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@0 f_29@@14) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@43) o2_37@@0 f_29@@14) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@0 f_29@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@0 f_29@@14))
))) (forall ((o2_37@@1 T@Ref) (f_29@@15 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@1 f_29@@15) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@43) o2_37@@1 f_29@@15) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@1 f_29@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@1 f_29@@15))
))) (forall ((o2_37@@2 T@Ref) (f_29@@16 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@2 f_29@@16) (= (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@43) o2_37@@2 f_29@@16) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@2 f_29@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@2 f_29@@16))
))) (forall ((o2_37@@3 T@Ref) (f_29@@17 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@3 f_29@@17) (= (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@43) o2_37@@3 f_29@@17) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@3 f_29@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@3 f_29@@17))
))) (forall ((o2_37@@4 T@Ref) (f_29@@18 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@4 f_29@@18) (= (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@43) o2_37@@4 f_29@@18) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@4 f_29@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@4 f_29@@18))
))) (forall ((o2_37@@5 T@Ref) (f_29@@19 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@5 f_29@@19) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@43) o2_37@@5 f_29@@19) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@5 f_29@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@5 f_29@@19))
))) (forall ((o2_37@@6 T@Ref) (f_29@@20 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@6 f_29@@20) (= (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@43) o2_37@@6 f_29@@20) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@6 f_29@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@6 f_29@@20))
))) (forall ((o2_37@@7 T@Ref) (f_29@@21 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@7 f_29@@21) (= (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@43) o2_37@@7 f_29@@21) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@7 f_29@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@7 f_29@@21))
))) (forall ((o2_37@@8 T@Ref) (f_29@@22 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@8 f_29@@22) (= (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@43) o2_37@@8 f_29@@22) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@8 f_29@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@8 f_29@@22))
))) (forall ((o2_37@@9 T@Ref) (f_29@@23 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@9 f_29@@23) (= (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@43) o2_37@@9 f_29@@23) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@9 f_29@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@9 f_29@@23))
))) (forall ((o2_37@@10 T@Ref) (f_29@@24 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@10 f_29@@24) (= (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@43) o2_37@@10 f_29@@24) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@10 f_29@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@10 f_29@@24))
))) (forall ((o2_37@@11 T@Ref) (f_29@@25 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@11 f_29@@25) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@43) o2_37@@11 f_29@@25) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@11 f_29@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@11 f_29@@25))
))) (forall ((o2_37@@12 T@Ref) (f_29@@26 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) null (PredicateMaskField_13406 pm_f_37@@3))) o2_37@@12 f_29@@26) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@43) o2_37@@12 f_29@@26) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@12 f_29@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@19) o2_37@@12 f_29@@26))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@19 Mask@@52) (IsPredicateField_13406_13407 pm_f_37@@3))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_22503) (ExhaleHeap@@20 T@PolymorphicMapType_22503) (Mask@@53 T@PolymorphicMapType_22524) (pm_f_37@@4 T@Field_13317_13407) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@53) (=> (and (HasDirectPerm_13317_13407 Mask@@53 null pm_f_37@@4) (IsPredicateField_13317_78755 pm_f_37@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_37@@13 T@Ref) (f_29@@27 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@13 f_29@@27) (= (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@44) o2_37@@13 f_29@@27) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@13 f_29@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@13 f_29@@27))
)) (forall ((o2_37@@14 T@Ref) (f_29@@28 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@14 f_29@@28) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@44) o2_37@@14 f_29@@28) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@14 f_29@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@14 f_29@@28))
))) (forall ((o2_37@@15 T@Ref) (f_29@@29 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@15 f_29@@29) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@44) o2_37@@15 f_29@@29) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@15 f_29@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@15 f_29@@29))
))) (forall ((o2_37@@16 T@Ref) (f_29@@30 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@16 f_29@@30) (= (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@44) o2_37@@16 f_29@@30) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@16 f_29@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@16 f_29@@30))
))) (forall ((o2_37@@17 T@Ref) (f_29@@31 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@17 f_29@@31) (= (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@44) o2_37@@17 f_29@@31) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@17 f_29@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@17 f_29@@31))
))) (forall ((o2_37@@18 T@Ref) (f_29@@32 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@18 f_29@@32) (= (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@44) o2_37@@18 f_29@@32) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@18 f_29@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@18 f_29@@32))
))) (forall ((o2_37@@19 T@Ref) (f_29@@33 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@19 f_29@@33) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) o2_37@@19 f_29@@33) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@19 f_29@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@19 f_29@@33))
))) (forall ((o2_37@@20 T@Ref) (f_29@@34 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@20 f_29@@34) (= (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@44) o2_37@@20 f_29@@34) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@20 f_29@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@20 f_29@@34))
))) (forall ((o2_37@@21 T@Ref) (f_29@@35 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@21 f_29@@35) (= (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@44) o2_37@@21 f_29@@35) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@21 f_29@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@21 f_29@@35))
))) (forall ((o2_37@@22 T@Ref) (f_29@@36 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@22 f_29@@36) (= (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@44) o2_37@@22 f_29@@36) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@22 f_29@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@22 f_29@@36))
))) (forall ((o2_37@@23 T@Ref) (f_29@@37 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@23 f_29@@37) (= (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@44) o2_37@@23 f_29@@37) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@23 f_29@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@23 f_29@@37))
))) (forall ((o2_37@@24 T@Ref) (f_29@@38 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@24 f_29@@38) (= (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@44) o2_37@@24 f_29@@38) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@24 f_29@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@24 f_29@@38))
))) (forall ((o2_37@@25 T@Ref) (f_29@@39 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@25 f_29@@39) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@44) o2_37@@25 f_29@@39) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@25 f_29@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@25 f_29@@39))
))) (forall ((o2_37@@26 T@Ref) (f_29@@40 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@44) null (PredicateMaskField_13317 pm_f_37@@4))) o2_37@@26 f_29@@40) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@44) o2_37@@26 f_29@@40) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@26 f_29@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@20) o2_37@@26 f_29@@40))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@20 Mask@@53) (IsPredicateField_13317_78755 pm_f_37@@4))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_22503) (ExhaleHeap@@21 T@PolymorphicMapType_22503) (Mask@@54 T@PolymorphicMapType_22524) (pm_f_37@@5 T@Field_29168_29169) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@54) (=> (and (HasDirectPerm_13406_13407 Mask@@54 null pm_f_37@@5) (IsWandField_13406_83226 pm_f_37@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_37@@27 T@Ref) (f_29@@41 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@27 f_29@@41) (= (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@45) o2_37@@27 f_29@@41) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@27 f_29@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@27 f_29@@41))
)) (forall ((o2_37@@28 T@Ref) (f_29@@42 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@28 f_29@@42) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@45) o2_37@@28 f_29@@42) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@28 f_29@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@28 f_29@@42))
))) (forall ((o2_37@@29 T@Ref) (f_29@@43 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@29 f_29@@43) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@45) o2_37@@29 f_29@@43) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@29 f_29@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@29 f_29@@43))
))) (forall ((o2_37@@30 T@Ref) (f_29@@44 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@30 f_29@@44) (= (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@45) o2_37@@30 f_29@@44) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@30 f_29@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@30 f_29@@44))
))) (forall ((o2_37@@31 T@Ref) (f_29@@45 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@31 f_29@@45) (= (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@45) o2_37@@31 f_29@@45) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@31 f_29@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@31 f_29@@45))
))) (forall ((o2_37@@32 T@Ref) (f_29@@46 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@32 f_29@@46) (= (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@45) o2_37@@32 f_29@@46) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@32 f_29@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@32 f_29@@46))
))) (forall ((o2_37@@33 T@Ref) (f_29@@47 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@33 f_29@@47) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@45) o2_37@@33 f_29@@47) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@33 f_29@@47)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@33 f_29@@47))
))) (forall ((o2_37@@34 T@Ref) (f_29@@48 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@34 f_29@@48) (= (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@45) o2_37@@34 f_29@@48) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@34 f_29@@48)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@34 f_29@@48))
))) (forall ((o2_37@@35 T@Ref) (f_29@@49 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@35 f_29@@49) (= (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@45) o2_37@@35 f_29@@49) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@35 f_29@@49)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@35 f_29@@49))
))) (forall ((o2_37@@36 T@Ref) (f_29@@50 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@36 f_29@@50) (= (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@45) o2_37@@36 f_29@@50) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@36 f_29@@50)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@36 f_29@@50))
))) (forall ((o2_37@@37 T@Ref) (f_29@@51 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@37 f_29@@51) (= (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@45) o2_37@@37 f_29@@51) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@37 f_29@@51)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@37 f_29@@51))
))) (forall ((o2_37@@38 T@Ref) (f_29@@52 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@38 f_29@@52) (= (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@45) o2_37@@38 f_29@@52) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@38 f_29@@52)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@38 f_29@@52))
))) (forall ((o2_37@@39 T@Ref) (f_29@@53 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@39 f_29@@53) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@45) o2_37@@39 f_29@@53) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@39 f_29@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@39 f_29@@53))
))) (forall ((o2_37@@40 T@Ref) (f_29@@54 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) null (WandMaskField_13406 pm_f_37@@5))) o2_37@@40 f_29@@54) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@45) o2_37@@40 f_29@@54) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@40 f_29@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@21) o2_37@@40 f_29@@54))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@21 Mask@@54) (IsWandField_13406_83226 pm_f_37@@5))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_22503) (ExhaleHeap@@22 T@PolymorphicMapType_22503) (Mask@@55 T@PolymorphicMapType_22524) (pm_f_37@@6 T@Field_13317_13407) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@22 Mask@@55) (=> (and (HasDirectPerm_13317_13407 Mask@@55 null pm_f_37@@6) (IsWandField_13317_82869 pm_f_37@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_37@@41 T@Ref) (f_29@@55 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@41 f_29@@55) (= (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@46) o2_37@@41 f_29@@55) (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@41 f_29@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@41 f_29@@55))
)) (forall ((o2_37@@42 T@Ref) (f_29@@56 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@42 f_29@@56) (= (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@46) o2_37@@42 f_29@@56) (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@42 f_29@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@42 f_29@@56))
))) (forall ((o2_37@@43 T@Ref) (f_29@@57 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@43 f_29@@57) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@46) o2_37@@43 f_29@@57) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@43 f_29@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@43 f_29@@57))
))) (forall ((o2_37@@44 T@Ref) (f_29@@58 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@44 f_29@@58) (= (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@46) o2_37@@44 f_29@@58) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@44 f_29@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@44 f_29@@58))
))) (forall ((o2_37@@45 T@Ref) (f_29@@59 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@45 f_29@@59) (= (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@46) o2_37@@45 f_29@@59) (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@45 f_29@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@45 f_29@@59))
))) (forall ((o2_37@@46 T@Ref) (f_29@@60 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@46 f_29@@60) (= (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@46) o2_37@@46 f_29@@60) (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@46 f_29@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@46 f_29@@60))
))) (forall ((o2_37@@47 T@Ref) (f_29@@61 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@47 f_29@@61) (= (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) o2_37@@47 f_29@@61) (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@47 f_29@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@47 f_29@@61))
))) (forall ((o2_37@@48 T@Ref) (f_29@@62 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@48 f_29@@62) (= (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@46) o2_37@@48 f_29@@62) (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@48 f_29@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@48 f_29@@62))
))) (forall ((o2_37@@49 T@Ref) (f_29@@63 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@49 f_29@@63) (= (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@46) o2_37@@49 f_29@@63) (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@49 f_29@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@49 f_29@@63))
))) (forall ((o2_37@@50 T@Ref) (f_29@@64 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@50 f_29@@64) (= (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@46) o2_37@@50 f_29@@64) (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@50 f_29@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@50 f_29@@64))
))) (forall ((o2_37@@51 T@Ref) (f_29@@65 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@51 f_29@@65) (= (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@46) o2_37@@51 f_29@@65) (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@51 f_29@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@51 f_29@@65))
))) (forall ((o2_37@@52 T@Ref) (f_29@@66 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@52 f_29@@66) (= (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@46) o2_37@@52 f_29@@66) (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@52 f_29@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@52 f_29@@66))
))) (forall ((o2_37@@53 T@Ref) (f_29@@67 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@53 f_29@@67) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@46) o2_37@@53 f_29@@67) (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@53 f_29@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@53 f_29@@67))
))) (forall ((o2_37@@54 T@Ref) (f_29@@68 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@46) null (WandMaskField_13317 pm_f_37@@6))) o2_37@@54 f_29@@68) (= (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@46) o2_37@@54 f_29@@68) (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@54 f_29@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| ExhaleHeap@@22) o2_37@@54 f_29@@68))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@22 Mask@@55) (IsWandField_13317_82869 pm_f_37@@6))
)))
(assert (forall ((o_13@@13 T@Ref) (f_20 T@Field_22576_22577) (Heap@@47 T@PolymorphicMapType_22503) ) (!  (=> (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@47) o_13@@13 $allocated) (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@47) (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@47) o_13@@13 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@47) o_13@@13 f_20))
)))
(assert (forall ((s@@29 T@Seq_28731) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_13318| s@@29))) (= (|Seq#Index_13318| s@@29 i@@9) x@@3)) (|Seq#Contains_13318| s@@29 x@@3))
 :qid |stdinbpl.441:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_13318| s@@29 x@@3) (|Seq#Index_13318| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3107) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3107| s@@30))) (= (|Seq#Index_3107| s@@30 i@@10) x@@4)) (|Seq#Contains_3107| s@@30 x@@4))
 :qid |stdinbpl.441:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3107| s@@30 x@@4) (|Seq#Index_3107| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_28731) (s1@@11 T@Seq_28731) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_28731| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28731| s0@@11 s1@@11))) (not (= (|Seq#Length_13318| s0@@11) (|Seq#Length_13318| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_28731| s0@@11 s1@@11))) (= (|Seq#Length_13318| s0@@11) (|Seq#Length_13318| s1@@11))) (= (|Seq#SkolemDiff_28731| s0@@11 s1@@11) (|Seq#SkolemDiff_28731| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_28731| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_28731| s0@@11 s1@@11) (|Seq#Length_13318| s0@@11))) (not (= (|Seq#Index_13318| s0@@11 (|Seq#SkolemDiff_28731| s0@@11 s1@@11)) (|Seq#Index_13318| s1@@11 (|Seq#SkolemDiff_28731| s0@@11 s1@@11))))))
 :qid |stdinbpl.545:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_28731| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3107) (s1@@12 T@Seq_3107) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3107| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (not (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3107| s0@@12 s1@@12))) (= (|Seq#Length_3107| s0@@12) (|Seq#Length_3107| s1@@12))) (= (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#SkolemDiff_3107| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3107| s0@@12 s1@@12) (|Seq#Length_3107| s0@@12))) (not (= (|Seq#Index_3107| s0@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12)) (|Seq#Index_3107| s1@@12 (|Seq#SkolemDiff_3107| s0@@12 s1@@12))))))
 :qid |stdinbpl.545:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3107| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_29168_29169) (v_1@@1 T@FrameType) (q T@Field_29168_29169) (w@@1 T@FrameType) (r T@Field_29168_29169) (u T@FrameType) ) (!  (=> (and (InsidePredicate_29168_29168 p@@2 v_1@@1 q w@@1) (InsidePredicate_29168_29168 q w@@1 r u)) (InsidePredicate_29168_29168 p@@2 v_1@@1 r u))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29168_29168 p@@2 v_1@@1 q w@@1) (InsidePredicate_29168_29168 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_29168_29169) (v_1@@2 T@FrameType) (q@@0 T@Field_29168_29169) (w@@2 T@FrameType) (r@@0 T@Field_13317_13407) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_29168_29168 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_29168_22563 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_29168_22563 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29168_29168 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_29168_22563 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_29168_29169) (v_1@@3 T@FrameType) (q@@1 T@Field_13317_13407) (w@@3 T@FrameType) (r@@1 T@Field_29168_29169) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_29168_22563 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22563_29168 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_29168_29168 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29168_22563 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_22563_29168 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_29168_29169) (v_1@@4 T@FrameType) (q@@2 T@Field_13317_13407) (w@@4 T@FrameType) (r@@2 T@Field_13317_13407) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_29168_22563 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22563_22563 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_29168_22563 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_29168_22563 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_22563_22563 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_13317_13407) (v_1@@5 T@FrameType) (q@@3 T@Field_29168_29169) (w@@5 T@FrameType) (r@@3 T@Field_29168_29169) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_22563_29168 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_29168_29168 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_22563_29168 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22563_29168 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_29168_29168 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_13317_13407) (v_1@@6 T@FrameType) (q@@4 T@Field_29168_29169) (w@@6 T@FrameType) (r@@4 T@Field_13317_13407) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_22563_29168 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_29168_22563 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_22563_22563 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22563_29168 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_29168_22563 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_13317_13407) (v_1@@7 T@FrameType) (q@@5 T@Field_13317_13407) (w@@7 T@FrameType) (r@@5 T@Field_29168_29169) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_22563_22563 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22563_29168 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_22563_29168 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22563_22563 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_22563_29168 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_13317_13407) (v_1@@8 T@FrameType) (q@@6 T@Field_13317_13407) (w@@8 T@FrameType) (r@@6 T@Field_13317_13407) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_22563_22563 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22563_22563 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_22563_22563 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.212:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22563_22563 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_22563_22563 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_28731) ) (!  (=> (= (|Seq#Length_13318| s@@31) 0) (= s@@31 |Seq#Empty_13318|))
 :qid |stdinbpl.248:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_13318| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3107) ) (!  (=> (= (|Seq#Length_3107| s@@32) 0) (= s@@32 |Seq#Empty_3107|))
 :qid |stdinbpl.248:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3107| s@@32))
)))
(assert (forall ((s@@33 T@Seq_28731) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_13318| s@@33 n@@25) |Seq#Empty_13318|))
 :qid |stdinbpl.424:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_13318| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3107) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3107| s@@34 n@@26) |Seq#Empty_3107|))
 :qid |stdinbpl.424:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3107| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@0 () T@PolymorphicMapType_22524)
(declare-fun this@@15 () T@Ref)
(declare-fun Heap@@48 () T@PolymorphicMapType_22503)
(declare-fun PostMask@0 () T@PolymorphicMapType_22524)
(declare-fun i_17 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_22503)
(declare-fun elem_1 () Int)
(declare-fun i_2 () Int)
(declare-fun Heap@14 () T@PolymorphicMapType_22503)
(declare-fun Mask@7 () T@PolymorphicMapType_22524)
(declare-fun Mask@6 () T@PolymorphicMapType_22524)
(declare-fun Heap@12 () T@PolymorphicMapType_22503)
(declare-fun Heap@11 () T@PolymorphicMapType_22503)
(declare-fun newPMask@0 () T@PolymorphicMapType_23052)
(declare-fun Heap@13 () T@PolymorphicMapType_22503)
(declare-fun newPMask@1 () T@PolymorphicMapType_23052)
(declare-fun Heap@8 () T@PolymorphicMapType_22503)
(declare-fun Heap@9 () T@PolymorphicMapType_22503)
(declare-fun Heap@10 () T@PolymorphicMapType_22503)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun QPMask@3 () T@PolymorphicMapType_22524)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_29987 (T@Seq_28731) T@FrameType)
(declare-fun FrameFragment_6866 (Int) T@FrameType)
(declare-fun i_14_1 () Int)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun Mask@5 () T@PolymorphicMapType_22524)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_22524)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun i_10_1 () Int)
(declare-fun j_1 () Int)
(declare-fun Mask@4 () T@PolymorphicMapType_22524)
(declare-fun Heap@4 () T@PolymorphicMapType_22503)
(declare-fun Heap@7 () T@PolymorphicMapType_22503)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@5 () T@PolymorphicMapType_22503)
(declare-fun Heap@6 () T@PolymorphicMapType_22503)
(declare-fun Heap@2 () T@PolymorphicMapType_22503)
(declare-fun Heap@3 () T@PolymorphicMapType_22503)
(declare-fun i_11 () Int)
(declare-fun Mask@2 () T@PolymorphicMapType_22524)
(declare-fun Mask@1 () T@PolymorphicMapType_22524)
(declare-fun Heap@1 () T@PolymorphicMapType_22503)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_22524)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_22524)
(declare-fun Mask@3 () T@PolymorphicMapType_22524)
(declare-fun Heap@0 () T@PolymorphicMapType_22503)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun n@@27 () T@Ref)
(set-info :boogie-vc-id append)
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
 (=> (= (ControlFlow 0 0) 113) (let ((anon65_Then_correct  (and (=> (= (ControlFlow 0 107) (- 0 109)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))) (and (=> (= (ControlFlow 0 107) (- 0 108)) (<= 0 (- (length_1 Heap@@48 this@@15) 1))) (=> (<= 0 (- (length_1 Heap@@48 this@@15) 1)) (=> (= (ControlFlow 0 107) (- 0 106)) (< (- (length_1 Heap@@48 this@@15) 1) (length_1 Heap@@48 this@@15)))))))))
(let ((anon64_Then_correct  (=> (= (ControlFlow 0 105) (- 0 104)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))))))
(let ((anon73_Then_correct  (=> (= (ControlFlow 0 97) (- 0 96)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15)))))))
(let ((anon76_Then_correct  (and (=> (= (ControlFlow 0 91) (- 0 93)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (<= 0 i_17)) (=> (<= 0 i_17) (=> (= (ControlFlow 0 91) (- 0 90)) (< i_17 (length_1 Heap@@48 this@@15)))))))))
(let ((anon75_Then_correct  (and (=> (= (ControlFlow 0 87) (- 0 89)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15)))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (<= 0 i_17)) (=> (<= 0 i_17) (=> (= (ControlFlow 0 87) (- 0 86)) (< i_17 (length_1 PostHeap@0 this@@15)))))))))
(let ((anon26_correct true))
(let ((anon74_Then_correct  (=> (and (<= 0 i_17) (< i_17 (- (length_1 PostHeap@0 this@@15) 1))) (and (and (=> (= (ControlFlow 0 94) 87) anon75_Then_correct) (=> (= (ControlFlow 0 94) 91) anon76_Then_correct)) (=> (= (ControlFlow 0 94) 84) anon26_correct)))))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 i_17) (< i_17 (- (length_1 PostHeap@0 this@@15) 1)))) (= (ControlFlow 0 85) 84)) anon26_correct)))
(let ((anon72_Then_correct  (=> (<= 0 i_17) (and (and (=> (= (ControlFlow 0 98) 97) anon73_Then_correct) (=> (= (ControlFlow 0 98) 94) anon74_Then_correct)) (=> (= (ControlFlow 0 98) 85) anon74_Else_correct)))))
(let ((anon72_Else_correct  (=> (< i_17 0) (and (=> (= (ControlFlow 0 95) 94) anon74_Then_correct) (=> (= (ControlFlow 0 95) 85) anon74_Else_correct)))))
(let ((anon71_Else_correct true))
(let ((anon70_Else_correct  (=> (= (itemAt PostHeap@0 this@@15 (- (length_1 PostHeap@0 this@@15) 1)) elem_1) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 99) 83) anon71_Else_correct) (=> (= (ControlFlow 0 99) 98) anon72_Then_correct)) (=> (= (ControlFlow 0 99) 95) anon72_Else_correct))))))
(let ((anon70_Then_correct  (and (=> (= (ControlFlow 0 80) (- 0 82)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15)))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (<= 0 (- (length_1 PostHeap@0 this@@15) 1))) (=> (<= 0 (- (length_1 PostHeap@0 this@@15) 1)) (=> (= (ControlFlow 0 80) (- 0 79)) (< (- (length_1 PostHeap@0 this@@15) 1) (length_1 PostHeap@0 this@@15)))))))))
(let ((anon69_Then_correct  (=> (= (ControlFlow 0 78) (- 0 77)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15)))))))
(let ((anon68_Else_correct  (=> (= (length_1 PostHeap@0 this@@15) (+ (length_1 Heap@@48 this@@15) 1)) (=> (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)) (and (and (=> (= (ControlFlow 0 100) 78) anon69_Then_correct) (=> (= (ControlFlow 0 100) 80) anon70_Then_correct)) (=> (= (ControlFlow 0 100) 99) anon70_Else_correct))))))
(let ((anon68_Then_correct  (=> (= (ControlFlow 0 76) (- 0 75)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))))))
(let ((anon67_Then_correct  (=> (= (ControlFlow 0 74) (- 0 73)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| PostMask@0) null (List this@@15)))))))
(let ((anon66_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_22524 (store (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) null (List this@@15) (+ (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) null (List this@@15)) FullPerm)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (and (=> (= (ControlFlow 0 101) 74) anon67_Then_correct) (=> (= (ControlFlow 0 101) 76) anon68_Then_correct)) (=> (= (ControlFlow 0 101) 100) anon68_Else_correct))))))
(let ((anon60_correct true))
(let ((anon92_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (- (length_1 Heap@14 this@@15) 1)))) (= (ControlFlow 0 28) 25)) anon60_correct)))
(let ((anon92_Then_correct  (=> (and (<= 0 i_2) (< i_2 (- (length_1 Heap@14 this@@15) 1))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= (itemAt Heap@14 this@@15 i_2) (itemAt Heap@@48 this@@15 i_2))) (=> (= (itemAt Heap@14 this@@15 i_2) (itemAt Heap@@48 this@@15 i_2)) (=> (= (ControlFlow 0 26) 25) anon60_correct))))))
(let ((anon91_Else_correct true))
(let ((anon57_correct  (=> (= Mask@7 (PolymorphicMapType_22524 (store (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@6) null (List this@@15) (- (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@6) null (List this@@15)) FullPerm)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@6) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@6))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (= (length_1 Heap@14 this@@15) (+ (length_1 Heap@@48 this@@15) 1))) (=> (= (length_1 Heap@14 this@@15) (+ (length_1 Heap@@48 this@@15) 1)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= (itemAt Heap@14 this@@15 (- (length_1 Heap@14 this@@15) 1)) elem_1)) (=> (= (itemAt Heap@14 this@@15 (- (length_1 Heap@14 this@@15) 1)) elem_1) (and (and (=> (= (ControlFlow 0 29) 24) anon91_Else_correct) (=> (= (ControlFlow 0 29) 26) anon92_Then_correct)) (=> (= (ControlFlow 0 29) 28) anon92_Else_correct)))))))))
(let ((anon90_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 29)) anon57_correct)))
(let ((anon90_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@6) null (List this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@6) null (List this@@15))) (=> (= (ControlFlow 0 32) 29) anon57_correct))))))
(let ((anon55_correct  (=> (= Heap@12 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@11) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15) (PolymorphicMapType_23052 (store (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) this@@15 nodes_1 true) (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))) (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@11) null (|List#sm| this@@15))))) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@11) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@11))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_3 T@Ref) (f_24 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3 f_24) (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| newPMask@0) o_3 f_24))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| newPMask@0) o_3 f_24))
)) (forall ((o_3@@0 T@Ref) (f_24@@0 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@0 f_24@@0) (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| newPMask@0) o_3@@0 f_24@@0))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| newPMask@0) o_3@@0 f_24@@0))
))) (forall ((o_3@@1 T@Ref) (f_24@@1 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@1 f_24@@1) (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| newPMask@0) o_3@@1 f_24@@1))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| newPMask@0) o_3@@1 f_24@@1))
))) (forall ((o_3@@2 T@Ref) (f_24@@2 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@2 f_24@@2) (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| newPMask@0) o_3@@2 f_24@@2))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| newPMask@0) o_3@@2 f_24@@2))
))) (forall ((o_3@@3 T@Ref) (f_24@@3 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@3 f_24@@3) (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| newPMask@0) o_3@@3 f_24@@3))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| newPMask@0) o_3@@3 f_24@@3))
))) (forall ((o_3@@4 T@Ref) (f_24@@4 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@4 f_24@@4) (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| newPMask@0) o_3@@4 f_24@@4))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| newPMask@0) o_3@@4 f_24@@4))
))) (forall ((o_3@@5 T@Ref) (f_24@@5 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@5 f_24@@5) (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| newPMask@0) o_3@@5 f_24@@5))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| newPMask@0) o_3@@5 f_24@@5))
))) (forall ((o_3@@6 T@Ref) (f_24@@6 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@6 f_24@@6) (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| newPMask@0) o_3@@6 f_24@@6))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| newPMask@0) o_3@@6 f_24@@6))
))) (forall ((o_3@@7 T@Ref) (f_24@@7 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@7 f_24@@7) (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| newPMask@0) o_3@@7 f_24@@7))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| newPMask@0) o_3@@7 f_24@@7))
))) (forall ((o_3@@8 T@Ref) (f_24@@8 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@8 f_24@@8) (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| newPMask@0) o_3@@8 f_24@@8))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| newPMask@0) o_3@@8 f_24@@8))
))) (forall ((o_3@@9 T@Ref) (f_24@@9 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@9 f_24@@9) (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| newPMask@0) o_3@@9 f_24@@9))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| newPMask@0) o_3@@9 f_24@@9))
))) (forall ((o_3@@10 T@Ref) (f_24@@10 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@10 f_24@@10) (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| newPMask@0) o_3@@10 f_24@@10))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| newPMask@0) o_3@@10 f_24@@10))
))) (forall ((o_3@@11 T@Ref) (f_24@@11 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@11 f_24@@11) (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| newPMask@0) o_3@@11 f_24@@11))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| newPMask@0) o_3@@11 f_24@@11))
))) (forall ((o_3@@12 T@Ref) (f_24@@12 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15))) o_3@@12 f_24@@12) (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| newPMask@0) o_3@@12 f_24@@12))
 :qid |stdinbpl.1851:27|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| newPMask@0) o_3@@12 f_24@@12))
))) (and (forall ((i_16_1 Int) ) (!  (=> (and (<= 0 i_16_1) (< i_16_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@12) this@@15 nodes_1)))) (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| newPMask@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@12) this@@15 nodes_1) i_16_1) val))
 :qid |stdinbpl.1855:20|
 :skolemid |155|
)) (= Heap@13 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@12) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@12) null (|List#sm| this@@15) newPMask@0) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@12) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@12))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_1 T@Ref) (f_10 T@Field_28728_28733) ) (!  (=> (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1 f_10) (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| newPMask@1) o_1 f_10))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13317_35751#PolymorphicMapType_23052| newPMask@1) o_1 f_10))
)) (forall ((o_1@@0 T@Ref) (f_10@@0 T@Field_28651_3244) ) (!  (=> (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@0 f_10@@0) (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| newPMask@1) o_1@@0 f_10@@0))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13313_3244#PolymorphicMapType_23052| newPMask@1) o_1@@0 f_10@@0))
))) (forall ((o_1@@1 T@Ref) (f_10@@1 T@Field_22576_22577) ) (!  (=> (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@1 f_10@@1) (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| newPMask@1) o_1@@1 f_10@@1))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| newPMask@1) o_1@@1 f_10@@1))
))) (forall ((o_1@@2 T@Ref) (f_10@@2 T@Field_22563_53) ) (!  (=> (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@2 f_10@@2) (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| newPMask@1) o_1@@2 f_10@@2))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13317_53#PolymorphicMapType_23052| newPMask@1) o_1@@2 f_10@@2))
))) (forall ((o_1@@3 T@Ref) (f_10@@3 T@Field_28793_28795) ) (!  (=> (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@3 f_10@@3) (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| newPMask@1) o_1@@3 f_10@@3))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13317_28795#PolymorphicMapType_23052| newPMask@1) o_1@@3 f_10@@3))
))) (forall ((o_1@@4 T@Ref) (f_10@@4 T@Field_13317_13407) ) (!  (=> (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@4 f_10@@4) (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| newPMask@1) o_1@@4 f_10@@4))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13317_29169#PolymorphicMapType_23052| newPMask@1) o_1@@4 f_10@@4))
))) (forall ((o_1@@5 T@Ref) (f_10@@5 T@Field_13317_35584) ) (!  (=> (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@5 f_10@@5) (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| newPMask@1) o_1@@5 f_10@@5))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_13317_80605#PolymorphicMapType_23052| newPMask@1) o_1@@5 f_10@@5))
))) (forall ((o_1@@6 T@Ref) (f_10@@6 T@Field_13406_35501) ) (!  (=> (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@6 f_10@@6) (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| newPMask@1) o_1@@6 f_10@@6))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_35751#PolymorphicMapType_23052| newPMask@1) o_1@@6 f_10@@6))
))) (forall ((o_1@@7 T@Ref) (f_10@@7 T@Field_13406_3244) ) (!  (=> (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@7 f_10@@7) (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| newPMask@1) o_1@@7 f_10@@7))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_3244#PolymorphicMapType_23052| newPMask@1) o_1@@7 f_10@@7))
))) (forall ((o_1@@8 T@Ref) (f_10@@8 T@Field_13406_13311) ) (!  (=> (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@8 f_10@@8) (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| newPMask@1) o_1@@8 f_10@@8))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_13311#PolymorphicMapType_23052| newPMask@1) o_1@@8 f_10@@8))
))) (forall ((o_1@@9 T@Ref) (f_10@@9 T@Field_13406_53) ) (!  (=> (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@9 f_10@@9) (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| newPMask@1) o_1@@9 f_10@@9))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_53#PolymorphicMapType_23052| newPMask@1) o_1@@9 f_10@@9))
))) (forall ((o_1@@10 T@Ref) (f_10@@10 T@Field_13406_28795) ) (!  (=> (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@10 f_10@@10) (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| newPMask@1) o_1@@10 f_10@@10))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_28795#PolymorphicMapType_23052| newPMask@1) o_1@@10 f_10@@10))
))) (forall ((o_1@@11 T@Ref) (f_10@@11 T@Field_29168_29169) ) (!  (=> (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@11 f_10@@11) (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| newPMask@1) o_1@@11 f_10@@11))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_29169#PolymorphicMapType_23052| newPMask@1) o_1@@11 f_10@@11))
))) (forall ((o_1@@12 T@Ref) (f_10@@12 T@Field_35579_35584) ) (!  (=> (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| (select (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15))) o_1@@12 f_10@@12) (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| newPMask@1) o_1@@12 f_10@@12))
 :qid |stdinbpl.1862:27|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_23052_29168_82061#PolymorphicMapType_23052| newPMask@1) o_1@@12 f_10@@12))
))) (and (and (forall ((i_17_1 Int) ) (!  (=> (and (<= 0 i_17_1) (< i_17_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@13) this@@15 nodes_1)))) (select (|PolymorphicMapType_23052_13310_13311#PolymorphicMapType_23052| newPMask@1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@13) this@@15 nodes_1) i_17_1) next))
 :qid |stdinbpl.1866:20|
 :skolemid |157|
)) (= Heap@14 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@13) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@13) null (|List#sm| this@@15) newPMask@1) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@13) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@13)))) (and (state Heap@14 Mask@6) (state Heap@14 Mask@6))))) (and (=> (= (ControlFlow 0 35) 32) anon90_Then_correct) (=> (= (ControlFlow 0 35) 34) anon90_Else_correct))))))
(let ((anon89_Else_correct  (=> (HasDirectPerm_13406_13407 Mask@6 null (List this@@15)) (=> (and (= Heap@11 Heap@8) (= (ControlFlow 0 37) 35)) anon55_correct))))
(let ((anon89_Then_correct  (=> (not (HasDirectPerm_13406_13407 Mask@6 null (List this@@15))) (=> (and (and (= Heap@9 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@8) (store (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@8) null (|List#sm| this@@15) ZeroPMask) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@8) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@8))) (= Heap@10 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@9) (store (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@9) null (List this@@15) freshVersion@0) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@9) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@9)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 36) 35))) anon55_correct))))
(let ((anon86_Else_correct  (=> (and (forall ((i_15_1_1 Int) ) (!  (=> (and (<= 0 i_15_1_1) (< i_15_1_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (|Seq#Contains_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_15_1_1)) (ite (< i_15_1_1 (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)) 1)) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_15_1_1) next) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (+ i_15_1_1 1))) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_15_1_1) next) null))))
 :qid |stdinbpl.1833:20|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_15_1_1) next))
)) (= Mask@6 (PolymorphicMapType_22524 (store (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@3) null (List this@@15) (+ (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@3) null (List this@@15)) FullPerm)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@3) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@3)))) (=> (and (and (state Heap@8 Mask@6) (state Heap@8 Mask@6)) (and (|List#trigger_13406| Heap@8 (List this@@15)) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@8) null (List this@@15)) (CombineFrames (FrameFragment_29987 (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)) (CombineFrames (FrameFragment_6866 (|List#condqp1| Heap@8 this@@15)) (FrameFragment_6866 (|List#condqp2| Heap@8 this@@15))))))) (and (=> (= (ControlFlow 0 38) 36) anon89_Then_correct) (=> (= (ControlFlow 0 38) 37) anon89_Else_correct))))))
(let ((anon52_correct true))
(let ((anon88_Else_correct  (=> (<= (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)) 1) i_14_1) (and (=> (= (ControlFlow 0 20) (- 0 21)) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1) next) null)) (=> (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1) next) null) (=> (= (ControlFlow 0 20) 16) anon52_correct))))))
(let ((anon88_Then_correct  (=> (< i_14_1 (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)) 1)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1) next) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (+ i_14_1 1)))) (=> (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1) next) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (+ i_14_1 1))) (=> (= (ControlFlow 0 18) 16) anon52_correct))))))
(let ((anon87_Then_correct  (=> (and (<= 0 i_14_1) (< i_14_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (|Seq#Contains_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1))) (=> (|Seq#Contains_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_14_1)) (and (=> (= (ControlFlow 0 22) 18) anon88_Then_correct) (=> (= (ControlFlow 0 22) 20) anon88_Else_correct)))))))
(let ((anon87_Else_correct  (=> (and (not (and (<= 0 i_14_1) (< i_14_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (= (ControlFlow 0 17) 16)) anon52_correct)))
(let ((anon84_Else_correct  (=> (forall ((i_11_1_1 Int) (j_2_1 Int) ) (!  (=> (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1) (not (= i_11_1_1 j_2_1)))) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_11_1_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_2_1))))
 :qid |stdinbpl.1733:20|
 :skolemid |140|
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_2_1))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_11_1_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_2_1))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_11_1_1))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_2_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_11_1_1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_11_1_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_2_1))
)) (and (=> (= (ControlFlow 0 39) (- 0 43)) (forall ((i_12_1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1 i_12_2)) (and (<= 0 i_12_1) (< i_12_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (and (<= 0 i_12_2) (< i_12_2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_2))))
 :qid |stdinbpl.1744:17|
 :skolemid |141|
 :pattern ( (neverTriggered9 i_12_1) (neverTriggered9 i_12_2))
))) (=> (forall ((i_12_1@@0 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@0 i_12_2@@0)) (and (<= 0 i_12_1@@0) (< i_12_1@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (and (<= 0 i_12_2@@0) (< i_12_2@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_2@@0))))
 :qid |stdinbpl.1744:17|
 :skolemid |141|
 :pattern ( (neverTriggered9 i_12_1@@0) (neverTriggered9 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 39) (- 0 42)) (forall ((i_12_1@@1 Int) ) (!  (=> (and (<= 0 i_12_1@@1) (< i_12_1@@1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (>= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@5) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@1) val) FullPerm))
 :qid |stdinbpl.1751:17|
 :skolemid |142|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@1))
))) (=> (forall ((i_12_1@@2 Int) ) (!  (=> (and (<= 0 i_12_1@@2) (< i_12_1@@2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (>= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@5) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@2) val) FullPerm))
 :qid |stdinbpl.1751:17|
 :skolemid |142|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@2))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@2))
)) (=> (forall ((i_12_1@@3 Int) ) (!  (=> (and (and (<= 0 i_12_1@@3) (< i_12_1@@3 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@3)) (= (invRecv9 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@3)) i_12_1@@3)))
 :qid |stdinbpl.1757:22|
 :skolemid |143|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@3))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_12_1@@3))
)) (=> (and (forall ((o_9 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv9 o_9)) (< (invRecv9 o_9) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange9 o_9))) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (invRecv9 o_9)) o_9))
 :qid |stdinbpl.1761:22|
 :skolemid |144|
 :pattern ( (invRecv9 o_9))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv9 o_9@@0)) (< (invRecv9 o_9@@0) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange9 o_9@@0))) (and (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (invRecv9 o_9@@0)) o_9@@0) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@0 val) (- (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@5) o_9@@0 val) FullPerm)))) (=> (not (and (and (<= 0 (invRecv9 o_9@@0)) (< (invRecv9 o_9@@0) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange9 o_9@@0)))) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@0 val) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@5) o_9@@0 val))))
 :qid |stdinbpl.1767:22|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@0 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_22563_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@5) o_9@@1 f_5) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@2) o_9@@1 f_5)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@2) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_22576_22577) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@5) o_9@@2 f_5@@0) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_28651_3244) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@5) o_9@@3 f_5@@1) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_28728_28733) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@5) o_9@@4 f_5@@2) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@2) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@2) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_28793_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@5) o_9@@5 f_5@@3) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@2) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@2) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_13317_13407) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@5) o_9@@6 f_5@@4) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@2) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@2) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_13317_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@5) o_9@@7 f_5@@5) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@2) o_9@@7 f_5@@5)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@2) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_13406_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@5) o_9@@8 f_5@@6) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@2) o_9@@8 f_5@@6)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@2) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_13406_13311) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@5) o_9@@9 f_5@@7) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@2) o_9@@9 f_5@@7)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@2) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_13406_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@5) o_9@@10 f_5@@8) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@2) o_9@@10 f_5@@8)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@2) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_13406_35501) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@5) o_9@@11 f_5@@9) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@2) o_9@@11 f_5@@9)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@2) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_13406_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@5) o_9@@12 f_5@@10) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@2) o_9@@12 f_5@@10)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@2) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_29168_29169) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@5) o_9@@13 f_5@@11) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@2) o_9@@13 f_5@@11)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@2) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_35579_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@5) o_9@@14 f_5@@12) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@2) o_9@@14 f_5@@12)))
 :qid |stdinbpl.1773:29|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@2) o_9@@14 f_5@@12))
))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (and (<= 0 i_13_1) (< i_13_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (and (<= 0 i_13_2) (< i_13_2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_2))))
 :qid |stdinbpl.1785:17|
 :skolemid |147|
 :pattern ( (neverTriggered10 i_13_1) (neverTriggered10 i_13_2))
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (and (<= 0 i_13_1@@0) (< i_13_1@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (and (<= 0 i_13_2@@0) (< i_13_2@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_2@@0))))
 :qid |stdinbpl.1785:17|
 :skolemid |147|
 :pattern ( (neverTriggered10 i_13_1@@0) (neverTriggered10 i_13_2@@0))
)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (forall ((i_13_1@@1 Int) ) (!  (=> (and (<= 0 i_13_1@@1) (< i_13_1@@1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (>= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@1) next) FullPerm))
 :qid |stdinbpl.1792:17|
 :skolemid |148|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@1))
))) (=> (forall ((i_13_1@@2 Int) ) (!  (=> (and (<= 0 i_13_1@@2) (< i_13_1@@2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (>= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@2) next) FullPerm))
 :qid |stdinbpl.1792:17|
 :skolemid |148|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@2))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@2))
)) (=> (forall ((i_13_1@@3 Int) ) (!  (=> (and (and (<= 0 i_13_1@@3) (< i_13_1@@3 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange10 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@3)) (= (invRecv10 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@3)) i_13_1@@3)))
 :qid |stdinbpl.1798:22|
 :skolemid |149|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@3))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_13_1@@3))
)) (=> (and (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv10 o_9@@15)) (< (invRecv10 o_9@@15) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9@@15))) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (invRecv10 o_9@@15)) o_9@@15))
 :qid |stdinbpl.1802:22|
 :skolemid |150|
 :pattern ( (invRecv10 o_9@@15))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv10 o_9@@16)) (< (invRecv10 o_9@@16) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9@@16))) (and (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) (invRecv10 o_9@@16)) o_9@@16) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) o_9@@16 next) (- (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) o_9@@16 next) FullPerm)))) (=> (not (and (and (<= 0 (invRecv10 o_9@@16)) (< (invRecv10 o_9@@16) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1)))) (and (< NoPerm FullPerm) (qpRange10 o_9@@16)))) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) o_9@@16 next) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) o_9@@16 next))))
 :qid |stdinbpl.1808:22|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) o_9@@16 next))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_22563_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@2) o_9@@17 f_5@@13) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@3) o_9@@17 f_5@@13)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@3) o_9@@17 f_5@@13))
)) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_22576_22577) ) (!  (=> (not (= f_5@@14 next)) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@2) o_9@@18 f_5@@14) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) o_9@@18 f_5@@14)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@3) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_28651_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@2) o_9@@19 f_5@@15) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@3) o_9@@19 f_5@@15)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@3) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_28728_28733) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@2) o_9@@20 f_5@@16) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@3) o_9@@20 f_5@@16)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@3) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_28793_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@2) o_9@@21 f_5@@17) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@3) o_9@@21 f_5@@17)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@3) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_13317_13407) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@2) o_9@@22 f_5@@18) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@3) o_9@@22 f_5@@18)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@3) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_13317_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@2) o_9@@23 f_5@@19) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@3) o_9@@23 f_5@@19)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@3) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_13406_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@2) o_9@@24 f_5@@20) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@3) o_9@@24 f_5@@20)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@3) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_13406_13311) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@2) o_9@@25 f_5@@21) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@3) o_9@@25 f_5@@21)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@3) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_13406_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@2) o_9@@26 f_5@@22) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@3) o_9@@26 f_5@@22)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@3) o_9@@26 f_5@@22))
))) (forall ((o_9@@27 T@Ref) (f_5@@23 T@Field_13406_35501) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@2) o_9@@27 f_5@@23) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@3) o_9@@27 f_5@@23)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@3) o_9@@27 f_5@@23))
))) (forall ((o_9@@28 T@Ref) (f_5@@24 T@Field_13406_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@2) o_9@@28 f_5@@24) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@3) o_9@@28 f_5@@24)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@3) o_9@@28 f_5@@24))
))) (forall ((o_9@@29 T@Ref) (f_5@@25 T@Field_29168_29169) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@2) o_9@@29 f_5@@25) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@3) o_9@@29 f_5@@25)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@3) o_9@@29 f_5@@25))
))) (forall ((o_9@@30 T@Ref) (f_5@@26 T@Field_35579_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@2) o_9@@30 f_5@@26) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@3) o_9@@30 f_5@@26)))
 :qid |stdinbpl.1814:29|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@3) o_9@@30 f_5@@26))
))) (and (and (=> (= (ControlFlow 0 39) 38) anon86_Else_correct) (=> (= (ControlFlow 0 39) 22) anon87_Then_correct)) (=> (= (ControlFlow 0 39) 17) anon87_Else_correct)))))))))))))))))))
(let ((anon46_correct true))
(let ((anon85_Else_correct  (=> (and (not (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_10_1) (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_1) (not (= i_10_1 j_1))))) (= (ControlFlow 0 15) 12)) anon46_correct)))
(let ((anon85_Then_correct  (=> (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) i_10_1) (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1))) j_1) (not (= i_10_1 j_1)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_10_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_1)))) (=> (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) i_10_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@8) this@@15 nodes_1) j_1))) (=> (= (ControlFlow 0 13) 12) anon46_correct))))))
(let ((anon43_correct  (=> (= Mask@5 (PolymorphicMapType_22524 (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@4) (store (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1 (- (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1) FullPerm)) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@4) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@4))) (and (and (=> (= (ControlFlow 0 44) 39) anon84_Else_correct) (=> (= (ControlFlow 0 44) 13) anon85_Then_correct)) (=> (= (ControlFlow 0 44) 15) anon85_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 47) 44)) anon43_correct)))
(let ((anon83_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1))) (=> (<= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1)) (=> (= (ControlFlow 0 45) 44) anon43_correct))))))
(let ((anon41_correct  (=> (state Heap@8 Mask@4) (and (=> (= (ControlFlow 0 48) 45) anon83_Then_correct) (=> (= (ControlFlow 0 48) 47) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (>= 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1))) (=> (= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1)) (=> (and (and (= Heap@7 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@4) (store (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1 (|Seq#Singleton_13459| freshObj@0)) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@4))) (state Heap@7 Mask@4)) (and (= Heap@8 Heap@7) (= (ControlFlow 0 57) 48))) anon41_correct))))))
(let ((anon82_Then_correct  (=> (> (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 0) (and (=> (= (ControlFlow 0 49) (- 0 56)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 49) (- 0 55)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 49) (- 0 54)) (>= (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1) 0)) (=> (>= (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1) 0) (and (=> (= (ControlFlow 0 49) (- 0 53)) (< (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)))) (=> (< (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1))) (and (=> (= (ControlFlow 0 49) (- 0 52)) (= FullPerm (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@4) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1) (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1)) next))) (=> (= FullPerm (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@4) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1) (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1)) next)) (=> (and (= Heap@5 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@4) (store (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@4) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1) (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) this@@15 nodes_1)) 1)) next freshObj@0) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@4) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@4))) (state Heap@5 Mask@4)) (and (=> (= (ControlFlow 0 49) (- 0 51)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 49) (- 0 50)) (= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1))) (=> (= FullPerm (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@4) this@@15 nodes_1)) (=> (and (and (= Heap@6 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@5) (store (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@5) this@@15 nodes_1 (|Seq#Append_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@5) this@@15 nodes_1) (|Seq#Singleton_13459| freshObj@0))) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@5) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@5))) (state Heap@6 Mask@4)) (and (= Heap@8 Heap@6) (= (ControlFlow 0 49) 48))) anon41_correct)))))))))))))))))))
(let ((anon79_Else_correct  (=> (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (< i_9_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1)))) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1) i_9_1) freshObj@0)))
 :qid |stdinbpl.1656:20|
 :skolemid |139|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1) i_9_1))
)) (=> (and (state Heap@2 Mask@4) (state Heap@2 Mask@4)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (= FullPerm (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@4) freshObj@0 next))) (=> (= FullPerm (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@4) freshObj@0 next)) (=> (and (= Heap@3 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@2) (store (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@2) freshObj@0 next null) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@2) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@2))) (state Heap@3 Mask@4)) (and (=> (= (ControlFlow 0 59) (- 0 61)) (= FullPerm (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@4) freshObj@0 val))) (=> (= FullPerm (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@4) freshObj@0 val)) (=> (and (= Heap@4 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@3) (store (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@3) freshObj@0 val elem_1) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@3) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@3))) (state Heap@4 Mask@4)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 59) 49) anon82_Then_correct) (=> (= (ControlFlow 0 59) 57) anon82_Else_correct))))))))))))))
(let ((anon37_correct true))
(let ((anon81_Else_correct  (=> (and (not (and (<= 0 i_11) (< i_11 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1))))) (= (ControlFlow 0 8) 3)) anon37_correct)))
(let ((anon81_Then_correct  (=> (and (<= 0 i_11) (< i_11 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1)))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 4) (- 0 6)) (>= i_11 0)) (=> (>= i_11 0) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< i_11 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1)))) (=> (< i_11 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@2) this@@15 nodes_1))) (=> (= (ControlFlow 0 4) 3) anon37_correct))))))))))
(let ((anon80_Else_correct  (=> (< i_11 0) (and (=> (= (ControlFlow 0 11) 4) anon81_Then_correct) (=> (= (ControlFlow 0 11) 8) anon81_Else_correct)))))
(let ((anon80_Then_correct  (=> (<= 0 i_11) (and (=> (= (ControlFlow 0 9) (- 0 10)) (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1)) (=> (HasDirectPerm_13317_35501 Mask@4 this@@15 nodes_1) (and (=> (= (ControlFlow 0 9) 4) anon81_Then_correct) (=> (= (ControlFlow 0 9) 8) anon81_Else_correct)))))))
(let ((anon32_correct  (=> (and (and (not (= this@@15 null)) (= Mask@2 (PolymorphicMapType_22524 (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@1) (store (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@1) this@@15 nodes_1 (+ (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@1) this@@15 nodes_1) FullPerm)) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@1) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@1)))) (and (state Heap@1 Mask@2) (forall ((i_4_1 Int) (j@@8 Int) ) (!  (=> (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (and (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8) (not (= i_4_1 j@@8)))) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_4_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) j@@8))))
 :qid |stdinbpl.1540:20|
 :skolemid |125|
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) j@@8))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) i_4_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) j@@8))
 :pattern ( (|Seq#ContainsTrigger_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_4_1))
 :pattern ( (|Seq#Contains_3107| (|Seq#Range| 0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))) j@@8) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_4_1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_4_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) j@@8))
)))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (<= 0 i_5_1) (< i_5_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (and (<= 0 i_5_2) (< i_5_2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_2))))
 :qid |stdinbpl.1546:15|
 :skolemid |126|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (and (<= 0 i_5_1@@0) (< i_5_1@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (and (<= 0 i_5_2@@0) (< i_5_2@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_2@@0))))
 :qid |stdinbpl.1546:15|
 :skolemid |126|
)) (=> (and (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (and (<= 0 i_5_1@@1) (< i_5_1@@1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@1)) (= (invRecv7 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.1552:22|
 :skolemid |127|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@1))
)) (forall ((o_9@@31 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv7 o_9@@31)) (< (invRecv7 o_9@@31) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange7 o_9@@31)) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (invRecv7 o_9@@31)) o_9@@31))
 :qid |stdinbpl.1556:22|
 :skolemid |128|
 :pattern ( (invRecv7 o_9@@31))
))) (and (forall ((i_5_1@@2 Int) ) (!  (=> (and (<= 0 i_5_1@@2) (< i_5_1@@2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@2) null)))
 :qid |stdinbpl.1562:22|
 :skolemid |129|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@2))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_5_1@@2))
)) (forall ((o_9@@32 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv7 o_9@@32)) (< (invRecv7 o_9@@32) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange7 o_9@@32)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (invRecv7 o_9@@32)) o_9@@32)) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@32 val) (+ (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@2) o_9@@32 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv7 o_9@@32)) (< (invRecv7 o_9@@32) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange7 o_9@@32))) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@32 val) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@2) o_9@@32 val))))
 :qid |stdinbpl.1568:22|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@32 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@33 T@Ref) (f_5@@27 T@Field_22563_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@2) o_9@@33 f_5@@27) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@0) o_9@@33 f_5@@27)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@2) o_9@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@0) o_9@@33 f_5@@27))
)) (forall ((o_9@@34 T@Ref) (f_5@@28 T@Field_22576_22577) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@2) o_9@@34 f_5@@28) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@34 f_5@@28)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@2) o_9@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@34 f_5@@28))
))) (forall ((o_9@@35 T@Ref) (f_5@@29 T@Field_28651_3244) ) (!  (=> (not (= f_5@@29 val)) (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@2) o_9@@35 f_5@@29) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@35 f_5@@29)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@2) o_9@@35 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@35 f_5@@29))
))) (forall ((o_9@@36 T@Ref) (f_5@@30 T@Field_28728_28733) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@2) o_9@@36 f_5@@30) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@0) o_9@@36 f_5@@30)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@2) o_9@@36 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@0) o_9@@36 f_5@@30))
))) (forall ((o_9@@37 T@Ref) (f_5@@31 T@Field_28793_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@2) o_9@@37 f_5@@31) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@0) o_9@@37 f_5@@31)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@2) o_9@@37 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@0) o_9@@37 f_5@@31))
))) (forall ((o_9@@38 T@Ref) (f_5@@32 T@Field_13317_13407) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@2) o_9@@38 f_5@@32) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@0) o_9@@38 f_5@@32)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@2) o_9@@38 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@0) o_9@@38 f_5@@32))
))) (forall ((o_9@@39 T@Ref) (f_5@@33 T@Field_13317_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@2) o_9@@39 f_5@@33) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@0) o_9@@39 f_5@@33)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@2) o_9@@39 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@0) o_9@@39 f_5@@33))
))) (forall ((o_9@@40 T@Ref) (f_5@@34 T@Field_13406_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@2) o_9@@40 f_5@@34) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@0) o_9@@40 f_5@@34)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@2) o_9@@40 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@0) o_9@@40 f_5@@34))
))) (forall ((o_9@@41 T@Ref) (f_5@@35 T@Field_13406_13311) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@2) o_9@@41 f_5@@35) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@0) o_9@@41 f_5@@35)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@2) o_9@@41 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@0) o_9@@41 f_5@@35))
))) (forall ((o_9@@42 T@Ref) (f_5@@36 T@Field_13406_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@2) o_9@@42 f_5@@36) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@0) o_9@@42 f_5@@36)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@2) o_9@@42 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@0) o_9@@42 f_5@@36))
))) (forall ((o_9@@43 T@Ref) (f_5@@37 T@Field_13406_35501) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@2) o_9@@43 f_5@@37) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@0) o_9@@43 f_5@@37)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@2) o_9@@43 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@0) o_9@@43 f_5@@37))
))) (forall ((o_9@@44 T@Ref) (f_5@@38 T@Field_13406_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@2) o_9@@44 f_5@@38) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@0) o_9@@44 f_5@@38)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@2) o_9@@44 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@0) o_9@@44 f_5@@38))
))) (forall ((o_9@@45 T@Ref) (f_5@@39 T@Field_29168_29169) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@2) o_9@@45 f_5@@39) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@0) o_9@@45 f_5@@39)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@2) o_9@@45 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@0) o_9@@45 f_5@@39))
))) (forall ((o_9@@46 T@Ref) (f_5@@40 T@Field_35579_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@2) o_9@@46 f_5@@40) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@0) o_9@@46 f_5@@40)))
 :qid |stdinbpl.1572:29|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@2) o_9@@46 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@0) o_9@@46 f_5@@40))
))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_6_2 Int) (i_6_3 Int) ) (!  (=> (and (and (and (and (not (= i_6_2 i_6_3)) (and (<= 0 i_6_2) (< i_6_2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (and (<= 0 i_6_3) (< i_6_3 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_3))))
 :qid |stdinbpl.1580:15|
 :skolemid |132|
))) (=> (forall ((i_6_2@@0 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@0 i_6_3@@0)) (and (<= 0 i_6_2@@0) (< i_6_2@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (and (<= 0 i_6_3@@0) (< i_6_3@@0 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@0) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_3@@0))))
 :qid |stdinbpl.1580:15|
 :skolemid |132|
)) (=> (and (and (forall ((i_6_2@@1 Int) ) (!  (=> (and (and (<= 0 i_6_2@@1) (< i_6_2@@1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@1)) (= (invRecv8 (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@1)) i_6_2@@1)))
 :qid |stdinbpl.1586:22|
 :skolemid |133|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@1))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@1))
)) (forall ((o_9@@47 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv8 o_9@@47)) (< (invRecv8 o_9@@47) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange8 o_9@@47)) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (invRecv8 o_9@@47)) o_9@@47))
 :qid |stdinbpl.1590:22|
 :skolemid |134|
 :pattern ( (invRecv8 o_9@@47))
))) (and (forall ((i_6_2@@2 Int) ) (!  (=> (and (<= 0 i_6_2@@2) (< i_6_2@@2 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (not (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@2) null)))
 :qid |stdinbpl.1596:22|
 :skolemid |135|
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@2))
 :pattern ( (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_6_2@@2))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv8 o_9@@48)) (< (invRecv8 o_9@@48) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange8 o_9@@48)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (invRecv8 o_9@@48)) o_9@@48)) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) o_9@@48 next) (+ (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@48 next) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv8 o_9@@48)) (< (invRecv8 o_9@@48) (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (< NoPerm FullPerm)) (qpRange8 o_9@@48))) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) o_9@@48 next) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@48 next))))
 :qid |stdinbpl.1602:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) o_9@@48 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@41 T@Field_22563_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@0) o_9@@49 f_5@@41) (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@1) o_9@@49 f_5@@41)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@0) o_9@@49 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@1) o_9@@49 f_5@@41))
)) (forall ((o_9@@50 T@Ref) (f_5@@42 T@Field_22576_22577) ) (!  (=> (not (= f_5@@42 next)) (= (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@50 f_5@@42) (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) o_9@@50 f_5@@42)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@0) o_9@@50 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) o_9@@50 f_5@@42))
))) (forall ((o_9@@51 T@Ref) (f_5@@43 T@Field_28651_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@51 f_5@@43) (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@1) o_9@@51 f_5@@43)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@0) o_9@@51 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@1) o_9@@51 f_5@@43))
))) (forall ((o_9@@52 T@Ref) (f_5@@44 T@Field_28728_28733) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@0) o_9@@52 f_5@@44) (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@1) o_9@@52 f_5@@44)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@0) o_9@@52 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@1) o_9@@52 f_5@@44))
))) (forall ((o_9@@53 T@Ref) (f_5@@45 T@Field_28793_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@0) o_9@@53 f_5@@45) (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@1) o_9@@53 f_5@@45)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@0) o_9@@53 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@1) o_9@@53 f_5@@45))
))) (forall ((o_9@@54 T@Ref) (f_5@@46 T@Field_13317_13407) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@0) o_9@@54 f_5@@46) (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@1) o_9@@54 f_5@@46)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@0) o_9@@54 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@1) o_9@@54 f_5@@46))
))) (forall ((o_9@@55 T@Ref) (f_5@@47 T@Field_13317_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@0) o_9@@55 f_5@@47) (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@1) o_9@@55 f_5@@47)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@0) o_9@@55 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@1) o_9@@55 f_5@@47))
))) (forall ((o_9@@56 T@Ref) (f_5@@48 T@Field_13406_53) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@0) o_9@@56 f_5@@48) (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@1) o_9@@56 f_5@@48)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@0) o_9@@56 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@1) o_9@@56 f_5@@48))
))) (forall ((o_9@@57 T@Ref) (f_5@@49 T@Field_13406_13311) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@0) o_9@@57 f_5@@49) (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@1) o_9@@57 f_5@@49)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@0) o_9@@57 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@1) o_9@@57 f_5@@49))
))) (forall ((o_9@@58 T@Ref) (f_5@@50 T@Field_13406_3244) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@0) o_9@@58 f_5@@50) (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@1) o_9@@58 f_5@@50)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@0) o_9@@58 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@1) o_9@@58 f_5@@50))
))) (forall ((o_9@@59 T@Ref) (f_5@@51 T@Field_13406_35501) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@0) o_9@@59 f_5@@51) (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@1) o_9@@59 f_5@@51)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@0) o_9@@59 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@1) o_9@@59 f_5@@51))
))) (forall ((o_9@@60 T@Ref) (f_5@@52 T@Field_13406_28795) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@0) o_9@@60 f_5@@52) (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@1) o_9@@60 f_5@@52)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@0) o_9@@60 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@1) o_9@@60 f_5@@52))
))) (forall ((o_9@@61 T@Ref) (f_5@@53 T@Field_29168_29169) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@0) o_9@@61 f_5@@53) (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@1) o_9@@61 f_5@@53)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@0) o_9@@61 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@1) o_9@@61 f_5@@53))
))) (forall ((o_9@@62 T@Ref) (f_5@@54 T@Field_35579_35584) ) (!  (=> true (= (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@0) o_9@@62 f_5@@54) (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@1) o_9@@62 f_5@@54)))
 :qid |stdinbpl.1606:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@0) o_9@@62 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@1) o_9@@62 f_5@@54))
))) (and (state Heap@1 QPMask@1) (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)))) (and (|Seq#Contains_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_7_1)) (ite (< i_7_1 (- (|Seq#Length_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1)) 1)) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_7_1) next) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) (+ i_7_1 1))) (= (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_7_1) next) null))))
 :qid |stdinbpl.1612:20|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@1) (|Seq#Index_13318| (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) this@@15 nodes_1) i_7_1) next))
)))) (and (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)) (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@1) freshObj@0 $allocated))))) (and (and (and (= Heap@2 (PolymorphicMapType_22503 (store (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@1) freshObj@0 $allocated true) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@1) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@1))) (state Heap@2 QPMask@1)) (and (not (= freshObj@0 null)) (= Mask@3 (PolymorphicMapType_22524 (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| QPMask@1) (store (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@1) freshObj@0 val (+ (select (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| QPMask@1) freshObj@0 val) FullPerm)) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| QPMask@1) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| QPMask@1))))) (and (and (state Heap@2 Mask@3) (not (= freshObj@0 null))) (and (= Mask@4 (PolymorphicMapType_22524 (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@3) (store (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@3) freshObj@0 next (+ (select (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@3) freshObj@0 next) FullPerm)) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@3) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@3))) (state Heap@2 Mask@4))))) (and (and (=> (= (ControlFlow 0 63) 59) anon79_Else_correct) (=> (= (ControlFlow 0 63) 9) anon80_Then_correct)) (=> (= (ControlFlow 0 63) 11) anon80_Else_correct)))))))))))))
(let ((anon78_Else_correct  (=> (HasDirectPerm_13406_13407 Mask@1 null (List this@@15)) (=> (and (= Heap@1 Heap@@48) (= (ControlFlow 0 67) 63)) anon32_correct))))
(let ((anon78_Then_correct  (=> (and (and (not (HasDirectPerm_13406_13407 Mask@1 null (List this@@15))) (= Heap@0 (PolymorphicMapType_22503 (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13105_13106#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@48) (store (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@48) null (List this@@15) newVersion@0) (|PolymorphicMapType_22503_13410_35671#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13313_3244#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13317_13407#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13317_28795#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13317_76953#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13406_35501#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13406_3244#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13406_13311#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13406_53#PolymorphicMapType_22503| Heap@@48) (|PolymorphicMapType_22503_13406_28795#PolymorphicMapType_22503| Heap@@48)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 66) 63))) anon32_correct)))
(let ((anon30_correct  (=> (= Mask@1 (PolymorphicMapType_22524 (store (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15) (- (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)) FullPerm)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| Mask@0) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| Mask@0))) (and (=> (= (ControlFlow 0 68) 66) anon78_Then_correct) (=> (= (ControlFlow 0 68) 67) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 71) 68)) anon30_correct)))
(let ((anon77_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (<= FullPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))) (=> (<= FullPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15))) (=> (= (ControlFlow 0 69) 68) anon30_correct))))))
(let ((anon66_Else_correct  (=> (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@48) n@@27 $allocated) (=> (and (|List#trigger_13406| Heap@@48 (List this@@15)) (= (select (|PolymorphicMapType_22503_13406_13407#PolymorphicMapType_22503| Heap@@48) null (List this@@15)) (CombineFrames (FrameFragment_29987 (select (|PolymorphicMapType_22503_13317_29089#PolymorphicMapType_22503| Heap@@48) this@@15 nodes_1)) (CombineFrames (FrameFragment_6866 (|List#condqp1| Heap@@48 this@@15)) (FrameFragment_6866 (|List#condqp2| Heap@@48 this@@15)))))) (and (=> (= (ControlFlow 0 72) 69) anon77_Then_correct) (=> (= (ControlFlow 0 72) 71) anon77_Else_correct))))))
(let ((anon8_correct  (=> (state Heap@@48 Mask@0) (and (=> (= (ControlFlow 0 102) 101) anon66_Then_correct) (=> (= (ControlFlow 0 102) 72) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (<= (itemAt Heap@@48 this@@15 (- (length_1 Heap@@48 this@@15) 1)) elem_1) (= (ControlFlow 0 110) 102)) anon8_correct)))
(let ((anon63_Then_correct  (=> (and (< 0 (length_1 Heap@@48 this@@15)) (state Heap@@48 Mask@0)) (and (and (=> (= (ControlFlow 0 111) 105) anon64_Then_correct) (=> (= (ControlFlow 0 111) 107) anon65_Then_correct)) (=> (= (ControlFlow 0 111) 110) anon65_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (<= (length_1 Heap@@48 this@@15) 0) (= (ControlFlow 0 103) 102)) anon8_correct)))
(let ((anon62_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| Mask@0) null (List this@@15)))))))
(let ((anon0_correct  (=> (state Heap@@48 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_22503_13102_53#PolymorphicMapType_22503| Heap@@48) this@@15 $allocated) (= Mask@0 (PolymorphicMapType_22524 (store (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) null (List this@@15) (+ (select (|PolymorphicMapType_22524_13406_13407#PolymorphicMapType_22524| ZeroMask) null (List this@@15)) FullPerm)) (|PolymorphicMapType_22524_13317_30311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13313_3244#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13310_13311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_30311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_3244#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_13311#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_53#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_28795#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13406_88818#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_13407#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_53#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_28795#PolymorphicMapType_22524| ZeroMask) (|PolymorphicMapType_22524_13317_89368#PolymorphicMapType_22524| ZeroMask)))) (and (state Heap@@48 Mask@0) (state Heap@@48 Mask@0))) (and (and (=> (= (ControlFlow 0 112) 2) anon62_Then_correct) (=> (= (ControlFlow 0 112) 111) anon63_Then_correct)) (=> (= (ControlFlow 0 112) 103) anon63_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 113) 112) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
