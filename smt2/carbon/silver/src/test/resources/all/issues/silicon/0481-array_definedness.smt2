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
(declare-sort T@Field_8846_53 0)
(declare-sort T@Field_8859_8860 0)
(declare-sort T@Field_15614_15615 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16546_16547 0)
(declare-sort T@Field_14868_3037 0)
(declare-sort T@Field_5631_53 0)
(declare-sort T@Field_5631_8860 0)
(declare-sort T@Field_5631_3037 0)
(declare-sort T@Field_16562_16567 0)
(declare-sort T@Field_5605_53 0)
(declare-sort T@Field_5605_8860 0)
(declare-sort T@Field_5605_3037 0)
(declare-sort T@Field_15627_15632 0)
(declare-sort T@Field_8846_5632 0)
(declare-sort T@Field_8846_15632 0)
(declare-datatypes ((T@PolymorphicMapType_8807 0)) (((PolymorphicMapType_8807 (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| (Array T@Ref T@Field_14868_3037 Real)) (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| (Array T@Ref T@Field_15614_15615 Real)) (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| (Array T@Ref T@Field_16546_16547 Real)) (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| (Array T@Ref T@Field_8846_5632 Real)) (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| (Array T@Ref T@Field_8846_53 Real)) (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| (Array T@Ref T@Field_8859_8860 Real)) (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| (Array T@Ref T@Field_8846_15632 Real)) (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| (Array T@Ref T@Field_5605_3037 Real)) (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| (Array T@Ref T@Field_5605_53 Real)) (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| (Array T@Ref T@Field_5605_8860 Real)) (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| (Array T@Ref T@Field_15627_15632 Real)) (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| (Array T@Ref T@Field_5631_3037 Real)) (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| (Array T@Ref T@Field_5631_53 Real)) (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| (Array T@Ref T@Field_5631_8860 Real)) (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| (Array T@Ref T@Field_16562_16567 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9335 0)) (((PolymorphicMapType_9335 (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (Array T@Ref T@Field_8846_53 Bool)) (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (Array T@Ref T@Field_8859_8860 Bool)) (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (Array T@Ref T@Field_14868_3037 Bool)) (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (Array T@Ref T@Field_8846_5632 Bool)) (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (Array T@Ref T@Field_8846_15632 Bool)) (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (Array T@Ref T@Field_5605_53 Bool)) (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (Array T@Ref T@Field_5605_8860 Bool)) (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (Array T@Ref T@Field_5605_3037 Bool)) (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (Array T@Ref T@Field_15614_15615 Bool)) (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (Array T@Ref T@Field_15627_15632 Bool)) (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (Array T@Ref T@Field_5631_53 Bool)) (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (Array T@Ref T@Field_5631_8860 Bool)) (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (Array T@Ref T@Field_5631_3037 Bool)) (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (Array T@Ref T@Field_16546_16547 Bool)) (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (Array T@Ref T@Field_16562_16567 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8786 0)) (((PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| (Array T@Ref T@Field_8846_53 Bool)) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| (Array T@Ref T@Field_8859_8860 T@Ref)) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| (Array T@Ref T@Field_15614_15615 T@FrameType)) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| (Array T@Ref T@Field_16546_16547 T@FrameType)) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| (Array T@Ref T@Field_14868_3037 Int)) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| (Array T@Ref T@Field_5631_53 Bool)) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| (Array T@Ref T@Field_5631_8860 T@Ref)) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| (Array T@Ref T@Field_5631_3037 Int)) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| (Array T@Ref T@Field_16562_16567 T@PolymorphicMapType_9335)) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| (Array T@Ref T@Field_5605_53 Bool)) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| (Array T@Ref T@Field_5605_8860 T@Ref)) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| (Array T@Ref T@Field_5605_3037 Int)) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| (Array T@Ref T@Field_15627_15632 T@PolymorphicMapType_9335)) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| (Array T@Ref T@Field_8846_5632 T@FrameType)) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| (Array T@Ref T@Field_8846_15632 T@PolymorphicMapType_9335)) ) ) ))
(declare-fun $allocated () T@Field_8846_53)
(declare-fun val () T@Field_14868_3037)
(declare-sort T@Seq_16540 0)
(declare-fun |Seq#Length_5666| (T@Seq_16540) Int)
(declare-fun |Seq#Drop_5666| (T@Seq_16540 Int) T@Seq_16540)
(declare-sort T@Seq_2915 0)
(declare-fun |Seq#Length_2915| (T@Seq_2915) Int)
(declare-fun |Seq#Drop_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun succHeap (T@PolymorphicMapType_8786 T@PolymorphicMapType_8786) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8786 T@PolymorphicMapType_8786) Bool)
(declare-fun state (T@PolymorphicMapType_8786 T@PolymorphicMapType_8807) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8807) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9335)
(declare-fun |Seq#Index_5666| (T@Seq_16540 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2915| (T@Seq_2915 Int) Int)
(declare-fun |Seq#Empty_5666| () T@Seq_16540)
(declare-fun |Seq#Empty_2915| () T@Seq_2915)
(declare-fun P (T@Ref) T@Field_15614_15615)
(declare-fun IsPredicateField_5605_5606 (T@Field_15614_15615) Bool)
(declare-fun array (T@Seq_16540) T@Field_16546_16547)
(declare-fun IsPredicateField_5631_5632 (T@Field_16546_16547) Bool)
(declare-fun |P#trigger_5605| (T@PolymorphicMapType_8786 T@Field_15614_15615) Bool)
(declare-fun |P#everUsed_5605| (T@Field_15614_15615) Bool)
(declare-fun |array#trigger_5631| (T@PolymorphicMapType_8786 T@Field_16546_16547) Bool)
(declare-fun |array#everUsed_5631| (T@Field_16546_16547) Bool)
(declare-fun |Seq#Update_5666| (T@Seq_16540 Int T@Ref) T@Seq_16540)
(declare-fun |Seq#Update_2915| (T@Seq_2915 Int Int) T@Seq_2915)
(declare-fun |Seq#Take_5666| (T@Seq_16540 Int) T@Seq_16540)
(declare-fun |Seq#Take_2915| (T@Seq_2915 Int) T@Seq_2915)
(declare-fun |read'| (T@PolymorphicMapType_8786) Real)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |read#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Contains_2915| (T@Seq_2915 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2915)
(declare-fun NoPerm () Real)
(declare-fun |Seq#Contains_16540| (T@Seq_16540 T@Ref) Bool)
(declare-fun |Seq#Skolem_16540| (T@Seq_16540 T@Ref) Int)
(declare-fun |Seq#Skolem_2915| (T@Seq_2915 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8786 T@PolymorphicMapType_8786 T@PolymorphicMapType_8807) Bool)
(declare-fun IsPredicateField_8846_27635 (T@Field_8846_5632) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8846 (T@Field_8846_5632) T@Field_8846_15632)
(declare-fun HasDirectPerm_8846_5632 (T@PolymorphicMapType_8807 T@Ref T@Field_8846_5632) Bool)
(declare-fun PredicateMaskField_5605 (T@Field_15614_15615) T@Field_15627_15632)
(declare-fun HasDirectPerm_5605_5606 (T@PolymorphicMapType_8807 T@Ref T@Field_15614_15615) Bool)
(declare-fun PredicateMaskField_5631 (T@Field_16546_16547) T@Field_16562_16567)
(declare-fun HasDirectPerm_5631_5632 (T@PolymorphicMapType_8807 T@Ref T@Field_16546_16547) Bool)
(declare-fun IsWandField_8846_32693 (T@Field_8846_5632) Bool)
(declare-fun WandMaskField_8846 (T@Field_8846_5632) T@Field_8846_15632)
(declare-fun IsWandField_5605_32336 (T@Field_15614_15615) Bool)
(declare-fun WandMaskField_5605 (T@Field_15614_15615) T@Field_15627_15632)
(declare-fun IsWandField_5631_31979 (T@Field_16546_16547) Bool)
(declare-fun WandMaskField_5631 (T@Field_16546_16547) T@Field_16562_16567)
(declare-fun |Seq#Singleton_5666| (T@Ref) T@Seq_16540)
(declare-fun |Seq#Singleton_2915| (Int) T@Seq_2915)
(declare-fun |P#sm| (T@Ref) T@Field_15627_15632)
(declare-fun |array#sm| (T@Seq_16540) T@Field_16562_16567)
(declare-fun |Seq#Append_16540| (T@Seq_16540 T@Seq_16540) T@Seq_16540)
(declare-fun |Seq#Append_2915| (T@Seq_2915 T@Seq_2915) T@Seq_2915)
(declare-fun dummyHeap () T@PolymorphicMapType_8786)
(declare-fun ZeroMask () T@PolymorphicMapType_8807)
(declare-fun InsidePredicate_16546_16546 (T@Field_16546_16547 T@FrameType T@Field_16546_16547 T@FrameType) Bool)
(declare-fun InsidePredicate_15614_15614 (T@Field_15614_15615 T@FrameType T@Field_15614_15615 T@FrameType) Bool)
(declare-fun InsidePredicate_8846_8846 (T@Field_8846_5632 T@FrameType T@Field_8846_5632 T@FrameType) Bool)
(declare-fun IsPredicateField_5584_3037 (T@Field_14868_3037) Bool)
(declare-fun IsWandField_5584_3037 (T@Field_14868_3037) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5631_43011 (T@Field_16562_16567) Bool)
(declare-fun IsWandField_5631_43027 (T@Field_16562_16567) Bool)
(declare-fun IsPredicateField_5631_8860 (T@Field_5631_8860) Bool)
(declare-fun IsWandField_5631_8860 (T@Field_5631_8860) Bool)
(declare-fun IsPredicateField_5631_53 (T@Field_5631_53) Bool)
(declare-fun IsWandField_5631_53 (T@Field_5631_53) Bool)
(declare-fun IsPredicateField_5631_3037 (T@Field_5631_3037) Bool)
(declare-fun IsWandField_5631_3037 (T@Field_5631_3037) Bool)
(declare-fun IsPredicateField_5605_42180 (T@Field_15627_15632) Bool)
(declare-fun IsWandField_5605_42196 (T@Field_15627_15632) Bool)
(declare-fun IsPredicateField_5605_8860 (T@Field_5605_8860) Bool)
(declare-fun IsWandField_5605_8860 (T@Field_5605_8860) Bool)
(declare-fun IsPredicateField_5605_53 (T@Field_5605_53) Bool)
(declare-fun IsWandField_5605_53 (T@Field_5605_53) Bool)
(declare-fun IsPredicateField_5605_3037 (T@Field_5605_3037) Bool)
(declare-fun IsWandField_5605_3037 (T@Field_5605_3037) Bool)
(declare-fun IsPredicateField_5584_41349 (T@Field_8846_15632) Bool)
(declare-fun IsWandField_5584_41365 (T@Field_8846_15632) Bool)
(declare-fun IsPredicateField_5584_8860 (T@Field_8859_8860) Bool)
(declare-fun IsWandField_5584_8860 (T@Field_8859_8860) Bool)
(declare-fun IsPredicateField_5584_53 (T@Field_8846_53) Bool)
(declare-fun IsWandField_5584_53 (T@Field_8846_53) Bool)
(declare-fun HasDirectPerm_8846_26697 (T@PolymorphicMapType_8807 T@Ref T@Field_8846_15632) Bool)
(declare-fun HasDirectPerm_8846_3037 (T@PolymorphicMapType_8807 T@Ref T@Field_14868_3037) Bool)
(declare-fun HasDirectPerm_8846_8860 (T@PolymorphicMapType_8807 T@Ref T@Field_8859_8860) Bool)
(declare-fun HasDirectPerm_8846_53 (T@PolymorphicMapType_8807 T@Ref T@Field_8846_53) Bool)
(declare-fun HasDirectPerm_5605_25561 (T@PolymorphicMapType_8807 T@Ref T@Field_15627_15632) Bool)
(declare-fun HasDirectPerm_5605_3037 (T@PolymorphicMapType_8807 T@Ref T@Field_5605_3037) Bool)
(declare-fun HasDirectPerm_5605_8860 (T@PolymorphicMapType_8807 T@Ref T@Field_5605_8860) Bool)
(declare-fun HasDirectPerm_5605_53 (T@PolymorphicMapType_8807 T@Ref T@Field_5605_53) Bool)
(declare-fun HasDirectPerm_5631_24420 (T@PolymorphicMapType_8807 T@Ref T@Field_16562_16567) Bool)
(declare-fun HasDirectPerm_5631_3037 (T@PolymorphicMapType_8807 T@Ref T@Field_5631_3037) Bool)
(declare-fun HasDirectPerm_5631_8860 (T@PolymorphicMapType_8807 T@Ref T@Field_5631_8860) Bool)
(declare-fun HasDirectPerm_5631_53 (T@PolymorphicMapType_8807 T@Ref T@Field_5631_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun read_1 (T@PolymorphicMapType_8786) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |read#triggerStateless| () Real)
(declare-fun sumMask (T@PolymorphicMapType_8807 T@PolymorphicMapType_8807 T@PolymorphicMapType_8807) Bool)
(declare-fun |Seq#Equal_16540| (T@Seq_16540 T@Seq_16540) Bool)
(declare-fun |Seq#Equal_2915| (T@Seq_2915 T@Seq_2915) Bool)
(declare-fun |Seq#ContainsTrigger_5666| (T@Seq_16540 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2915| (T@Seq_2915 Int) Bool)
(declare-fun getPredWandId_5605_5606 (T@Field_15614_15615) Int)
(declare-fun getPredWandId_5631_5632 (T@Field_16546_16547) Int)
(declare-fun |array#condqp1| (T@PolymorphicMapType_8786 T@Seq_16540) Int)
(declare-fun |sk_array#condqp1| (Int Int) Int)
(declare-fun |read#frame| (T@FrameType) Real)
(declare-fun |Seq#SkolemDiff_16540| (T@Seq_16540 T@Seq_16540) Int)
(declare-fun |Seq#SkolemDiff_2915| (T@Seq_2915 T@Seq_2915) Int)
(declare-fun InsidePredicate_16546_15614 (T@Field_16546_16547 T@FrameType T@Field_15614_15615 T@FrameType) Bool)
(declare-fun InsidePredicate_16546_8846 (T@Field_16546_16547 T@FrameType T@Field_8846_5632 T@FrameType) Bool)
(declare-fun InsidePredicate_15614_16546 (T@Field_15614_15615 T@FrameType T@Field_16546_16547 T@FrameType) Bool)
(declare-fun InsidePredicate_15614_8846 (T@Field_15614_15615 T@FrameType T@Field_8846_5632 T@FrameType) Bool)
(declare-fun InsidePredicate_8846_16546 (T@Field_8846_5632 T@FrameType T@Field_16546_16547 T@FrameType) Bool)
(declare-fun InsidePredicate_8846_15614 (T@Field_8846_5632 T@FrameType T@Field_15614_15615 T@FrameType) Bool)
(assert (forall ((s T@Seq_16540) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5666| s)) (= (|Seq#Length_5666| (|Seq#Drop_5666| s n)) (- (|Seq#Length_5666| s) n))) (=> (< (|Seq#Length_5666| s) n) (= (|Seq#Length_5666| (|Seq#Drop_5666| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5666| (|Seq#Drop_5666| s n)) (|Seq#Length_5666| s))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5666| (|Seq#Drop_5666| s n)))
 :pattern ( (|Seq#Length_5666| s) (|Seq#Drop_5666| s n))
)))
(assert (forall ((s@@0 T@Seq_2915) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2915| s@@0)) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (- (|Seq#Length_2915| s@@0) n@@0))) (=> (< (|Seq#Length_2915| s@@0) n@@0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)) (|Seq#Length_2915| s@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2915| (|Seq#Drop_2915| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2915| s@@0) (|Seq#Drop_2915| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8786) (Heap1 T@PolymorphicMapType_8786) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8786) (Mask T@PolymorphicMapType_8807) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8786) (Heap1@@0 T@PolymorphicMapType_8786) (Heap2 T@PolymorphicMapType_8786) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16562_16567) ) (!  (not (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16546_16547) ) (!  (not (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5631_3037) ) (!  (not (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5631_8860) ) (!  (not (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5631_53) ) (!  (not (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_15627_15632) ) (!  (not (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_15614_15615) ) (!  (not (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5605_3037) ) (!  (not (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_5605_8860) ) (!  (not (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_5605_53) ) (!  (not (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8846_15632) ) (!  (not (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8846_5632) ) (!  (not (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_14868_3037) ) (!  (not (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_8859_8860) ) (!  (not (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8846_53) ) (!  (not (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((s@@1 T@Seq_16540) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5666| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5666| (|Seq#Drop_5666| s@@1 n@@1) j) (|Seq#Index_5666| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5666| (|Seq#Drop_5666| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2915) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2915| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0) (|Seq#Index_2915| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.315:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2915| (|Seq#Drop_2915| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5666| |Seq#Empty_5666|) 0))
(assert (= (|Seq#Length_2915| |Seq#Empty_2915|) 0))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_5605_5606 (P self))
 :qid |stdinbpl.637:15|
 :skolemid |64|
 :pattern ( (P self))
)))
(assert (forall ((arr T@Seq_16540) ) (! (IsPredicateField_5631_5632 (array arr))
 :qid |stdinbpl.692:15|
 :skolemid |70|
 :pattern ( (array arr))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8786) (self@@0 T@Ref) ) (! (|P#everUsed_5605| (P self@@0))
 :qid |stdinbpl.656:15|
 :skolemid |68|
 :pattern ( (|P#trigger_5605| Heap@@0 (P self@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8786) (arr@@0 T@Seq_16540) ) (! (|array#everUsed_5631| (array arr@@0))
 :qid |stdinbpl.711:15|
 :skolemid |74|
 :pattern ( (|array#trigger_5631| Heap@@1 (array arr@@0)))
)))
(assert (forall ((s@@3 T@Seq_16540) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5666| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5666| (|Seq#Update_5666| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5666| (|Seq#Update_5666| s@@3 i v) n@@3) (|Seq#Index_5666| s@@3 n@@3)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5666| (|Seq#Update_5666| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5666| s@@3 n@@3) (|Seq#Update_5666| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2915) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2915| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2915| s@@4 n@@4)))))
 :qid |stdinbpl.270:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2915| (|Seq#Update_2915| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2915| s@@4 n@@4) (|Seq#Update_2915| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16540) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5666| s@@5)) (= (|Seq#Length_5666| (|Seq#Take_5666| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5666| s@@5) n@@5) (= (|Seq#Length_5666| (|Seq#Take_5666| s@@5 n@@5)) (|Seq#Length_5666| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5666| (|Seq#Take_5666| s@@5 n@@5)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5666| (|Seq#Take_5666| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5666| s@@5 n@@5) (|Seq#Length_5666| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2915) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2915| s@@6)) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2915| s@@6) n@@6) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) (|Seq#Length_2915| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)) 0)))
 :qid |stdinbpl.281:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2915| (|Seq#Take_2915| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2915| s@@6 n@@6) (|Seq#Length_2915| s@@6))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8786) (Mask@@0 T@PolymorphicMapType_8807) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|read#trigger| EmptyFrame))) (< (|read'| Heap@@2) FullPerm))
 :qid |stdinbpl.597:15|
 :skolemid |62|
 :pattern ( (state Heap@@2 Mask@@0) (|read'| Heap@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.555:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2915| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8786) (Mask@@1 T@PolymorphicMapType_8807) ) (!  (=> (and (state Heap@@3 Mask@@1) (or (< AssumeFunctionsAbove 0) (|read#trigger| EmptyFrame))) (< NoPerm (|read'| Heap@@3)))
 :qid |stdinbpl.593:15|
 :skolemid |61|
 :pattern ( (state Heap@@3 Mask@@1) (|read'| Heap@@3))
)))
(assert (forall ((s@@7 T@Seq_16540) (x T@Ref) ) (!  (=> (|Seq#Contains_16540| s@@7 x) (and (and (<= 0 (|Seq#Skolem_16540| s@@7 x)) (< (|Seq#Skolem_16540| s@@7 x) (|Seq#Length_5666| s@@7))) (= (|Seq#Index_5666| s@@7 (|Seq#Skolem_16540| s@@7 x)) x)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_16540| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2915) (x@@0 Int) ) (!  (=> (|Seq#Contains_2915| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2915| s@@8 x@@0)) (< (|Seq#Skolem_2915| s@@8 x@@0) (|Seq#Length_2915| s@@8))) (= (|Seq#Index_2915| s@@8 (|Seq#Skolem_2915| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.413:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2915| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_16540) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5666| s@@9 n@@7) s@@9))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5666| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2915) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2915| s@@10 n@@8) s@@10))
 :qid |stdinbpl.397:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2915| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.250:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.248:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8786) (ExhaleHeap T@PolymorphicMapType_8786) (Mask@@2 T@PolymorphicMapType_8807) (pm_f_5 T@Field_8846_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_8846_5632 Mask@@2 null pm_f_5) (IsPredicateField_8846_27635 pm_f_5)) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@4) null (PredicateMaskField_8846 pm_f_5)) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap) null (PredicateMaskField_8846 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (IsPredicateField_8846_27635 pm_f_5) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap) null (PredicateMaskField_8846 pm_f_5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8786) (ExhaleHeap@@0 T@PolymorphicMapType_8786) (Mask@@3 T@PolymorphicMapType_8807) (pm_f_5@@0 T@Field_15614_15615) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_5605_5606 Mask@@3 null pm_f_5@@0) (IsPredicateField_5605_5606 pm_f_5@@0)) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@5) null (PredicateMaskField_5605 pm_f_5@@0)) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@0) null (PredicateMaskField_5605 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (IsPredicateField_5605_5606 pm_f_5@@0) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@0) null (PredicateMaskField_5605 pm_f_5@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8786) (ExhaleHeap@@1 T@PolymorphicMapType_8786) (Mask@@4 T@PolymorphicMapType_8807) (pm_f_5@@1 T@Field_16546_16547) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_5631_5632 Mask@@4 null pm_f_5@@1) (IsPredicateField_5631_5632 pm_f_5@@1)) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@6) null (PredicateMaskField_5631 pm_f_5@@1)) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@1) null (PredicateMaskField_5631 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (IsPredicateField_5631_5632 pm_f_5@@1) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@1) null (PredicateMaskField_5631 pm_f_5@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8786) (ExhaleHeap@@2 T@PolymorphicMapType_8786) (Mask@@5 T@PolymorphicMapType_8807) (pm_f_5@@2 T@Field_8846_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_8846_5632 Mask@@5 null pm_f_5@@2) (IsWandField_8846_32693 pm_f_5@@2)) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@7) null (WandMaskField_8846 pm_f_5@@2)) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@2) null (WandMaskField_8846 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (IsWandField_8846_32693 pm_f_5@@2) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@2) null (WandMaskField_8846 pm_f_5@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8786) (ExhaleHeap@@3 T@PolymorphicMapType_8786) (Mask@@6 T@PolymorphicMapType_8807) (pm_f_5@@3 T@Field_15614_15615) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (=> (and (HasDirectPerm_5605_5606 Mask@@6 null pm_f_5@@3) (IsWandField_5605_32336 pm_f_5@@3)) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@8) null (WandMaskField_5605 pm_f_5@@3)) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@3) null (WandMaskField_5605 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (IsWandField_5605_32336 pm_f_5@@3) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@3) null (WandMaskField_5605 pm_f_5@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8786) (ExhaleHeap@@4 T@PolymorphicMapType_8786) (Mask@@7 T@PolymorphicMapType_8807) (pm_f_5@@4 T@Field_16546_16547) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (=> (and (HasDirectPerm_5631_5632 Mask@@7 null pm_f_5@@4) (IsWandField_5631_31979 pm_f_5@@4)) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@9) null (WandMaskField_5631 pm_f_5@@4)) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@4) null (WandMaskField_5631 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (IsWandField_5631_31979 pm_f_5@@4) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@4) null (WandMaskField_5631 pm_f_5@@4)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_16540| (|Seq#Singleton_5666| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_16540| (|Seq#Singleton_5666| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.538:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2915| (|Seq#Singleton_2915| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16540) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5666| s@@11))) (= (|Seq#Index_5666| (|Seq#Take_5666| s@@11 n@@9) j@@3) (|Seq#Index_5666| s@@11 j@@3)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5666| (|Seq#Take_5666| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5666| s@@11 j@@3) (|Seq#Take_5666| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2915) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2915| s@@12))) (= (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4) (|Seq#Index_2915| s@@12 j@@4)))
 :qid |stdinbpl.289:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2915| (|Seq#Take_2915| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2915| s@@12 j@@4) (|Seq#Take_2915| s@@12 n@@10))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (P self@@1) (P self2)) (= self@@1 self2))
 :qid |stdinbpl.647:15|
 :skolemid |66|
 :pattern ( (P self@@1) (P self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|P#sm| self@@2) (|P#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.651:15|
 :skolemid |67|
 :pattern ( (|P#sm| self@@2) (|P#sm| self2@@0))
)))
(assert (forall ((arr@@1 T@Seq_16540) (arr2 T@Seq_16540) ) (!  (=> (= (array arr@@1) (array arr2)) (= arr@@1 arr2))
 :qid |stdinbpl.702:15|
 :skolemid |72|
 :pattern ( (array arr@@1) (array arr2))
)))
(assert (forall ((arr@@2 T@Seq_16540) (arr2@@0 T@Seq_16540) ) (!  (=> (= (|array#sm| arr@@2) (|array#sm| arr2@@0)) (= arr@@2 arr2@@0))
 :qid |stdinbpl.706:15|
 :skolemid |73|
 :pattern ( (|array#sm| arr@@2) (|array#sm| arr2@@0))
)))
(assert (forall ((s@@13 T@Seq_16540) (t T@Seq_16540) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5666| s@@13))) (< n@@11 (|Seq#Length_5666| (|Seq#Append_16540| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5666| s@@13)) (|Seq#Length_5666| s@@13)) n@@11) (= (|Seq#Take_5666| (|Seq#Append_16540| s@@13 t) n@@11) (|Seq#Append_16540| s@@13 (|Seq#Take_5666| t (|Seq#Sub| n@@11 (|Seq#Length_5666| s@@13)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5666| (|Seq#Append_16540| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2915) (t@@0 T@Seq_2915) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2915| s@@14))) (< n@@12 (|Seq#Length_2915| (|Seq#Append_2915| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)) (|Seq#Length_2915| s@@14)) n@@12) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12) (|Seq#Append_2915| s@@14 (|Seq#Take_2915| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2915| s@@14)))))))
 :qid |stdinbpl.374:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8786) (ExhaleHeap@@5 T@PolymorphicMapType_8786) (Mask@@8 T@PolymorphicMapType_8807) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8) (=> (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@10) o_12 $allocated) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@5) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@8) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@5) o_12 $allocated))
)))
(assert (forall ((p T@Field_16546_16547) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16546_16546 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16546_16546 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_15614_15615) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_15614_15614 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15614_15614 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_8846_5632) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8846_8846 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8846_8846 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_16540) (s1 T@Seq_16540) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5666|)) (not (= s1 |Seq#Empty_5666|))) (<= (|Seq#Length_5666| s0) n@@13)) (< n@@13 (|Seq#Length_5666| (|Seq#Append_16540| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5666| s0)) (|Seq#Length_5666| s0)) n@@13) (= (|Seq#Index_5666| (|Seq#Append_16540| s0 s1) n@@13) (|Seq#Index_5666| s1 (|Seq#Sub| n@@13 (|Seq#Length_5666| s0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5666| (|Seq#Append_16540| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2915) (s1@@0 T@Seq_2915) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2915|)) (not (= s1@@0 |Seq#Empty_2915|))) (<= (|Seq#Length_2915| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2915| (|Seq#Append_2915| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0)) (|Seq#Length_2915| s0@@0)) n@@14) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14) (|Seq#Index_2915| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2915| s0@@0))))))
 :qid |stdinbpl.261:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5584_3037 val)))
(assert  (not (IsWandField_5584_3037 val)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8786) (ExhaleHeap@@6 T@PolymorphicMapType_8786) (Mask@@9 T@PolymorphicMapType_8807) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@9) (succHeap Heap@@11 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8807) (o_2@@14 T@Ref) (f_4@@14 T@Field_16562_16567) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| Mask@@10) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5631_43011 f_4@@14))) (not (IsWandField_5631_43027 f_4@@14))) (<= (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| Mask@@10) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| Mask@@10) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8807) (o_2@@15 T@Ref) (f_4@@15 T@Field_5631_8860) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5631_8860 f_4@@15))) (not (IsWandField_5631_8860 f_4@@15))) (<= (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8807) (o_2@@16 T@Ref) (f_4@@16 T@Field_5631_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5631_53 f_4@@16))) (not (IsWandField_5631_53 f_4@@16))) (<= (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8807) (o_2@@17 T@Ref) (f_4@@17 T@Field_16546_16547) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5631_5632 f_4@@17))) (not (IsWandField_5631_31979 f_4@@17))) (<= (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8807) (o_2@@18 T@Ref) (f_4@@18 T@Field_5631_3037) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5631_3037 f_4@@18))) (not (IsWandField_5631_3037 f_4@@18))) (<= (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8807) (o_2@@19 T@Ref) (f_4@@19 T@Field_15627_15632) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5605_42180 f_4@@19))) (not (IsWandField_5605_42196 f_4@@19))) (<= (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8807) (o_2@@20 T@Ref) (f_4@@20 T@Field_5605_8860) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5605_8860 f_4@@20))) (not (IsWandField_5605_8860 f_4@@20))) (<= (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8807) (o_2@@21 T@Ref) (f_4@@21 T@Field_5605_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5605_53 f_4@@21))) (not (IsWandField_5605_53 f_4@@21))) (<= (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8807) (o_2@@22 T@Ref) (f_4@@22 T@Field_15614_15615) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5605_5606 f_4@@22))) (not (IsWandField_5605_32336 f_4@@22))) (<= (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8807) (o_2@@23 T@Ref) (f_4@@23 T@Field_5605_3037) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5605_3037 f_4@@23))) (not (IsWandField_5605_3037 f_4@@23))) (<= (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8807) (o_2@@24 T@Ref) (f_4@@24 T@Field_8846_15632) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5584_41349 f_4@@24))) (not (IsWandField_5584_41365 f_4@@24))) (<= (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8807) (o_2@@25 T@Ref) (f_4@@25 T@Field_8859_8860) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_5584_8860 f_4@@25))) (not (IsWandField_5584_8860 f_4@@25))) (<= (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8807) (o_2@@26 T@Ref) (f_4@@26 T@Field_8846_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_5584_53 f_4@@26))) (not (IsWandField_5584_53 f_4@@26))) (<= (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8807) (o_2@@27 T@Ref) (f_4@@27 T@Field_8846_5632) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8846_27635 f_4@@27))) (not (IsWandField_8846_32693 f_4@@27))) (<= (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8807) (o_2@@28 T@Ref) (f_4@@28 T@Field_14868_3037) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_5584_3037 f_4@@28))) (not (IsWandField_5584_3037 f_4@@28))) (<= (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8807) (o_2@@29 T@Ref) (f_4@@29 T@Field_8846_15632) ) (! (= (HasDirectPerm_8846_26697 Mask@@25 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| Mask@@25) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8846_26697 Mask@@25 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8807) (o_2@@30 T@Ref) (f_4@@30 T@Field_14868_3037) ) (! (= (HasDirectPerm_8846_3037 Mask@@26 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| Mask@@26) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8846_3037 Mask@@26 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8807) (o_2@@31 T@Ref) (f_4@@31 T@Field_8859_8860) ) (! (= (HasDirectPerm_8846_8860 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8846_8860 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8807) (o_2@@32 T@Ref) (f_4@@32 T@Field_8846_53) ) (! (= (HasDirectPerm_8846_53 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8846_53 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8807) (o_2@@33 T@Ref) (f_4@@33 T@Field_8846_5632) ) (! (= (HasDirectPerm_8846_5632 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8846_5632 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_8807) (o_2@@34 T@Ref) (f_4@@34 T@Field_15627_15632) ) (! (= (HasDirectPerm_5605_25561 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_25561 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_8807) (o_2@@35 T@Ref) (f_4@@35 T@Field_5605_3037) ) (! (= (HasDirectPerm_5605_3037 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_3037 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_8807) (o_2@@36 T@Ref) (f_4@@36 T@Field_5605_8860) ) (! (= (HasDirectPerm_5605_8860 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_8860 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_8807) (o_2@@37 T@Ref) (f_4@@37 T@Field_5605_53) ) (! (= (HasDirectPerm_5605_53 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_53 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_8807) (o_2@@38 T@Ref) (f_4@@38 T@Field_15614_15615) ) (! (= (HasDirectPerm_5605_5606 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5605_5606 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_8807) (o_2@@39 T@Ref) (f_4@@39 T@Field_16562_16567) ) (! (= (HasDirectPerm_5631_24420 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5631_24420 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_8807) (o_2@@40 T@Ref) (f_4@@40 T@Field_5631_3037) ) (! (= (HasDirectPerm_5631_3037 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5631_3037 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_8807) (o_2@@41 T@Ref) (f_4@@41 T@Field_5631_8860) ) (! (= (HasDirectPerm_5631_8860 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5631_8860 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_8807) (o_2@@42 T@Ref) (f_4@@42 T@Field_5631_53) ) (! (= (HasDirectPerm_5631_53 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5631_53 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_8807) (o_2@@43 T@Ref) (f_4@@43 T@Field_16546_16547) ) (! (= (HasDirectPerm_5631_5632 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5631_5632 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.553:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2915| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8786) (ExhaleHeap@@7 T@PolymorphicMapType_8786) (Mask@@40 T@PolymorphicMapType_8807) (o_12@@0 T@Ref) (f_16 T@Field_8846_15632) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@40) (=> (HasDirectPerm_8846_26697 Mask@@40 o_12@@0 f_16) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@12) o_12@@0 f_16) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@7) o_12@@0 f_16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@40) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@7) o_12@@0 f_16))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8786) (ExhaleHeap@@8 T@PolymorphicMapType_8786) (Mask@@41 T@PolymorphicMapType_8807) (o_12@@1 T@Ref) (f_16@@0 T@Field_14868_3037) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@41) (=> (HasDirectPerm_8846_3037 Mask@@41 o_12@@1 f_16@@0) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@13) o_12@@1 f_16@@0) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@8) o_12@@1 f_16@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@41) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@8) o_12@@1 f_16@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8786) (ExhaleHeap@@9 T@PolymorphicMapType_8786) (Mask@@42 T@PolymorphicMapType_8807) (o_12@@2 T@Ref) (f_16@@1 T@Field_8859_8860) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@42) (=> (HasDirectPerm_8846_8860 Mask@@42 o_12@@2 f_16@@1) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@14) o_12@@2 f_16@@1) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@9) o_12@@2 f_16@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@42) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@9) o_12@@2 f_16@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8786) (ExhaleHeap@@10 T@PolymorphicMapType_8786) (Mask@@43 T@PolymorphicMapType_8807) (o_12@@3 T@Ref) (f_16@@2 T@Field_8846_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@43) (=> (HasDirectPerm_8846_53 Mask@@43 o_12@@3 f_16@@2) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@15) o_12@@3 f_16@@2) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@10) o_12@@3 f_16@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@43) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@10) o_12@@3 f_16@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8786) (ExhaleHeap@@11 T@PolymorphicMapType_8786) (Mask@@44 T@PolymorphicMapType_8807) (o_12@@4 T@Ref) (f_16@@3 T@Field_8846_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@44) (=> (HasDirectPerm_8846_5632 Mask@@44 o_12@@4 f_16@@3) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@16) o_12@@4 f_16@@3) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@11) o_12@@4 f_16@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@44) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@11) o_12@@4 f_16@@3))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8786) (ExhaleHeap@@12 T@PolymorphicMapType_8786) (Mask@@45 T@PolymorphicMapType_8807) (o_12@@5 T@Ref) (f_16@@4 T@Field_15627_15632) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@45) (=> (HasDirectPerm_5605_25561 Mask@@45 o_12@@5 f_16@@4) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@17) o_12@@5 f_16@@4) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@12) o_12@@5 f_16@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@45) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@12) o_12@@5 f_16@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8786) (ExhaleHeap@@13 T@PolymorphicMapType_8786) (Mask@@46 T@PolymorphicMapType_8807) (o_12@@6 T@Ref) (f_16@@5 T@Field_5605_3037) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@46) (=> (HasDirectPerm_5605_3037 Mask@@46 o_12@@6 f_16@@5) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@18) o_12@@6 f_16@@5) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@13) o_12@@6 f_16@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@46) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@13) o_12@@6 f_16@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8786) (ExhaleHeap@@14 T@PolymorphicMapType_8786) (Mask@@47 T@PolymorphicMapType_8807) (o_12@@7 T@Ref) (f_16@@6 T@Field_5605_8860) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@47) (=> (HasDirectPerm_5605_8860 Mask@@47 o_12@@7 f_16@@6) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@19) o_12@@7 f_16@@6) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@14) o_12@@7 f_16@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@47) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@14) o_12@@7 f_16@@6))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8786) (ExhaleHeap@@15 T@PolymorphicMapType_8786) (Mask@@48 T@PolymorphicMapType_8807) (o_12@@8 T@Ref) (f_16@@7 T@Field_5605_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@48) (=> (HasDirectPerm_5605_53 Mask@@48 o_12@@8 f_16@@7) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@20) o_12@@8 f_16@@7) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@15) o_12@@8 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@48) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@15) o_12@@8 f_16@@7))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8786) (ExhaleHeap@@16 T@PolymorphicMapType_8786) (Mask@@49 T@PolymorphicMapType_8807) (o_12@@9 T@Ref) (f_16@@8 T@Field_15614_15615) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@49) (=> (HasDirectPerm_5605_5606 Mask@@49 o_12@@9 f_16@@8) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@21) o_12@@9 f_16@@8) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@16) o_12@@9 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@49) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@16) o_12@@9 f_16@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8786) (ExhaleHeap@@17 T@PolymorphicMapType_8786) (Mask@@50 T@PolymorphicMapType_8807) (o_12@@10 T@Ref) (f_16@@9 T@Field_16562_16567) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@50) (=> (HasDirectPerm_5631_24420 Mask@@50 o_12@@10 f_16@@9) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@22) o_12@@10 f_16@@9) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@17) o_12@@10 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@50) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@17) o_12@@10 f_16@@9))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8786) (ExhaleHeap@@18 T@PolymorphicMapType_8786) (Mask@@51 T@PolymorphicMapType_8807) (o_12@@11 T@Ref) (f_16@@10 T@Field_5631_3037) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@51) (=> (HasDirectPerm_5631_3037 Mask@@51 o_12@@11 f_16@@10) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@23) o_12@@11 f_16@@10) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@18) o_12@@11 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@51) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@18) o_12@@11 f_16@@10))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8786) (ExhaleHeap@@19 T@PolymorphicMapType_8786) (Mask@@52 T@PolymorphicMapType_8807) (o_12@@12 T@Ref) (f_16@@11 T@Field_5631_8860) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@52) (=> (HasDirectPerm_5631_8860 Mask@@52 o_12@@12 f_16@@11) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@24) o_12@@12 f_16@@11) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@19) o_12@@12 f_16@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@52) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@19) o_12@@12 f_16@@11))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8786) (ExhaleHeap@@20 T@PolymorphicMapType_8786) (Mask@@53 T@PolymorphicMapType_8807) (o_12@@13 T@Ref) (f_16@@12 T@Field_5631_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@53) (=> (HasDirectPerm_5631_53 Mask@@53 o_12@@13 f_16@@12) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@25) o_12@@13 f_16@@12) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@20) o_12@@13 f_16@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@53) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@20) o_12@@13 f_16@@12))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8786) (ExhaleHeap@@21 T@PolymorphicMapType_8786) (Mask@@54 T@PolymorphicMapType_8807) (o_12@@14 T@Ref) (f_16@@13 T@Field_16546_16547) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@54) (=> (HasDirectPerm_5631_5632 Mask@@54 o_12@@14 f_16@@13) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@26) o_12@@14 f_16@@13) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@21) o_12@@14 f_16@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@54) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@21) o_12@@14 f_16@@13))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8786) ) (!  (and (= (read_1 Heap@@27) (|read'| Heap@@27)) (dummyFunction_645 |read#triggerStateless|))
 :qid |stdinbpl.576:15|
 :skolemid |58|
 :pattern ( (read_1 Heap@@27))
)))
(assert (forall ((s0@@1 T@Seq_16540) (s1@@1 T@Seq_16540) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5666|)) (not (= s1@@1 |Seq#Empty_5666|))) (= (|Seq#Length_5666| (|Seq#Append_16540| s0@@1 s1@@1)) (+ (|Seq#Length_5666| s0@@1) (|Seq#Length_5666| s1@@1))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5666| (|Seq#Append_16540| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2915) (s1@@2 T@Seq_2915) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2915|)) (not (= s1@@2 |Seq#Empty_2915|))) (= (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)) (+ (|Seq#Length_2915| s0@@2) (|Seq#Length_2915| s1@@2))))
 :qid |stdinbpl.230:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2915| (|Seq#Append_2915| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_16562_16567) ) (! (= (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_5631_8860) ) (! (= (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_5631_53) ) (! (= (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_16546_16547) ) (! (= (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_5631_3037) ) (! (= (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_15627_15632) ) (! (= (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_5605_8860) ) (! (= (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_5605_53) ) (! (= (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_15614_15615) ) (! (= (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_5605_3037) ) (! (= (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8846_15632) ) (! (= (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_8859_8860) ) (! (= (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8846_53) ) (! (= (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_8846_5632) ) (! (= (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_14868_3037) ) (! (= (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@15 T@Seq_16540) (t@@1 T@Seq_16540) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5666| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5666| s@@15)) (|Seq#Length_5666| s@@15)) n@@15) (= (|Seq#Drop_5666| (|Seq#Append_16540| s@@15 t@@1) n@@15) (|Seq#Drop_5666| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5666| s@@15))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5666| (|Seq#Append_16540| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2915) (t@@2 T@Seq_2915) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2915| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16)) (|Seq#Length_2915| s@@16)) n@@16) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16) (|Seq#Drop_2915| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2915| s@@16))))))
 :qid |stdinbpl.387:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8807) (SummandMask1 T@PolymorphicMapType_8807) (SummandMask2 T@PolymorphicMapType_8807) (o_2@@59 T@Ref) (f_4@@59 T@Field_16562_16567) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8807_5631_39556#PolymorphicMapType_8807| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8807) (SummandMask1@@0 T@PolymorphicMapType_8807) (SummandMask2@@0 T@PolymorphicMapType_8807) (o_2@@60 T@Ref) (f_4@@60 T@Field_5631_8860) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8807_5631_8860#PolymorphicMapType_8807| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8807) (SummandMask1@@1 T@PolymorphicMapType_8807) (SummandMask2@@1 T@PolymorphicMapType_8807) (o_2@@61 T@Ref) (f_4@@61 T@Field_5631_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8807_5631_53#PolymorphicMapType_8807| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8807) (SummandMask1@@2 T@PolymorphicMapType_8807) (SummandMask2@@2 T@PolymorphicMapType_8807) (o_2@@62 T@Ref) (f_4@@62 T@Field_16546_16547) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8807_5631_5632#PolymorphicMapType_8807| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8807) (SummandMask1@@3 T@PolymorphicMapType_8807) (SummandMask2@@3 T@PolymorphicMapType_8807) (o_2@@63 T@Ref) (f_4@@63 T@Field_5631_3037) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8807_5631_3037#PolymorphicMapType_8807| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8807) (SummandMask1@@4 T@PolymorphicMapType_8807) (SummandMask2@@4 T@PolymorphicMapType_8807) (o_2@@64 T@Ref) (f_4@@64 T@Field_15627_15632) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8807_5605_39145#PolymorphicMapType_8807| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8807) (SummandMask1@@5 T@PolymorphicMapType_8807) (SummandMask2@@5 T@PolymorphicMapType_8807) (o_2@@65 T@Ref) (f_4@@65 T@Field_5605_8860) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8807_5605_8860#PolymorphicMapType_8807| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8807) (SummandMask1@@6 T@PolymorphicMapType_8807) (SummandMask2@@6 T@PolymorphicMapType_8807) (o_2@@66 T@Ref) (f_4@@66 T@Field_5605_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8807_5605_53#PolymorphicMapType_8807| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8807) (SummandMask1@@7 T@PolymorphicMapType_8807) (SummandMask2@@7 T@PolymorphicMapType_8807) (o_2@@67 T@Ref) (f_4@@67 T@Field_15614_15615) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8807_5605_5606#PolymorphicMapType_8807| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8807) (SummandMask1@@8 T@PolymorphicMapType_8807) (SummandMask2@@8 T@PolymorphicMapType_8807) (o_2@@68 T@Ref) (f_4@@68 T@Field_5605_3037) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8807_5605_3037#PolymorphicMapType_8807| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_8807) (SummandMask1@@9 T@PolymorphicMapType_8807) (SummandMask2@@9 T@PolymorphicMapType_8807) (o_2@@69 T@Ref) (f_4@@69 T@Field_8846_15632) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_8807_5584_38734#PolymorphicMapType_8807| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_8807) (SummandMask1@@10 T@PolymorphicMapType_8807) (SummandMask2@@10 T@PolymorphicMapType_8807) (o_2@@70 T@Ref) (f_4@@70 T@Field_8859_8860) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_8807_5584_8860#PolymorphicMapType_8807| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_8807) (SummandMask1@@11 T@PolymorphicMapType_8807) (SummandMask2@@11 T@PolymorphicMapType_8807) (o_2@@71 T@Ref) (f_4@@71 T@Field_8846_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_8807_5584_53#PolymorphicMapType_8807| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_8807) (SummandMask1@@12 T@PolymorphicMapType_8807) (SummandMask2@@12 T@PolymorphicMapType_8807) (o_2@@72 T@Ref) (f_4@@72 T@Field_8846_5632) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_8807_5584_5606#PolymorphicMapType_8807| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_8807) (SummandMask1@@13 T@PolymorphicMapType_8807) (SummandMask2@@13 T@PolymorphicMapType_8807) (o_2@@73 T@Ref) (f_4@@73 T@Field_14868_3037) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_8807_5584_3037#PolymorphicMapType_8807| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8786) (ExhaleHeap@@22 T@PolymorphicMapType_8786) (Mask@@55 T@PolymorphicMapType_8807) (pm_f_5@@5 T@Field_8846_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@55) (=> (and (HasDirectPerm_8846_5632 Mask@@55 null pm_f_5@@5) (IsPredicateField_8846_27635 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16@@14 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5 f_16@@14) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@28) o2_5 f_16@@14) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5 f_16@@14))
)) (forall ((o2_5@@0 T@Ref) (f_16@@15 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@0 f_16@@15) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@28) o2_5@@0 f_16@@15) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@0 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@0 f_16@@15))
))) (forall ((o2_5@@1 T@Ref) (f_16@@16 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@1 f_16@@16) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@28) o2_5@@1 f_16@@16) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@1 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@1 f_16@@16))
))) (forall ((o2_5@@2 T@Ref) (f_16@@17 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@2 f_16@@17) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@28) o2_5@@2 f_16@@17) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@2 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@2 f_16@@17))
))) (forall ((o2_5@@3 T@Ref) (f_16@@18 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@3 f_16@@18) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) o2_5@@3 f_16@@18) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@3 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@3 f_16@@18))
))) (forall ((o2_5@@4 T@Ref) (f_16@@19 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@4 f_16@@19) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@28) o2_5@@4 f_16@@19) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@4 f_16@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@4 f_16@@19))
))) (forall ((o2_5@@5 T@Ref) (f_16@@20 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@5 f_16@@20) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@28) o2_5@@5 f_16@@20) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@5 f_16@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@5 f_16@@20))
))) (forall ((o2_5@@6 T@Ref) (f_16@@21 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@6 f_16@@21) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@28) o2_5@@6 f_16@@21) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@6 f_16@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@6 f_16@@21))
))) (forall ((o2_5@@7 T@Ref) (f_16@@22 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@7 f_16@@22) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@28) o2_5@@7 f_16@@22) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@7 f_16@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@7 f_16@@22))
))) (forall ((o2_5@@8 T@Ref) (f_16@@23 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@8 f_16@@23) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@28) o2_5@@8 f_16@@23) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@8 f_16@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@8 f_16@@23))
))) (forall ((o2_5@@9 T@Ref) (f_16@@24 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@9 f_16@@24) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@28) o2_5@@9 f_16@@24) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@9 f_16@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@9 f_16@@24))
))) (forall ((o2_5@@10 T@Ref) (f_16@@25 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@10 f_16@@25) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@28) o2_5@@10 f_16@@25) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@10 f_16@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@10 f_16@@25))
))) (forall ((o2_5@@11 T@Ref) (f_16@@26 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@11 f_16@@26) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@28) o2_5@@11 f_16@@26) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@11 f_16@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@11 f_16@@26))
))) (forall ((o2_5@@12 T@Ref) (f_16@@27 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@12 f_16@@27) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@28) o2_5@@12 f_16@@27) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@12 f_16@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@12 f_16@@27))
))) (forall ((o2_5@@13 T@Ref) (f_16@@28 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@28) null (PredicateMaskField_8846 pm_f_5@@5))) o2_5@@13 f_16@@28) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@28) o2_5@@13 f_16@@28) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@13 f_16@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@22) o2_5@@13 f_16@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@22 Mask@@55) (IsPredicateField_8846_27635 pm_f_5@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8786) (ExhaleHeap@@23 T@PolymorphicMapType_8786) (Mask@@56 T@PolymorphicMapType_8807) (pm_f_5@@6 T@Field_15614_15615) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@56) (=> (and (HasDirectPerm_5605_5606 Mask@@56 null pm_f_5@@6) (IsPredicateField_5605_5606 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_16@@29 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@14 f_16@@29) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@29) o2_5@@14 f_16@@29) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@14 f_16@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@14 f_16@@29))
)) (forall ((o2_5@@15 T@Ref) (f_16@@30 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@15 f_16@@30) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@29) o2_5@@15 f_16@@30) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@15 f_16@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@15 f_16@@30))
))) (forall ((o2_5@@16 T@Ref) (f_16@@31 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@16 f_16@@31) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@29) o2_5@@16 f_16@@31) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@16 f_16@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@16 f_16@@31))
))) (forall ((o2_5@@17 T@Ref) (f_16@@32 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@17 f_16@@32) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@29) o2_5@@17 f_16@@32) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@17 f_16@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@17 f_16@@32))
))) (forall ((o2_5@@18 T@Ref) (f_16@@33 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@18 f_16@@33) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@29) o2_5@@18 f_16@@33) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@18 f_16@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@18 f_16@@33))
))) (forall ((o2_5@@19 T@Ref) (f_16@@34 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@19 f_16@@34) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@29) o2_5@@19 f_16@@34) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@19 f_16@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@19 f_16@@34))
))) (forall ((o2_5@@20 T@Ref) (f_16@@35 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@20 f_16@@35) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@29) o2_5@@20 f_16@@35) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@20 f_16@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@20 f_16@@35))
))) (forall ((o2_5@@21 T@Ref) (f_16@@36 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@21 f_16@@36) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@29) o2_5@@21 f_16@@36) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@21 f_16@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@21 f_16@@36))
))) (forall ((o2_5@@22 T@Ref) (f_16@@37 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@22 f_16@@37) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@29) o2_5@@22 f_16@@37) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@22 f_16@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@22 f_16@@37))
))) (forall ((o2_5@@23 T@Ref) (f_16@@38 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@23 f_16@@38) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) o2_5@@23 f_16@@38) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@23 f_16@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@23 f_16@@38))
))) (forall ((o2_5@@24 T@Ref) (f_16@@39 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@24 f_16@@39) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@29) o2_5@@24 f_16@@39) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@24 f_16@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@24 f_16@@39))
))) (forall ((o2_5@@25 T@Ref) (f_16@@40 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@25 f_16@@40) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@29) o2_5@@25 f_16@@40) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@25 f_16@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@25 f_16@@40))
))) (forall ((o2_5@@26 T@Ref) (f_16@@41 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@26 f_16@@41) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@29) o2_5@@26 f_16@@41) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@26 f_16@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@26 f_16@@41))
))) (forall ((o2_5@@27 T@Ref) (f_16@@42 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@27 f_16@@42) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@29) o2_5@@27 f_16@@42) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@27 f_16@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@27 f_16@@42))
))) (forall ((o2_5@@28 T@Ref) (f_16@@43 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@29) null (PredicateMaskField_5605 pm_f_5@@6))) o2_5@@28 f_16@@43) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@29) o2_5@@28 f_16@@43) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@28 f_16@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@23) o2_5@@28 f_16@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@23 Mask@@56) (IsPredicateField_5605_5606 pm_f_5@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8786) (ExhaleHeap@@24 T@PolymorphicMapType_8786) (Mask@@57 T@PolymorphicMapType_8807) (pm_f_5@@7 T@Field_16546_16547) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@57) (=> (and (HasDirectPerm_5631_5632 Mask@@57 null pm_f_5@@7) (IsPredicateField_5631_5632 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@44 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@29 f_16@@44) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@30) o2_5@@29 f_16@@44) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@29 f_16@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@29 f_16@@44))
)) (forall ((o2_5@@30 T@Ref) (f_16@@45 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@30 f_16@@45) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@30) o2_5@@30 f_16@@45) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@30 f_16@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@30 f_16@@45))
))) (forall ((o2_5@@31 T@Ref) (f_16@@46 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@31 f_16@@46) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@30) o2_5@@31 f_16@@46) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@31 f_16@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@31 f_16@@46))
))) (forall ((o2_5@@32 T@Ref) (f_16@@47 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@32 f_16@@47) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@30) o2_5@@32 f_16@@47) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@32 f_16@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@32 f_16@@47))
))) (forall ((o2_5@@33 T@Ref) (f_16@@48 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@33 f_16@@48) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@30) o2_5@@33 f_16@@48) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@33 f_16@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@33 f_16@@48))
))) (forall ((o2_5@@34 T@Ref) (f_16@@49 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@34 f_16@@49) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@30) o2_5@@34 f_16@@49) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@34 f_16@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@34 f_16@@49))
))) (forall ((o2_5@@35 T@Ref) (f_16@@50 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@35 f_16@@50) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@30) o2_5@@35 f_16@@50) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@35 f_16@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@35 f_16@@50))
))) (forall ((o2_5@@36 T@Ref) (f_16@@51 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@36 f_16@@51) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@30) o2_5@@36 f_16@@51) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@36 f_16@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@36 f_16@@51))
))) (forall ((o2_5@@37 T@Ref) (f_16@@52 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@37 f_16@@52) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@30) o2_5@@37 f_16@@52) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@37 f_16@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@37 f_16@@52))
))) (forall ((o2_5@@38 T@Ref) (f_16@@53 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@38 f_16@@53) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@30) o2_5@@38 f_16@@53) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@38 f_16@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@38 f_16@@53))
))) (forall ((o2_5@@39 T@Ref) (f_16@@54 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@39 f_16@@54) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@30) o2_5@@39 f_16@@54) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@39 f_16@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@39 f_16@@54))
))) (forall ((o2_5@@40 T@Ref) (f_16@@55 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@40 f_16@@55) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@30) o2_5@@40 f_16@@55) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@40 f_16@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@40 f_16@@55))
))) (forall ((o2_5@@41 T@Ref) (f_16@@56 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@41 f_16@@56) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@30) o2_5@@41 f_16@@56) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@41 f_16@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@41 f_16@@56))
))) (forall ((o2_5@@42 T@Ref) (f_16@@57 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@42 f_16@@57) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@30) o2_5@@42 f_16@@57) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@42 f_16@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@42 f_16@@57))
))) (forall ((o2_5@@43 T@Ref) (f_16@@58 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) null (PredicateMaskField_5631 pm_f_5@@7))) o2_5@@43 f_16@@58) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@30) o2_5@@43 f_16@@58) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@43 f_16@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@24) o2_5@@43 f_16@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@24 Mask@@57) (IsPredicateField_5631_5632 pm_f_5@@7))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_8786) (ExhaleHeap@@25 T@PolymorphicMapType_8786) (Mask@@58 T@PolymorphicMapType_8807) (pm_f_5@@8 T@Field_8846_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@58) (=> (and (HasDirectPerm_8846_5632 Mask@@58 null pm_f_5@@8) (IsWandField_8846_32693 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_16@@59 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@44 f_16@@59) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@31) o2_5@@44 f_16@@59) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@44 f_16@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@44 f_16@@59))
)) (forall ((o2_5@@45 T@Ref) (f_16@@60 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@45 f_16@@60) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@31) o2_5@@45 f_16@@60) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@45 f_16@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@45 f_16@@60))
))) (forall ((o2_5@@46 T@Ref) (f_16@@61 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@46 f_16@@61) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@31) o2_5@@46 f_16@@61) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@46 f_16@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@46 f_16@@61))
))) (forall ((o2_5@@47 T@Ref) (f_16@@62 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@47 f_16@@62) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@31) o2_5@@47 f_16@@62) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@47 f_16@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@47 f_16@@62))
))) (forall ((o2_5@@48 T@Ref) (f_16@@63 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@48 f_16@@63) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) o2_5@@48 f_16@@63) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@48 f_16@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@48 f_16@@63))
))) (forall ((o2_5@@49 T@Ref) (f_16@@64 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@49 f_16@@64) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@31) o2_5@@49 f_16@@64) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@49 f_16@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@49 f_16@@64))
))) (forall ((o2_5@@50 T@Ref) (f_16@@65 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@50 f_16@@65) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@31) o2_5@@50 f_16@@65) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@50 f_16@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@50 f_16@@65))
))) (forall ((o2_5@@51 T@Ref) (f_16@@66 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@51 f_16@@66) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@31) o2_5@@51 f_16@@66) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@51 f_16@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@51 f_16@@66))
))) (forall ((o2_5@@52 T@Ref) (f_16@@67 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@52 f_16@@67) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@31) o2_5@@52 f_16@@67) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@52 f_16@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@52 f_16@@67))
))) (forall ((o2_5@@53 T@Ref) (f_16@@68 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@53 f_16@@68) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@31) o2_5@@53 f_16@@68) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@53 f_16@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@53 f_16@@68))
))) (forall ((o2_5@@54 T@Ref) (f_16@@69 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@54 f_16@@69) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@31) o2_5@@54 f_16@@69) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@54 f_16@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@54 f_16@@69))
))) (forall ((o2_5@@55 T@Ref) (f_16@@70 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@55 f_16@@70) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@31) o2_5@@55 f_16@@70) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@55 f_16@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@55 f_16@@70))
))) (forall ((o2_5@@56 T@Ref) (f_16@@71 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@56 f_16@@71) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@31) o2_5@@56 f_16@@71) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@56 f_16@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@56 f_16@@71))
))) (forall ((o2_5@@57 T@Ref) (f_16@@72 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@57 f_16@@72) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@31) o2_5@@57 f_16@@72) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@57 f_16@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@57 f_16@@72))
))) (forall ((o2_5@@58 T@Ref) (f_16@@73 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@31) null (WandMaskField_8846 pm_f_5@@8))) o2_5@@58 f_16@@73) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@31) o2_5@@58 f_16@@73) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@58 f_16@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@25) o2_5@@58 f_16@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@25 Mask@@58) (IsWandField_8846_32693 pm_f_5@@8))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_8786) (ExhaleHeap@@26 T@PolymorphicMapType_8786) (Mask@@59 T@PolymorphicMapType_8807) (pm_f_5@@9 T@Field_15614_15615) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@59) (=> (and (HasDirectPerm_5605_5606 Mask@@59 null pm_f_5@@9) (IsWandField_5605_32336 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_16@@74 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@59 f_16@@74) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@32) o2_5@@59 f_16@@74) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@59 f_16@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@59 f_16@@74))
)) (forall ((o2_5@@60 T@Ref) (f_16@@75 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@60 f_16@@75) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@32) o2_5@@60 f_16@@75) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@60 f_16@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@60 f_16@@75))
))) (forall ((o2_5@@61 T@Ref) (f_16@@76 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@61 f_16@@76) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@32) o2_5@@61 f_16@@76) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@61 f_16@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@61 f_16@@76))
))) (forall ((o2_5@@62 T@Ref) (f_16@@77 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@62 f_16@@77) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@32) o2_5@@62 f_16@@77) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@62 f_16@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@62 f_16@@77))
))) (forall ((o2_5@@63 T@Ref) (f_16@@78 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@63 f_16@@78) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@32) o2_5@@63 f_16@@78) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@63 f_16@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@63 f_16@@78))
))) (forall ((o2_5@@64 T@Ref) (f_16@@79 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@64 f_16@@79) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@32) o2_5@@64 f_16@@79) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@64 f_16@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@64 f_16@@79))
))) (forall ((o2_5@@65 T@Ref) (f_16@@80 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@65 f_16@@80) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@32) o2_5@@65 f_16@@80) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@65 f_16@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@65 f_16@@80))
))) (forall ((o2_5@@66 T@Ref) (f_16@@81 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@66 f_16@@81) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@32) o2_5@@66 f_16@@81) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@66 f_16@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@66 f_16@@81))
))) (forall ((o2_5@@67 T@Ref) (f_16@@82 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@67 f_16@@82) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@32) o2_5@@67 f_16@@82) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@67 f_16@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@67 f_16@@82))
))) (forall ((o2_5@@68 T@Ref) (f_16@@83 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@68 f_16@@83) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) o2_5@@68 f_16@@83) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@68 f_16@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@68 f_16@@83))
))) (forall ((o2_5@@69 T@Ref) (f_16@@84 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@69 f_16@@84) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@32) o2_5@@69 f_16@@84) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@69 f_16@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@69 f_16@@84))
))) (forall ((o2_5@@70 T@Ref) (f_16@@85 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@70 f_16@@85) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@32) o2_5@@70 f_16@@85) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@70 f_16@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@70 f_16@@85))
))) (forall ((o2_5@@71 T@Ref) (f_16@@86 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@71 f_16@@86) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@32) o2_5@@71 f_16@@86) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@71 f_16@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@71 f_16@@86))
))) (forall ((o2_5@@72 T@Ref) (f_16@@87 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@72 f_16@@87) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@32) o2_5@@72 f_16@@87) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@72 f_16@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@72 f_16@@87))
))) (forall ((o2_5@@73 T@Ref) (f_16@@88 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@32) null (WandMaskField_5605 pm_f_5@@9))) o2_5@@73 f_16@@88) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@32) o2_5@@73 f_16@@88) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@73 f_16@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@26) o2_5@@73 f_16@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@26 Mask@@59) (IsWandField_5605_32336 pm_f_5@@9))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_8786) (ExhaleHeap@@27 T@PolymorphicMapType_8786) (Mask@@60 T@PolymorphicMapType_8807) (pm_f_5@@10 T@Field_16546_16547) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@60) (=> (and (HasDirectPerm_5631_5632 Mask@@60 null pm_f_5@@10) (IsWandField_5631_31979 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_16@@89 T@Field_8846_53) ) (!  (=> (select (|PolymorphicMapType_9335_8846_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@74 f_16@@89) (= (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@33) o2_5@@74 f_16@@89) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@74 f_16@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@74 f_16@@89))
)) (forall ((o2_5@@75 T@Ref) (f_16@@90 T@Field_8859_8860) ) (!  (=> (select (|PolymorphicMapType_9335_8846_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@75 f_16@@90) (= (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@33) o2_5@@75 f_16@@90) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@75 f_16@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@75 f_16@@90))
))) (forall ((o2_5@@76 T@Ref) (f_16@@91 T@Field_14868_3037) ) (!  (=> (select (|PolymorphicMapType_9335_8846_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@76 f_16@@91) (= (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@33) o2_5@@76 f_16@@91) (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@76 f_16@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@76 f_16@@91))
))) (forall ((o2_5@@77 T@Ref) (f_16@@92 T@Field_8846_5632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@77 f_16@@92) (= (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@33) o2_5@@77 f_16@@92) (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@77 f_16@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@77 f_16@@92))
))) (forall ((o2_5@@78 T@Ref) (f_16@@93 T@Field_8846_15632) ) (!  (=> (select (|PolymorphicMapType_9335_8846_28794#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@78 f_16@@93) (= (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@33) o2_5@@78 f_16@@93) (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@78 f_16@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@78 f_16@@93))
))) (forall ((o2_5@@79 T@Ref) (f_16@@94 T@Field_5605_53) ) (!  (=> (select (|PolymorphicMapType_9335_15614_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@79 f_16@@94) (= (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@33) o2_5@@79 f_16@@94) (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@79 f_16@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@79 f_16@@94))
))) (forall ((o2_5@@80 T@Ref) (f_16@@95 T@Field_5605_8860) ) (!  (=> (select (|PolymorphicMapType_9335_15614_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@80 f_16@@95) (= (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@33) o2_5@@80 f_16@@95) (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@80 f_16@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@80 f_16@@95))
))) (forall ((o2_5@@81 T@Ref) (f_16@@96 T@Field_5605_3037) ) (!  (=> (select (|PolymorphicMapType_9335_15614_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@81 f_16@@96) (= (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@33) o2_5@@81 f_16@@96) (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@81 f_16@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@81 f_16@@96))
))) (forall ((o2_5@@82 T@Ref) (f_16@@97 T@Field_15614_15615) ) (!  (=> (select (|PolymorphicMapType_9335_15614_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@82 f_16@@97) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@33) o2_5@@82 f_16@@97) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@82 f_16@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@82 f_16@@97))
))) (forall ((o2_5@@83 T@Ref) (f_16@@98 T@Field_15627_15632) ) (!  (=> (select (|PolymorphicMapType_9335_15614_29842#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@83 f_16@@98) (= (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@33) o2_5@@83 f_16@@98) (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@83 f_16@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@83 f_16@@98))
))) (forall ((o2_5@@84 T@Ref) (f_16@@99 T@Field_5631_53) ) (!  (=> (select (|PolymorphicMapType_9335_16546_53#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@84 f_16@@99) (= (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@33) o2_5@@84 f_16@@99) (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@84 f_16@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@84 f_16@@99))
))) (forall ((o2_5@@85 T@Ref) (f_16@@100 T@Field_5631_8860) ) (!  (=> (select (|PolymorphicMapType_9335_16546_8860#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@85 f_16@@100) (= (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@33) o2_5@@85 f_16@@100) (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@85 f_16@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@85 f_16@@100))
))) (forall ((o2_5@@86 T@Ref) (f_16@@101 T@Field_5631_3037) ) (!  (=> (select (|PolymorphicMapType_9335_16546_3037#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@86 f_16@@101) (= (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@33) o2_5@@86 f_16@@101) (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@86 f_16@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@86 f_16@@101))
))) (forall ((o2_5@@87 T@Ref) (f_16@@102 T@Field_16546_16547) ) (!  (=> (select (|PolymorphicMapType_9335_16546_15615#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@87 f_16@@102) (= (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@33) o2_5@@87 f_16@@102) (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@87 f_16@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@87 f_16@@102))
))) (forall ((o2_5@@88 T@Ref) (f_16@@103 T@Field_16562_16567) ) (!  (=> (select (|PolymorphicMapType_9335_16546_30890#PolymorphicMapType_9335| (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) null (WandMaskField_5631 pm_f_5@@10))) o2_5@@88 f_16@@103) (= (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@33) o2_5@@88 f_16@@103) (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@88 f_16@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| ExhaleHeap@@27) o2_5@@88 f_16@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@27 Mask@@60) (IsWandField_5631_31979 pm_f_5@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.552:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2915| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16540) (b T@Seq_16540) ) (!  (=> (|Seq#Equal_16540| a b) (= a b))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16540| a b))
)))
(assert (forall ((a@@0 T@Seq_2915) (b@@0 T@Seq_2915) ) (!  (=> (|Seq#Equal_2915| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.525:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2915| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_16540) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_5666| s@@17))) (|Seq#ContainsTrigger_5666| s@@17 (|Seq#Index_5666| s@@17 i@@3)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5666| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2915) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2915| s@@18))) (|Seq#ContainsTrigger_2915| s@@18 (|Seq#Index_2915| s@@18 i@@4)))
 :qid |stdinbpl.418:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2915| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16540) (s1@@3 T@Seq_16540) ) (!  (and (=> (= s0@@3 |Seq#Empty_5666|) (= (|Seq#Append_16540| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5666|) (= (|Seq#Append_16540| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16540| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2915) (s1@@4 T@Seq_2915) ) (!  (and (=> (= s0@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2915|) (= (|Seq#Append_2915| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2915| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5666| (|Seq#Singleton_5666| t@@3) 0) t@@3)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5666| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2915| (|Seq#Singleton_2915| t@@4) 0) t@@4)
 :qid |stdinbpl.240:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2915| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16540) ) (! (<= 0 (|Seq#Length_5666| s@@19))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5666| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2915) ) (! (<= 0 (|Seq#Length_2915| s@@20))
 :qid |stdinbpl.219:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2915| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_16540) (s1@@5 T@Seq_16540) ) (!  (=> (|Seq#Equal_16540| s0@@5 s1@@5) (and (= (|Seq#Length_5666| s0@@5) (|Seq#Length_5666| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5666| s0@@5))) (= (|Seq#Index_5666| s0@@5 j@@6) (|Seq#Index_5666| s1@@5 j@@6)))
 :qid |stdinbpl.515:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5666| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5666| s1@@5 j@@6))
))))
 :qid |stdinbpl.512:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16540| s0@@5 s1@@5))
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
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_5605_5606 (P self@@3)) 0)
 :qid |stdinbpl.641:15|
 :skolemid |65|
 :pattern ( (P self@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5666| (|Seq#Singleton_5666| t@@5)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5666| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2915| (|Seq#Singleton_2915| t@@6)) 1)
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2915| t@@6))
)))
(assert (forall ((arr@@3 T@Seq_16540) ) (! (= (getPredWandId_5631_5632 (array arr@@3)) 1)
 :qid |stdinbpl.696:15|
 :skolemid |71|
 :pattern ( (array arr@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8786) (Heap1Heap T@PolymorphicMapType_8786) (arr@@4 T@Seq_16540) ) (!  (=> (and (=  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4)) (|Seq#Length_5666| arr@@4))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4)) (|Seq#Length_5666| arr@@4))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4)) (|Seq#Length_5666| arr@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap2Heap) null (P (|Seq#Index_5666| arr@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4))))) (select (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap1Heap) null (P (|Seq#Index_5666| arr@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4)))))))) (= (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4)))
 :qid |stdinbpl.722:15|
 :skolemid |75|
 :pattern ( (|array#condqp1| Heap2Heap arr@@4) (|array#condqp1| Heap1Heap arr@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_8786) ) (! (dummyFunction_645 |read#triggerStateless|)
 :qid |stdinbpl.580:15|
 :skolemid |59|
 :pattern ( (|read'| Heap@@34))
)))
(assert (forall ((s@@21 T@Seq_16540) (t@@7 T@Seq_16540) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5666| s@@21))) (= (|Seq#Take_5666| (|Seq#Append_16540| s@@21 t@@7) n@@17) (|Seq#Take_5666| s@@21 n@@17)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5666| (|Seq#Append_16540| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2915) (t@@8 T@Seq_2915) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2915| s@@22))) (= (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18) (|Seq#Take_2915| s@@22 n@@18)))
 :qid |stdinbpl.369:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2915| (|Seq#Append_2915| s@@22 t@@8) n@@18))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_8786) (Mask@@61 T@PolymorphicMapType_8807) ) (!  (=> (state Heap@@35 Mask@@61) (= (|read'| Heap@@35) (|read#frame| EmptyFrame)))
 :qid |stdinbpl.587:15|
 :skolemid |60|
 :pattern ( (state Heap@@35 Mask@@61) (|read'| Heap@@35))
)))
(assert (forall ((s@@23 T@Seq_16540) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_5666| s@@23))) (= (|Seq#Length_5666| (|Seq#Update_5666| s@@23 i@@5 v@@2)) (|Seq#Length_5666| s@@23)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5666| (|Seq#Update_5666| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_5666| s@@23) (|Seq#Update_5666| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2915) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2915| s@@24))) (= (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@6 v@@3)) (|Seq#Length_2915| s@@24)))
 :qid |stdinbpl.268:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2915| (|Seq#Update_2915| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2915| s@@24) (|Seq#Update_2915| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_8786) (o_11 T@Ref) (f_17 T@Field_16562_16567) (v@@4 T@PolymorphicMapType_9335) ) (! (succHeap Heap@@36 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@36) (store (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@36) o_11 f_17 v@@4) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@36) (store (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@36) o_11 f_17 v@@4) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@36) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_8786) (o_11@@0 T@Ref) (f_17@@0 T@Field_5631_3037) (v@@5 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@37) (store (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@37) o_11@@0 f_17@@0 v@@5) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@37) (store (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@37) o_11@@0 f_17@@0 v@@5) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@37) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_8786) (o_11@@1 T@Ref) (f_17@@1 T@Field_16546_16547) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@38) (store (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@38) o_11@@1 f_17@@1 v@@6) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@38) (store (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@38) o_11@@1 f_17@@1 v@@6) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@38) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_8786) (o_11@@2 T@Ref) (f_17@@2 T@Field_5631_8860) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@39) (store (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@39) o_11@@2 f_17@@2 v@@7) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@39) (store (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@39) o_11@@2 f_17@@2 v@@7) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@39) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_8786) (o_11@@3 T@Ref) (f_17@@3 T@Field_5631_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@40) (store (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@40) o_11@@3 f_17@@3 v@@8) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@40) (store (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@40) o_11@@3 f_17@@3 v@@8) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@40) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_8786) (o_11@@4 T@Ref) (f_17@@4 T@Field_15627_15632) (v@@9 T@PolymorphicMapType_9335) ) (! (succHeap Heap@@41 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@41) (store (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@41) o_11@@4 f_17@@4 v@@9) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@41) (store (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@41) o_11@@4 f_17@@4 v@@9) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@41) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_8786) (o_11@@5 T@Ref) (f_17@@5 T@Field_5605_3037) (v@@10 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@42) (store (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@42) o_11@@5 f_17@@5 v@@10) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@42) (store (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@42) o_11@@5 f_17@@5 v@@10) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@42) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_8786) (o_11@@6 T@Ref) (f_17@@6 T@Field_15614_15615) (v@@11 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@43) (store (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@43) o_11@@6 f_17@@6 v@@11) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@43) (store (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@43) o_11@@6 f_17@@6 v@@11) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@43) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_8786) (o_11@@7 T@Ref) (f_17@@7 T@Field_5605_8860) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@44) (store (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@44) o_11@@7 f_17@@7 v@@12) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@44) (store (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@44) o_11@@7 f_17@@7 v@@12) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@44) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_8786) (o_11@@8 T@Ref) (f_17@@8 T@Field_5605_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@45) (store (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@45) o_11@@8 f_17@@8 v@@13) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@45) (store (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@45) o_11@@8 f_17@@8 v@@13) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@45) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_8786) (o_11@@9 T@Ref) (f_17@@9 T@Field_8846_15632) (v@@14 T@PolymorphicMapType_9335) ) (! (succHeap Heap@@46 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@46) (store (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@46) o_11@@9 f_17@@9 v@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@46) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@46) (store (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@46) o_11@@9 f_17@@9 v@@14)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_8786) (o_11@@10 T@Ref) (f_17@@10 T@Field_14868_3037) (v@@15 Int) ) (! (succHeap Heap@@47 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@47) (store (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@47) o_11@@10 f_17@@10 v@@15) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@47) (store (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@47) o_11@@10 f_17@@10 v@@15) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@47) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_8786) (o_11@@11 T@Ref) (f_17@@11 T@Field_8846_5632) (v@@16 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@48) (store (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@48) o_11@@11 f_17@@11 v@@16) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@48) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@48) (store (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@48) o_11@@11 f_17@@11 v@@16) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_8786) (o_11@@12 T@Ref) (f_17@@12 T@Field_8859_8860) (v@@17 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@49) (store (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@49) o_11@@12 f_17@@12 v@@17) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@49) (store (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@49) o_11@@12 f_17@@12 v@@17) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@49) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_8786) (o_11@@13 T@Ref) (f_17@@13 T@Field_8846_53) (v@@18 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_8786 (store (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@50) o_11@@13 f_17@@13 v@@18) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8786 (store (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@50) o_11@@13 f_17@@13 v@@18) (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_5606#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_5632#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5584_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_53#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_8860#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5631_24462#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_53#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_8860#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_3037#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_5605_25603#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_8846_5632#PolymorphicMapType_8786| Heap@@50) (|PolymorphicMapType_8786_8846_26739#PolymorphicMapType_8786| Heap@@50)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_5605 (P self@@4)) (|P#sm| self@@4))
 :qid |stdinbpl.633:15|
 :skolemid |63|
 :pattern ( (PredicateMaskField_5605 (P self@@4)))
)))
(assert (forall ((arr@@5 T@Seq_16540) ) (! (= (PredicateMaskField_5631 (array arr@@5)) (|array#sm| arr@@5))
 :qid |stdinbpl.688:15|
 :skolemid |69|
 :pattern ( (PredicateMaskField_5631 (array arr@@5)))
)))
(assert (forall ((s@@25 T@Seq_16540) (t@@9 T@Seq_16540) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5666| s@@25))) (= (|Seq#Drop_5666| (|Seq#Append_16540| s@@25 t@@9) n@@19) (|Seq#Append_16540| (|Seq#Drop_5666| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5666| (|Seq#Append_16540| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2915) (t@@10 T@Seq_2915) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2915| s@@26))) (= (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20) (|Seq#Append_2915| (|Seq#Drop_2915| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.383:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2915| (|Seq#Append_2915| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16540) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_5666| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_5666| (|Seq#Drop_5666| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_5666| s@@27 i@@7))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5666| s@@27 n@@21) (|Seq#Index_5666| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2915) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2915| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2915| (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2915| s@@28 i@@8))))
 :qid |stdinbpl.319:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2915| s@@28 n@@22) (|Seq#Index_2915| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16540) (s1@@7 T@Seq_16540) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5666|)) (not (= s1@@7 |Seq#Empty_5666|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5666| s0@@7))) (= (|Seq#Index_5666| (|Seq#Append_16540| s0@@7 s1@@7) n@@23) (|Seq#Index_5666| s0@@7 n@@23)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5666| (|Seq#Append_16540| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5666| s0@@7 n@@23) (|Seq#Append_16540| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2915) (s1@@8 T@Seq_2915) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2915|)) (not (= s1@@8 |Seq#Empty_2915|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2915| s0@@8))) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24) (|Seq#Index_2915| s0@@8 n@@24)))
 :qid |stdinbpl.259:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2915| (|Seq#Append_2915| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2915| s0@@8 n@@24) (|Seq#Append_2915| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16540) (s1@@9 T@Seq_16540) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5666|)) (not (= s1@@9 |Seq#Empty_5666|))) (<= 0 m)) (< m (|Seq#Length_5666| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5666| s0@@9)) (|Seq#Length_5666| s0@@9)) m) (= (|Seq#Index_5666| (|Seq#Append_16540| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5666| s0@@9))) (|Seq#Index_5666| s1@@9 m))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5666| s1@@9 m) (|Seq#Append_16540| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2915) (s1@@10 T@Seq_2915) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2915|)) (not (= s1@@10 |Seq#Empty_2915|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2915| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10)) (|Seq#Length_2915| s0@@10)) m@@0) (= (|Seq#Index_2915| (|Seq#Append_2915| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2915| s0@@10))) (|Seq#Index_2915| s1@@10 m@@0))))
 :qid |stdinbpl.264:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2915| s1@@10 m@@0) (|Seq#Append_2915| s0@@10 s1@@10))
)))
(assert (forall ((o_11@@14 T@Ref) (f_10 T@Field_8859_8860) (Heap@@51 T@PolymorphicMapType_8786) ) (!  (=> (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@51) o_11@@14 $allocated) (select (|PolymorphicMapType_8786_5392_53#PolymorphicMapType_8786| Heap@@51) (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@51) o_11@@14 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8786_5395_5396#PolymorphicMapType_8786| Heap@@51) o_11@@14 f_10))
)))
(assert (forall ((s@@29 T@Seq_16540) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5666| s@@29))) (= (|Seq#Index_5666| s@@29 i@@9) x@@3)) (|Seq#Contains_16540| s@@29 x@@3))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_16540| s@@29 x@@3) (|Seq#Index_5666| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2915) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2915| s@@30))) (= (|Seq#Index_2915| s@@30 i@@10) x@@4)) (|Seq#Contains_2915| s@@30 x@@4))
 :qid |stdinbpl.416:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2915| s@@30 x@@4) (|Seq#Index_2915| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16540) (s1@@11 T@Seq_16540) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16540| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16540| s0@@11 s1@@11))) (not (= (|Seq#Length_5666| s0@@11) (|Seq#Length_5666| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16540| s0@@11 s1@@11))) (= (|Seq#Length_5666| s0@@11) (|Seq#Length_5666| s1@@11))) (= (|Seq#SkolemDiff_16540| s0@@11 s1@@11) (|Seq#SkolemDiff_16540| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16540| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16540| s0@@11 s1@@11) (|Seq#Length_5666| s0@@11))) (not (= (|Seq#Index_5666| s0@@11 (|Seq#SkolemDiff_16540| s0@@11 s1@@11)) (|Seq#Index_5666| s1@@11 (|Seq#SkolemDiff_16540| s0@@11 s1@@11))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16540| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2915) (s1@@12 T@Seq_2915) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2915| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (not (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2915| s0@@12 s1@@12))) (= (|Seq#Length_2915| s0@@12) (|Seq#Length_2915| s1@@12))) (= (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#SkolemDiff_2915| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2915| s0@@12 s1@@12) (|Seq#Length_2915| s0@@12))) (not (= (|Seq#Index_2915| s0@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12)) (|Seq#Index_2915| s1@@12 (|Seq#SkolemDiff_2915| s0@@12 s1@@12))))))
 :qid |stdinbpl.520:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2915| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_16546_16547) (v_1@@2 T@FrameType) (q T@Field_16546_16547) (w@@2 T@FrameType) (r T@Field_16546_16547) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16546_16546 p@@3 v_1@@2 q w@@2) (InsidePredicate_16546_16546 q w@@2 r u)) (InsidePredicate_16546_16546 p@@3 v_1@@2 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_16546 p@@3 v_1@@2 q w@@2) (InsidePredicate_16546_16546 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_16546_16547) (v_1@@3 T@FrameType) (q@@0 T@Field_16546_16547) (w@@3 T@FrameType) (r@@0 T@Field_15614_15615) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_16546 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_16546_15614 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_16546_15614 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_16546 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_16546_15614 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_16546_16547) (v_1@@4 T@FrameType) (q@@1 T@Field_16546_16547) (w@@4 T@FrameType) (r@@1 T@Field_8846_5632) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_16546 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_16546_8846 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_16546_8846 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_16546 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_16546_8846 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_16546_16547) (v_1@@5 T@FrameType) (q@@2 T@Field_15614_15615) (w@@5 T@FrameType) (r@@2 T@Field_16546_16547) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_15614 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_15614_16546 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_16546_16546 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_15614 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_15614_16546 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_16546_16547) (v_1@@6 T@FrameType) (q@@3 T@Field_15614_15615) (w@@6 T@FrameType) (r@@3 T@Field_15614_15615) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_15614 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_15614_15614 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_16546_15614 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_15614 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_15614_15614 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_16546_16547) (v_1@@7 T@FrameType) (q@@4 T@Field_15614_15615) (w@@7 T@FrameType) (r@@4 T@Field_8846_5632) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_15614 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_15614_8846 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_16546_8846 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_15614 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_15614_8846 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_16546_16547) (v_1@@8 T@FrameType) (q@@5 T@Field_8846_5632) (w@@8 T@FrameType) (r@@5 T@Field_16546_16547) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_8846 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8846_16546 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_16546_16546 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_8846 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8846_16546 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_16546_16547) (v_1@@9 T@FrameType) (q@@6 T@Field_8846_5632) (w@@9 T@FrameType) (r@@6 T@Field_15614_15615) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_8846 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8846_15614 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_16546_15614 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_8846 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8846_15614 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_16546_16547) (v_1@@10 T@FrameType) (q@@7 T@Field_8846_5632) (w@@10 T@FrameType) (r@@7 T@Field_8846_5632) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_16546_8846 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8846_8846 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_16546_8846 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16546_8846 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8846_8846 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_15614_15615) (v_1@@11 T@FrameType) (q@@8 T@Field_16546_16547) (w@@11 T@FrameType) (r@@8 T@Field_16546_16547) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_16546 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_16546_16546 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_15614_16546 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_16546 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_16546_16546 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_15614_15615) (v_1@@12 T@FrameType) (q@@9 T@Field_16546_16547) (w@@12 T@FrameType) (r@@9 T@Field_15614_15615) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_16546 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_16546_15614 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_15614_15614 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_16546 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_16546_15614 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_15614_15615) (v_1@@13 T@FrameType) (q@@10 T@Field_16546_16547) (w@@13 T@FrameType) (r@@10 T@Field_8846_5632) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_16546 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_16546_8846 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_15614_8846 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_16546 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_16546_8846 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_15614_15615) (v_1@@14 T@FrameType) (q@@11 T@Field_15614_15615) (w@@14 T@FrameType) (r@@11 T@Field_16546_16547) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_15614 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_15614_16546 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_15614_16546 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_15614 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_15614_16546 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_15614_15615) (v_1@@15 T@FrameType) (q@@12 T@Field_15614_15615) (w@@15 T@FrameType) (r@@12 T@Field_15614_15615) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_15614 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_15614_15614 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_15614_15614 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_15614 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_15614_15614 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_15614_15615) (v_1@@16 T@FrameType) (q@@13 T@Field_15614_15615) (w@@16 T@FrameType) (r@@13 T@Field_8846_5632) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_15614 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_15614_8846 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_15614_8846 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_15614 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_15614_8846 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_15614_15615) (v_1@@17 T@FrameType) (q@@14 T@Field_8846_5632) (w@@17 T@FrameType) (r@@14 T@Field_16546_16547) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_8846 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8846_16546 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_15614_16546 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_8846 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8846_16546 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_15614_15615) (v_1@@18 T@FrameType) (q@@15 T@Field_8846_5632) (w@@18 T@FrameType) (r@@15 T@Field_15614_15615) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_8846 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8846_15614 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_15614_15614 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_8846 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8846_15614 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_15614_15615) (v_1@@19 T@FrameType) (q@@16 T@Field_8846_5632) (w@@19 T@FrameType) (r@@16 T@Field_8846_5632) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_15614_8846 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8846_8846 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_15614_8846 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15614_8846 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8846_8846 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_8846_5632) (v_1@@20 T@FrameType) (q@@17 T@Field_16546_16547) (w@@20 T@FrameType) (r@@17 T@Field_16546_16547) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_16546 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_16546_16546 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8846_16546 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_16546 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_16546_16546 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_8846_5632) (v_1@@21 T@FrameType) (q@@18 T@Field_16546_16547) (w@@21 T@FrameType) (r@@18 T@Field_15614_15615) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_16546 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_16546_15614 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8846_15614 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_16546 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_16546_15614 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_8846_5632) (v_1@@22 T@FrameType) (q@@19 T@Field_16546_16547) (w@@22 T@FrameType) (r@@19 T@Field_8846_5632) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_16546 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_16546_8846 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8846_8846 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_16546 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_16546_8846 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_8846_5632) (v_1@@23 T@FrameType) (q@@20 T@Field_15614_15615) (w@@23 T@FrameType) (r@@20 T@Field_16546_16547) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_15614 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_15614_16546 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8846_16546 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_15614 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_15614_16546 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_8846_5632) (v_1@@24 T@FrameType) (q@@21 T@Field_15614_15615) (w@@24 T@FrameType) (r@@21 T@Field_15614_15615) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_15614 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_15614_15614 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8846_15614 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_15614 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_15614_15614 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_8846_5632) (v_1@@25 T@FrameType) (q@@22 T@Field_15614_15615) (w@@25 T@FrameType) (r@@22 T@Field_8846_5632) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_15614 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_15614_8846 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8846_8846 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_15614 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_15614_8846 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_8846_5632) (v_1@@26 T@FrameType) (q@@23 T@Field_8846_5632) (w@@26 T@FrameType) (r@@23 T@Field_16546_16547) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_8846 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8846_16546 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8846_16546 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_8846 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8846_16546 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_8846_5632) (v_1@@27 T@FrameType) (q@@24 T@Field_8846_5632) (w@@27 T@FrameType) (r@@24 T@Field_15614_15615) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_8846 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8846_15614 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8846_15614 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_8846 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8846_15614 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_8846_5632) (v_1@@28 T@FrameType) (q@@25 T@Field_8846_5632) (w@@28 T@FrameType) (r@@25 T@Field_8846_5632) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8846_8846 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8846_8846 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8846_8846 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8846_8846 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8846_8846 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@31 T@Seq_16540) ) (!  (=> (= (|Seq#Length_5666| s@@31) 0) (= s@@31 |Seq#Empty_5666|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5666| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2915) ) (!  (=> (= (|Seq#Length_2915| s@@32) 0) (= s@@32 |Seq#Empty_2915|))
 :qid |stdinbpl.223:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2915| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16540) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5666| s@@33 n@@25) |Seq#Empty_5666|))
 :qid |stdinbpl.399:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5666| s@@33 n@@25))
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
(declare-fun i_2 () Int)
(declare-fun arr@@6 () T@Seq_16540)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun i_14 () Int)
(declare-fun j_5 () Int)
(declare-fun Heap@@52 () T@PolymorphicMapType_8786)
(set-info :boogie-vc-id |array#definedness|)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon7_correct true))
(let ((anon12_Else_correct  (=> (and (not (and (<= 0 i_2) (< i_2 (|Seq#Length_5666| arr@@6)))) (= (ControlFlow 0 14) 10)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and (<= 0 i_2) (< i_2 (|Seq#Length_5666| arr@@6))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< i_2 (|Seq#Length_5666| arr@@6))) (=> (< i_2 (|Seq#Length_5666| arr@@6)) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))
(let ((anon11_Else_correct  (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (and (<= 0 i_4_1) (< i_4_1 (|Seq#Length_5666| arr@@6)))) (and (<= 0 i_4_2) (< i_4_2 (|Seq#Length_5666| arr@@6)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5666| arr@@6 i_4_1) (|Seq#Index_5666| arr@@6 i_4_2))))
 :qid |stdinbpl.777:17|
 :skolemid |77|
 :pattern ( (neverTriggered1 i_4_1) (neverTriggered1 i_4_2))
)))))
(let ((anon9_Else_correct  (=> (forall ((i_2_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_2_1) (and (< i_2_1 (|Seq#Length_5666| arr@@6)) (and (<= 0 j_1) (< j_1 i_2_1)))) (not (= (|Seq#Index_5666| arr@@6 i_2_1) (|Seq#Index_5666| arr@@6 j_1))))
 :qid |stdinbpl.758:20|
 :skolemid |76|
 :pattern ( (|Seq#Index_5666| arr@@6 i_2_1) (|Seq#Index_5666| arr@@6 j_1))
)) (and (and (=> (= (ControlFlow 0 15) 9) anon11_Else_correct) (=> (= (ControlFlow 0 15) 11) anon12_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon12_Else_correct)))))
(let ((anon3_correct true))
(let ((anon10_Else_correct  (=> (and (not (and (<= 0 i_14) (and (< i_14 (|Seq#Length_5666| arr@@6)) (and (<= 0 j_5) (< j_5 i_14))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (<= 0 i_14) (and (< i_14 (|Seq#Length_5666| arr@@6)) (and (<= 0 j_5) (< j_5 i_14)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_14 (|Seq#Length_5666| arr@@6))) (=> (< i_14 (|Seq#Length_5666| arr@@6)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_5 (|Seq#Length_5666| arr@@6))) (=> (< j_5 (|Seq#Length_5666| arr@@6)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@52 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (= (|Seq#Length_5666| arr@@6) 3))) (and (and (=> (= (ControlFlow 0 16) 15) anon9_Else_correct) (=> (= (ControlFlow 0 16) 2) anon10_Then_correct)) (=> (= (ControlFlow 0 16) 7) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
