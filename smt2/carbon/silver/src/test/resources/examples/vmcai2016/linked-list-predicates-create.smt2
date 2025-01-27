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
(declare-sort T@Field_83691_53 0)
(declare-sort T@Field_83704_83705 0)
(declare-sort T@Field_89709_2989 0)
(declare-sort T@Field_90385_90386 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_95459_95464 0)
(declare-sort T@Field_118662_118663 0)
(declare-sort T@Field_121051_121056 0)
(declare-sort T@Field_40731_41001 0)
(declare-sort T@Field_40731_95464 0)
(declare-sort T@Field_41000_2989 0)
(declare-sort T@Field_41000_40734 0)
(declare-sort T@Field_41000_3049 0)
(declare-sort T@Field_41051_2989 0)
(declare-sort T@Field_41051_40734 0)
(declare-sort T@Field_41051_3049 0)
(declare-datatypes ((T@PolymorphicMapType_83652 0)) (((PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| (Array T@Ref T@Field_90385_90386 Real)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_89709_2989 Real)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_83704_83705 Real)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| (Array T@Ref T@Field_118662_118663 Real)) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_83691_53 Real)) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_2989 Real)) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_40734 Real)) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_3049 Real)) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| (Array T@Ref T@Field_95459_95464 Real)) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| (Array T@Ref T@Field_40731_41001 Real)) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| (Array T@Ref T@Field_40731_95464 Real)) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_2989 Real)) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_40734 Real)) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_3049 Real)) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| (Array T@Ref T@Field_121051_121056 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_84180 0)) (((PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_89709_2989 Bool)) (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_83704_83705 Bool)) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (Array T@Ref T@Field_83691_53 Bool)) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_40731_41001 Bool)) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (Array T@Ref T@Field_40731_95464 Bool)) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_2989 Bool)) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_40734 Bool)) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_3049 Bool)) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_90385_90386 Bool)) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (Array T@Ref T@Field_95459_95464 Bool)) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_2989 Bool)) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_40734 Bool)) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_3049 Bool)) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_118662_118663 Bool)) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (Array T@Ref T@Field_121051_121056 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_83631 0)) (((PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| (Array T@Ref T@Field_83691_53 Bool)) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| (Array T@Ref T@Field_83704_83705 T@Ref)) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_89709_2989 Int)) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| (Array T@Ref T@Field_90385_90386 T@FrameType)) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| (Array T@Ref T@Field_95459_95464 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| (Array T@Ref T@Field_118662_118663 T@FrameType)) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| (Array T@Ref T@Field_121051_121056 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| (Array T@Ref T@Field_40731_41001 T@FrameType)) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| (Array T@Ref T@Field_40731_95464 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_2989 Int)) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_40734 T@Ref)) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_3049 Bool)) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_2989 Int)) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_40734 T@Ref)) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_3049 Bool)) ) ) ))
(declare-fun $allocated () T@Field_83691_53)
(declare-fun data () T@Field_89709_2989)
(declare-fun next () T@Field_83704_83705)
(declare-fun head_3 () T@Field_83704_83705)
(declare-fun held () T@Field_89709_2989)
(declare-fun changed () T@Field_83691_53)
(declare-fun state (T@PolymorphicMapType_83631 T@PolymorphicMapType_83652) Bool)
(declare-fun lengthNodes (T@PolymorphicMapType_83631 T@Ref T@Ref) Int)
(declare-fun |lengthNodes#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_41000| (T@PolymorphicMapType_83631 T@Field_90385_90386) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_90385_90386)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lengthNodes'| (T@PolymorphicMapType_83631 T@Ref T@Ref) Int)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_7859| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_83652) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_84180)
(declare-fun |contentNodes'| (T@PolymorphicMapType_83631 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |lengthNodes#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_41000_41001 (T@Field_90385_90386) Bool)
(declare-fun dummyFunction_90009 (T@Seq_2867) Bool)
(declare-fun dummyFunction_6578 (Int) Bool)
(declare-fun |lseg#everUsed_41000| (T@Field_90385_90386) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3211| () T@Seq_2867)
(declare-fun List (T@Ref) T@Field_118662_118663)
(declare-fun IsPredicateField_41051_41052 (T@Field_118662_118663) Bool)
(declare-fun |content'| (T@PolymorphicMapType_83631 T@Ref) T@Seq_2867)
(declare-fun |content#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |length'| (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |peek'| (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun |peek#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_41051| (T@PolymorphicMapType_83631 T@Field_118662_118663) Bool)
(declare-fun |List#everUsed_41051| (T@Field_118662_118663) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_7859| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |peek#trigger| (T@FrameType T@Ref) Bool)
(declare-fun length_1 (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun content (T@PolymorphicMapType_83631 T@Ref) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun peek (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631 T@PolymorphicMapType_83652) Bool)
(declare-fun PredicateMaskField_41051 (T@Field_118662_118663) T@Field_121051_121056)
(declare-fun HasDirectPerm_41051_41052 (T@PolymorphicMapType_83652 T@Ref T@Field_118662_118663) Bool)
(declare-fun PredicateMaskField_41000 (T@Field_90385_90386) T@Field_95459_95464)
(declare-fun HasDirectPerm_41000_41001 (T@PolymorphicMapType_83652 T@Ref T@Field_90385_90386) Bool)
(declare-fun IsPredicateField_40731_336373 (T@Field_40731_41001) Bool)
(declare-fun PredicateMaskField_40731 (T@Field_40731_41001) T@Field_40731_95464)
(declare-fun HasDirectPerm_40731_41001 (T@PolymorphicMapType_83652 T@Ref T@Field_40731_41001) Bool)
(declare-fun IsWandField_41051_342054 (T@Field_118662_118663) Bool)
(declare-fun WandMaskField_41051 (T@Field_118662_118663) T@Field_121051_121056)
(declare-fun IsWandField_41000_341697 (T@Field_90385_90386) Bool)
(declare-fun WandMaskField_41000 (T@Field_90385_90386) T@Field_95459_95464)
(declare-fun IsWandField_40731_341340 (T@Field_40731_41001) Bool)
(declare-fun WandMaskField_40731 (T@Field_40731_41001) T@Field_40731_95464)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_95459_95464)
(declare-fun |List#sm| (T@Ref) T@Field_121051_121056)
(declare-fun |Seq#Append_2989| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |lengthNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun contentNodes (T@PolymorphicMapType_83631 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_83631)
(declare-fun ZeroMask () T@PolymorphicMapType_83652)
(declare-fun InsidePredicate_83691_83691 (T@Field_40731_41001 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_118662 (T@Field_118662_118663 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_41000 (T@Field_90385_90386 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun IsPredicateField_40731_2989 (T@Field_89709_2989) Bool)
(declare-fun IsWandField_40731_2989 (T@Field_89709_2989) Bool)
(declare-fun IsPredicateField_40733_40734 (T@Field_83704_83705) Bool)
(declare-fun IsWandField_40733_40734 (T@Field_83704_83705) Bool)
(declare-fun IsPredicateField_40741_3049 (T@Field_83691_53) Bool)
(declare-fun IsWandField_40741_3049 (T@Field_83691_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_41051_352317 (T@Field_121051_121056) Bool)
(declare-fun IsWandField_41051_352333 (T@Field_121051_121056) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_41051_3049 (T@Field_41051_3049) Bool)
(declare-fun IsWandField_41051_3049 (T@Field_41051_3049) Bool)
(declare-fun IsPredicateField_41051_40734 (T@Field_41051_40734) Bool)
(declare-fun IsWandField_41051_40734 (T@Field_41051_40734) Bool)
(declare-fun IsPredicateField_41051_2989 (T@Field_41051_2989) Bool)
(declare-fun IsWandField_41051_2989 (T@Field_41051_2989) Bool)
(declare-fun IsPredicateField_40731_351486 (T@Field_40731_95464) Bool)
(declare-fun IsWandField_40731_351502 (T@Field_40731_95464) Bool)
(declare-fun IsPredicateField_41000_350697 (T@Field_95459_95464) Bool)
(declare-fun IsWandField_41000_350713 (T@Field_95459_95464) Bool)
(declare-fun IsPredicateField_41000_3049 (T@Field_41000_3049) Bool)
(declare-fun IsWandField_41000_3049 (T@Field_41000_3049) Bool)
(declare-fun IsPredicateField_41000_40734 (T@Field_41000_40734) Bool)
(declare-fun IsWandField_41000_40734 (T@Field_41000_40734) Bool)
(declare-fun IsPredicateField_41000_2989 (T@Field_41000_2989) Bool)
(declare-fun IsWandField_41000_2989 (T@Field_41000_2989) Bool)
(declare-fun HasDirectPerm_41051_336128 (T@PolymorphicMapType_83652 T@Ref T@Field_121051_121056) Bool)
(declare-fun HasDirectPerm_41051_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_3049) Bool)
(declare-fun HasDirectPerm_41051_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_40734) Bool)
(declare-fun HasDirectPerm_41051_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_2989) Bool)
(declare-fun HasDirectPerm_41000_335030 (T@PolymorphicMapType_83652 T@Ref T@Field_95459_95464) Bool)
(declare-fun HasDirectPerm_41000_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_3049) Bool)
(declare-fun HasDirectPerm_41000_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_40734) Bool)
(declare-fun HasDirectPerm_41000_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_2989) Bool)
(declare-fun HasDirectPerm_40731_333889 (T@PolymorphicMapType_83652 T@Ref T@Field_40731_95464) Bool)
(declare-fun HasDirectPerm_40741_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_83691_53) Bool)
(declare-fun HasDirectPerm_40733_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_83704_83705) Bool)
(declare-fun HasDirectPerm_40731_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_89709_2989) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_83652 T@PolymorphicMapType_83652 T@PolymorphicMapType_83652) Bool)
(declare-fun |content#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#Equal_3092| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_41000_41001 (T@Field_90385_90386) Int)
(declare-fun |content#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |peek#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_41051_41052 (T@Field_118662_118663) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_83691_118662 (T@Field_40731_41001 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_83691_41000 (T@Field_40731_41001 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_83691 (T@Field_118662_118663 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_41000 (T@Field_118662_118663 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_118662 (T@Field_90385_90386 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_83691 (T@Field_90385_90386 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(assert (and (distinct $allocated changed)(distinct data held)(distinct next head_3))
)
(assert (forall ((Heap T@PolymorphicMapType_83631) (Mask T@PolymorphicMapType_83652) (this T@Ref) (end_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 3)) (= (lengthNodes Heap this end_1) (ite (= this end_1) 0 (+ 1 (|lengthNodes'| Heap (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap) this next) end_1)))))
 :qid |stdinbpl.960:15|
 :skolemid |77|
 :pattern ( (state Heap Mask) (lengthNodes Heap this end_1))
 :pattern ( (state Heap Mask) (|lengthNodes#triggerStateless| this end_1) (|lseg#trigger_41000| Heap (lseg this end_1)))
)))
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.280:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_7859| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_7859| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_83631) (Heap1 T@PolymorphicMapType_83631) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_83631) (Mask@@0 T@PolymorphicMapType_83652) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_83631) (Heap1@@0 T@PolymorphicMapType_83631) (Heap2 T@PolymorphicMapType_83631) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_121051_121056) ) (!  (not (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_118662_118663) ) (!  (not (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41051_3049) ) (!  (not (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41051_40734) ) (!  (not (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_41051_2989) ) (!  (not (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_95459_95464) ) (!  (not (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_90385_90386) ) (!  (not (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_41000_3049) ) (!  (not (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_41000_40734) ) (!  (not (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41000_2989) ) (!  (not (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_40731_95464) ) (!  (not (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_40731_41001) ) (!  (not (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_83691_53) ) (!  (not (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_83704_83705) ) (!  (not (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_89709_2989) ) (!  (not (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_83631) (Mask@@1 T@PolymorphicMapType_83652) (this@@0 T@Ref) (end_1@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@1) (= (|contentNodes'| Heap@@1 this@@0 end_1@@0) (|contentNodes#frame| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@1) null (lseg this@@0 end_1@@0)) this@@0 end_1@@0)))
 :qid |stdinbpl.591:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes'| Heap@@1 this@@0 end_1@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes#triggerStateless| this@@0 end_1@@0) (|lseg#trigger_41000| Heap@@1 (lseg this@@0 end_1@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_83631) (Mask@@2 T@PolymorphicMapType_83652) (this@@1 T@Ref) (end_1@@1 T@Ref) ) (!  (=> (state Heap@@2 Mask@@2) (= (|lengthNodes'| Heap@@2 this@@1 end_1@@1) (|lengthNodes#frame| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@2) null (lseg this@@1 end_1@@1)) this@@1 end_1@@1)))
 :qid |stdinbpl.967:15|
 :skolemid |78|
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes'| Heap@@2 this@@1 end_1@@1))
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes#triggerStateless| this@@1 end_1@@1) (|lseg#trigger_41000| Heap@@2 (lseg this@@1 end_1@@1)))
)))
(assert (forall ((this@@2 T@Ref) (end_1@@2 T@Ref) ) (! (IsPredicateField_41000_41001 (lseg this@@2 end_1@@2))
 :qid |stdinbpl.1734:15|
 :skolemid |108|
 :pattern ( (lseg this@@2 end_1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_83631) (this@@3 T@Ref) (end_1@@3 T@Ref) ) (! (dummyFunction_90009 (|contentNodes#triggerStateless| this@@3 end_1@@3))
 :qid |stdinbpl.578:15|
 :skolemid |59|
 :pattern ( (|contentNodes'| Heap@@3 this@@3 end_1@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_83631) (this@@4 T@Ref) (end_1@@4 T@Ref) ) (! (dummyFunction_6578 (|lengthNodes#triggerStateless| this@@4 end_1@@4))
 :qid |stdinbpl.954:15|
 :skolemid |76|
 :pattern ( (|lengthNodes'| Heap@@4 this@@4 end_1@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_83631) (this@@5 T@Ref) (end_1@@5 T@Ref) ) (! (|lseg#everUsed_41000| (lseg this@@5 end_1@@5))
 :qid |stdinbpl.1753:15|
 :skolemid |112|
 :pattern ( (|lseg#trigger_41000| Heap@@5 (lseg this@@5 end_1@@5)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_7859| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.301:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_7859| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3211|) 0))
(assert (forall ((this@@6 T@Ref) ) (! (IsPredicateField_41051_41052 (List this@@6))
 :qid |stdinbpl.1963:15|
 :skolemid |118|
 :pattern ( (List this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_83631) (this@@7 T@Ref) ) (! (dummyFunction_90009 (|content#triggerStateless| this@@7))
 :qid |stdinbpl.1170:15|
 :skolemid |84|
 :pattern ( (|content'| Heap@@6 this@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_83631) (this@@8 T@Ref) ) (! (dummyFunction_6578 (|length#triggerStateless| this@@8))
 :qid |stdinbpl.1327:15|
 :skolemid |92|
 :pattern ( (|length'| Heap@@7 this@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_83631) (this@@9 T@Ref) ) (! (dummyFunction_6578 (|peek#triggerStateless| this@@9))
 :qid |stdinbpl.1471:15|
 :skolemid |98|
 :pattern ( (|peek'| Heap@@8 this@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_83631) (this@@10 T@Ref) ) (! (|List#everUsed_41051| (List this@@10))
 :qid |stdinbpl.1982:15|
 :skolemid |122|
 :pattern ( (|List#trigger_41051| Heap@@9 (List this@@10)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.256:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) 0)))
 :qid |stdinbpl.267:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)))
 :pattern ( (|Seq#Take_7859| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.541:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_83631) (Mask@@3 T@PolymorphicMapType_83652) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@3) (or (< AssumeFunctionsAbove 0) (|peek#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@10) null (List this@@11)) this@@11))) (=> (< 0 (length_1 Heap@@10 this@@11)) (= (|peek'| Heap@@10 this@@11) (|Seq#Index_2867| (content Heap@@10 this@@11) 0))))
 :qid |stdinbpl.1490:15|
 :skolemid |101|
 :pattern ( (state Heap@@10 Mask@@3) (|peek'| Heap@@10 this@@11))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.399:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_83631) (this@@12 T@Ref) ) (!  (and (= (content Heap@@11 this@@12) (|content'| Heap@@11 this@@12)) (dummyFunction_90009 (|content#triggerStateless| this@@12)))
 :qid |stdinbpl.1166:15|
 :skolemid |83|
 :pattern ( (content Heap@@11 this@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_83631) (this@@13 T@Ref) ) (!  (and (= (length_1 Heap@@12 this@@13) (|length'| Heap@@12 this@@13)) (dummyFunction_6578 (|length#triggerStateless| this@@13)))
 :qid |stdinbpl.1323:15|
 :skolemid |91|
 :pattern ( (length_1 Heap@@12 this@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_83631) (this@@14 T@Ref) ) (!  (and (= (peek Heap@@13 this@@14) (|peek'| Heap@@13 this@@14)) (dummyFunction_6578 (|peek#triggerStateless| this@@14)))
 :qid |stdinbpl.1467:15|
 :skolemid |97|
 :pattern ( (peek Heap@@13 this@@14))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_7859| s@@4 n@@3) s@@4))
 :qid |stdinbpl.383:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7859| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.236:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_83631) (ExhaleHeap T@PolymorphicMapType_83631) (Mask@@4 T@PolymorphicMapType_83652) (pm_f_50 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_41051_41052 Mask@@4 null pm_f_50) (IsPredicateField_41051_41052 pm_f_50)) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@14) null (PredicateMaskField_41051 pm_f_50)) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap) null (PredicateMaskField_41051 pm_f_50)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (IsPredicateField_41051_41052 pm_f_50) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap) null (PredicateMaskField_41051 pm_f_50)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_83631) (ExhaleHeap@@0 T@PolymorphicMapType_83631) (Mask@@5 T@PolymorphicMapType_83652) (pm_f_50@@0 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_41000_41001 Mask@@5 null pm_f_50@@0) (IsPredicateField_41000_41001 pm_f_50@@0)) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@15) null (PredicateMaskField_41000 pm_f_50@@0)) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@0) null (PredicateMaskField_41000 pm_f_50@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (IsPredicateField_41000_41001 pm_f_50@@0) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@0) null (PredicateMaskField_41000 pm_f_50@@0)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_83631) (ExhaleHeap@@1 T@PolymorphicMapType_83631) (Mask@@6 T@PolymorphicMapType_83652) (pm_f_50@@1 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_40731_41001 Mask@@6 null pm_f_50@@1) (IsPredicateField_40731_336373 pm_f_50@@1)) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@16) null (PredicateMaskField_40731 pm_f_50@@1)) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@1) null (PredicateMaskField_40731 pm_f_50@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (IsPredicateField_40731_336373 pm_f_50@@1) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@1) null (PredicateMaskField_40731 pm_f_50@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_83631) (ExhaleHeap@@2 T@PolymorphicMapType_83631) (Mask@@7 T@PolymorphicMapType_83652) (pm_f_50@@2 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_41051_41052 Mask@@7 null pm_f_50@@2) (IsWandField_41051_342054 pm_f_50@@2)) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@17) null (WandMaskField_41051 pm_f_50@@2)) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@2) null (WandMaskField_41051 pm_f_50@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (IsWandField_41051_342054 pm_f_50@@2) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@2) null (WandMaskField_41051 pm_f_50@@2)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_83631) (ExhaleHeap@@3 T@PolymorphicMapType_83631) (Mask@@8 T@PolymorphicMapType_83652) (pm_f_50@@3 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (=> (and (HasDirectPerm_41000_41001 Mask@@8 null pm_f_50@@3) (IsWandField_41000_341697 pm_f_50@@3)) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@18) null (WandMaskField_41000 pm_f_50@@3)) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@3) null (WandMaskField_41000 pm_f_50@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (IsWandField_41000_341697 pm_f_50@@3) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@3) null (WandMaskField_41000 pm_f_50@@3)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_83631) (ExhaleHeap@@4 T@PolymorphicMapType_83631) (Mask@@9 T@PolymorphicMapType_83652) (pm_f_50@@4 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (=> (and (HasDirectPerm_40731_41001 Mask@@9 null pm_f_50@@4) (IsWandField_40731_341340 pm_f_50@@4)) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@19) null (WandMaskField_40731 pm_f_50@@4)) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@4) null (WandMaskField_40731 pm_f_50@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (IsWandField_40731_341340 pm_f_50@@4) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@4) null (WandMaskField_40731 pm_f_50@@4)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.524:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_83631) (Mask@@10 T@PolymorphicMapType_83652) (this@@15 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@10) (< AssumeFunctionsAbove 0)) (=> (< 0 (length_1 Heap@@20 this@@15)) (= (peek Heap@@20 this@@15) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@20) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@20) this@@15 head_3) data))))
 :qid |stdinbpl.1477:15|
 :skolemid |99|
 :pattern ( (state Heap@@20 Mask@@10) (peek Heap@@20 this@@15))
 :pattern ( (state Heap@@20 Mask@@10) (|peek#triggerStateless| this@@15) (|List#trigger_41051| Heap@@20 (List this@@15)))
)))
(assert (forall ((this@@16 T@Ref) (end_1@@6 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@16 end_1@@6) (lseg this2 end2)) (and (= this@@16 this2) (= end_1@@6 end2)))
 :qid |stdinbpl.1744:15|
 :skolemid |110|
 :pattern ( (lseg this@@16 end_1@@6) (lseg this2 end2))
)))
(assert (forall ((this@@17 T@Ref) (end_1@@7 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@17 end_1@@7) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@17 this2@@0) (= end_1@@7 end2@@0)))
 :qid |stdinbpl.1748:15|
 :skolemid |111|
 :pattern ( (|lseg#sm| this@@17 end_1@@7) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_7859| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_7859| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_7859| s@@5 n@@4))
)))
(assert (forall ((this@@18 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (List this@@18) (List this2@@1)) (= this@@18 this2@@1))
 :qid |stdinbpl.1973:15|
 :skolemid |120|
 :pattern ( (List this@@18) (List this2@@1))
)))
(assert (forall ((this@@19 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|List#sm| this@@19) (|List#sm| this2@@2)) (= this@@19 this2@@2))
 :qid |stdinbpl.1977:15|
 :skolemid |121|
 :pattern ( (|List#sm| this@@19) (|List#sm| this2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2989| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_7859| (|Seq#Append_2989| s@@6 t) n@@5) (|Seq#Append_2989| s@@6 (|Seq#Take_7859| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.360:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7859| (|Seq#Append_2989| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_83631) (Mask@@11 T@PolymorphicMapType_83652) (this@@20 T@Ref) (end_1@@8 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@11) (or (< AssumeFunctionsAbove 3) (|lengthNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@21) null (lseg this@@20 end_1@@8)) this@@20 end_1@@8))) (= (|lengthNodes'| Heap@@21 this@@20 end_1@@8) (|Seq#Length_2867| (contentNodes Heap@@21 this@@20 end_1@@8))))
 :qid |stdinbpl.973:15|
 :skolemid |79|
 :pattern ( (state Heap@@21 Mask@@11) (|lengthNodes'| Heap@@21 this@@20 end_1@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_83631) (Mask@@12 T@PolymorphicMapType_83652) (this@@21 T@Ref) (end_1@@9 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@12) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@22) null (lseg this@@21 end_1@@9)) this@@21 end_1@@9))) (forall ((i@@2 Int) (j@@3 Int) ) (!  (=> (and (<= 0 i@@2) (and (< i@@2 j@@3) (< j@@3 (|Seq#Length_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9))))) (<= (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) j@@3)))
 :qid |stdinbpl.607:131|
 :skolemid |64|
 :pattern ( (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) j@@3))
)))
 :qid |stdinbpl.605:15|
 :skolemid |65|
 :pattern ( (state Heap@@22 Mask@@12) (|contentNodes'| Heap@@22 this@@21 end_1@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_83631) (ExhaleHeap@@5 T@PolymorphicMapType_83631) (Mask@@13 T@PolymorphicMapType_83652) (o_142 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@13) (=> (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@23) o_142 $allocated) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@5) o_142 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@13) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@5) o_142 $allocated))
)))
(assert (forall ((p T@Field_40731_41001) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_83691_83691 p v_1 p w))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_83691_83691 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_118662_118663) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_41051_118662 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41051_118662 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_90385_90386) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_41000_41000 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41000_41000 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3211|)) (not (= s1 |Seq#Empty_3211|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2989| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.247:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_40731_2989 data)))
(assert  (not (IsWandField_40731_2989 data)))
(assert  (not (IsPredicateField_40733_40734 next)))
(assert  (not (IsWandField_40733_40734 next)))
(assert  (not (IsPredicateField_40733_40734 head_3)))
(assert  (not (IsWandField_40733_40734 head_3)))
(assert  (not (IsPredicateField_40731_2989 held)))
(assert  (not (IsWandField_40731_2989 held)))
(assert  (not (IsPredicateField_40741_3049 changed)))
(assert  (not (IsWandField_40741_3049 changed)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_83631) (ExhaleHeap@@6 T@PolymorphicMapType_83631) (Mask@@14 T@PolymorphicMapType_83652) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@14) (succHeap Heap@@24 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_83652) (o_2@@14 T@Ref) (f_4@@14 T@Field_121051_121056) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_41051_352317 f_4@@14))) (not (IsWandField_41051_352333 f_4@@14))) (<= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_83652) (o_2@@15 T@Ref) (f_4@@15 T@Field_41051_3049) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_41051_3049 f_4@@15))) (not (IsWandField_41051_3049 f_4@@15))) (<= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_83652) (o_2@@16 T@Ref) (f_4@@16 T@Field_41051_40734) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_41051_40734 f_4@@16))) (not (IsWandField_41051_40734 f_4@@16))) (<= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_83652) (o_2@@17 T@Ref) (f_4@@17 T@Field_41051_2989) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_41051_2989 f_4@@17))) (not (IsWandField_41051_2989 f_4@@17))) (<= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_83652) (o_2@@18 T@Ref) (f_4@@18 T@Field_118662_118663) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_41051_41052 f_4@@18))) (not (IsWandField_41051_342054 f_4@@18))) (<= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_83652) (o_2@@19 T@Ref) (f_4@@19 T@Field_40731_95464) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_40731_351486 f_4@@19))) (not (IsWandField_40731_351502 f_4@@19))) (<= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_83652) (o_2@@20 T@Ref) (f_4@@20 T@Field_83691_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_40741_3049 f_4@@20))) (not (IsWandField_40741_3049 f_4@@20))) (<= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_83652) (o_2@@21 T@Ref) (f_4@@21 T@Field_83704_83705) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_40733_40734 f_4@@21))) (not (IsWandField_40733_40734 f_4@@21))) (<= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_83652) (o_2@@22 T@Ref) (f_4@@22 T@Field_89709_2989) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_40731_2989 f_4@@22))) (not (IsWandField_40731_2989 f_4@@22))) (<= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_83652) (o_2@@23 T@Ref) (f_4@@23 T@Field_40731_41001) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_40731_336373 f_4@@23))) (not (IsWandField_40731_341340 f_4@@23))) (<= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_83652) (o_2@@24 T@Ref) (f_4@@24 T@Field_95459_95464) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_41000_350697 f_4@@24))) (not (IsWandField_41000_350713 f_4@@24))) (<= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_83652) (o_2@@25 T@Ref) (f_4@@25 T@Field_41000_3049) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_41000_3049 f_4@@25))) (not (IsWandField_41000_3049 f_4@@25))) (<= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_83652) (o_2@@26 T@Ref) (f_4@@26 T@Field_41000_40734) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_41000_40734 f_4@@26))) (not (IsWandField_41000_40734 f_4@@26))) (<= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_83652) (o_2@@27 T@Ref) (f_4@@27 T@Field_41000_2989) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_41000_2989 f_4@@27))) (not (IsWandField_41000_2989 f_4@@27))) (<= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_83652) (o_2@@28 T@Ref) (f_4@@28 T@Field_90385_90386) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_41000_41001 f_4@@28))) (not (IsWandField_41000_341697 f_4@@28))) (<= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_83652) (o_2@@29 T@Ref) (f_4@@29 T@Field_121051_121056) ) (! (= (HasDirectPerm_41051_336128 Mask@@30 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@30) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_336128 Mask@@30 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_83652) (o_2@@30 T@Ref) (f_4@@30 T@Field_41051_3049) ) (! (= (HasDirectPerm_41051_3049 Mask@@31 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@31) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_3049 Mask@@31 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_83652) (o_2@@31 T@Ref) (f_4@@31 T@Field_118662_118663) ) (! (= (HasDirectPerm_41051_41052 Mask@@32 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@32) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_41052 Mask@@32 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_83652) (o_2@@32 T@Ref) (f_4@@32 T@Field_41051_40734) ) (! (= (HasDirectPerm_41051_40734 Mask@@33 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@33) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_40734 Mask@@33 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_83652) (o_2@@33 T@Ref) (f_4@@33 T@Field_41051_2989) ) (! (= (HasDirectPerm_41051_2989 Mask@@34 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@34) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_2989 Mask@@34 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_83652) (o_2@@34 T@Ref) (f_4@@34 T@Field_95459_95464) ) (! (= (HasDirectPerm_41000_335030 Mask@@35 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@35) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_335030 Mask@@35 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_83652) (o_2@@35 T@Ref) (f_4@@35 T@Field_41000_3049) ) (! (= (HasDirectPerm_41000_3049 Mask@@36 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@36) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_3049 Mask@@36 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_83652) (o_2@@36 T@Ref) (f_4@@36 T@Field_90385_90386) ) (! (= (HasDirectPerm_41000_41001 Mask@@37 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@37) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_41001 Mask@@37 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_83652) (o_2@@37 T@Ref) (f_4@@37 T@Field_41000_40734) ) (! (= (HasDirectPerm_41000_40734 Mask@@38 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@38) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_40734 Mask@@38 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_83652) (o_2@@38 T@Ref) (f_4@@38 T@Field_41000_2989) ) (! (= (HasDirectPerm_41000_2989 Mask@@39 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@39) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_2989 Mask@@39 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_83652) (o_2@@39 T@Ref) (f_4@@39 T@Field_40731_95464) ) (! (= (HasDirectPerm_40731_333889 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_333889 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_83652) (o_2@@40 T@Ref) (f_4@@40 T@Field_83691_53) ) (! (= (HasDirectPerm_40741_3049 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40741_3049 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_83652) (o_2@@41 T@Ref) (f_4@@41 T@Field_40731_41001) ) (! (= (HasDirectPerm_40731_41001 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_41001 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_83652) (o_2@@42 T@Ref) (f_4@@42 T@Field_83704_83705) ) (! (= (HasDirectPerm_40733_40734 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40733_40734 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_83652) (o_2@@43 T@Ref) (f_4@@43 T@Field_89709_2989) ) (! (= (HasDirectPerm_40731_2989 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_2989 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@4) (+ q@min@@0 j@@4)))
 :qid |stdinbpl.539:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_83631) (ExhaleHeap@@7 T@PolymorphicMapType_83631) (Mask@@45 T@PolymorphicMapType_83652) (o_142@@0 T@Ref) (f_125 T@Field_121051_121056) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@45) (=> (HasDirectPerm_41051_336128 Mask@@45 o_142@@0 f_125) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@25) o_142@@0 f_125) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@7) o_142@@0 f_125))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@45) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@7) o_142@@0 f_125))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_83631) (ExhaleHeap@@8 T@PolymorphicMapType_83631) (Mask@@46 T@PolymorphicMapType_83652) (o_142@@1 T@Ref) (f_125@@0 T@Field_41051_3049) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@46) (=> (HasDirectPerm_41051_3049 Mask@@46 o_142@@1 f_125@@0) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@26) o_142@@1 f_125@@0) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@8) o_142@@1 f_125@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@46) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@8) o_142@@1 f_125@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_83631) (ExhaleHeap@@9 T@PolymorphicMapType_83631) (Mask@@47 T@PolymorphicMapType_83652) (o_142@@2 T@Ref) (f_125@@1 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@47) (=> (HasDirectPerm_41051_41052 Mask@@47 o_142@@2 f_125@@1) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@27) o_142@@2 f_125@@1) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@9) o_142@@2 f_125@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@47) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@9) o_142@@2 f_125@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_83631) (ExhaleHeap@@10 T@PolymorphicMapType_83631) (Mask@@48 T@PolymorphicMapType_83652) (o_142@@3 T@Ref) (f_125@@2 T@Field_41051_40734) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@48) (=> (HasDirectPerm_41051_40734 Mask@@48 o_142@@3 f_125@@2) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@28) o_142@@3 f_125@@2) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@10) o_142@@3 f_125@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@48) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@10) o_142@@3 f_125@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_83631) (ExhaleHeap@@11 T@PolymorphicMapType_83631) (Mask@@49 T@PolymorphicMapType_83652) (o_142@@4 T@Ref) (f_125@@3 T@Field_41051_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@49) (=> (HasDirectPerm_41051_2989 Mask@@49 o_142@@4 f_125@@3) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@29) o_142@@4 f_125@@3) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@11) o_142@@4 f_125@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@49) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@11) o_142@@4 f_125@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_83631) (ExhaleHeap@@12 T@PolymorphicMapType_83631) (Mask@@50 T@PolymorphicMapType_83652) (o_142@@5 T@Ref) (f_125@@4 T@Field_95459_95464) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@12 Mask@@50) (=> (HasDirectPerm_41000_335030 Mask@@50 o_142@@5 f_125@@4) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@30) o_142@@5 f_125@@4) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@12) o_142@@5 f_125@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@12 Mask@@50) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@12) o_142@@5 f_125@@4))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_83631) (ExhaleHeap@@13 T@PolymorphicMapType_83631) (Mask@@51 T@PolymorphicMapType_83652) (o_142@@6 T@Ref) (f_125@@5 T@Field_41000_3049) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@13 Mask@@51) (=> (HasDirectPerm_41000_3049 Mask@@51 o_142@@6 f_125@@5) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@31) o_142@@6 f_125@@5) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@13) o_142@@6 f_125@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@13 Mask@@51) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@13) o_142@@6 f_125@@5))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_83631) (ExhaleHeap@@14 T@PolymorphicMapType_83631) (Mask@@52 T@PolymorphicMapType_83652) (o_142@@7 T@Ref) (f_125@@6 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@14 Mask@@52) (=> (HasDirectPerm_41000_41001 Mask@@52 o_142@@7 f_125@@6) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@32) o_142@@7 f_125@@6) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@14) o_142@@7 f_125@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@14 Mask@@52) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@14) o_142@@7 f_125@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_83631) (ExhaleHeap@@15 T@PolymorphicMapType_83631) (Mask@@53 T@PolymorphicMapType_83652) (o_142@@8 T@Ref) (f_125@@7 T@Field_41000_40734) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@53) (=> (HasDirectPerm_41000_40734 Mask@@53 o_142@@8 f_125@@7) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@33) o_142@@8 f_125@@7) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@15) o_142@@8 f_125@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@53) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@15) o_142@@8 f_125@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_83631) (ExhaleHeap@@16 T@PolymorphicMapType_83631) (Mask@@54 T@PolymorphicMapType_83652) (o_142@@9 T@Ref) (f_125@@8 T@Field_41000_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@54) (=> (HasDirectPerm_41000_2989 Mask@@54 o_142@@9 f_125@@8) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@34) o_142@@9 f_125@@8) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@16) o_142@@9 f_125@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@54) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@16) o_142@@9 f_125@@8))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_83631) (ExhaleHeap@@17 T@PolymorphicMapType_83631) (Mask@@55 T@PolymorphicMapType_83652) (o_142@@10 T@Ref) (f_125@@9 T@Field_40731_95464) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@55) (=> (HasDirectPerm_40731_333889 Mask@@55 o_142@@10 f_125@@9) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@35) o_142@@10 f_125@@9) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@17) o_142@@10 f_125@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@55) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@17) o_142@@10 f_125@@9))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_83631) (ExhaleHeap@@18 T@PolymorphicMapType_83631) (Mask@@56 T@PolymorphicMapType_83652) (o_142@@11 T@Ref) (f_125@@10 T@Field_83691_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@56) (=> (HasDirectPerm_40741_3049 Mask@@56 o_142@@11 f_125@@10) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@36) o_142@@11 f_125@@10) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@18) o_142@@11 f_125@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@56) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@18) o_142@@11 f_125@@10))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_83631) (ExhaleHeap@@19 T@PolymorphicMapType_83631) (Mask@@57 T@PolymorphicMapType_83652) (o_142@@12 T@Ref) (f_125@@11 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@57) (=> (HasDirectPerm_40731_41001 Mask@@57 o_142@@12 f_125@@11) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@37) o_142@@12 f_125@@11) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@19) o_142@@12 f_125@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@57) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@19) o_142@@12 f_125@@11))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_83631) (ExhaleHeap@@20 T@PolymorphicMapType_83631) (Mask@@58 T@PolymorphicMapType_83652) (o_142@@13 T@Ref) (f_125@@12 T@Field_83704_83705) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@58) (=> (HasDirectPerm_40733_40734 Mask@@58 o_142@@13 f_125@@12) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@38) o_142@@13 f_125@@12) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@20) o_142@@13 f_125@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@58) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@20) o_142@@13 f_125@@12))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_83631) (ExhaleHeap@@21 T@PolymorphicMapType_83631) (Mask@@59 T@PolymorphicMapType_83652) (o_142@@14 T@Ref) (f_125@@13 T@Field_89709_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@59) (=> (HasDirectPerm_40731_2989 Mask@@59 o_142@@14 f_125@@13) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@39) o_142@@14 f_125@@13) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@21) o_142@@14 f_125@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@59) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@21) o_142@@14 f_125@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3211|)) (not (= s1@@0 |Seq#Empty_3211|))) (= (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.216:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_121051_121056) ) (! (= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_41051_3049) ) (! (= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_41051_40734) ) (! (= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_41051_2989) ) (! (= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_118662_118663) ) (! (= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_40731_95464) ) (! (= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_83691_53) ) (! (= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_83704_83705) ) (! (= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_89709_2989) ) (! (= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_40731_41001) ) (! (= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_95459_95464) ) (! (= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_41000_3049) ) (! (= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_41000_40734) ) (! (= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_41000_2989) ) (! (= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_90385_90386) ) (! (= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_7859| (|Seq#Append_2989| s@@7 t@@0) n@@7) (|Seq#Drop_7859| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.373:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7859| (|Seq#Append_2989| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_83631) (this@@22 T@Ref) (end_1@@10 T@Ref) ) (!  (and (= (contentNodes Heap@@40 this@@22 end_1@@10) (|contentNodes'| Heap@@40 this@@22 end_1@@10)) (dummyFunction_90009 (|contentNodes#triggerStateless| this@@22 end_1@@10)))
 :qid |stdinbpl.574:15|
 :skolemid |58|
 :pattern ( (contentNodes Heap@@40 this@@22 end_1@@10))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_83631) (this@@23 T@Ref) (end_1@@11 T@Ref) ) (!  (and (= (lengthNodes Heap@@41 this@@23 end_1@@11) (|lengthNodes'| Heap@@41 this@@23 end_1@@11)) (dummyFunction_6578 (|lengthNodes#triggerStateless| this@@23 end_1@@11)))
 :qid |stdinbpl.950:15|
 :skolemid |75|
 :pattern ( (lengthNodes Heap@@41 this@@23 end_1@@11))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_83631) (Mask@@60 T@PolymorphicMapType_83652) (this@@24 T@Ref) (end_1@@12 T@Ref) ) (!  (=> (and (state Heap@@42 Mask@@60) (< AssumeFunctionsAbove 4)) (= (contentNodes Heap@@42 this@@24 end_1@@12) (ite (= this@@24 end_1@@12) |Seq#Empty_3211| (|Seq#Append_2989| (|Seq#Singleton_2989| (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@42) this@@24 data)) (|contentNodes'| Heap@@42 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@42) this@@24 next) end_1@@12)))))
 :qid |stdinbpl.584:15|
 :skolemid |60|
 :pattern ( (state Heap@@42 Mask@@60) (contentNodes Heap@@42 this@@24 end_1@@12))
 :pattern ( (state Heap@@42 Mask@@60) (|contentNodes#triggerStateless| this@@24 end_1@@12) (|lseg#trigger_41000| Heap@@42 (lseg this@@24 end_1@@12)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_83652) (SummandMask1 T@PolymorphicMapType_83652) (SummandMask2 T@PolymorphicMapType_83652) (o_2@@59 T@Ref) (f_4@@59 T@Field_121051_121056) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_83652) (SummandMask1@@0 T@PolymorphicMapType_83652) (SummandMask2@@0 T@PolymorphicMapType_83652) (o_2@@60 T@Ref) (f_4@@60 T@Field_41051_3049) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_83652) (SummandMask1@@1 T@PolymorphicMapType_83652) (SummandMask2@@1 T@PolymorphicMapType_83652) (o_2@@61 T@Ref) (f_4@@61 T@Field_41051_40734) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_83652) (SummandMask1@@2 T@PolymorphicMapType_83652) (SummandMask2@@2 T@PolymorphicMapType_83652) (o_2@@62 T@Ref) (f_4@@62 T@Field_41051_2989) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_83652) (SummandMask1@@3 T@PolymorphicMapType_83652) (SummandMask2@@3 T@PolymorphicMapType_83652) (o_2@@63 T@Ref) (f_4@@63 T@Field_118662_118663) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_83652) (SummandMask1@@4 T@PolymorphicMapType_83652) (SummandMask2@@4 T@PolymorphicMapType_83652) (o_2@@64 T@Ref) (f_4@@64 T@Field_40731_95464) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_83652) (SummandMask1@@5 T@PolymorphicMapType_83652) (SummandMask2@@5 T@PolymorphicMapType_83652) (o_2@@65 T@Ref) (f_4@@65 T@Field_83691_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_83652) (SummandMask1@@6 T@PolymorphicMapType_83652) (SummandMask2@@6 T@PolymorphicMapType_83652) (o_2@@66 T@Ref) (f_4@@66 T@Field_83704_83705) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_83652) (SummandMask1@@7 T@PolymorphicMapType_83652) (SummandMask2@@7 T@PolymorphicMapType_83652) (o_2@@67 T@Ref) (f_4@@67 T@Field_89709_2989) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_83652) (SummandMask1@@8 T@PolymorphicMapType_83652) (SummandMask2@@8 T@PolymorphicMapType_83652) (o_2@@68 T@Ref) (f_4@@68 T@Field_40731_41001) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_83652) (SummandMask1@@9 T@PolymorphicMapType_83652) (SummandMask2@@9 T@PolymorphicMapType_83652) (o_2@@69 T@Ref) (f_4@@69 T@Field_95459_95464) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_83652) (SummandMask1@@10 T@PolymorphicMapType_83652) (SummandMask2@@10 T@PolymorphicMapType_83652) (o_2@@70 T@Ref) (f_4@@70 T@Field_41000_3049) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_83652) (SummandMask1@@11 T@PolymorphicMapType_83652) (SummandMask2@@11 T@PolymorphicMapType_83652) (o_2@@71 T@Ref) (f_4@@71 T@Field_41000_40734) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_83652) (SummandMask1@@12 T@PolymorphicMapType_83652) (SummandMask2@@12 T@PolymorphicMapType_83652) (o_2@@72 T@Ref) (f_4@@72 T@Field_41000_2989) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_83652) (SummandMask1@@13 T@PolymorphicMapType_83652) (SummandMask2@@13 T@PolymorphicMapType_83652) (o_2@@73 T@Ref) (f_4@@73 T@Field_90385_90386) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_83631) (ExhaleHeap@@22 T@PolymorphicMapType_83631) (Mask@@61 T@PolymorphicMapType_83652) (pm_f_50@@5 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@61) (=> (and (HasDirectPerm_41051_41052 Mask@@61 null pm_f_50@@5) (IsPredicateField_41051_41052 pm_f_50@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51 T@Ref) (f_125@@14 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51 f_125@@14) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@43) o2_51 f_125@@14) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51 f_125@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51 f_125@@14))
)) (forall ((o2_51@@0 T@Ref) (f_125@@15 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@0 f_125@@15) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@43) o2_51@@0 f_125@@15) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@0 f_125@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@0 f_125@@15))
))) (forall ((o2_51@@1 T@Ref) (f_125@@16 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@1 f_125@@16) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@43) o2_51@@1 f_125@@16) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@1 f_125@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@1 f_125@@16))
))) (forall ((o2_51@@2 T@Ref) (f_125@@17 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@2 f_125@@17) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@43) o2_51@@2 f_125@@17) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@2 f_125@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@2 f_125@@17))
))) (forall ((o2_51@@3 T@Ref) (f_125@@18 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@3 f_125@@18) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@43) o2_51@@3 f_125@@18) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@3 f_125@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@3 f_125@@18))
))) (forall ((o2_51@@4 T@Ref) (f_125@@19 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@4 f_125@@19) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@43) o2_51@@4 f_125@@19) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@4 f_125@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@4 f_125@@19))
))) (forall ((o2_51@@5 T@Ref) (f_125@@20 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@5 f_125@@20) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@43) o2_51@@5 f_125@@20) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@5 f_125@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@5 f_125@@20))
))) (forall ((o2_51@@6 T@Ref) (f_125@@21 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@6 f_125@@21) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@43) o2_51@@6 f_125@@21) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@6 f_125@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@6 f_125@@21))
))) (forall ((o2_51@@7 T@Ref) (f_125@@22 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@7 f_125@@22) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@43) o2_51@@7 f_125@@22) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@7 f_125@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@7 f_125@@22))
))) (forall ((o2_51@@8 T@Ref) (f_125@@23 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@8 f_125@@23) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@43) o2_51@@8 f_125@@23) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@8 f_125@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@8 f_125@@23))
))) (forall ((o2_51@@9 T@Ref) (f_125@@24 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@9 f_125@@24) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@43) o2_51@@9 f_125@@24) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@9 f_125@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@9 f_125@@24))
))) (forall ((o2_51@@10 T@Ref) (f_125@@25 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@10 f_125@@25) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@43) o2_51@@10 f_125@@25) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@10 f_125@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@10 f_125@@25))
))) (forall ((o2_51@@11 T@Ref) (f_125@@26 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@11 f_125@@26) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@43) o2_51@@11 f_125@@26) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@11 f_125@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@11 f_125@@26))
))) (forall ((o2_51@@12 T@Ref) (f_125@@27 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@12 f_125@@27) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@43) o2_51@@12 f_125@@27) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@12 f_125@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@12 f_125@@27))
))) (forall ((o2_51@@13 T@Ref) (f_125@@28 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@13 f_125@@28) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) o2_51@@13 f_125@@28) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@13 f_125@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@13 f_125@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@61) (IsPredicateField_41051_41052 pm_f_50@@5))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_83631) (ExhaleHeap@@23 T@PolymorphicMapType_83631) (Mask@@62 T@PolymorphicMapType_83652) (pm_f_50@@6 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@62) (=> (and (HasDirectPerm_41000_41001 Mask@@62 null pm_f_50@@6) (IsPredicateField_41000_41001 pm_f_50@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@14 T@Ref) (f_125@@29 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@14 f_125@@29) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@14 f_125@@29) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@14 f_125@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@14 f_125@@29))
)) (forall ((o2_51@@15 T@Ref) (f_125@@30 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@15 f_125@@30) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@44) o2_51@@15 f_125@@30) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@15 f_125@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@15 f_125@@30))
))) (forall ((o2_51@@16 T@Ref) (f_125@@31 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@16 f_125@@31) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@44) o2_51@@16 f_125@@31) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@16 f_125@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@16 f_125@@31))
))) (forall ((o2_51@@17 T@Ref) (f_125@@32 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@17 f_125@@32) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@44) o2_51@@17 f_125@@32) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@17 f_125@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@17 f_125@@32))
))) (forall ((o2_51@@18 T@Ref) (f_125@@33 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@18 f_125@@33) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@44) o2_51@@18 f_125@@33) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@18 f_125@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@18 f_125@@33))
))) (forall ((o2_51@@19 T@Ref) (f_125@@34 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@19 f_125@@34) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@19 f_125@@34) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@19 f_125@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@19 f_125@@34))
))) (forall ((o2_51@@20 T@Ref) (f_125@@35 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@20 f_125@@35) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@44) o2_51@@20 f_125@@35) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@20 f_125@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@20 f_125@@35))
))) (forall ((o2_51@@21 T@Ref) (f_125@@36 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@21 f_125@@36) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@44) o2_51@@21 f_125@@36) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@21 f_125@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@21 f_125@@36))
))) (forall ((o2_51@@22 T@Ref) (f_125@@37 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@22 f_125@@37) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@44) o2_51@@22 f_125@@37) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@22 f_125@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@22 f_125@@37))
))) (forall ((o2_51@@23 T@Ref) (f_125@@38 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@23 f_125@@38) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) o2_51@@23 f_125@@38) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@23 f_125@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@23 f_125@@38))
))) (forall ((o2_51@@24 T@Ref) (f_125@@39 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@24 f_125@@39) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@24 f_125@@39) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@24 f_125@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@24 f_125@@39))
))) (forall ((o2_51@@25 T@Ref) (f_125@@40 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@25 f_125@@40) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@44) o2_51@@25 f_125@@40) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@25 f_125@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@25 f_125@@40))
))) (forall ((o2_51@@26 T@Ref) (f_125@@41 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@26 f_125@@41) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@44) o2_51@@26 f_125@@41) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@26 f_125@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@26 f_125@@41))
))) (forall ((o2_51@@27 T@Ref) (f_125@@42 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@27 f_125@@42) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@44) o2_51@@27 f_125@@42) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@27 f_125@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@27 f_125@@42))
))) (forall ((o2_51@@28 T@Ref) (f_125@@43 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@28 f_125@@43) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@44) o2_51@@28 f_125@@43) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@28 f_125@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@28 f_125@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@62) (IsPredicateField_41000_41001 pm_f_50@@6))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_83631) (ExhaleHeap@@24 T@PolymorphicMapType_83631) (Mask@@63 T@PolymorphicMapType_83652) (pm_f_50@@7 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@63) (=> (and (HasDirectPerm_40731_41001 Mask@@63 null pm_f_50@@7) (IsPredicateField_40731_336373 pm_f_50@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@29 T@Ref) (f_125@@44 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@29 f_125@@44) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@29 f_125@@44) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@29 f_125@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@29 f_125@@44))
)) (forall ((o2_51@@30 T@Ref) (f_125@@45 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@30 f_125@@45) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@45) o2_51@@30 f_125@@45) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@30 f_125@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@30 f_125@@45))
))) (forall ((o2_51@@31 T@Ref) (f_125@@46 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@31 f_125@@46) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@45) o2_51@@31 f_125@@46) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@31 f_125@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@31 f_125@@46))
))) (forall ((o2_51@@32 T@Ref) (f_125@@47 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@32 f_125@@47) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@45) o2_51@@32 f_125@@47) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@32 f_125@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@32 f_125@@47))
))) (forall ((o2_51@@33 T@Ref) (f_125@@48 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@33 f_125@@48) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) o2_51@@33 f_125@@48) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@33 f_125@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@33 f_125@@48))
))) (forall ((o2_51@@34 T@Ref) (f_125@@49 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@34 f_125@@49) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@34 f_125@@49) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@34 f_125@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@34 f_125@@49))
))) (forall ((o2_51@@35 T@Ref) (f_125@@50 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@35 f_125@@50) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@45) o2_51@@35 f_125@@50) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@35 f_125@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@35 f_125@@50))
))) (forall ((o2_51@@36 T@Ref) (f_125@@51 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@36 f_125@@51) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@45) o2_51@@36 f_125@@51) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@36 f_125@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@36 f_125@@51))
))) (forall ((o2_51@@37 T@Ref) (f_125@@52 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@37 f_125@@52) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@45) o2_51@@37 f_125@@52) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@37 f_125@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@37 f_125@@52))
))) (forall ((o2_51@@38 T@Ref) (f_125@@53 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@38 f_125@@53) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@45) o2_51@@38 f_125@@53) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@38 f_125@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@38 f_125@@53))
))) (forall ((o2_51@@39 T@Ref) (f_125@@54 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@39 f_125@@54) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@39 f_125@@54) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@39 f_125@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@39 f_125@@54))
))) (forall ((o2_51@@40 T@Ref) (f_125@@55 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@40 f_125@@55) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@45) o2_51@@40 f_125@@55) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@40 f_125@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@40 f_125@@55))
))) (forall ((o2_51@@41 T@Ref) (f_125@@56 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@41 f_125@@56) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@45) o2_51@@41 f_125@@56) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@41 f_125@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@41 f_125@@56))
))) (forall ((o2_51@@42 T@Ref) (f_125@@57 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@42 f_125@@57) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@45) o2_51@@42 f_125@@57) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@42 f_125@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@42 f_125@@57))
))) (forall ((o2_51@@43 T@Ref) (f_125@@58 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@43 f_125@@58) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@45) o2_51@@43 f_125@@58) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@43 f_125@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@43 f_125@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@63) (IsPredicateField_40731_336373 pm_f_50@@7))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_83631) (ExhaleHeap@@25 T@PolymorphicMapType_83631) (Mask@@64 T@PolymorphicMapType_83652) (pm_f_50@@8 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@64) (=> (and (HasDirectPerm_41051_41052 Mask@@64 null pm_f_50@@8) (IsWandField_41051_342054 pm_f_50@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@44 T@Ref) (f_125@@59 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@44 f_125@@59) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@44 f_125@@59) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@44 f_125@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@44 f_125@@59))
)) (forall ((o2_51@@45 T@Ref) (f_125@@60 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@45 f_125@@60) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@46) o2_51@@45 f_125@@60) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@45 f_125@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@45 f_125@@60))
))) (forall ((o2_51@@46 T@Ref) (f_125@@61 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@46 f_125@@61) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@46) o2_51@@46 f_125@@61) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@46 f_125@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@46 f_125@@61))
))) (forall ((o2_51@@47 T@Ref) (f_125@@62 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@47 f_125@@62) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@46) o2_51@@47 f_125@@62) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@47 f_125@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@47 f_125@@62))
))) (forall ((o2_51@@48 T@Ref) (f_125@@63 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@48 f_125@@63) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@46) o2_51@@48 f_125@@63) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@48 f_125@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@48 f_125@@63))
))) (forall ((o2_51@@49 T@Ref) (f_125@@64 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@49 f_125@@64) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@49 f_125@@64) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@49 f_125@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@49 f_125@@64))
))) (forall ((o2_51@@50 T@Ref) (f_125@@65 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@50 f_125@@65) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@46) o2_51@@50 f_125@@65) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@50 f_125@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@50 f_125@@65))
))) (forall ((o2_51@@51 T@Ref) (f_125@@66 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@51 f_125@@66) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@46) o2_51@@51 f_125@@66) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@51 f_125@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@51 f_125@@66))
))) (forall ((o2_51@@52 T@Ref) (f_125@@67 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@52 f_125@@67) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@46) o2_51@@52 f_125@@67) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@52 f_125@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@52 f_125@@67))
))) (forall ((o2_51@@53 T@Ref) (f_125@@68 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@53 f_125@@68) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@46) o2_51@@53 f_125@@68) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@53 f_125@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@53 f_125@@68))
))) (forall ((o2_51@@54 T@Ref) (f_125@@69 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@54 f_125@@69) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@54 f_125@@69) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@54 f_125@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@54 f_125@@69))
))) (forall ((o2_51@@55 T@Ref) (f_125@@70 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@55 f_125@@70) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@46) o2_51@@55 f_125@@70) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@55 f_125@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@55 f_125@@70))
))) (forall ((o2_51@@56 T@Ref) (f_125@@71 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@56 f_125@@71) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@46) o2_51@@56 f_125@@71) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@56 f_125@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@56 f_125@@71))
))) (forall ((o2_51@@57 T@Ref) (f_125@@72 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@57 f_125@@72) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@46) o2_51@@57 f_125@@72) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@57 f_125@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@57 f_125@@72))
))) (forall ((o2_51@@58 T@Ref) (f_125@@73 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@58 f_125@@73) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) o2_51@@58 f_125@@73) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@58 f_125@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@58 f_125@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@64) (IsWandField_41051_342054 pm_f_50@@8))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_83631) (ExhaleHeap@@26 T@PolymorphicMapType_83631) (Mask@@65 T@PolymorphicMapType_83652) (pm_f_50@@9 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@65) (=> (and (HasDirectPerm_41000_41001 Mask@@65 null pm_f_50@@9) (IsWandField_41000_341697 pm_f_50@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@59 T@Ref) (f_125@@74 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@59 f_125@@74) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@59 f_125@@74) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@59 f_125@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@59 f_125@@74))
)) (forall ((o2_51@@60 T@Ref) (f_125@@75 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@60 f_125@@75) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@47) o2_51@@60 f_125@@75) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@60 f_125@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@60 f_125@@75))
))) (forall ((o2_51@@61 T@Ref) (f_125@@76 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@61 f_125@@76) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@47) o2_51@@61 f_125@@76) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@61 f_125@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@61 f_125@@76))
))) (forall ((o2_51@@62 T@Ref) (f_125@@77 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@62 f_125@@77) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@47) o2_51@@62 f_125@@77) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@62 f_125@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@62 f_125@@77))
))) (forall ((o2_51@@63 T@Ref) (f_125@@78 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@63 f_125@@78) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@47) o2_51@@63 f_125@@78) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@63 f_125@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@63 f_125@@78))
))) (forall ((o2_51@@64 T@Ref) (f_125@@79 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@64 f_125@@79) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@64 f_125@@79) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@64 f_125@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@64 f_125@@79))
))) (forall ((o2_51@@65 T@Ref) (f_125@@80 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@65 f_125@@80) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@47) o2_51@@65 f_125@@80) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@65 f_125@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@65 f_125@@80))
))) (forall ((o2_51@@66 T@Ref) (f_125@@81 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@66 f_125@@81) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@47) o2_51@@66 f_125@@81) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@66 f_125@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@66 f_125@@81))
))) (forall ((o2_51@@67 T@Ref) (f_125@@82 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@67 f_125@@82) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@47) o2_51@@67 f_125@@82) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@67 f_125@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@67 f_125@@82))
))) (forall ((o2_51@@68 T@Ref) (f_125@@83 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@68 f_125@@83) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) o2_51@@68 f_125@@83) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@68 f_125@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@68 f_125@@83))
))) (forall ((o2_51@@69 T@Ref) (f_125@@84 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@69 f_125@@84) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@69 f_125@@84) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@69 f_125@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@69 f_125@@84))
))) (forall ((o2_51@@70 T@Ref) (f_125@@85 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@70 f_125@@85) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@47) o2_51@@70 f_125@@85) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@70 f_125@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@70 f_125@@85))
))) (forall ((o2_51@@71 T@Ref) (f_125@@86 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@71 f_125@@86) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@47) o2_51@@71 f_125@@86) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@71 f_125@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@71 f_125@@86))
))) (forall ((o2_51@@72 T@Ref) (f_125@@87 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@72 f_125@@87) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@47) o2_51@@72 f_125@@87) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@72 f_125@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@72 f_125@@87))
))) (forall ((o2_51@@73 T@Ref) (f_125@@88 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@73 f_125@@88) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@47) o2_51@@73 f_125@@88) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@73 f_125@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@73 f_125@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@65) (IsWandField_41000_341697 pm_f_50@@9))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_83631) (ExhaleHeap@@27 T@PolymorphicMapType_83631) (Mask@@66 T@PolymorphicMapType_83652) (pm_f_50@@10 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@66) (=> (and (HasDirectPerm_40731_41001 Mask@@66 null pm_f_50@@10) (IsWandField_40731_341340 pm_f_50@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@74 T@Ref) (f_125@@89 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@74 f_125@@89) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@74 f_125@@89) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@74 f_125@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@74 f_125@@89))
)) (forall ((o2_51@@75 T@Ref) (f_125@@90 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@75 f_125@@90) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@48) o2_51@@75 f_125@@90) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@75 f_125@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@75 f_125@@90))
))) (forall ((o2_51@@76 T@Ref) (f_125@@91 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@76 f_125@@91) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@48) o2_51@@76 f_125@@91) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@76 f_125@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@76 f_125@@91))
))) (forall ((o2_51@@77 T@Ref) (f_125@@92 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@77 f_125@@92) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@48) o2_51@@77 f_125@@92) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@77 f_125@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@77 f_125@@92))
))) (forall ((o2_51@@78 T@Ref) (f_125@@93 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@78 f_125@@93) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) o2_51@@78 f_125@@93) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@78 f_125@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@78 f_125@@93))
))) (forall ((o2_51@@79 T@Ref) (f_125@@94 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@79 f_125@@94) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@79 f_125@@94) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@79 f_125@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@79 f_125@@94))
))) (forall ((o2_51@@80 T@Ref) (f_125@@95 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@80 f_125@@95) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@48) o2_51@@80 f_125@@95) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@80 f_125@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@80 f_125@@95))
))) (forall ((o2_51@@81 T@Ref) (f_125@@96 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@81 f_125@@96) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@48) o2_51@@81 f_125@@96) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@81 f_125@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@81 f_125@@96))
))) (forall ((o2_51@@82 T@Ref) (f_125@@97 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@82 f_125@@97) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@48) o2_51@@82 f_125@@97) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@82 f_125@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@82 f_125@@97))
))) (forall ((o2_51@@83 T@Ref) (f_125@@98 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@83 f_125@@98) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@48) o2_51@@83 f_125@@98) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@83 f_125@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@83 f_125@@98))
))) (forall ((o2_51@@84 T@Ref) (f_125@@99 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@84 f_125@@99) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@84 f_125@@99) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@84 f_125@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@84 f_125@@99))
))) (forall ((o2_51@@85 T@Ref) (f_125@@100 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@85 f_125@@100) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@48) o2_51@@85 f_125@@100) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@85 f_125@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@85 f_125@@100))
))) (forall ((o2_51@@86 T@Ref) (f_125@@101 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@86 f_125@@101) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@48) o2_51@@86 f_125@@101) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@86 f_125@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@86 f_125@@101))
))) (forall ((o2_51@@87 T@Ref) (f_125@@102 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@87 f_125@@102) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@48) o2_51@@87 f_125@@102) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@87 f_125@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@87 f_125@@102))
))) (forall ((o2_51@@88 T@Ref) (f_125@@103 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@88 f_125@@103) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@48) o2_51@@88 f_125@@103) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@88 f_125@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@88 f_125@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@66) (IsWandField_40731_341340 pm_f_50@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.538:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_83631) (Mask@@67 T@PolymorphicMapType_83652) (this@@25 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@67) (or (< AssumeFunctionsAbove 2) (|content#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@49) null (List this@@25)) this@@25))) (forall ((i@@3 Int) (j@@5 Int) ) (!  (=> (and (<= 0 i@@3) (and (< i@@3 j@@5) (< j@@5 (|Seq#Length_2867| (|content'| Heap@@49 this@@25))))) (<= (|Seq#Index_2867| (|content'| Heap@@49 this@@25) i@@3) (|Seq#Index_2867| (|content'| Heap@@49 this@@25) j@@5)))
 :qid |stdinbpl.1191:112|
 :skolemid |87|
 :pattern ( (|Seq#Index_2867| (|content'| Heap@@49 this@@25) i@@3) (|Seq#Index_2867| (|content'| Heap@@49 this@@25) j@@5))
)))
 :qid |stdinbpl.1189:15|
 :skolemid |88|
 :pattern ( (state Heap@@49 Mask@@67) (|content'| Heap@@49 this@@25))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3092| a b) (= a b))
 :qid |stdinbpl.511:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3092| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@4)))
 :qid |stdinbpl.404:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3211|) (= (|Seq#Append_2989| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3211|) (= (|Seq#Append_2989| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2989| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.226:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_83631) (Mask@@68 T@PolymorphicMapType_83652) (this@@26 T@Ref) (end_1@@13 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@68) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@50) null (lseg this@@26 end_1@@13)) this@@26 end_1@@13))) (=> (not (= this@@26 end_1@@13)) (and (< 0 (|Seq#Length_2867| (|contentNodes'| Heap@@50 this@@26 end_1@@13))) (= (|Seq#Index_2867| (|contentNodes'| Heap@@50 this@@26 end_1@@13) 0) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@50) this@@26 data)))))
 :qid |stdinbpl.601:15|
 :skolemid |63|
 :pattern ( (state Heap@@50 Mask@@68) (|contentNodes'| Heap@@50 this@@26 end_1@@13))
)))
(assert (forall ((this@@27 T@Ref) (end_1@@14 T@Ref) ) (! (= (getPredWandId_41000_41001 (lseg this@@27 end_1@@14)) 0)
 :qid |stdinbpl.1738:15|
 :skolemid |109|
 :pattern ( (lseg this@@27 end_1@@14))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3092| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@6) (|Seq#Index_2867| s1@@2 j@@6)))
 :qid |stdinbpl.501:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@6))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@6))
))))
 :qid |stdinbpl.498:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3092| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_83631) (Mask@@69 T@PolymorphicMapType_83652) (this@@28 T@Ref) ) (!  (=> (state Heap@@51 Mask@@69) (= (|content'| Heap@@51 this@@28) (|content#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@51) null (List this@@28)) this@@28)))
 :qid |stdinbpl.1183:15|
 :skolemid |86|
 :pattern ( (state Heap@@51 Mask@@69) (|content'| Heap@@51 this@@28))
 :pattern ( (state Heap@@51 Mask@@69) (|content#triggerStateless| this@@28) (|List#trigger_41051| Heap@@51 (List this@@28)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_83631) (Mask@@70 T@PolymorphicMapType_83652) (this@@29 T@Ref) ) (!  (=> (state Heap@@52 Mask@@70) (= (|length'| Heap@@52 this@@29) (|length#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@52) null (List this@@29)) this@@29)))
 :qid |stdinbpl.1340:15|
 :skolemid |94|
 :pattern ( (state Heap@@52 Mask@@70) (|length'| Heap@@52 this@@29))
 :pattern ( (state Heap@@52 Mask@@70) (|length#triggerStateless| this@@29) (|List#trigger_41051| Heap@@52 (List this@@29)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_83631) (Mask@@71 T@PolymorphicMapType_83652) (this@@30 T@Ref) ) (!  (=> (state Heap@@53 Mask@@71) (= (|peek'| Heap@@53 this@@30) (|peek#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@53) null (List this@@30)) this@@30)))
 :qid |stdinbpl.1484:15|
 :skolemid |100|
 :pattern ( (state Heap@@53 Mask@@71) (|peek'| Heap@@53 this@@30))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((this@@31 T@Ref) ) (! (= (getPredWandId_41051_41052 (List this@@31)) 1)
 :qid |stdinbpl.1967:15|
 :skolemid |119|
 :pattern ( (List this@@31))
)))
(assert (forall ((this@@32 T@Ref) (end_1@@15 T@Ref) ) (! (= (PredicateMaskField_41000 (lseg this@@32 end_1@@15)) (|lseg#sm| this@@32 end_1@@15))
 :qid |stdinbpl.1730:15|
 :skolemid |107|
 :pattern ( (PredicateMaskField_41000 (lseg this@@32 end_1@@15)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_7859| (|Seq#Append_2989| s@@10 t@@3) n@@8) (|Seq#Take_7859| s@@10 n@@8)))
 :qid |stdinbpl.355:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7859| (|Seq#Append_2989| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@5 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.254:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@5 v@@1))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_83631) (o_141 T@Ref) (f_158 T@Field_121051_121056) (v@@2 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@54 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@54) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@54) o_141 f_158 v@@2) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@54) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@54) o_141 f_158 v@@2) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_83631) (o_141@@0 T@Ref) (f_158@@0 T@Field_118662_118663) (v@@3 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@55) (store (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@55) o_141@@0 f_158@@0 v@@3) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@55) (store (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@55) o_141@@0 f_158@@0 v@@3) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_83631) (o_141@@1 T@Ref) (f_158@@1 T@Field_41051_2989) (v@@4 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@56) (store (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@56) o_141@@1 f_158@@1 v@@4) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@56) (store (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@56) o_141@@1 f_158@@1 v@@4) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_83631) (o_141@@2 T@Ref) (f_158@@2 T@Field_41051_40734) (v@@5 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@57) (store (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@57) o_141@@2 f_158@@2 v@@5) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@57) (store (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@57) o_141@@2 f_158@@2 v@@5) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_83631) (o_141@@3 T@Ref) (f_158@@3 T@Field_41051_3049) (v@@6 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@58) (store (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@58) o_141@@3 f_158@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@58) (store (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@58) o_141@@3 f_158@@3 v@@6)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_83631) (o_141@@4 T@Ref) (f_158@@4 T@Field_95459_95464) (v@@7 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@59 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@59) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@59) o_141@@4 f_158@@4 v@@7) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@59) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@59) o_141@@4 f_158@@4 v@@7) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_83631) (o_141@@5 T@Ref) (f_158@@5 T@Field_90385_90386) (v@@8 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@60) (store (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@60) o_141@@5 f_158@@5 v@@8) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@60) (store (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@60) o_141@@5 f_158@@5 v@@8) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_83631) (o_141@@6 T@Ref) (f_158@@6 T@Field_41000_2989) (v@@9 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@61) (store (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@61) o_141@@6 f_158@@6 v@@9) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@61) (store (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@61) o_141@@6 f_158@@6 v@@9) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_83631) (o_141@@7 T@Ref) (f_158@@7 T@Field_41000_40734) (v@@10 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@62) (store (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@62) o_141@@7 f_158@@7 v@@10) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@62) (store (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@62) o_141@@7 f_158@@7 v@@10) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_83631) (o_141@@8 T@Ref) (f_158@@8 T@Field_41000_3049) (v@@11 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@63) (store (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@63) o_141@@8 f_158@@8 v@@11) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@63) (store (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@63) o_141@@8 f_158@@8 v@@11) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_83631) (o_141@@9 T@Ref) (f_158@@9 T@Field_40731_95464) (v@@12 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@64 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@64) (store (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@64) o_141@@9 f_158@@9 v@@12) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@64) (store (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@64) o_141@@9 f_158@@9 v@@12) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_83631) (o_141@@10 T@Ref) (f_158@@10 T@Field_40731_41001) (v@@13 T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@65) (store (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@65) o_141@@10 f_158@@10 v@@13) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@65) (store (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@65) o_141@@10 f_158@@10 v@@13) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_83631) (o_141@@11 T@Ref) (f_158@@11 T@Field_89709_2989) (v@@14 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@66) (store (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@66) o_141@@11 f_158@@11 v@@14) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@66) (store (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@66) o_141@@11 f_158@@11 v@@14) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_83631) (o_141@@12 T@Ref) (f_158@@12 T@Field_83704_83705) (v@@15 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@67) (store (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@67) o_141@@12 f_158@@12 v@@15) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@67) (store (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@67) o_141@@12 f_158@@12 v@@15) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_83631) (o_141@@13 T@Ref) (f_158@@13 T@Field_83691_53) (v@@16 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_83631 (store (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@68) o_141@@13 f_158@@13 v@@16) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (store (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@68) o_141@@13 f_158@@13 v@@16) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@68)))
)))
(assert (forall ((this@@33 T@Ref) ) (! (= (PredicateMaskField_41051 (List this@@33)) (|List#sm| this@@33))
 :qid |stdinbpl.1959:15|
 :skolemid |117|
 :pattern ( (PredicateMaskField_41051 (List this@@33)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_7859| (|Seq#Append_2989| s@@12 t@@4) n@@9) (|Seq#Append_2989| (|Seq#Drop_7859| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.369:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7859| (|Seq#Append_2989| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@6 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@6)) (< i@@6 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@6 n@@10) n@@10) i@@6) (= (|Seq#Index_2867| (|Seq#Drop_7859| s@@13 n@@10) (|Seq#Sub| i@@6 n@@10)) (|Seq#Index_2867| s@@13 i@@6))))
 :qid |stdinbpl.305:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7859| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3211|)) (not (= s1@@3 |Seq#Empty_3211|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.245:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2989| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3211|)) (not (= s1@@4 |Seq#Empty_3211|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.250:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2989| s0@@4 s1@@4))
)))
(assert (forall ((o_141@@14 T@Ref) (f_121 T@Field_83704_83705) (Heap@@69 T@PolymorphicMapType_83631) ) (!  (=> (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@69) o_141@@14 $allocated) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@69) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@69) o_141@@14 f_121) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@69) o_141@@14 f_121))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@7 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@7) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.402:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@7))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3092| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3092| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3092| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.506:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3092| s0@@5 s1@@5))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_83631) (Mask@@72 T@PolymorphicMapType_83652) (this@@34 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@72) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@70 this@@34) (lengthNodes Heap@@70 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@70) this@@34 head_3) null)))
 :qid |stdinbpl.1333:15|
 :skolemid |93|
 :pattern ( (state Heap@@70 Mask@@72) (length_1 Heap@@70 this@@34))
 :pattern ( (state Heap@@70 Mask@@72) (|length#triggerStateless| this@@34) (|List#trigger_41051| Heap@@70 (List this@@34)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_83631) (Mask@@73 T@PolymorphicMapType_83652) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@71 Mask@@73) (< AssumeFunctionsAbove 2)) (= (content Heap@@71 this@@35) (contentNodes Heap@@71 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@71) this@@35 head_3) null)))
 :qid |stdinbpl.1176:15|
 :skolemid |85|
 :pattern ( (state Heap@@71 Mask@@73) (content Heap@@71 this@@35))
 :pattern ( (state Heap@@71 Mask@@73) (|content#triggerStateless| this@@35) (|List#trigger_41051| Heap@@71 (List this@@35)))
)))
(assert (forall ((p@@3 T@Field_40731_41001) (v_1@@2 T@FrameType) (q T@Field_40731_41001) (w@@2 T@FrameType) (r T@Field_118662_118663) (u T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@3 v_1@@2 q w@@2) (InsidePredicate_83691_118662 q w@@2 r u)) (InsidePredicate_83691_118662 p@@3 v_1@@2 r u))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@3 v_1@@2 q w@@2) (InsidePredicate_83691_118662 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_40731_41001) (v_1@@3 T@FrameType) (q@@0 T@Field_40731_41001) (w@@3 T@FrameType) (r@@0 T@Field_40731_41001) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_83691_83691 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_83691_83691 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_83691_83691 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_40731_41001) (v_1@@4 T@FrameType) (q@@1 T@Field_40731_41001) (w@@4 T@FrameType) (r@@1 T@Field_90385_90386) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_83691_41000 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_83691_41000 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_83691_41000 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_40731_41001) (v_1@@5 T@FrameType) (q@@2 T@Field_118662_118663) (w@@5 T@FrameType) (r@@2 T@Field_118662_118663) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_41051_118662 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_83691_118662 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_41051_118662 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_40731_41001) (v_1@@6 T@FrameType) (q@@3 T@Field_118662_118663) (w@@6 T@FrameType) (r@@3 T@Field_40731_41001) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_41051_83691 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_83691_83691 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_41051_83691 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_40731_41001) (v_1@@7 T@FrameType) (q@@4 T@Field_118662_118663) (w@@7 T@FrameType) (r@@4 T@Field_90385_90386) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_41051_41000 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_83691_41000 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_41051_41000 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_40731_41001) (v_1@@8 T@FrameType) (q@@5 T@Field_90385_90386) (w@@8 T@FrameType) (r@@5 T@Field_118662_118663) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_41000_118662 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_83691_118662 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_41000_118662 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_40731_41001) (v_1@@9 T@FrameType) (q@@6 T@Field_90385_90386) (w@@9 T@FrameType) (r@@6 T@Field_40731_41001) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_41000_83691 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_83691_83691 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_41000_83691 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_40731_41001) (v_1@@10 T@FrameType) (q@@7 T@Field_90385_90386) (w@@10 T@FrameType) (r@@7 T@Field_90385_90386) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_41000_41000 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_83691_41000 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_41000_41000 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_118662_118663) (v_1@@11 T@FrameType) (q@@8 T@Field_40731_41001) (w@@11 T@FrameType) (r@@8 T@Field_118662_118663) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_83691_118662 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_41051_118662 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_83691_118662 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_118662_118663) (v_1@@12 T@FrameType) (q@@9 T@Field_40731_41001) (w@@12 T@FrameType) (r@@9 T@Field_40731_41001) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_83691_83691 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_41051_83691 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_83691_83691 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_118662_118663) (v_1@@13 T@FrameType) (q@@10 T@Field_40731_41001) (w@@13 T@FrameType) (r@@10 T@Field_90385_90386) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_83691_41000 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_41051_41000 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_83691_41000 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_118662_118663) (v_1@@14 T@FrameType) (q@@11 T@Field_118662_118663) (w@@14 T@FrameType) (r@@11 T@Field_118662_118663) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_41051_118662 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_41051_118662 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_41051_118662 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_118662_118663) (v_1@@15 T@FrameType) (q@@12 T@Field_118662_118663) (w@@15 T@FrameType) (r@@12 T@Field_40731_41001) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_41051_83691 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_41051_83691 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_41051_83691 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_118662_118663) (v_1@@16 T@FrameType) (q@@13 T@Field_118662_118663) (w@@16 T@FrameType) (r@@13 T@Field_90385_90386) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_41051_41000 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_41051_41000 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_41051_41000 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_118662_118663) (v_1@@17 T@FrameType) (q@@14 T@Field_90385_90386) (w@@17 T@FrameType) (r@@14 T@Field_118662_118663) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_41000_118662 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_41051_118662 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_41000_118662 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_118662_118663) (v_1@@18 T@FrameType) (q@@15 T@Field_90385_90386) (w@@18 T@FrameType) (r@@15 T@Field_40731_41001) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_41000_83691 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_41051_83691 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_41000_83691 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_118662_118663) (v_1@@19 T@FrameType) (q@@16 T@Field_90385_90386) (w@@19 T@FrameType) (r@@16 T@Field_90385_90386) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_41000_41000 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_41051_41000 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_41000_41000 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_90385_90386) (v_1@@20 T@FrameType) (q@@17 T@Field_40731_41001) (w@@20 T@FrameType) (r@@17 T@Field_118662_118663) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_83691_118662 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_41000_118662 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_83691_118662 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_90385_90386) (v_1@@21 T@FrameType) (q@@18 T@Field_40731_41001) (w@@21 T@FrameType) (r@@18 T@Field_40731_41001) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_83691_83691 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_41000_83691 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_83691_83691 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_90385_90386) (v_1@@22 T@FrameType) (q@@19 T@Field_40731_41001) (w@@22 T@FrameType) (r@@19 T@Field_90385_90386) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_83691_41000 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_41000_41000 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_83691_41000 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_90385_90386) (v_1@@23 T@FrameType) (q@@20 T@Field_118662_118663) (w@@23 T@FrameType) (r@@20 T@Field_118662_118663) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_41051_118662 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_41000_118662 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_41051_118662 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_90385_90386) (v_1@@24 T@FrameType) (q@@21 T@Field_118662_118663) (w@@24 T@FrameType) (r@@21 T@Field_40731_41001) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_41051_83691 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_41000_83691 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_41051_83691 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_90385_90386) (v_1@@25 T@FrameType) (q@@22 T@Field_118662_118663) (w@@25 T@FrameType) (r@@22 T@Field_90385_90386) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_41051_41000 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_41000_41000 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_41051_41000 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_90385_90386) (v_1@@26 T@FrameType) (q@@23 T@Field_90385_90386) (w@@26 T@FrameType) (r@@23 T@Field_118662_118663) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_41000_118662 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_41000_118662 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_41000_118662 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_90385_90386) (v_1@@27 T@FrameType) (q@@24 T@Field_90385_90386) (w@@27 T@FrameType) (r@@24 T@Field_40731_41001) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_41000_83691 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_41000_83691 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_41000_83691 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_90385_90386) (v_1@@28 T@FrameType) (q@@25 T@Field_90385_90386) (w@@28 T@FrameType) (r@@25 T@Field_90385_90386) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_41000_41000 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_41000_41000 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_41000_41000 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_83631) (Mask@@74 T@PolymorphicMapType_83652) (this@@36 T@Ref) (end_1@@16 T@Ref) ) (!  (=> (and (state Heap@@72 Mask@@74) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@72) null (lseg this@@36 end_1@@16)) this@@36 end_1@@16))) (=> (= this@@36 end_1@@16) (|Seq#Equal_3092| (|contentNodes'| Heap@@72 this@@36 end_1@@16) |Seq#Empty_3211|)))
 :qid |stdinbpl.597:15|
 :skolemid |62|
 :pattern ( (state Heap@@72 Mask@@74) (|contentNodes'| Heap@@72 this@@36 end_1@@16))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3211|))
 :qid |stdinbpl.209:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_7859| s@@16 n@@12) |Seq#Empty_3211|))
 :qid |stdinbpl.385:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7859| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@73 T@PolymorphicMapType_83631) (Mask@@75 T@PolymorphicMapType_83652) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@73 Mask@@75) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@73) null (List this@@37)) this@@37))) (= (|length'| Heap@@73 this@@37) (|Seq#Length_2867| (content Heap@@73 this@@37))))
 :qid |stdinbpl.1346:15|
 :skolemid |95|
 :pattern ( (state Heap@@73 Mask@@75) (|length'| Heap@@73 this@@37))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun PostMask@0 () T@PolymorphicMapType_83652)
(declare-fun this@@38 () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_83631)
(declare-fun Mask@13 () T@PolymorphicMapType_83652)
(declare-fun Mask@12 () T@PolymorphicMapType_83652)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@17 () T@PolymorphicMapType_83631)
(declare-fun Heap@16 () T@PolymorphicMapType_83631)
(declare-fun Heap@15 () T@PolymorphicMapType_83631)
(declare-fun newPMask@3 () T@PolymorphicMapType_84180)
(declare-fun Heap@12 () T@PolymorphicMapType_83631)
(declare-fun Heap@13 () T@PolymorphicMapType_83631)
(declare-fun Heap@14 () T@PolymorphicMapType_83631)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@11 () T@PolymorphicMapType_83652)
(declare-fun Mask@10 () T@PolymorphicMapType_83652)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_40734 (T@Ref) T@FrameType)
(declare-fun Mask@9 () T@PolymorphicMapType_83652)
(declare-fun Heap@8 () T@PolymorphicMapType_83631)
(declare-fun Heap@9 () T@PolymorphicMapType_83631)
(declare-fun Heap@10 () T@PolymorphicMapType_83631)
(declare-fun newPMask@2 () T@PolymorphicMapType_84180)
(declare-fun Heap@11 () T@PolymorphicMapType_83631)
(declare-fun Heap@5 () T@PolymorphicMapType_83631)
(declare-fun Heap@6 () T@PolymorphicMapType_83631)
(declare-fun Heap@7 () T@PolymorphicMapType_83631)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_83652)
(declare-fun FrameFragment_40649 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_2989 (Int) T@FrameType)
(declare-fun Heap@1 () T@PolymorphicMapType_83631)
(declare-fun Heap@2 () T@PolymorphicMapType_83631)
(declare-fun Heap@3 () T@PolymorphicMapType_83631)
(declare-fun newPMask@1 () T@PolymorphicMapType_84180)
(declare-fun Heap@4 () T@PolymorphicMapType_83631)
(declare-fun Mask@7 () T@PolymorphicMapType_83652)
(declare-fun UnfoldingHeap@4 () T@PolymorphicMapType_83631)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_83652)
(declare-fun UnfoldingHeap@3 () T@PolymorphicMapType_83631)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_83652)
(declare-fun UnfoldingHeap@0 () T@PolymorphicMapType_83631)
(declare-fun UnfoldingHeap@1 () T@PolymorphicMapType_83631)
(declare-fun newPMask@0 () T@PolymorphicMapType_84180)
(declare-fun UnfoldingHeap@2 () T@PolymorphicMapType_83631)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_83652)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_83652)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_83652)
(declare-fun Mask@4 () T@PolymorphicMapType_83652)
(declare-fun Mask@6 () T@PolymorphicMapType_83652)
(declare-fun Mask@5 () T@PolymorphicMapType_83652)
(declare-fun Heap@@74 () T@PolymorphicMapType_83631)
(declare-fun Heap@0 () T@PolymorphicMapType_83631)
(declare-fun Mask@0 () T@PolymorphicMapType_83652)
(declare-fun Mask@1 () T@PolymorphicMapType_83652)
(declare-fun Mask@2 () T@PolymorphicMapType_83652)
(declare-fun Mask@3 () T@PolymorphicMapType_83652)
(set-info :boogie-vc-id create)
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
 (=> (= (ControlFlow 0 0) 60) (let ((anon35_Else_correct true))
(let ((anon35_Then_correct  (=> (= (ControlFlow 0 56) (- 0 55)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| PostMask@0) null (List this@@38)))))))
(let ((anon34_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (= PostMask@0 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) (store (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) null (List this@@38) (+ (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) null (List this@@38)) FullPerm)) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 58) 56) anon35_Then_correct) (=> (= (ControlFlow 0 58) 57) anon35_Else_correct))))))
(let ((anon33_correct  (=> (and (= Mask@13 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@12) (store (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@12) null (List freshObj@0) (- (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@12) null (List freshObj@0)) FullPerm)) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@12) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@12))) (= (ControlFlow 0 2) (- 0 1))) (|Seq#Equal_3092| (content Heap@17 freshObj@0) |Seq#Empty_3211|))))
(let ((anon50_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon33_correct)))
(let ((anon50_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@12) null (List freshObj@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@12) null (List freshObj@0))) (=> (= (ControlFlow 0 3) 2) anon33_correct))))))
(let ((anon31_correct  (=> (= Heap@16 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@15) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0) (PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (store (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) freshObj@0 head_3 true) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@15) null (|List#sm| freshObj@0))))) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@15) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@15))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_50 T@Ref) (f_75 T@Field_89709_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50 f_75) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50 f_75)) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@3) o_50 f_75))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@3) o_50 f_75))
)) (forall ((o_50@@0 T@Ref) (f_75@@0 T@Field_83704_83705) ) (!  (=> (or (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@0 f_75@@0) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@0 f_75@@0)) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@3) o_50@@0 f_75@@0))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@3) o_50@@0 f_75@@0))
))) (forall ((o_50@@1 T@Ref) (f_75@@1 T@Field_83691_53) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@1 f_75@@1) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@1 f_75@@1)) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@3) o_50@@1 f_75@@1))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@3) o_50@@1 f_75@@1))
))) (forall ((o_50@@2 T@Ref) (f_75@@2 T@Field_40731_41001) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@2 f_75@@2) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@2 f_75@@2)) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@3) o_50@@2 f_75@@2))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@3) o_50@@2 f_75@@2))
))) (forall ((o_50@@3 T@Ref) (f_75@@3 T@Field_40731_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@3 f_75@@3) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@3 f_75@@3)) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@3) o_50@@3 f_75@@3))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@3) o_50@@3 f_75@@3))
))) (forall ((o_50@@4 T@Ref) (f_75@@4 T@Field_41000_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@4 f_75@@4) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@4 f_75@@4)) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@3) o_50@@4 f_75@@4))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@3) o_50@@4 f_75@@4))
))) (forall ((o_50@@5 T@Ref) (f_75@@5 T@Field_41000_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@5 f_75@@5) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@5 f_75@@5)) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@3) o_50@@5 f_75@@5))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@3) o_50@@5 f_75@@5))
))) (forall ((o_50@@6 T@Ref) (f_75@@6 T@Field_41000_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@6 f_75@@6) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@6 f_75@@6)) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@3) o_50@@6 f_75@@6))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@3) o_50@@6 f_75@@6))
))) (forall ((o_50@@7 T@Ref) (f_75@@7 T@Field_90385_90386) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@7 f_75@@7) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@7 f_75@@7)) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@3) o_50@@7 f_75@@7))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@3) o_50@@7 f_75@@7))
))) (forall ((o_50@@8 T@Ref) (f_75@@8 T@Field_95459_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@8 f_75@@8) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@8 f_75@@8)) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@3) o_50@@8 f_75@@8))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@3) o_50@@8 f_75@@8))
))) (forall ((o_50@@9 T@Ref) (f_75@@9 T@Field_41051_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@9 f_75@@9) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@9 f_75@@9)) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@3) o_50@@9 f_75@@9))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@3) o_50@@9 f_75@@9))
))) (forall ((o_50@@10 T@Ref) (f_75@@10 T@Field_41051_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@10 f_75@@10) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@10 f_75@@10)) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@3) o_50@@10 f_75@@10))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@3) o_50@@10 f_75@@10))
))) (forall ((o_50@@11 T@Ref) (f_75@@11 T@Field_41051_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@11 f_75@@11) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@11 f_75@@11)) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@3) o_50@@11 f_75@@11))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@3) o_50@@11 f_75@@11))
))) (forall ((o_50@@12 T@Ref) (f_75@@12 T@Field_118662_118663) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@12 f_75@@12) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@12 f_75@@12)) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@3) o_50@@12 f_75@@12))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@3) o_50@@12 f_75@@12))
))) (forall ((o_50@@13 T@Ref) (f_75@@13 T@Field_121051_121056) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0))) o_50@@13 f_75@@13) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) freshObj@0 head_3) null))) o_50@@13 f_75@@13)) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@3) o_50@@13 f_75@@13))
 :qid |stdinbpl.2245:27|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@3) o_50@@13 f_75@@13))
))) (= Heap@17 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@16) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@16) null (|List#sm| freshObj@0) newPMask@3) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@16) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@16)))) (and (state Heap@17 Mask@12) (state Heap@17 Mask@12))) (and (=> (= (ControlFlow 0 6) 3) anon50_Then_correct) (=> (= (ControlFlow 0 6) 5) anon50_Else_correct))))))
(let ((anon49_Else_correct  (=> (HasDirectPerm_41051_41052 Mask@12 null (List freshObj@0)) (=> (and (= Heap@15 Heap@12) (= (ControlFlow 0 8) 6)) anon31_correct))))
(let ((anon49_Then_correct  (=> (not (HasDirectPerm_41051_41052 Mask@12 null (List freshObj@0))) (=> (and (and (= Heap@13 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@12) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@12) null (|List#sm| freshObj@0) ZeroPMask) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@12) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@12))) (= Heap@14 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@13) (store (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@13) null (List freshObj@0) freshVersion@1) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@13) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@13)))) (and (= Heap@15 Heap@14) (= (ControlFlow 0 7) 6))) anon31_correct))))
(let ((anon29_correct  (=> (= Mask@11 (PolymorphicMapType_83652 (store (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@10) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null) (- (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@10) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null)) FullPerm)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@10) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@10))) (=> (and (InsidePredicate_41051_41000 (List freshObj@0) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@12) null (List freshObj@0)) (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@12) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null))) (= Mask@12 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@11) (store (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@11) null (List freshObj@0) (+ (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@11) null (List freshObj@0)) FullPerm)) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@11) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@11)))) (=> (and (and (state Heap@12 Mask@12) (state Heap@12 Mask@12)) (and (|List#trigger_41051| Heap@12 (List freshObj@0)) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@12) null (List freshObj@0)) (CombineFrames (FrameFragment_40734 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3)) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@12) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null)))))) (and (=> (= (ControlFlow 0 9) 7) anon49_Then_correct) (=> (= (ControlFlow 0 9) 8) anon49_Else_correct)))))))
(let ((anon48_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon29_correct)))
(let ((anon48_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@10) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null)))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@10) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@12) freshObj@0 head_3) null))) (=> (= (ControlFlow 0 10) 9) anon29_correct))))))
(let ((anon27_correct  (=> (= Mask@10 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@9) (store (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@9) freshObj@0 head_3 (- (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@9) freshObj@0 head_3) FullPerm)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@9) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@9))) (and (=> (= (ControlFlow 0 13) 10) anon48_Then_correct) (=> (= (ControlFlow 0 13) 12) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon27_correct)))
(let ((anon47_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@9) freshObj@0 head_3))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@9) freshObj@0 head_3)) (=> (= (ControlFlow 0 14) 13) anon27_correct))))))
(let ((anon25_correct  (=> (and (state Heap@12 Mask@9) (state Heap@12 Mask@9)) (and (=> (= (ControlFlow 0 17) 14) anon47_Then_correct) (=> (= (ControlFlow 0 17) 16) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null) (=> (and (= Heap@12 Heap@8) (= (ControlFlow 0 19) 17)) anon25_correct))))
(let ((anon46_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null)) (=> (and (= Heap@9 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@8) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null) (PolymorphicMapType_84180 (store (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) data true) (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@8) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@8) freshObj@0 head_3) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@8) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@8))) (= Heap@10 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@9) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null) (PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (store (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) next true) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@9) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@9) freshObj@0 head_3) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@9) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@9)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_43 T@Ref) (f_33 T@Field_89709_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43 f_33) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43 f_33)) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@2) o_43 f_33))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@2) o_43 f_33))
)) (forall ((o_43@@0 T@Ref) (f_33@@0 T@Field_83704_83705) ) (!  (=> (or (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@0 f_33@@0) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@0 f_33@@0)) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@2) o_43@@0 f_33@@0))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@2) o_43@@0 f_33@@0))
))) (forall ((o_43@@1 T@Ref) (f_33@@1 T@Field_83691_53) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@1 f_33@@1) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@1 f_33@@1)) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@2) o_43@@1 f_33@@1))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@2) o_43@@1 f_33@@1))
))) (forall ((o_43@@2 T@Ref) (f_33@@2 T@Field_40731_41001) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@2 f_33@@2) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@2 f_33@@2)) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@2) o_43@@2 f_33@@2))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@2) o_43@@2 f_33@@2))
))) (forall ((o_43@@3 T@Ref) (f_33@@3 T@Field_40731_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@3 f_33@@3) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@3 f_33@@3)) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@2) o_43@@3 f_33@@3))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@2) o_43@@3 f_33@@3))
))) (forall ((o_43@@4 T@Ref) (f_33@@4 T@Field_41000_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@4 f_33@@4) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@4 f_33@@4)) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@2) o_43@@4 f_33@@4))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@2) o_43@@4 f_33@@4))
))) (forall ((o_43@@5 T@Ref) (f_33@@5 T@Field_41000_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@5 f_33@@5) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@5 f_33@@5)) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@2) o_43@@5 f_33@@5))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@2) o_43@@5 f_33@@5))
))) (forall ((o_43@@6 T@Ref) (f_33@@6 T@Field_41000_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@6 f_33@@6) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@6 f_33@@6)) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@2) o_43@@6 f_33@@6))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@2) o_43@@6 f_33@@6))
))) (forall ((o_43@@7 T@Ref) (f_33@@7 T@Field_90385_90386) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@7 f_33@@7) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@7 f_33@@7)) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@2) o_43@@7 f_33@@7))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@2) o_43@@7 f_33@@7))
))) (forall ((o_43@@8 T@Ref) (f_33@@8 T@Field_95459_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@8 f_33@@8) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@8 f_33@@8)) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@2) o_43@@8 f_33@@8))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@2) o_43@@8 f_33@@8))
))) (forall ((o_43@@9 T@Ref) (f_33@@9 T@Field_41051_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@9 f_33@@9) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@9 f_33@@9)) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@2) o_43@@9 f_33@@9))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@2) o_43@@9 f_33@@9))
))) (forall ((o_43@@10 T@Ref) (f_33@@10 T@Field_41051_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@10 f_33@@10) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@10 f_33@@10)) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@2) o_43@@10 f_33@@10))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@2) o_43@@10 f_33@@10))
))) (forall ((o_43@@11 T@Ref) (f_33@@11 T@Field_41051_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@11 f_33@@11) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@11 f_33@@11)) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@2) o_43@@11 f_33@@11))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@2) o_43@@11 f_33@@11))
))) (forall ((o_43@@12 T@Ref) (f_33@@12 T@Field_118662_118663) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@12 f_33@@12) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@12 f_33@@12)) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@2) o_43@@12 f_33@@12))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@2) o_43@@12 f_33@@12))
))) (forall ((o_43@@13 T@Ref) (f_33@@13 T@Field_121051_121056) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null))) o_43@@13 f_33@@13) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) next) null))) o_43@@13 f_33@@13)) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@2) o_43@@13 f_33@@13))
 :qid |stdinbpl.2205:29|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@2) o_43@@13 f_33@@13))
))) (= Heap@11 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@10) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@10) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@10) freshObj@0 head_3) null) newPMask@2) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@10) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 18) 17))) anon25_correct)))))
(let ((anon45_Else_correct  (=> (and (HasDirectPerm_41000_41001 Mask@9 null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null)) (= Heap@8 Heap@5)) (and (=> (= (ControlFlow 0 21) 18) anon46_Then_correct) (=> (= (ControlFlow 0 21) 19) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (and (and (not (HasDirectPerm_41000_41001 Mask@9 null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null))) (= Heap@6 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@5) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@5) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null) ZeroPMask) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@5) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@5)))) (and (= Heap@7 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@6) (store (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@6) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@6) freshObj@0 head_3) null) freshVersion@0) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@6) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@6))) (= Heap@8 Heap@7))) (and (=> (= (ControlFlow 0 20) 18) anon46_Then_correct) (=> (= (ControlFlow 0 20) 19) anon46_Else_correct)))))
(let ((anon21_correct  (=> (and (state Heap@5 Mask@8) (= Mask@9 (PolymorphicMapType_83652 (store (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@8) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null) (+ (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@8) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null)) FullPerm)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@8) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@8)))) (=> (and (and (state Heap@5 Mask@9) (state Heap@5 Mask@9)) (and (|lseg#trigger_41000| Heap@5 (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null)) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@5) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null)) (FrameFragment_40649 (ite (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) null)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) data)) (CombineFrames (FrameFragment_40734 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) next)) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@5) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@5) freshObj@0 head_3) next) null)))) EmptyFrame))))) (and (=> (= (ControlFlow 0 22) 20) anon45_Then_correct) (=> (= (ControlFlow 0 22) 21) anon45_Else_correct))))))
(let ((anon44_Else_correct  (=> (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (=> (and (= Heap@5 Heap@1) (= (ControlFlow 0 24) 22)) anon21_correct))))
(let ((anon44_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (=> (and (= Heap@2 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (PolymorphicMapType_84180 (store (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data true) (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@1))) (= Heap@3 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@2) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null) (PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (store (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) next true) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@2) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@2) freshObj@0 head_3) next) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@2) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@2)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_21 T@Ref) (f_58 T@Field_89709_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21 f_58) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21 f_58)) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@1) o_21 f_58))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@1) o_21 f_58))
)) (forall ((o_21@@0 T@Ref) (f_58@@0 T@Field_83704_83705) ) (!  (=> (or (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@0 f_58@@0) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@0 f_58@@0)) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@1) o_21@@0 f_58@@0))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@1) o_21@@0 f_58@@0))
))) (forall ((o_21@@1 T@Ref) (f_58@@1 T@Field_83691_53) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@1 f_58@@1) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@1 f_58@@1)) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@1) o_21@@1 f_58@@1))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@1) o_21@@1 f_58@@1))
))) (forall ((o_21@@2 T@Ref) (f_58@@2 T@Field_40731_41001) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@2 f_58@@2) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@2 f_58@@2)) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@1) o_21@@2 f_58@@2))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@1) o_21@@2 f_58@@2))
))) (forall ((o_21@@3 T@Ref) (f_58@@3 T@Field_40731_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@3 f_58@@3) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@3 f_58@@3)) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@1) o_21@@3 f_58@@3))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@1) o_21@@3 f_58@@3))
))) (forall ((o_21@@4 T@Ref) (f_58@@4 T@Field_41000_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@4 f_58@@4) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@4 f_58@@4)) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@1) o_21@@4 f_58@@4))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@1) o_21@@4 f_58@@4))
))) (forall ((o_21@@5 T@Ref) (f_58@@5 T@Field_41000_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@5 f_58@@5) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@5 f_58@@5)) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@1) o_21@@5 f_58@@5))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@1) o_21@@5 f_58@@5))
))) (forall ((o_21@@6 T@Ref) (f_58@@6 T@Field_41000_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@6 f_58@@6) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@6 f_58@@6)) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@1) o_21@@6 f_58@@6))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@1) o_21@@6 f_58@@6))
))) (forall ((o_21@@7 T@Ref) (f_58@@7 T@Field_90385_90386) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@7 f_58@@7) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@7 f_58@@7)) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@1) o_21@@7 f_58@@7))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@1) o_21@@7 f_58@@7))
))) (forall ((o_21@@8 T@Ref) (f_58@@8 T@Field_95459_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@8 f_58@@8) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@8 f_58@@8)) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@1) o_21@@8 f_58@@8))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@1) o_21@@8 f_58@@8))
))) (forall ((o_21@@9 T@Ref) (f_58@@9 T@Field_41051_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@9 f_58@@9) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@9 f_58@@9)) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@1) o_21@@9 f_58@@9))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@1) o_21@@9 f_58@@9))
))) (forall ((o_21@@10 T@Ref) (f_58@@10 T@Field_41051_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@10 f_58@@10) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@10 f_58@@10)) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@1) o_21@@10 f_58@@10))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@1) o_21@@10 f_58@@10))
))) (forall ((o_21@@11 T@Ref) (f_58@@11 T@Field_41051_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@11 f_58@@11) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@11 f_58@@11)) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@1) o_21@@11 f_58@@11))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@1) o_21@@11 f_58@@11))
))) (forall ((o_21@@12 T@Ref) (f_58@@12 T@Field_118662_118663) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@12 f_58@@12) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@12 f_58@@12)) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@1) o_21@@12 f_58@@12))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@1) o_21@@12 f_58@@12))
))) (forall ((o_21@@13 T@Ref) (f_58@@13 T@Field_121051_121056) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null))) o_21@@13 f_58@@13) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) next) null))) o_21@@13 f_58@@13)) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@1) o_21@@13 f_58@@13))
 :qid |stdinbpl.2183:31|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@1) o_21@@13 f_58@@13))
))) (= Heap@4 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@3) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@3) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@3) freshObj@0 head_3) next) null) newPMask@1) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@3) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 23) 22))) anon21_correct)))))
(let ((anon43_Else_correct  (=> (and (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (= Mask@8 Mask@7)) (and (=> (= (ControlFlow 0 28) 23) anon44_Then_correct) (=> (= (ControlFlow 0 28) 24) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data))) (=> (<= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data)) (=> (= Mask@8 Mask@7) (and (=> (= (ControlFlow 0 26) 23) anon44_Then_correct) (=> (= (ControlFlow 0 26) 24) anon44_Else_correct))))))))
(let ((anon17_correct  (=> (state UnfoldingHeap@4 UnfoldingMask@4) (and (=> (= (ControlFlow 0 29) 26) anon43_Then_correct) (=> (= (ControlFlow 0 29) 28) anon43_Else_correct)))))
(let ((anon16_correct  (=> (and (and (state UnfoldingHeap@3 UnfoldingMask@3) (= UnfoldingHeap@4 UnfoldingHeap@3)) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 31) 29))) anon17_correct)))
(let ((anon42_Else_correct  (=> (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null) (=> (and (= UnfoldingHeap@3 Heap@1) (= (ControlFlow 0 33) 31)) anon16_correct))))
(let ((anon42_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null)) (=> (and (= UnfoldingHeap@0 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null) (PolymorphicMapType_84180 (store (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) data true) (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@1) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@1))) (= UnfoldingHeap@1 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| UnfoldingHeap@0) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null) (PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (store (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) next true) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@0) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@0) freshObj@0 head_3) next) next) null))))) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| UnfoldingHeap@0) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| UnfoldingHeap@0)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_19 T@Ref) (f_57 T@Field_89709_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19 f_57) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19 f_57)) (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@0) o_19 f_57))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| newPMask@0) o_19 f_57))
)) (forall ((o_19@@0 T@Ref) (f_57@@0 T@Field_83704_83705) ) (!  (=> (or (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@0 f_57@@0) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@0 f_57@@0)) (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@0) o_19@@0 f_57@@0))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| newPMask@0) o_19@@0 f_57@@0))
))) (forall ((o_19@@1 T@Ref) (f_57@@1 T@Field_83691_53) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@1 f_57@@1) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@1 f_57@@1)) (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@0) o_19@@1 f_57@@1))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| newPMask@0) o_19@@1 f_57@@1))
))) (forall ((o_19@@2 T@Ref) (f_57@@2 T@Field_40731_41001) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@2 f_57@@2) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@2 f_57@@2)) (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@0) o_19@@2 f_57@@2))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| newPMask@0) o_19@@2 f_57@@2))
))) (forall ((o_19@@3 T@Ref) (f_57@@3 T@Field_40731_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@3 f_57@@3) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@3 f_57@@3)) (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@0) o_19@@3 f_57@@3))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| newPMask@0) o_19@@3 f_57@@3))
))) (forall ((o_19@@4 T@Ref) (f_57@@4 T@Field_41000_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@4 f_57@@4) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@4 f_57@@4)) (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@0) o_19@@4 f_57@@4))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| newPMask@0) o_19@@4 f_57@@4))
))) (forall ((o_19@@5 T@Ref) (f_57@@5 T@Field_41000_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@5 f_57@@5) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@5 f_57@@5)) (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@0) o_19@@5 f_57@@5))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| newPMask@0) o_19@@5 f_57@@5))
))) (forall ((o_19@@6 T@Ref) (f_57@@6 T@Field_41000_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@6 f_57@@6) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@6 f_57@@6)) (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@0) o_19@@6 f_57@@6))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| newPMask@0) o_19@@6 f_57@@6))
))) (forall ((o_19@@7 T@Ref) (f_57@@7 T@Field_90385_90386) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@7 f_57@@7) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@7 f_57@@7)) (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@0) o_19@@7 f_57@@7))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| newPMask@0) o_19@@7 f_57@@7))
))) (forall ((o_19@@8 T@Ref) (f_57@@8 T@Field_95459_95464) ) (!  (=> (or (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@8 f_57@@8) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@8 f_57@@8)) (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@0) o_19@@8 f_57@@8))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| newPMask@0) o_19@@8 f_57@@8))
))) (forall ((o_19@@9 T@Ref) (f_57@@9 T@Field_41051_2989) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@9 f_57@@9) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@9 f_57@@9)) (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@0) o_19@@9 f_57@@9))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| newPMask@0) o_19@@9 f_57@@9))
))) (forall ((o_19@@10 T@Ref) (f_57@@10 T@Field_41051_40734) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@10 f_57@@10) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@10 f_57@@10)) (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@0) o_19@@10 f_57@@10))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| newPMask@0) o_19@@10 f_57@@10))
))) (forall ((o_19@@11 T@Ref) (f_57@@11 T@Field_41051_3049) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@11 f_57@@11) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@11 f_57@@11)) (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@0) o_19@@11 f_57@@11))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| newPMask@0) o_19@@11 f_57@@11))
))) (forall ((o_19@@12 T@Ref) (f_57@@12 T@Field_118662_118663) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@12 f_57@@12) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@12 f_57@@12)) (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@0) o_19@@12 f_57@@12))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| newPMask@0) o_19@@12 f_57@@12))
))) (forall ((o_19@@13 T@Ref) (f_57@@13 T@Field_121051_121056) ) (!  (=> (or (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null))) o_19@@13 f_57@@13) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) next) null))) o_19@@13 f_57@@13)) (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@0) o_19@@13 f_57@@13))
 :qid |stdinbpl.2163:37|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| newPMask@0) o_19@@13 f_57@@13))
))) (= UnfoldingHeap@2 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| UnfoldingHeap@1) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| UnfoldingHeap@1) null (|lseg#sm| (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| UnfoldingHeap@1) freshObj@0 head_3) next) next) null) newPMask@0) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| UnfoldingHeap@1) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| UnfoldingHeap@1)))) (and (= UnfoldingHeap@3 UnfoldingHeap@2) (= (ControlFlow 0 32) 31))) anon16_correct)))))
(let ((anon41_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (=> (and (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (= UnfoldingMask@1 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| UnfoldingMask@0) (store (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| UnfoldingMask@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data (+ (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| UnfoldingMask@0) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data) FullPerm)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| UnfoldingMask@0) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| UnfoldingMask@0)))) (=> (and (and (and (state Heap@1 UnfoldingMask@1) (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (and (= UnfoldingMask@2 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| UnfoldingMask@1) (store (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| UnfoldingMask@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next (+ (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| UnfoldingMask@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) FullPerm)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| UnfoldingMask@1) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| UnfoldingMask@1))) (state Heap@1 UnfoldingMask@2))) (and (and (= UnfoldingMask@3 (PolymorphicMapType_83652 (store (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| UnfoldingMask@2) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null) (+ (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| UnfoldingMask@2) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null)) FullPerm)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| UnfoldingMask@2) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| UnfoldingMask@2))) (InsidePredicate_41000_41000 (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null)))) (and (state Heap@1 UnfoldingMask@3) (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null)) (<= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) data)))))) (and (=> (= (ControlFlow 0 34) 32) anon42_Then_correct) (=> (= (ControlFlow 0 34) 33) anon42_Else_correct)))))))
(let ((anon41_Else_correct  (=> (and (and (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (= UnfoldingHeap@4 Heap@1)) (and (= UnfoldingMask@4 UnfoldingMask@0) (= (ControlFlow 0 30) 29))) anon17_correct)))
(let ((anon13_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_83652 (store (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@4) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (- (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@4) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) FullPerm)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@4))) (and (=> (= (ControlFlow 0 35) 34) anon41_Then_correct) (=> (= (ControlFlow 0 35) 30) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 38) 35)) anon13_correct)))
(let ((anon40_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@4) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@4) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (=> (= (ControlFlow 0 36) 35) anon13_correct))))))
(let ((anon11_correct  (=> (and (and (= Mask@7 (PolymorphicMapType_83652 (store (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@6) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (- (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@6) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) FullPerm)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@6) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@6))) (InsidePredicate_41000_41000 (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) null) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) null)) (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)))) (and (|lseg#trigger_41000| Heap@1 (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (FrameFragment_40649 (ite (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)) (CombineFrames (FrameFragment_2989 (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) data)) (CombineFrames (FrameFragment_40734 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next)) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@1) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) next) null)))) EmptyFrame))))) (and (=> (= (ControlFlow 0 39) 36) anon40_Then_correct) (=> (= (ControlFlow 0 39) 38) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 42) 39)) anon11_correct)))
(let ((anon39_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@6) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null)))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@6) null (lseg (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) null))) (=> (= (ControlFlow 0 40) 39) anon11_correct))))))
(let ((anon9_correct  (=> (= Mask@6 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@5) (store (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next (- (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next) FullPerm)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@5) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@5))) (and (=> (= (ControlFlow 0 43) 40) anon39_Then_correct) (=> (= (ControlFlow 0 43) 42) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 46) 43)) anon9_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (<= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@5) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) next)) (=> (= (ControlFlow 0 44) 43) anon9_correct))))))
(let ((anon7_correct  (=> (= Mask@5 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@4) (store (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@4) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data (- (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@4) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data) FullPerm)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@4) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@4))) (and (=> (= (ControlFlow 0 47) 44) anon38_Then_correct) (=> (= (ControlFlow 0 47) 46) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 50) 47)) anon7_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (<= FullPerm (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@4) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data))) (=> (<= FullPerm (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@4) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) data)) (=> (= (ControlFlow 0 48) 47) anon7_correct))))))
(let ((anon36_Then_correct  (=> (not (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) null)) (and (=> (= (ControlFlow 0 51) 48) anon37_Then_correct) (=> (= (ControlFlow 0 51) 50) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@1) freshObj@0 head_3) null) (= Mask@8 Mask@4)) (and (=> (= (ControlFlow 0 25) 23) anon44_Then_correct) (=> (= (ControlFlow 0 25) 24) anon44_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@74) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_83631 (store (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@74) freshObj@0 $allocated true) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@74) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@74)))) (and (= Mask@0 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) (store (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) freshObj@0 data (+ (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) freshObj@0 data) FullPerm)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask))) (= Mask@1 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@0) (store (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@0) freshObj@0 next (+ (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@0) freshObj@0 next) FullPerm)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@0) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@0))))) (and (and (= Mask@2 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@1) (store (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@1) freshObj@0 head_3 (+ (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@1) freshObj@0 head_3) FullPerm)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@1) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@1))) (= Mask@3 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@2) (store (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@2) freshObj@0 held (+ (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@2) freshObj@0 held) FullPerm)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@2) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@2)))) (and (= Mask@4 (PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@3) (store (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@3) freshObj@0 changed (+ (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@3) freshObj@0 changed) FullPerm)) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@3) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@3))) (state Heap@0 Mask@4)))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@4) freshObj@0 head_3))) (=> (= FullPerm (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@4) freshObj@0 head_3)) (=> (and (= Heap@1 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@0) (store (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@0) freshObj@0 head_3 null) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@0) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@0))) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (HasDirectPerm_40733_40734 Mask@4 freshObj@0 head_3)) (=> (HasDirectPerm_40733_40734 Mask@4 freshObj@0 head_3) (and (=> (= (ControlFlow 0 52) 51) anon36_Then_correct) (=> (= (ControlFlow 0 52) 25) anon36_Else_correct))))))))))
(let ((anon0_correct  (=> (state Heap@@74 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 59) 58) anon34_Then_correct) (=> (= (ControlFlow 0 59) 52) anon34_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 60) 59) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-sort T@Field_83691_53 0)
(declare-sort T@Field_83704_83705 0)
(declare-sort T@Field_89709_2989 0)
(declare-sort T@Field_90385_90386 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_95459_95464 0)
(declare-sort T@Field_118662_118663 0)
(declare-sort T@Field_121051_121056 0)
(declare-sort T@Field_40731_41001 0)
(declare-sort T@Field_40731_95464 0)
(declare-sort T@Field_41000_2989 0)
(declare-sort T@Field_41000_40734 0)
(declare-sort T@Field_41000_3049 0)
(declare-sort T@Field_41051_2989 0)
(declare-sort T@Field_41051_40734 0)
(declare-sort T@Field_41051_3049 0)
(declare-datatypes ((T@PolymorphicMapType_83652 0)) (((PolymorphicMapType_83652 (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| (Array T@Ref T@Field_90385_90386 Real)) (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_89709_2989 Real)) (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_83704_83705 Real)) (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| (Array T@Ref T@Field_118662_118663 Real)) (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_83691_53 Real)) (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_2989 Real)) (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_40734 Real)) (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_41000_3049 Real)) (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| (Array T@Ref T@Field_95459_95464 Real)) (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| (Array T@Ref T@Field_40731_41001 Real)) (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| (Array T@Ref T@Field_40731_95464 Real)) (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_2989 Real)) (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_40734 Real)) (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| (Array T@Ref T@Field_41051_3049 Real)) (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| (Array T@Ref T@Field_121051_121056 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_84180 0)) (((PolymorphicMapType_84180 (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_89709_2989 Bool)) (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_83704_83705 Bool)) (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (Array T@Ref T@Field_83691_53 Bool)) (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_40731_41001 Bool)) (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (Array T@Ref T@Field_40731_95464 Bool)) (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_2989 Bool)) (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_40734 Bool)) (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (Array T@Ref T@Field_41000_3049 Bool)) (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_90385_90386 Bool)) (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (Array T@Ref T@Field_95459_95464 Bool)) (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_2989 Bool)) (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_40734 Bool)) (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (Array T@Ref T@Field_41051_3049 Bool)) (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (Array T@Ref T@Field_118662_118663 Bool)) (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (Array T@Ref T@Field_121051_121056 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_83631 0)) (((PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| (Array T@Ref T@Field_83691_53 Bool)) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| (Array T@Ref T@Field_83704_83705 T@Ref)) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_89709_2989 Int)) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| (Array T@Ref T@Field_90385_90386 T@FrameType)) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| (Array T@Ref T@Field_95459_95464 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| (Array T@Ref T@Field_118662_118663 T@FrameType)) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| (Array T@Ref T@Field_121051_121056 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| (Array T@Ref T@Field_40731_41001 T@FrameType)) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| (Array T@Ref T@Field_40731_95464 T@PolymorphicMapType_84180)) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_2989 Int)) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_40734 T@Ref)) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| (Array T@Ref T@Field_41000_3049 Bool)) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_2989 Int)) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_40734 T@Ref)) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| (Array T@Ref T@Field_41051_3049 Bool)) ) ) ))
(declare-fun $allocated () T@Field_83691_53)
(declare-fun data () T@Field_89709_2989)
(declare-fun next () T@Field_83704_83705)
(declare-fun head_3 () T@Field_83704_83705)
(declare-fun held () T@Field_89709_2989)
(declare-fun changed () T@Field_83691_53)
(declare-fun state (T@PolymorphicMapType_83631 T@PolymorphicMapType_83652) Bool)
(declare-fun lengthNodes (T@PolymorphicMapType_83631 T@Ref T@Ref) Int)
(declare-fun |lengthNodes#triggerStateless| (T@Ref T@Ref) Int)
(declare-fun |lseg#trigger_41000| (T@PolymorphicMapType_83631 T@Field_90385_90386) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_90385_90386)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lengthNodes'| (T@PolymorphicMapType_83631 T@Ref T@Ref) Int)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_7859| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_83652) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_84180)
(declare-fun |contentNodes'| (T@PolymorphicMapType_83631 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun null () T@Ref)
(declare-fun |lengthNodes#frame| (T@FrameType T@Ref T@Ref) Int)
(declare-fun IsPredicateField_41000_41001 (T@Field_90385_90386) Bool)
(declare-fun dummyFunction_90009 (T@Seq_2867) Bool)
(declare-fun dummyFunction_6578 (Int) Bool)
(declare-fun |lseg#everUsed_41000| (T@Field_90385_90386) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3211| () T@Seq_2867)
(declare-fun List (T@Ref) T@Field_118662_118663)
(declare-fun IsPredicateField_41051_41052 (T@Field_118662_118663) Bool)
(declare-fun |content'| (T@PolymorphicMapType_83631 T@Ref) T@Seq_2867)
(declare-fun |content#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |length'| (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun |length#triggerStateless| (T@Ref) Int)
(declare-fun |peek'| (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun |peek#triggerStateless| (T@Ref) Int)
(declare-fun |List#trigger_41051| (T@PolymorphicMapType_83631 T@Field_118662_118663) Bool)
(declare-fun |List#everUsed_41051| (T@Field_118662_118663) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_7859| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |peek#trigger| (T@FrameType T@Ref) Bool)
(declare-fun length_1 (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun content (T@PolymorphicMapType_83631 T@Ref) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun peek (T@PolymorphicMapType_83631 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_83631 T@PolymorphicMapType_83631 T@PolymorphicMapType_83652) Bool)
(declare-fun PredicateMaskField_41051 (T@Field_118662_118663) T@Field_121051_121056)
(declare-fun HasDirectPerm_41051_41052 (T@PolymorphicMapType_83652 T@Ref T@Field_118662_118663) Bool)
(declare-fun PredicateMaskField_41000 (T@Field_90385_90386) T@Field_95459_95464)
(declare-fun HasDirectPerm_41000_41001 (T@PolymorphicMapType_83652 T@Ref T@Field_90385_90386) Bool)
(declare-fun IsPredicateField_40731_336373 (T@Field_40731_41001) Bool)
(declare-fun PredicateMaskField_40731 (T@Field_40731_41001) T@Field_40731_95464)
(declare-fun HasDirectPerm_40731_41001 (T@PolymorphicMapType_83652 T@Ref T@Field_40731_41001) Bool)
(declare-fun IsWandField_41051_342054 (T@Field_118662_118663) Bool)
(declare-fun WandMaskField_41051 (T@Field_118662_118663) T@Field_121051_121056)
(declare-fun IsWandField_41000_341697 (T@Field_90385_90386) Bool)
(declare-fun WandMaskField_41000 (T@Field_90385_90386) T@Field_95459_95464)
(declare-fun IsWandField_40731_341340 (T@Field_40731_41001) Bool)
(declare-fun WandMaskField_40731 (T@Field_40731_41001) T@Field_40731_95464)
(declare-fun |Seq#Singleton_2989| (Int) T@Seq_2867)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_95459_95464)
(declare-fun |List#sm| (T@Ref) T@Field_121051_121056)
(declare-fun |Seq#Append_2989| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |lengthNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun contentNodes (T@PolymorphicMapType_83631 T@Ref T@Ref) T@Seq_2867)
(declare-fun |contentNodes#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_83631)
(declare-fun ZeroMask () T@PolymorphicMapType_83652)
(declare-fun InsidePredicate_83691_83691 (T@Field_40731_41001 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_118662 (T@Field_118662_118663 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_41000 (T@Field_90385_90386 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun IsPredicateField_40731_2989 (T@Field_89709_2989) Bool)
(declare-fun IsWandField_40731_2989 (T@Field_89709_2989) Bool)
(declare-fun IsPredicateField_40733_40734 (T@Field_83704_83705) Bool)
(declare-fun IsWandField_40733_40734 (T@Field_83704_83705) Bool)
(declare-fun IsPredicateField_40741_3049 (T@Field_83691_53) Bool)
(declare-fun IsWandField_40741_3049 (T@Field_83691_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_41051_352317 (T@Field_121051_121056) Bool)
(declare-fun IsWandField_41051_352333 (T@Field_121051_121056) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_41051_3049 (T@Field_41051_3049) Bool)
(declare-fun IsWandField_41051_3049 (T@Field_41051_3049) Bool)
(declare-fun IsPredicateField_41051_40734 (T@Field_41051_40734) Bool)
(declare-fun IsWandField_41051_40734 (T@Field_41051_40734) Bool)
(declare-fun IsPredicateField_41051_2989 (T@Field_41051_2989) Bool)
(declare-fun IsWandField_41051_2989 (T@Field_41051_2989) Bool)
(declare-fun IsPredicateField_40731_351486 (T@Field_40731_95464) Bool)
(declare-fun IsWandField_40731_351502 (T@Field_40731_95464) Bool)
(declare-fun IsPredicateField_41000_350697 (T@Field_95459_95464) Bool)
(declare-fun IsWandField_41000_350713 (T@Field_95459_95464) Bool)
(declare-fun IsPredicateField_41000_3049 (T@Field_41000_3049) Bool)
(declare-fun IsWandField_41000_3049 (T@Field_41000_3049) Bool)
(declare-fun IsPredicateField_41000_40734 (T@Field_41000_40734) Bool)
(declare-fun IsWandField_41000_40734 (T@Field_41000_40734) Bool)
(declare-fun IsPredicateField_41000_2989 (T@Field_41000_2989) Bool)
(declare-fun IsWandField_41000_2989 (T@Field_41000_2989) Bool)
(declare-fun HasDirectPerm_41051_336128 (T@PolymorphicMapType_83652 T@Ref T@Field_121051_121056) Bool)
(declare-fun HasDirectPerm_41051_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_3049) Bool)
(declare-fun HasDirectPerm_41051_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_40734) Bool)
(declare-fun HasDirectPerm_41051_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_41051_2989) Bool)
(declare-fun HasDirectPerm_41000_335030 (T@PolymorphicMapType_83652 T@Ref T@Field_95459_95464) Bool)
(declare-fun HasDirectPerm_41000_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_3049) Bool)
(declare-fun HasDirectPerm_41000_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_40734) Bool)
(declare-fun HasDirectPerm_41000_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_41000_2989) Bool)
(declare-fun HasDirectPerm_40731_333889 (T@PolymorphicMapType_83652 T@Ref T@Field_40731_95464) Bool)
(declare-fun HasDirectPerm_40741_3049 (T@PolymorphicMapType_83652 T@Ref T@Field_83691_53) Bool)
(declare-fun HasDirectPerm_40733_40734 (T@PolymorphicMapType_83652 T@Ref T@Field_83704_83705) Bool)
(declare-fun HasDirectPerm_40731_2989 (T@PolymorphicMapType_83652 T@Ref T@Field_89709_2989) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_83652 T@PolymorphicMapType_83652 T@PolymorphicMapType_83652) Bool)
(declare-fun |content#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#Equal_3092| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_41000_41001 (T@Field_90385_90386) Int)
(declare-fun |content#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun |length#frame| (T@FrameType T@Ref) Int)
(declare-fun |peek#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_41051_41052 (T@Field_118662_118663) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_83691_118662 (T@Field_40731_41001 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_83691_41000 (T@Field_40731_41001 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_83691 (T@Field_118662_118663 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun InsidePredicate_41051_41000 (T@Field_118662_118663 T@FrameType T@Field_90385_90386 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_118662 (T@Field_90385_90386 T@FrameType T@Field_118662_118663 T@FrameType) Bool)
(declare-fun InsidePredicate_41000_83691 (T@Field_90385_90386 T@FrameType T@Field_40731_41001 T@FrameType) Bool)
(declare-fun |length#trigger| (T@FrameType T@Ref) Bool)
(assert (and (distinct $allocated changed)(distinct data held)(distinct next head_3))
)
(assert (forall ((Heap T@PolymorphicMapType_83631) (Mask T@PolymorphicMapType_83652) (this T@Ref) (end_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 3)) (= (lengthNodes Heap this end_1) (ite (= this end_1) 0 (+ 1 (|lengthNodes'| Heap (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap) this next) end_1)))))
 :qid |stdinbpl.960:15|
 :skolemid |77|
 :pattern ( (state Heap Mask) (lengthNodes Heap this end_1))
 :pattern ( (state Heap Mask) (|lengthNodes#triggerStateless| this end_1) (|lseg#trigger_41000| Heap (lseg this end_1)))
)))
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_7859| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.280:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_7859| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_7859| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_83631) (Heap1 T@PolymorphicMapType_83631) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_83631) (Mask@@0 T@PolymorphicMapType_83652) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_83631) (Heap1@@0 T@PolymorphicMapType_83631) (Heap2 T@PolymorphicMapType_83631) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_121051_121056) ) (!  (not (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_118662_118663) ) (!  (not (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_41051_3049) ) (!  (not (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_41051_40734) ) (!  (not (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_41051_2989) ) (!  (not (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_95459_95464) ) (!  (not (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_90385_90386) ) (!  (not (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_41000_3049) ) (!  (not (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_41000_40734) ) (!  (not (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41000_2989) ) (!  (not (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_40731_95464) ) (!  (not (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_40731_41001) ) (!  (not (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_83691_53) ) (!  (not (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_83704_83705) ) (!  (not (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_89709_2989) ) (!  (not (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_83631) (Mask@@1 T@PolymorphicMapType_83652) (this@@0 T@Ref) (end_1@@0 T@Ref) ) (!  (=> (state Heap@@1 Mask@@1) (= (|contentNodes'| Heap@@1 this@@0 end_1@@0) (|contentNodes#frame| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@1) null (lseg this@@0 end_1@@0)) this@@0 end_1@@0)))
 :qid |stdinbpl.591:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes'| Heap@@1 this@@0 end_1@@0))
 :pattern ( (state Heap@@1 Mask@@1) (|contentNodes#triggerStateless| this@@0 end_1@@0) (|lseg#trigger_41000| Heap@@1 (lseg this@@0 end_1@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_83631) (Mask@@2 T@PolymorphicMapType_83652) (this@@1 T@Ref) (end_1@@1 T@Ref) ) (!  (=> (state Heap@@2 Mask@@2) (= (|lengthNodes'| Heap@@2 this@@1 end_1@@1) (|lengthNodes#frame| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@2) null (lseg this@@1 end_1@@1)) this@@1 end_1@@1)))
 :qid |stdinbpl.967:15|
 :skolemid |78|
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes'| Heap@@2 this@@1 end_1@@1))
 :pattern ( (state Heap@@2 Mask@@2) (|lengthNodes#triggerStateless| this@@1 end_1@@1) (|lseg#trigger_41000| Heap@@2 (lseg this@@1 end_1@@1)))
)))
(assert (forall ((this@@2 T@Ref) (end_1@@2 T@Ref) ) (! (IsPredicateField_41000_41001 (lseg this@@2 end_1@@2))
 :qid |stdinbpl.1734:15|
 :skolemid |108|
 :pattern ( (lseg this@@2 end_1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_83631) (this@@3 T@Ref) (end_1@@3 T@Ref) ) (! (dummyFunction_90009 (|contentNodes#triggerStateless| this@@3 end_1@@3))
 :qid |stdinbpl.578:15|
 :skolemid |59|
 :pattern ( (|contentNodes'| Heap@@3 this@@3 end_1@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_83631) (this@@4 T@Ref) (end_1@@4 T@Ref) ) (! (dummyFunction_6578 (|lengthNodes#triggerStateless| this@@4 end_1@@4))
 :qid |stdinbpl.954:15|
 :skolemid |76|
 :pattern ( (|lengthNodes'| Heap@@4 this@@4 end_1@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_83631) (this@@5 T@Ref) (end_1@@5 T@Ref) ) (! (|lseg#everUsed_41000| (lseg this@@5 end_1@@5))
 :qid |stdinbpl.1753:15|
 :skolemid |112|
 :pattern ( (|lseg#trigger_41000| Heap@@5 (lseg this@@5 end_1@@5)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_7859| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.301:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_7859| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3211|) 0))
(assert (forall ((this@@6 T@Ref) ) (! (IsPredicateField_41051_41052 (List this@@6))
 :qid |stdinbpl.1963:15|
 :skolemid |118|
 :pattern ( (List this@@6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_83631) (this@@7 T@Ref) ) (! (dummyFunction_90009 (|content#triggerStateless| this@@7))
 :qid |stdinbpl.1170:15|
 :skolemid |84|
 :pattern ( (|content'| Heap@@6 this@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_83631) (this@@8 T@Ref) ) (! (dummyFunction_6578 (|length#triggerStateless| this@@8))
 :qid |stdinbpl.1327:15|
 :skolemid |92|
 :pattern ( (|length'| Heap@@7 this@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_83631) (this@@9 T@Ref) ) (! (dummyFunction_6578 (|peek#triggerStateless| this@@9))
 :qid |stdinbpl.1471:15|
 :skolemid |98|
 :pattern ( (|peek'| Heap@@8 this@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_83631) (this@@10 T@Ref) ) (! (|List#everUsed_41051| (List this@@10))
 :qid |stdinbpl.1982:15|
 :skolemid |122|
 :pattern ( (|List#trigger_41051| Heap@@9 (List this@@10)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.256:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)) 0)))
 :qid |stdinbpl.267:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_7859| s@@2 n@@2)))
 :pattern ( (|Seq#Take_7859| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.541:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_83631) (Mask@@3 T@PolymorphicMapType_83652) (this@@11 T@Ref) ) (!  (=> (and (state Heap@@10 Mask@@3) (or (< AssumeFunctionsAbove 0) (|peek#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@10) null (List this@@11)) this@@11))) (=> (< 0 (length_1 Heap@@10 this@@11)) (= (|peek'| Heap@@10 this@@11) (|Seq#Index_2867| (content Heap@@10 this@@11) 0))))
 :qid |stdinbpl.1490:15|
 :skolemid |101|
 :pattern ( (state Heap@@10 Mask@@3) (|peek'| Heap@@10 this@@11))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.399:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_83631) (this@@12 T@Ref) ) (!  (and (= (content Heap@@11 this@@12) (|content'| Heap@@11 this@@12)) (dummyFunction_90009 (|content#triggerStateless| this@@12)))
 :qid |stdinbpl.1166:15|
 :skolemid |83|
 :pattern ( (content Heap@@11 this@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_83631) (this@@13 T@Ref) ) (!  (and (= (length_1 Heap@@12 this@@13) (|length'| Heap@@12 this@@13)) (dummyFunction_6578 (|length#triggerStateless| this@@13)))
 :qid |stdinbpl.1323:15|
 :skolemid |91|
 :pattern ( (length_1 Heap@@12 this@@13))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_83631) (this@@14 T@Ref) ) (!  (and (= (peek Heap@@13 this@@14) (|peek'| Heap@@13 this@@14)) (dummyFunction_6578 (|peek#triggerStateless| this@@14)))
 :qid |stdinbpl.1467:15|
 :skolemid |97|
 :pattern ( (peek Heap@@13 this@@14))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_7859| s@@4 n@@3) s@@4))
 :qid |stdinbpl.383:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7859| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.236:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.234:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_83631) (ExhaleHeap T@PolymorphicMapType_83631) (Mask@@4 T@PolymorphicMapType_83652) (pm_f_50 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_41051_41052 Mask@@4 null pm_f_50) (IsPredicateField_41051_41052 pm_f_50)) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@14) null (PredicateMaskField_41051 pm_f_50)) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap) null (PredicateMaskField_41051 pm_f_50)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap Mask@@4) (IsPredicateField_41051_41052 pm_f_50) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap) null (PredicateMaskField_41051 pm_f_50)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_83631) (ExhaleHeap@@0 T@PolymorphicMapType_83631) (Mask@@5 T@PolymorphicMapType_83652) (pm_f_50@@0 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_41000_41001 Mask@@5 null pm_f_50@@0) (IsPredicateField_41000_41001 pm_f_50@@0)) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@15) null (PredicateMaskField_41000 pm_f_50@@0)) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@0) null (PredicateMaskField_41000 pm_f_50@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@0 Mask@@5) (IsPredicateField_41000_41001 pm_f_50@@0) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@0) null (PredicateMaskField_41000 pm_f_50@@0)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_83631) (ExhaleHeap@@1 T@PolymorphicMapType_83631) (Mask@@6 T@PolymorphicMapType_83652) (pm_f_50@@1 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_40731_41001 Mask@@6 null pm_f_50@@1) (IsPredicateField_40731_336373 pm_f_50@@1)) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@16) null (PredicateMaskField_40731 pm_f_50@@1)) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@1) null (PredicateMaskField_40731 pm_f_50@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@6) (IsPredicateField_40731_336373 pm_f_50@@1) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@1) null (PredicateMaskField_40731 pm_f_50@@1)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_83631) (ExhaleHeap@@2 T@PolymorphicMapType_83631) (Mask@@7 T@PolymorphicMapType_83652) (pm_f_50@@2 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_41051_41052 Mask@@7 null pm_f_50@@2) (IsWandField_41051_342054 pm_f_50@@2)) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@17) null (WandMaskField_41051 pm_f_50@@2)) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@2) null (WandMaskField_41051 pm_f_50@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@7) (IsWandField_41051_342054 pm_f_50@@2) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@2) null (WandMaskField_41051 pm_f_50@@2)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_83631) (ExhaleHeap@@3 T@PolymorphicMapType_83631) (Mask@@8 T@PolymorphicMapType_83652) (pm_f_50@@3 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (=> (and (HasDirectPerm_41000_41001 Mask@@8 null pm_f_50@@3) (IsWandField_41000_341697 pm_f_50@@3)) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@18) null (WandMaskField_41000 pm_f_50@@3)) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@3) null (WandMaskField_41000 pm_f_50@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@8) (IsWandField_41000_341697 pm_f_50@@3) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@3) null (WandMaskField_41000 pm_f_50@@3)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_83631) (ExhaleHeap@@4 T@PolymorphicMapType_83631) (Mask@@9 T@PolymorphicMapType_83652) (pm_f_50@@4 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (=> (and (HasDirectPerm_40731_41001 Mask@@9 null pm_f_50@@4) (IsWandField_40731_341340 pm_f_50@@4)) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@19) null (WandMaskField_40731 pm_f_50@@4)) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@4) null (WandMaskField_40731 pm_f_50@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@9) (IsWandField_40731_341340 pm_f_50@@4) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@4) null (WandMaskField_40731 pm_f_50@@4)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.524:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_2989| x@@0) y))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_83631) (Mask@@10 T@PolymorphicMapType_83652) (this@@15 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@10) (< AssumeFunctionsAbove 0)) (=> (< 0 (length_1 Heap@@20 this@@15)) (= (peek Heap@@20 this@@15) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@20) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@20) this@@15 head_3) data))))
 :qid |stdinbpl.1477:15|
 :skolemid |99|
 :pattern ( (state Heap@@20 Mask@@10) (peek Heap@@20 this@@15))
 :pattern ( (state Heap@@20 Mask@@10) (|peek#triggerStateless| this@@15) (|List#trigger_41051| Heap@@20 (List this@@15)))
)))
(assert (forall ((this@@16 T@Ref) (end_1@@6 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@16 end_1@@6) (lseg this2 end2)) (and (= this@@16 this2) (= end_1@@6 end2)))
 :qid |stdinbpl.1744:15|
 :skolemid |110|
 :pattern ( (lseg this@@16 end_1@@6) (lseg this2 end2))
)))
(assert (forall ((this@@17 T@Ref) (end_1@@7 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@17 end_1@@7) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@17 this2@@0) (= end_1@@7 end2@@0)))
 :qid |stdinbpl.1748:15|
 :skolemid |111|
 :pattern ( (|lseg#sm| this@@17 end_1@@7) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_7859| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_7859| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_7859| s@@5 n@@4))
)))
(assert (forall ((this@@18 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (List this@@18) (List this2@@1)) (= this@@18 this2@@1))
 :qid |stdinbpl.1973:15|
 :skolemid |120|
 :pattern ( (List this@@18) (List this2@@1))
)))
(assert (forall ((this@@19 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|List#sm| this@@19) (|List#sm| this2@@2)) (= this@@19 this2@@2))
 :qid |stdinbpl.1977:15|
 :skolemid |121|
 :pattern ( (|List#sm| this@@19) (|List#sm| this2@@2))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_2989| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_7859| (|Seq#Append_2989| s@@6 t) n@@5) (|Seq#Append_2989| s@@6 (|Seq#Take_7859| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.360:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7859| (|Seq#Append_2989| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_83631) (Mask@@11 T@PolymorphicMapType_83652) (this@@20 T@Ref) (end_1@@8 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@11) (or (< AssumeFunctionsAbove 3) (|lengthNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@21) null (lseg this@@20 end_1@@8)) this@@20 end_1@@8))) (= (|lengthNodes'| Heap@@21 this@@20 end_1@@8) (|Seq#Length_2867| (contentNodes Heap@@21 this@@20 end_1@@8))))
 :qid |stdinbpl.973:15|
 :skolemid |79|
 :pattern ( (state Heap@@21 Mask@@11) (|lengthNodes'| Heap@@21 this@@20 end_1@@8))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_83631) (Mask@@12 T@PolymorphicMapType_83652) (this@@21 T@Ref) (end_1@@9 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@12) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@22) null (lseg this@@21 end_1@@9)) this@@21 end_1@@9))) (forall ((i@@2 Int) (j@@3 Int) ) (!  (=> (and (<= 0 i@@2) (and (< i@@2 j@@3) (< j@@3 (|Seq#Length_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9))))) (<= (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) j@@3)))
 :qid |stdinbpl.607:131|
 :skolemid |64|
 :pattern ( (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) i@@2) (|Seq#Index_2867| (|contentNodes'| Heap@@22 this@@21 end_1@@9) j@@3))
)))
 :qid |stdinbpl.605:15|
 :skolemid |65|
 :pattern ( (state Heap@@22 Mask@@12) (|contentNodes'| Heap@@22 this@@21 end_1@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_83631) (ExhaleHeap@@5 T@PolymorphicMapType_83631) (Mask@@13 T@PolymorphicMapType_83652) (o_142 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@13) (=> (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@23) o_142 $allocated) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@5) o_142 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@5 Mask@@13) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@5) o_142 $allocated))
)))
(assert (forall ((p T@Field_40731_41001) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_83691_83691 p v_1 p w))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_83691_83691 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_118662_118663) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_41051_118662 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41051_118662 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_90385_90386) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_41000_41000 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.178:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_41000_41000 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3211|)) (not (= s1 |Seq#Empty_3211|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_2989| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.247:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_40731_2989 data)))
(assert  (not (IsWandField_40731_2989 data)))
(assert  (not (IsPredicateField_40733_40734 next)))
(assert  (not (IsWandField_40733_40734 next)))
(assert  (not (IsPredicateField_40733_40734 head_3)))
(assert  (not (IsWandField_40733_40734 head_3)))
(assert  (not (IsPredicateField_40731_2989 held)))
(assert  (not (IsWandField_40731_2989 held)))
(assert  (not (IsPredicateField_40741_3049 changed)))
(assert  (not (IsWandField_40741_3049 changed)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_83631) (ExhaleHeap@@6 T@PolymorphicMapType_83631) (Mask@@14 T@PolymorphicMapType_83652) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@14) (succHeap Heap@@24 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@6 Mask@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_83652) (o_2@@14 T@Ref) (f_4@@14 T@Field_121051_121056) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_41051_352317 f_4@@14))) (not (IsWandField_41051_352333 f_4@@14))) (<= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_83652) (o_2@@15 T@Ref) (f_4@@15 T@Field_41051_3049) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_41051_3049 f_4@@15))) (not (IsWandField_41051_3049 f_4@@15))) (<= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_83652) (o_2@@16 T@Ref) (f_4@@16 T@Field_41051_40734) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_41051_40734 f_4@@16))) (not (IsWandField_41051_40734 f_4@@16))) (<= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_83652) (o_2@@17 T@Ref) (f_4@@17 T@Field_41051_2989) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_41051_2989 f_4@@17))) (not (IsWandField_41051_2989 f_4@@17))) (<= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_83652) (o_2@@18 T@Ref) (f_4@@18 T@Field_118662_118663) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_41051_41052 f_4@@18))) (not (IsWandField_41051_342054 f_4@@18))) (<= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_83652) (o_2@@19 T@Ref) (f_4@@19 T@Field_40731_95464) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_40731_351486 f_4@@19))) (not (IsWandField_40731_351502 f_4@@19))) (<= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_83652) (o_2@@20 T@Ref) (f_4@@20 T@Field_83691_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_40741_3049 f_4@@20))) (not (IsWandField_40741_3049 f_4@@20))) (<= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_83652) (o_2@@21 T@Ref) (f_4@@21 T@Field_83704_83705) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_40733_40734 f_4@@21))) (not (IsWandField_40733_40734 f_4@@21))) (<= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_83652) (o_2@@22 T@Ref) (f_4@@22 T@Field_89709_2989) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_40731_2989 f_4@@22))) (not (IsWandField_40731_2989 f_4@@22))) (<= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_83652) (o_2@@23 T@Ref) (f_4@@23 T@Field_40731_41001) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_40731_336373 f_4@@23))) (not (IsWandField_40731_341340 f_4@@23))) (<= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_83652) (o_2@@24 T@Ref) (f_4@@24 T@Field_95459_95464) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_41000_350697 f_4@@24))) (not (IsWandField_41000_350713 f_4@@24))) (<= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_83652) (o_2@@25 T@Ref) (f_4@@25 T@Field_41000_3049) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_41000_3049 f_4@@25))) (not (IsWandField_41000_3049 f_4@@25))) (<= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_83652) (o_2@@26 T@Ref) (f_4@@26 T@Field_41000_40734) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_41000_40734 f_4@@26))) (not (IsWandField_41000_40734 f_4@@26))) (<= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_83652) (o_2@@27 T@Ref) (f_4@@27 T@Field_41000_2989) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_41000_2989 f_4@@27))) (not (IsWandField_41000_2989 f_4@@27))) (<= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_83652) (o_2@@28 T@Ref) (f_4@@28 T@Field_90385_90386) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_41000_41001 f_4@@28))) (not (IsWandField_41000_341697 f_4@@28))) (<= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_83652) (o_2@@29 T@Ref) (f_4@@29 T@Field_121051_121056) ) (! (= (HasDirectPerm_41051_336128 Mask@@30 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| Mask@@30) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_336128 Mask@@30 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_83652) (o_2@@30 T@Ref) (f_4@@30 T@Field_41051_3049) ) (! (= (HasDirectPerm_41051_3049 Mask@@31 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| Mask@@31) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_3049 Mask@@31 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_83652) (o_2@@31 T@Ref) (f_4@@31 T@Field_118662_118663) ) (! (= (HasDirectPerm_41051_41052 Mask@@32 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| Mask@@32) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_41052 Mask@@32 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_83652) (o_2@@32 T@Ref) (f_4@@32 T@Field_41051_40734) ) (! (= (HasDirectPerm_41051_40734 Mask@@33 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| Mask@@33) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_40734 Mask@@33 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_83652) (o_2@@33 T@Ref) (f_4@@33 T@Field_41051_2989) ) (! (= (HasDirectPerm_41051_2989 Mask@@34 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| Mask@@34) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41051_2989 Mask@@34 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_83652) (o_2@@34 T@Ref) (f_4@@34 T@Field_95459_95464) ) (! (= (HasDirectPerm_41000_335030 Mask@@35 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| Mask@@35) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_335030 Mask@@35 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_83652) (o_2@@35 T@Ref) (f_4@@35 T@Field_41000_3049) ) (! (= (HasDirectPerm_41000_3049 Mask@@36 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| Mask@@36) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_3049 Mask@@36 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_83652) (o_2@@36 T@Ref) (f_4@@36 T@Field_90385_90386) ) (! (= (HasDirectPerm_41000_41001 Mask@@37 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| Mask@@37) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_41001 Mask@@37 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_83652) (o_2@@37 T@Ref) (f_4@@37 T@Field_41000_40734) ) (! (= (HasDirectPerm_41000_40734 Mask@@38 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| Mask@@38) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_40734 Mask@@38 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_83652) (o_2@@38 T@Ref) (f_4@@38 T@Field_41000_2989) ) (! (= (HasDirectPerm_41000_2989 Mask@@39 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| Mask@@39) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_41000_2989 Mask@@39 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_83652) (o_2@@39 T@Ref) (f_4@@39 T@Field_40731_95464) ) (! (= (HasDirectPerm_40731_333889 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_333889 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_83652) (o_2@@40 T@Ref) (f_4@@40 T@Field_83691_53) ) (! (= (HasDirectPerm_40741_3049 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40741_3049 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_83652) (o_2@@41 T@Ref) (f_4@@41 T@Field_40731_41001) ) (! (= (HasDirectPerm_40731_41001 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_41001 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_83652) (o_2@@42 T@Ref) (f_4@@42 T@Field_83704_83705) ) (! (= (HasDirectPerm_40733_40734 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40733_40734 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_83652) (o_2@@43 T@Ref) (f_4@@43 T@Field_89709_2989) ) (! (= (HasDirectPerm_40731_2989 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_40731_2989 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.166:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@4) (+ q@min@@0 j@@4)))
 :qid |stdinbpl.539:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_83631) (ExhaleHeap@@7 T@PolymorphicMapType_83631) (Mask@@45 T@PolymorphicMapType_83652) (o_142@@0 T@Ref) (f_125 T@Field_121051_121056) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@45) (=> (HasDirectPerm_41051_336128 Mask@@45 o_142@@0 f_125) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@25) o_142@@0 f_125) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@7) o_142@@0 f_125))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@7 Mask@@45) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@7) o_142@@0 f_125))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_83631) (ExhaleHeap@@8 T@PolymorphicMapType_83631) (Mask@@46 T@PolymorphicMapType_83652) (o_142@@1 T@Ref) (f_125@@0 T@Field_41051_3049) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@46) (=> (HasDirectPerm_41051_3049 Mask@@46 o_142@@1 f_125@@0) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@26) o_142@@1 f_125@@0) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@8) o_142@@1 f_125@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@8 Mask@@46) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@8) o_142@@1 f_125@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_83631) (ExhaleHeap@@9 T@PolymorphicMapType_83631) (Mask@@47 T@PolymorphicMapType_83652) (o_142@@2 T@Ref) (f_125@@1 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@47) (=> (HasDirectPerm_41051_41052 Mask@@47 o_142@@2 f_125@@1) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@27) o_142@@2 f_125@@1) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@9) o_142@@2 f_125@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@9 Mask@@47) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@9) o_142@@2 f_125@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_83631) (ExhaleHeap@@10 T@PolymorphicMapType_83631) (Mask@@48 T@PolymorphicMapType_83652) (o_142@@3 T@Ref) (f_125@@2 T@Field_41051_40734) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@48) (=> (HasDirectPerm_41051_40734 Mask@@48 o_142@@3 f_125@@2) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@28) o_142@@3 f_125@@2) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@10) o_142@@3 f_125@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@10 Mask@@48) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@10) o_142@@3 f_125@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_83631) (ExhaleHeap@@11 T@PolymorphicMapType_83631) (Mask@@49 T@PolymorphicMapType_83652) (o_142@@4 T@Ref) (f_125@@3 T@Field_41051_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@49) (=> (HasDirectPerm_41051_2989 Mask@@49 o_142@@4 f_125@@3) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@29) o_142@@4 f_125@@3) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@11) o_142@@4 f_125@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@11 Mask@@49) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@11) o_142@@4 f_125@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_83631) (ExhaleHeap@@12 T@PolymorphicMapType_83631) (Mask@@50 T@PolymorphicMapType_83652) (o_142@@5 T@Ref) (f_125@@4 T@Field_95459_95464) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@12 Mask@@50) (=> (HasDirectPerm_41000_335030 Mask@@50 o_142@@5 f_125@@4) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@30) o_142@@5 f_125@@4) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@12) o_142@@5 f_125@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@12 Mask@@50) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@12) o_142@@5 f_125@@4))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_83631) (ExhaleHeap@@13 T@PolymorphicMapType_83631) (Mask@@51 T@PolymorphicMapType_83652) (o_142@@6 T@Ref) (f_125@@5 T@Field_41000_3049) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@13 Mask@@51) (=> (HasDirectPerm_41000_3049 Mask@@51 o_142@@6 f_125@@5) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@31) o_142@@6 f_125@@5) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@13) o_142@@6 f_125@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@13 Mask@@51) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@13) o_142@@6 f_125@@5))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_83631) (ExhaleHeap@@14 T@PolymorphicMapType_83631) (Mask@@52 T@PolymorphicMapType_83652) (o_142@@7 T@Ref) (f_125@@6 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@14 Mask@@52) (=> (HasDirectPerm_41000_41001 Mask@@52 o_142@@7 f_125@@6) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@32) o_142@@7 f_125@@6) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@14) o_142@@7 f_125@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@14 Mask@@52) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@14) o_142@@7 f_125@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_83631) (ExhaleHeap@@15 T@PolymorphicMapType_83631) (Mask@@53 T@PolymorphicMapType_83652) (o_142@@8 T@Ref) (f_125@@7 T@Field_41000_40734) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@53) (=> (HasDirectPerm_41000_40734 Mask@@53 o_142@@8 f_125@@7) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@33) o_142@@8 f_125@@7) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@15) o_142@@8 f_125@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@15 Mask@@53) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@15) o_142@@8 f_125@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_83631) (ExhaleHeap@@16 T@PolymorphicMapType_83631) (Mask@@54 T@PolymorphicMapType_83652) (o_142@@9 T@Ref) (f_125@@8 T@Field_41000_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@54) (=> (HasDirectPerm_41000_2989 Mask@@54 o_142@@9 f_125@@8) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@34) o_142@@9 f_125@@8) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@16) o_142@@9 f_125@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@16 Mask@@54) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@16) o_142@@9 f_125@@8))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_83631) (ExhaleHeap@@17 T@PolymorphicMapType_83631) (Mask@@55 T@PolymorphicMapType_83652) (o_142@@10 T@Ref) (f_125@@9 T@Field_40731_95464) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@55) (=> (HasDirectPerm_40731_333889 Mask@@55 o_142@@10 f_125@@9) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@35) o_142@@10 f_125@@9) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@17) o_142@@10 f_125@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@17 Mask@@55) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@17) o_142@@10 f_125@@9))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_83631) (ExhaleHeap@@18 T@PolymorphicMapType_83631) (Mask@@56 T@PolymorphicMapType_83652) (o_142@@11 T@Ref) (f_125@@10 T@Field_83691_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@56) (=> (HasDirectPerm_40741_3049 Mask@@56 o_142@@11 f_125@@10) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@36) o_142@@11 f_125@@10) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@18) o_142@@11 f_125@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@18 Mask@@56) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@18) o_142@@11 f_125@@10))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_83631) (ExhaleHeap@@19 T@PolymorphicMapType_83631) (Mask@@57 T@PolymorphicMapType_83652) (o_142@@12 T@Ref) (f_125@@11 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@57) (=> (HasDirectPerm_40731_41001 Mask@@57 o_142@@12 f_125@@11) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@37) o_142@@12 f_125@@11) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@19) o_142@@12 f_125@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@19 Mask@@57) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@19) o_142@@12 f_125@@11))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_83631) (ExhaleHeap@@20 T@PolymorphicMapType_83631) (Mask@@58 T@PolymorphicMapType_83652) (o_142@@13 T@Ref) (f_125@@12 T@Field_83704_83705) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@58) (=> (HasDirectPerm_40733_40734 Mask@@58 o_142@@13 f_125@@12) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@38) o_142@@13 f_125@@12) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@20) o_142@@13 f_125@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@20 Mask@@58) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@20) o_142@@13 f_125@@12))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_83631) (ExhaleHeap@@21 T@PolymorphicMapType_83631) (Mask@@59 T@PolymorphicMapType_83652) (o_142@@14 T@Ref) (f_125@@13 T@Field_89709_2989) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@59) (=> (HasDirectPerm_40731_2989 Mask@@59 o_142@@14 f_125@@13) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@39) o_142@@14 f_125@@13) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@21) o_142@@14 f_125@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@21 Mask@@59) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@21) o_142@@14 f_125@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3211|)) (not (= s1@@0 |Seq#Empty_3211|))) (= (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.216:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_2989| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_121051_121056) ) (! (= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_41051_3049) ) (! (= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_41051_40734) ) (! (= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_41051_2989) ) (! (= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_118662_118663) ) (! (= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_40731_95464) ) (! (= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_83691_53) ) (! (= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_83704_83705) ) (! (= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_89709_2989) ) (! (= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_40731_41001) ) (! (= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_95459_95464) ) (! (= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_41000_3049) ) (! (= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_41000_40734) ) (! (= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_41000_2989) ) (! (= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_90385_90386) ) (! (= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_7859| (|Seq#Append_2989| s@@7 t@@0) n@@7) (|Seq#Drop_7859| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.373:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7859| (|Seq#Append_2989| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_83631) (this@@22 T@Ref) (end_1@@10 T@Ref) ) (!  (and (= (contentNodes Heap@@40 this@@22 end_1@@10) (|contentNodes'| Heap@@40 this@@22 end_1@@10)) (dummyFunction_90009 (|contentNodes#triggerStateless| this@@22 end_1@@10)))
 :qid |stdinbpl.574:15|
 :skolemid |58|
 :pattern ( (contentNodes Heap@@40 this@@22 end_1@@10))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_83631) (this@@23 T@Ref) (end_1@@11 T@Ref) ) (!  (and (= (lengthNodes Heap@@41 this@@23 end_1@@11) (|lengthNodes'| Heap@@41 this@@23 end_1@@11)) (dummyFunction_6578 (|lengthNodes#triggerStateless| this@@23 end_1@@11)))
 :qid |stdinbpl.950:15|
 :skolemid |75|
 :pattern ( (lengthNodes Heap@@41 this@@23 end_1@@11))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_83631) (Mask@@60 T@PolymorphicMapType_83652) (this@@24 T@Ref) (end_1@@12 T@Ref) ) (!  (=> (and (state Heap@@42 Mask@@60) (< AssumeFunctionsAbove 4)) (= (contentNodes Heap@@42 this@@24 end_1@@12) (ite (= this@@24 end_1@@12) |Seq#Empty_3211| (|Seq#Append_2989| (|Seq#Singleton_2989| (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@42) this@@24 data)) (|contentNodes'| Heap@@42 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@42) this@@24 next) end_1@@12)))))
 :qid |stdinbpl.584:15|
 :skolemid |60|
 :pattern ( (state Heap@@42 Mask@@60) (contentNodes Heap@@42 this@@24 end_1@@12))
 :pattern ( (state Heap@@42 Mask@@60) (|contentNodes#triggerStateless| this@@24 end_1@@12) (|lseg#trigger_41000| Heap@@42 (lseg this@@24 end_1@@12)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_83652) (SummandMask1 T@PolymorphicMapType_83652) (SummandMask2 T@PolymorphicMapType_83652) (o_2@@59 T@Ref) (f_4@@59 T@Field_121051_121056) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_83652_41051_348890#PolymorphicMapType_83652| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_83652) (SummandMask1@@0 T@PolymorphicMapType_83652) (SummandMask2@@0 T@PolymorphicMapType_83652) (o_2@@60 T@Ref) (f_4@@60 T@Field_41051_3049) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_83652_41051_3049#PolymorphicMapType_83652| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_83652) (SummandMask1@@1 T@PolymorphicMapType_83652) (SummandMask2@@1 T@PolymorphicMapType_83652) (o_2@@61 T@Ref) (f_4@@61 T@Field_41051_40734) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_83652_41051_40734#PolymorphicMapType_83652| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_83652) (SummandMask1@@2 T@PolymorphicMapType_83652) (SummandMask2@@2 T@PolymorphicMapType_83652) (o_2@@62 T@Ref) (f_4@@62 T@Field_41051_2989) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_83652_41051_2989#PolymorphicMapType_83652| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_83652) (SummandMask1@@3 T@PolymorphicMapType_83652) (SummandMask2@@3 T@PolymorphicMapType_83652) (o_2@@63 T@Ref) (f_4@@63 T@Field_118662_118663) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_83652_41051_41052#PolymorphicMapType_83652| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_83652) (SummandMask1@@4 T@PolymorphicMapType_83652) (SummandMask2@@4 T@PolymorphicMapType_83652) (o_2@@64 T@Ref) (f_4@@64 T@Field_40731_95464) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_83652_40731_348479#PolymorphicMapType_83652| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_83652) (SummandMask1@@5 T@PolymorphicMapType_83652) (SummandMask2@@5 T@PolymorphicMapType_83652) (o_2@@65 T@Ref) (f_4@@65 T@Field_83691_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_83652_40741_3049#PolymorphicMapType_83652| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_83652) (SummandMask1@@6 T@PolymorphicMapType_83652) (SummandMask2@@6 T@PolymorphicMapType_83652) (o_2@@66 T@Ref) (f_4@@66 T@Field_83704_83705) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_83652_40733_40734#PolymorphicMapType_83652| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_83652) (SummandMask1@@7 T@PolymorphicMapType_83652) (SummandMask2@@7 T@PolymorphicMapType_83652) (o_2@@67 T@Ref) (f_4@@67 T@Field_89709_2989) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_83652_40731_2989#PolymorphicMapType_83652| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_83652) (SummandMask1@@8 T@PolymorphicMapType_83652) (SummandMask2@@8 T@PolymorphicMapType_83652) (o_2@@68 T@Ref) (f_4@@68 T@Field_40731_41001) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_83652_40731_41001#PolymorphicMapType_83652| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_83652) (SummandMask1@@9 T@PolymorphicMapType_83652) (SummandMask2@@9 T@PolymorphicMapType_83652) (o_2@@69 T@Ref) (f_4@@69 T@Field_95459_95464) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_83652_41000_348092#PolymorphicMapType_83652| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_83652) (SummandMask1@@10 T@PolymorphicMapType_83652) (SummandMask2@@10 T@PolymorphicMapType_83652) (o_2@@70 T@Ref) (f_4@@70 T@Field_41000_3049) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_83652_41000_3049#PolymorphicMapType_83652| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_83652) (SummandMask1@@11 T@PolymorphicMapType_83652) (SummandMask2@@11 T@PolymorphicMapType_83652) (o_2@@71 T@Ref) (f_4@@71 T@Field_41000_40734) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_83652_41000_40734#PolymorphicMapType_83652| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_83652) (SummandMask1@@12 T@PolymorphicMapType_83652) (SummandMask2@@12 T@PolymorphicMapType_83652) (o_2@@72 T@Ref) (f_4@@72 T@Field_41000_2989) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_83652_41000_2989#PolymorphicMapType_83652| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_83652) (SummandMask1@@13 T@PolymorphicMapType_83652) (SummandMask2@@13 T@PolymorphicMapType_83652) (o_2@@73 T@Ref) (f_4@@73 T@Field_90385_90386) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_83652_41000_41001#PolymorphicMapType_83652| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_83631) (ExhaleHeap@@22 T@PolymorphicMapType_83631) (Mask@@61 T@PolymorphicMapType_83652) (pm_f_50@@5 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@61) (=> (and (HasDirectPerm_41051_41052 Mask@@61 null pm_f_50@@5) (IsPredicateField_41051_41052 pm_f_50@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51 T@Ref) (f_125@@14 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51 f_125@@14) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@43) o2_51 f_125@@14) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51 f_125@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51 f_125@@14))
)) (forall ((o2_51@@0 T@Ref) (f_125@@15 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@0 f_125@@15) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@43) o2_51@@0 f_125@@15) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@0 f_125@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@0 f_125@@15))
))) (forall ((o2_51@@1 T@Ref) (f_125@@16 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@1 f_125@@16) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@43) o2_51@@1 f_125@@16) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@1 f_125@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@1 f_125@@16))
))) (forall ((o2_51@@2 T@Ref) (f_125@@17 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@2 f_125@@17) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@43) o2_51@@2 f_125@@17) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@2 f_125@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@2 f_125@@17))
))) (forall ((o2_51@@3 T@Ref) (f_125@@18 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@3 f_125@@18) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@43) o2_51@@3 f_125@@18) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@3 f_125@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@3 f_125@@18))
))) (forall ((o2_51@@4 T@Ref) (f_125@@19 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@4 f_125@@19) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@43) o2_51@@4 f_125@@19) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@4 f_125@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@4 f_125@@19))
))) (forall ((o2_51@@5 T@Ref) (f_125@@20 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@5 f_125@@20) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@43) o2_51@@5 f_125@@20) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@5 f_125@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@5 f_125@@20))
))) (forall ((o2_51@@6 T@Ref) (f_125@@21 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@6 f_125@@21) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@43) o2_51@@6 f_125@@21) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@6 f_125@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@6 f_125@@21))
))) (forall ((o2_51@@7 T@Ref) (f_125@@22 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@7 f_125@@22) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@43) o2_51@@7 f_125@@22) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@7 f_125@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@7 f_125@@22))
))) (forall ((o2_51@@8 T@Ref) (f_125@@23 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@8 f_125@@23) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@43) o2_51@@8 f_125@@23) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@8 f_125@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@8 f_125@@23))
))) (forall ((o2_51@@9 T@Ref) (f_125@@24 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@9 f_125@@24) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@43) o2_51@@9 f_125@@24) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@9 f_125@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@9 f_125@@24))
))) (forall ((o2_51@@10 T@Ref) (f_125@@25 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@10 f_125@@25) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@43) o2_51@@10 f_125@@25) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@10 f_125@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@10 f_125@@25))
))) (forall ((o2_51@@11 T@Ref) (f_125@@26 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@11 f_125@@26) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@43) o2_51@@11 f_125@@26) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@11 f_125@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@11 f_125@@26))
))) (forall ((o2_51@@12 T@Ref) (f_125@@27 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@12 f_125@@27) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@43) o2_51@@12 f_125@@27) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@12 f_125@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@12 f_125@@27))
))) (forall ((o2_51@@13 T@Ref) (f_125@@28 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) null (PredicateMaskField_41051 pm_f_50@@5))) o2_51@@13 f_125@@28) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@43) o2_51@@13 f_125@@28) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@13 f_125@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@22) o2_51@@13 f_125@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@22 Mask@@61) (IsPredicateField_41051_41052 pm_f_50@@5))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_83631) (ExhaleHeap@@23 T@PolymorphicMapType_83631) (Mask@@62 T@PolymorphicMapType_83652) (pm_f_50@@6 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@62) (=> (and (HasDirectPerm_41000_41001 Mask@@62 null pm_f_50@@6) (IsPredicateField_41000_41001 pm_f_50@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@14 T@Ref) (f_125@@29 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@14 f_125@@29) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@14 f_125@@29) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@14 f_125@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@14 f_125@@29))
)) (forall ((o2_51@@15 T@Ref) (f_125@@30 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@15 f_125@@30) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@44) o2_51@@15 f_125@@30) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@15 f_125@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@15 f_125@@30))
))) (forall ((o2_51@@16 T@Ref) (f_125@@31 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@16 f_125@@31) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@44) o2_51@@16 f_125@@31) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@16 f_125@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@16 f_125@@31))
))) (forall ((o2_51@@17 T@Ref) (f_125@@32 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@17 f_125@@32) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@44) o2_51@@17 f_125@@32) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@17 f_125@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@17 f_125@@32))
))) (forall ((o2_51@@18 T@Ref) (f_125@@33 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@18 f_125@@33) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@44) o2_51@@18 f_125@@33) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@18 f_125@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@18 f_125@@33))
))) (forall ((o2_51@@19 T@Ref) (f_125@@34 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@19 f_125@@34) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@19 f_125@@34) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@19 f_125@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@19 f_125@@34))
))) (forall ((o2_51@@20 T@Ref) (f_125@@35 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@20 f_125@@35) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@44) o2_51@@20 f_125@@35) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@20 f_125@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@20 f_125@@35))
))) (forall ((o2_51@@21 T@Ref) (f_125@@36 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@21 f_125@@36) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@44) o2_51@@21 f_125@@36) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@21 f_125@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@21 f_125@@36))
))) (forall ((o2_51@@22 T@Ref) (f_125@@37 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@22 f_125@@37) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@44) o2_51@@22 f_125@@37) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@22 f_125@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@22 f_125@@37))
))) (forall ((o2_51@@23 T@Ref) (f_125@@38 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@23 f_125@@38) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) o2_51@@23 f_125@@38) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@23 f_125@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@23 f_125@@38))
))) (forall ((o2_51@@24 T@Ref) (f_125@@39 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@24 f_125@@39) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@44) o2_51@@24 f_125@@39) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@24 f_125@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@24 f_125@@39))
))) (forall ((o2_51@@25 T@Ref) (f_125@@40 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@25 f_125@@40) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@44) o2_51@@25 f_125@@40) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@25 f_125@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@25 f_125@@40))
))) (forall ((o2_51@@26 T@Ref) (f_125@@41 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@26 f_125@@41) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@44) o2_51@@26 f_125@@41) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@26 f_125@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@26 f_125@@41))
))) (forall ((o2_51@@27 T@Ref) (f_125@@42 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@27 f_125@@42) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@44) o2_51@@27 f_125@@42) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@27 f_125@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@27 f_125@@42))
))) (forall ((o2_51@@28 T@Ref) (f_125@@43 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@44) null (PredicateMaskField_41000 pm_f_50@@6))) o2_51@@28 f_125@@43) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@44) o2_51@@28 f_125@@43) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@28 f_125@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@23) o2_51@@28 f_125@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@23 Mask@@62) (IsPredicateField_41000_41001 pm_f_50@@6))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_83631) (ExhaleHeap@@24 T@PolymorphicMapType_83631) (Mask@@63 T@PolymorphicMapType_83652) (pm_f_50@@7 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@63) (=> (and (HasDirectPerm_40731_41001 Mask@@63 null pm_f_50@@7) (IsPredicateField_40731_336373 pm_f_50@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@29 T@Ref) (f_125@@44 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@29 f_125@@44) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@29 f_125@@44) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@29 f_125@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@29 f_125@@44))
)) (forall ((o2_51@@30 T@Ref) (f_125@@45 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@30 f_125@@45) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@45) o2_51@@30 f_125@@45) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@30 f_125@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@30 f_125@@45))
))) (forall ((o2_51@@31 T@Ref) (f_125@@46 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@31 f_125@@46) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@45) o2_51@@31 f_125@@46) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@31 f_125@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@31 f_125@@46))
))) (forall ((o2_51@@32 T@Ref) (f_125@@47 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@32 f_125@@47) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@45) o2_51@@32 f_125@@47) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@32 f_125@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@32 f_125@@47))
))) (forall ((o2_51@@33 T@Ref) (f_125@@48 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@33 f_125@@48) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) o2_51@@33 f_125@@48) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@33 f_125@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@33 f_125@@48))
))) (forall ((o2_51@@34 T@Ref) (f_125@@49 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@34 f_125@@49) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@34 f_125@@49) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@34 f_125@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@34 f_125@@49))
))) (forall ((o2_51@@35 T@Ref) (f_125@@50 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@35 f_125@@50) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@45) o2_51@@35 f_125@@50) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@35 f_125@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@35 f_125@@50))
))) (forall ((o2_51@@36 T@Ref) (f_125@@51 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@36 f_125@@51) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@45) o2_51@@36 f_125@@51) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@36 f_125@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@36 f_125@@51))
))) (forall ((o2_51@@37 T@Ref) (f_125@@52 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@37 f_125@@52) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@45) o2_51@@37 f_125@@52) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@37 f_125@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@37 f_125@@52))
))) (forall ((o2_51@@38 T@Ref) (f_125@@53 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@38 f_125@@53) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@45) o2_51@@38 f_125@@53) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@38 f_125@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@38 f_125@@53))
))) (forall ((o2_51@@39 T@Ref) (f_125@@54 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@39 f_125@@54) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@45) o2_51@@39 f_125@@54) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@39 f_125@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@39 f_125@@54))
))) (forall ((o2_51@@40 T@Ref) (f_125@@55 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@40 f_125@@55) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@45) o2_51@@40 f_125@@55) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@40 f_125@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@40 f_125@@55))
))) (forall ((o2_51@@41 T@Ref) (f_125@@56 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@41 f_125@@56) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@45) o2_51@@41 f_125@@56) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@41 f_125@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@41 f_125@@56))
))) (forall ((o2_51@@42 T@Ref) (f_125@@57 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@42 f_125@@57) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@45) o2_51@@42 f_125@@57) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@42 f_125@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@42 f_125@@57))
))) (forall ((o2_51@@43 T@Ref) (f_125@@58 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@45) null (PredicateMaskField_40731 pm_f_50@@7))) o2_51@@43 f_125@@58) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@45) o2_51@@43 f_125@@58) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@43 f_125@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@24) o2_51@@43 f_125@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@24 Mask@@63) (IsPredicateField_40731_336373 pm_f_50@@7))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_83631) (ExhaleHeap@@25 T@PolymorphicMapType_83631) (Mask@@64 T@PolymorphicMapType_83652) (pm_f_50@@8 T@Field_118662_118663) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@64) (=> (and (HasDirectPerm_41051_41052 Mask@@64 null pm_f_50@@8) (IsWandField_41051_342054 pm_f_50@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@44 T@Ref) (f_125@@59 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@44 f_125@@59) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@44 f_125@@59) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@44 f_125@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@44 f_125@@59))
)) (forall ((o2_51@@45 T@Ref) (f_125@@60 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@45 f_125@@60) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@46) o2_51@@45 f_125@@60) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@45 f_125@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@45 f_125@@60))
))) (forall ((o2_51@@46 T@Ref) (f_125@@61 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@46 f_125@@61) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@46) o2_51@@46 f_125@@61) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@46 f_125@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@46 f_125@@61))
))) (forall ((o2_51@@47 T@Ref) (f_125@@62 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@47 f_125@@62) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@46) o2_51@@47 f_125@@62) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@47 f_125@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@47 f_125@@62))
))) (forall ((o2_51@@48 T@Ref) (f_125@@63 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@48 f_125@@63) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@46) o2_51@@48 f_125@@63) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@48 f_125@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@48 f_125@@63))
))) (forall ((o2_51@@49 T@Ref) (f_125@@64 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@49 f_125@@64) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@49 f_125@@64) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@49 f_125@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@49 f_125@@64))
))) (forall ((o2_51@@50 T@Ref) (f_125@@65 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@50 f_125@@65) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@46) o2_51@@50 f_125@@65) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@50 f_125@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@50 f_125@@65))
))) (forall ((o2_51@@51 T@Ref) (f_125@@66 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@51 f_125@@66) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@46) o2_51@@51 f_125@@66) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@51 f_125@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@51 f_125@@66))
))) (forall ((o2_51@@52 T@Ref) (f_125@@67 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@52 f_125@@67) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@46) o2_51@@52 f_125@@67) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@52 f_125@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@52 f_125@@67))
))) (forall ((o2_51@@53 T@Ref) (f_125@@68 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@53 f_125@@68) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@46) o2_51@@53 f_125@@68) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@53 f_125@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@53 f_125@@68))
))) (forall ((o2_51@@54 T@Ref) (f_125@@69 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@54 f_125@@69) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@46) o2_51@@54 f_125@@69) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@54 f_125@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@54 f_125@@69))
))) (forall ((o2_51@@55 T@Ref) (f_125@@70 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@55 f_125@@70) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@46) o2_51@@55 f_125@@70) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@55 f_125@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@55 f_125@@70))
))) (forall ((o2_51@@56 T@Ref) (f_125@@71 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@56 f_125@@71) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@46) o2_51@@56 f_125@@71) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@56 f_125@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@56 f_125@@71))
))) (forall ((o2_51@@57 T@Ref) (f_125@@72 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@57 f_125@@72) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@46) o2_51@@57 f_125@@72) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@57 f_125@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@57 f_125@@72))
))) (forall ((o2_51@@58 T@Ref) (f_125@@73 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) null (WandMaskField_41051 pm_f_50@@8))) o2_51@@58 f_125@@73) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@46) o2_51@@58 f_125@@73) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@58 f_125@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@25) o2_51@@58 f_125@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@25 Mask@@64) (IsWandField_41051_342054 pm_f_50@@8))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_83631) (ExhaleHeap@@26 T@PolymorphicMapType_83631) (Mask@@65 T@PolymorphicMapType_83652) (pm_f_50@@9 T@Field_90385_90386) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@65) (=> (and (HasDirectPerm_41000_41001 Mask@@65 null pm_f_50@@9) (IsWandField_41000_341697 pm_f_50@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@59 T@Ref) (f_125@@74 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@59 f_125@@74) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@59 f_125@@74) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@59 f_125@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@59 f_125@@74))
)) (forall ((o2_51@@60 T@Ref) (f_125@@75 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@60 f_125@@75) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@47) o2_51@@60 f_125@@75) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@60 f_125@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@60 f_125@@75))
))) (forall ((o2_51@@61 T@Ref) (f_125@@76 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@61 f_125@@76) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@47) o2_51@@61 f_125@@76) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@61 f_125@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@61 f_125@@76))
))) (forall ((o2_51@@62 T@Ref) (f_125@@77 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@62 f_125@@77) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@47) o2_51@@62 f_125@@77) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@62 f_125@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@62 f_125@@77))
))) (forall ((o2_51@@63 T@Ref) (f_125@@78 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@63 f_125@@78) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@47) o2_51@@63 f_125@@78) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@63 f_125@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@63 f_125@@78))
))) (forall ((o2_51@@64 T@Ref) (f_125@@79 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@64 f_125@@79) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@64 f_125@@79) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@64 f_125@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@64 f_125@@79))
))) (forall ((o2_51@@65 T@Ref) (f_125@@80 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@65 f_125@@80) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@47) o2_51@@65 f_125@@80) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@65 f_125@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@65 f_125@@80))
))) (forall ((o2_51@@66 T@Ref) (f_125@@81 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@66 f_125@@81) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@47) o2_51@@66 f_125@@81) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@66 f_125@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@66 f_125@@81))
))) (forall ((o2_51@@67 T@Ref) (f_125@@82 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@67 f_125@@82) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@47) o2_51@@67 f_125@@82) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@67 f_125@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@67 f_125@@82))
))) (forall ((o2_51@@68 T@Ref) (f_125@@83 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@68 f_125@@83) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) o2_51@@68 f_125@@83) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@68 f_125@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@68 f_125@@83))
))) (forall ((o2_51@@69 T@Ref) (f_125@@84 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@69 f_125@@84) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@47) o2_51@@69 f_125@@84) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@69 f_125@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@69 f_125@@84))
))) (forall ((o2_51@@70 T@Ref) (f_125@@85 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@70 f_125@@85) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@47) o2_51@@70 f_125@@85) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@70 f_125@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@70 f_125@@85))
))) (forall ((o2_51@@71 T@Ref) (f_125@@86 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@71 f_125@@86) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@47) o2_51@@71 f_125@@86) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@71 f_125@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@71 f_125@@86))
))) (forall ((o2_51@@72 T@Ref) (f_125@@87 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@72 f_125@@87) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@47) o2_51@@72 f_125@@87) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@72 f_125@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@72 f_125@@87))
))) (forall ((o2_51@@73 T@Ref) (f_125@@88 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@47) null (WandMaskField_41000 pm_f_50@@9))) o2_51@@73 f_125@@88) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@47) o2_51@@73 f_125@@88) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@73 f_125@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@26) o2_51@@73 f_125@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@26 Mask@@65) (IsWandField_41000_341697 pm_f_50@@9))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_83631) (ExhaleHeap@@27 T@PolymorphicMapType_83631) (Mask@@66 T@PolymorphicMapType_83652) (pm_f_50@@10 T@Field_40731_41001) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@66) (=> (and (HasDirectPerm_40731_41001 Mask@@66 null pm_f_50@@10) (IsWandField_40731_341340 pm_f_50@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@74 T@Ref) (f_125@@89 T@Field_89709_2989) ) (!  (=> (select (|PolymorphicMapType_84180_40731_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@74 f_125@@89) (= (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@74 f_125@@89) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@74 f_125@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@74 f_125@@89))
)) (forall ((o2_51@@75 T@Ref) (f_125@@90 T@Field_83704_83705) ) (!  (=> (select (|PolymorphicMapType_84180_40733_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@75 f_125@@90) (= (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@48) o2_51@@75 f_125@@90) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@75 f_125@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@75 f_125@@90))
))) (forall ((o2_51@@76 T@Ref) (f_125@@91 T@Field_83691_53) ) (!  (=> (select (|PolymorphicMapType_84180_40731_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@76 f_125@@91) (= (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@48) o2_51@@76 f_125@@91) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@76 f_125@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@76 f_125@@91))
))) (forall ((o2_51@@77 T@Ref) (f_125@@92 T@Field_40731_41001) ) (!  (=> (select (|PolymorphicMapType_84180_40731_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@77 f_125@@92) (= (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@48) o2_51@@77 f_125@@92) (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@77 f_125@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@77 f_125@@92))
))) (forall ((o2_51@@78 T@Ref) (f_125@@93 T@Field_40731_95464) ) (!  (=> (select (|PolymorphicMapType_84180_40731_338155#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@78 f_125@@93) (= (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) o2_51@@78 f_125@@93) (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@78 f_125@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@78 f_125@@93))
))) (forall ((o2_51@@79 T@Ref) (f_125@@94 T@Field_41000_2989) ) (!  (=> (select (|PolymorphicMapType_84180_90385_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@79 f_125@@94) (= (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@79 f_125@@94) (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@79 f_125@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@79 f_125@@94))
))) (forall ((o2_51@@80 T@Ref) (f_125@@95 T@Field_41000_40734) ) (!  (=> (select (|PolymorphicMapType_84180_90385_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@80 f_125@@95) (= (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@48) o2_51@@80 f_125@@95) (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@80 f_125@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@80 f_125@@95))
))) (forall ((o2_51@@81 T@Ref) (f_125@@96 T@Field_41000_3049) ) (!  (=> (select (|PolymorphicMapType_84180_90385_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@81 f_125@@96) (= (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@48) o2_51@@81 f_125@@96) (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@81 f_125@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@81 f_125@@96))
))) (forall ((o2_51@@82 T@Ref) (f_125@@97 T@Field_90385_90386) ) (!  (=> (select (|PolymorphicMapType_84180_90385_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@82 f_125@@97) (= (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@48) o2_51@@82 f_125@@97) (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@82 f_125@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@82 f_125@@97))
))) (forall ((o2_51@@83 T@Ref) (f_125@@98 T@Field_95459_95464) ) (!  (=> (select (|PolymorphicMapType_84180_90385_339203#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@83 f_125@@98) (= (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@48) o2_51@@83 f_125@@98) (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@83 f_125@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@83 f_125@@98))
))) (forall ((o2_51@@84 T@Ref) (f_125@@99 T@Field_41051_2989) ) (!  (=> (select (|PolymorphicMapType_84180_118662_2989#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@84 f_125@@99) (= (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@48) o2_51@@84 f_125@@99) (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@84 f_125@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@84 f_125@@99))
))) (forall ((o2_51@@85 T@Ref) (f_125@@100 T@Field_41051_40734) ) (!  (=> (select (|PolymorphicMapType_84180_118662_40734#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@85 f_125@@100) (= (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@48) o2_51@@85 f_125@@100) (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@85 f_125@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@85 f_125@@100))
))) (forall ((o2_51@@86 T@Ref) (f_125@@101 T@Field_41051_3049) ) (!  (=> (select (|PolymorphicMapType_84180_118662_53#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@86 f_125@@101) (= (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@48) o2_51@@86 f_125@@101) (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@86 f_125@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@86 f_125@@101))
))) (forall ((o2_51@@87 T@Ref) (f_125@@102 T@Field_118662_118663) ) (!  (=> (select (|PolymorphicMapType_84180_118662_90386#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@87 f_125@@102) (= (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@48) o2_51@@87 f_125@@102) (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@87 f_125@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@87 f_125@@102))
))) (forall ((o2_51@@88 T@Ref) (f_125@@103 T@Field_121051_121056) ) (!  (=> (select (|PolymorphicMapType_84180_118662_340251#PolymorphicMapType_84180| (select (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@48) null (WandMaskField_40731 pm_f_50@@10))) o2_51@@88 f_125@@103) (= (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@48) o2_51@@88 f_125@@103) (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@88 f_125@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| ExhaleHeap@@27) o2_51@@88 f_125@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@27 Mask@@66) (IsWandField_40731_341340 pm_f_50@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.538:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_83631) (Mask@@67 T@PolymorphicMapType_83652) (this@@25 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@67) (or (< AssumeFunctionsAbove 2) (|content#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@49) null (List this@@25)) this@@25))) (forall ((i@@3 Int) (j@@5 Int) ) (!  (=> (and (<= 0 i@@3) (and (< i@@3 j@@5) (< j@@5 (|Seq#Length_2867| (|content'| Heap@@49 this@@25))))) (<= (|Seq#Index_2867| (|content'| Heap@@49 this@@25) i@@3) (|Seq#Index_2867| (|content'| Heap@@49 this@@25) j@@5)))
 :qid |stdinbpl.1191:112|
 :skolemid |87|
 :pattern ( (|Seq#Index_2867| (|content'| Heap@@49 this@@25) i@@3) (|Seq#Index_2867| (|content'| Heap@@49 this@@25) j@@5))
)))
 :qid |stdinbpl.1189:15|
 :skolemid |88|
 :pattern ( (state Heap@@49 Mask@@67) (|content'| Heap@@49 this@@25))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_3092| a b) (= a b))
 :qid |stdinbpl.511:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3092| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@4)))
 :qid |stdinbpl.404:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@4))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3211|) (= (|Seq#Append_2989| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3211|) (= (|Seq#Append_2989| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.222:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2989| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_2989| t@@1) 0) t@@1)
 :qid |stdinbpl.226:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2989| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_83631) (Mask@@68 T@PolymorphicMapType_83652) (this@@26 T@Ref) (end_1@@13 T@Ref) ) (!  (=> (and (state Heap@@50 Mask@@68) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@50) null (lseg this@@26 end_1@@13)) this@@26 end_1@@13))) (=> (not (= this@@26 end_1@@13)) (and (< 0 (|Seq#Length_2867| (|contentNodes'| Heap@@50 this@@26 end_1@@13))) (= (|Seq#Index_2867| (|contentNodes'| Heap@@50 this@@26 end_1@@13) 0) (select (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@50) this@@26 data)))))
 :qid |stdinbpl.601:15|
 :skolemid |63|
 :pattern ( (state Heap@@50 Mask@@68) (|contentNodes'| Heap@@50 this@@26 end_1@@13))
)))
(assert (forall ((this@@27 T@Ref) (end_1@@14 T@Ref) ) (! (= (getPredWandId_41000_41001 (lseg this@@27 end_1@@14)) 0)
 :qid |stdinbpl.1738:15|
 :skolemid |109|
 :pattern ( (lseg this@@27 end_1@@14))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_3092| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@6) (|Seq#Index_2867| s1@@2 j@@6)))
 :qid |stdinbpl.501:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@6))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@6))
))))
 :qid |stdinbpl.498:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3092| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_83631) (Mask@@69 T@PolymorphicMapType_83652) (this@@28 T@Ref) ) (!  (=> (state Heap@@51 Mask@@69) (= (|content'| Heap@@51 this@@28) (|content#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@51) null (List this@@28)) this@@28)))
 :qid |stdinbpl.1183:15|
 :skolemid |86|
 :pattern ( (state Heap@@51 Mask@@69) (|content'| Heap@@51 this@@28))
 :pattern ( (state Heap@@51 Mask@@69) (|content#triggerStateless| this@@28) (|List#trigger_41051| Heap@@51 (List this@@28)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_83631) (Mask@@70 T@PolymorphicMapType_83652) (this@@29 T@Ref) ) (!  (=> (state Heap@@52 Mask@@70) (= (|length'| Heap@@52 this@@29) (|length#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@52) null (List this@@29)) this@@29)))
 :qid |stdinbpl.1340:15|
 :skolemid |94|
 :pattern ( (state Heap@@52 Mask@@70) (|length'| Heap@@52 this@@29))
 :pattern ( (state Heap@@52 Mask@@70) (|length#triggerStateless| this@@29) (|List#trigger_41051| Heap@@52 (List this@@29)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_83631) (Mask@@71 T@PolymorphicMapType_83652) (this@@30 T@Ref) ) (!  (=> (state Heap@@53 Mask@@71) (= (|peek'| Heap@@53 this@@30) (|peek#frame| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@53) null (List this@@30)) this@@30)))
 :qid |stdinbpl.1484:15|
 :skolemid |100|
 :pattern ( (state Heap@@53 Mask@@71) (|peek'| Heap@@53 this@@30))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_2989| t@@2)) 1)
 :qid |stdinbpl.213:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2989| t@@2))
)))
(assert (forall ((this@@31 T@Ref) ) (! (= (getPredWandId_41051_41052 (List this@@31)) 1)
 :qid |stdinbpl.1967:15|
 :skolemid |119|
 :pattern ( (List this@@31))
)))
(assert (forall ((this@@32 T@Ref) (end_1@@15 T@Ref) ) (! (= (PredicateMaskField_41000 (lseg this@@32 end_1@@15)) (|lseg#sm| this@@32 end_1@@15))
 :qid |stdinbpl.1730:15|
 :skolemid |107|
 :pattern ( (PredicateMaskField_41000 (lseg this@@32 end_1@@15)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_7859| (|Seq#Append_2989| s@@10 t@@3) n@@8) (|Seq#Take_7859| s@@10 n@@8)))
 :qid |stdinbpl.355:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7859| (|Seq#Append_2989| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@5 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.254:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@5 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@5 v@@1))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_83631) (o_141 T@Ref) (f_158 T@Field_121051_121056) (v@@2 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@54 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@54) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@54) o_141 f_158 v@@2) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@54) (store (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@54) o_141 f_158 v@@2) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@54) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_83631) (o_141@@0 T@Ref) (f_158@@0 T@Field_118662_118663) (v@@3 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@55) (store (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@55) o_141@@0 f_158@@0 v@@3) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@55) (store (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@55) o_141@@0 f_158@@0 v@@3) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@55) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_83631) (o_141@@1 T@Ref) (f_158@@1 T@Field_41051_2989) (v@@4 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@56) (store (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@56) o_141@@1 f_158@@1 v@@4) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@56) (store (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@56) o_141@@1 f_158@@1 v@@4) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@56) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_83631) (o_141@@2 T@Ref) (f_158@@2 T@Field_41051_40734) (v@@5 T@Ref) ) (! (succHeap Heap@@57 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@57) (store (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@57) o_141@@2 f_158@@2 v@@5) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@57) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@57) (store (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@57) o_141@@2 f_158@@2 v@@5) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_83631) (o_141@@3 T@Ref) (f_158@@3 T@Field_41051_3049) (v@@6 Bool) ) (! (succHeap Heap@@58 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@58) (store (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@58) o_141@@3 f_158@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@58) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@58) (store (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@58) o_141@@3 f_158@@3 v@@6)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_83631) (o_141@@4 T@Ref) (f_158@@4 T@Field_95459_95464) (v@@7 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@59 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@59) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@59) o_141@@4 f_158@@4 v@@7) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@59) (store (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@59) o_141@@4 f_158@@4 v@@7) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@59) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_83631) (o_141@@5 T@Ref) (f_158@@5 T@Field_90385_90386) (v@@8 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@60) (store (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@60) o_141@@5 f_158@@5 v@@8) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@60) (store (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@60) o_141@@5 f_158@@5 v@@8) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@60) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_83631) (o_141@@6 T@Ref) (f_158@@6 T@Field_41000_2989) (v@@9 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@61) (store (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@61) o_141@@6 f_158@@6 v@@9) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@61) (store (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@61) o_141@@6 f_158@@6 v@@9) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@61) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_83631) (o_141@@7 T@Ref) (f_158@@7 T@Field_41000_40734) (v@@10 T@Ref) ) (! (succHeap Heap@@62 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@62) (store (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@62) o_141@@7 f_158@@7 v@@10) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@62) (store (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@62) o_141@@7 f_158@@7 v@@10) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@62) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_83631) (o_141@@8 T@Ref) (f_158@@8 T@Field_41000_3049) (v@@11 Bool) ) (! (succHeap Heap@@63 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@63) (store (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@63) o_141@@8 f_158@@8 v@@11) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@63) (store (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@63) o_141@@8 f_158@@8 v@@11) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@63) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_83631) (o_141@@9 T@Ref) (f_158@@9 T@Field_40731_95464) (v@@12 T@PolymorphicMapType_84180) ) (! (succHeap Heap@@64 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@64) (store (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@64) o_141@@9 f_158@@9 v@@12) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@64) (store (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@64) o_141@@9 f_158@@9 v@@12) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@64) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_83631) (o_141@@10 T@Ref) (f_158@@10 T@Field_40731_41001) (v@@13 T@FrameType) ) (! (succHeap Heap@@65 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@65) (store (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@65) o_141@@10 f_158@@10 v@@13) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@65) (store (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@65) o_141@@10 f_158@@10 v@@13) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@65) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_83631) (o_141@@11 T@Ref) (f_158@@11 T@Field_89709_2989) (v@@14 Int) ) (! (succHeap Heap@@66 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@66) (store (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@66) o_141@@11 f_158@@11 v@@14) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@66) (store (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@66) o_141@@11 f_158@@11 v@@14) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@66) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_83631) (o_141@@12 T@Ref) (f_158@@12 T@Field_83704_83705) (v@@15 T@Ref) ) (! (succHeap Heap@@67 (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@67) (store (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@67) o_141@@12 f_158@@12 v@@15) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@67) (store (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@67) o_141@@12 f_158@@12 v@@15) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@67) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_83631) (o_141@@13 T@Ref) (f_158@@13 T@Field_83691_53) (v@@16 Bool) ) (! (succHeap Heap@@68 (PolymorphicMapType_83631 (store (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@68) o_141@@13 f_158@@13 v@@16) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_83631 (store (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@68) o_141@@13 f_158@@13 v@@16) (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41005_95620#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41055_121143#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_41001#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_40731_333931#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41000_3049#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_2989#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_40734#PolymorphicMapType_83631| Heap@@68) (|PolymorphicMapType_83631_41051_3049#PolymorphicMapType_83631| Heap@@68)))
)))
(assert (forall ((this@@33 T@Ref) ) (! (= (PredicateMaskField_41051 (List this@@33)) (|List#sm| this@@33))
 :qid |stdinbpl.1959:15|
 :skolemid |117|
 :pattern ( (PredicateMaskField_41051 (List this@@33)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_7859| (|Seq#Append_2989| s@@12 t@@4) n@@9) (|Seq#Append_2989| (|Seq#Drop_7859| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.369:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7859| (|Seq#Append_2989| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@6 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@6)) (< i@@6 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@6 n@@10) n@@10) i@@6) (= (|Seq#Index_2867| (|Seq#Drop_7859| s@@13 n@@10) (|Seq#Sub| i@@6 n@@10)) (|Seq#Index_2867| s@@13 i@@6))))
 :qid |stdinbpl.305:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7859| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@6))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3211|)) (not (= s1@@3 |Seq#Empty_3211|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.245:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_2989| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_2989| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3211|)) (not (= s1@@4 |Seq#Empty_3211|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_2989| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.250:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_2989| s0@@4 s1@@4))
)))
(assert (forall ((o_141@@14 T@Ref) (f_121 T@Field_83704_83705) (Heap@@69 T@PolymorphicMapType_83631) ) (!  (=> (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@69) o_141@@14 $allocated) (select (|PolymorphicMapType_83631_40543_53#PolymorphicMapType_83631| Heap@@69) (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@69) o_141@@14 f_121) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@69) o_141@@14 f_121))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@7 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@7) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.402:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@7))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3092| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3092| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3092| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.506:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3092| s0@@5 s1@@5))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_83631) (Mask@@72 T@PolymorphicMapType_83652) (this@@34 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@72) (< AssumeFunctionsAbove 1)) (= (length_1 Heap@@70 this@@34) (lengthNodes Heap@@70 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@70) this@@34 head_3) null)))
 :qid |stdinbpl.1333:15|
 :skolemid |93|
 :pattern ( (state Heap@@70 Mask@@72) (length_1 Heap@@70 this@@34))
 :pattern ( (state Heap@@70 Mask@@72) (|length#triggerStateless| this@@34) (|List#trigger_41051| Heap@@70 (List this@@34)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_83631) (Mask@@73 T@PolymorphicMapType_83652) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@71 Mask@@73) (< AssumeFunctionsAbove 2)) (= (content Heap@@71 this@@35) (contentNodes Heap@@71 (select (|PolymorphicMapType_83631_40546_40547#PolymorphicMapType_83631| Heap@@71) this@@35 head_3) null)))
 :qid |stdinbpl.1176:15|
 :skolemid |85|
 :pattern ( (state Heap@@71 Mask@@73) (content Heap@@71 this@@35))
 :pattern ( (state Heap@@71 Mask@@73) (|content#triggerStateless| this@@35) (|List#trigger_41051| Heap@@71 (List this@@35)))
)))
(assert (forall ((p@@3 T@Field_40731_41001) (v_1@@2 T@FrameType) (q T@Field_40731_41001) (w@@2 T@FrameType) (r T@Field_118662_118663) (u T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@3 v_1@@2 q w@@2) (InsidePredicate_83691_118662 q w@@2 r u)) (InsidePredicate_83691_118662 p@@3 v_1@@2 r u))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@3 v_1@@2 q w@@2) (InsidePredicate_83691_118662 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_40731_41001) (v_1@@3 T@FrameType) (q@@0 T@Field_40731_41001) (w@@3 T@FrameType) (r@@0 T@Field_40731_41001) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_83691_83691 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_83691_83691 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_83691_83691 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_40731_41001) (v_1@@4 T@FrameType) (q@@1 T@Field_40731_41001) (w@@4 T@FrameType) (r@@1 T@Field_90385_90386) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_83691 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_83691_41000 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_83691_41000 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_83691 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_83691_41000 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_40731_41001) (v_1@@5 T@FrameType) (q@@2 T@Field_118662_118663) (w@@5 T@FrameType) (r@@2 T@Field_118662_118663) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_41051_118662 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_83691_118662 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_41051_118662 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_40731_41001) (v_1@@6 T@FrameType) (q@@3 T@Field_118662_118663) (w@@6 T@FrameType) (r@@3 T@Field_40731_41001) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_41051_83691 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_83691_83691 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_41051_83691 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_40731_41001) (v_1@@7 T@FrameType) (q@@4 T@Field_118662_118663) (w@@7 T@FrameType) (r@@4 T@Field_90385_90386) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_118662 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_41051_41000 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_83691_41000 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_118662 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_41051_41000 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_40731_41001) (v_1@@8 T@FrameType) (q@@5 T@Field_90385_90386) (w@@8 T@FrameType) (r@@5 T@Field_118662_118663) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_41000_118662 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_83691_118662 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_41000_118662 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_40731_41001) (v_1@@9 T@FrameType) (q@@6 T@Field_90385_90386) (w@@9 T@FrameType) (r@@6 T@Field_40731_41001) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_41000_83691 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_83691_83691 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_41000_83691 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_40731_41001) (v_1@@10 T@FrameType) (q@@7 T@Field_90385_90386) (w@@10 T@FrameType) (r@@7 T@Field_90385_90386) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_83691_41000 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_41000_41000 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_83691_41000 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_83691_41000 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_41000_41000 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_118662_118663) (v_1@@11 T@FrameType) (q@@8 T@Field_40731_41001) (w@@11 T@FrameType) (r@@8 T@Field_118662_118663) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_83691_118662 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_41051_118662 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_83691_118662 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_118662_118663) (v_1@@12 T@FrameType) (q@@9 T@Field_40731_41001) (w@@12 T@FrameType) (r@@9 T@Field_40731_41001) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_83691_83691 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_41051_83691 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_83691_83691 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_118662_118663) (v_1@@13 T@FrameType) (q@@10 T@Field_40731_41001) (w@@13 T@FrameType) (r@@10 T@Field_90385_90386) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_83691 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_83691_41000 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_41051_41000 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_83691 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_83691_41000 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_118662_118663) (v_1@@14 T@FrameType) (q@@11 T@Field_118662_118663) (w@@14 T@FrameType) (r@@11 T@Field_118662_118663) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_41051_118662 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_41051_118662 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_41051_118662 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_118662_118663) (v_1@@15 T@FrameType) (q@@12 T@Field_118662_118663) (w@@15 T@FrameType) (r@@12 T@Field_40731_41001) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_41051_83691 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_41051_83691 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_41051_83691 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_118662_118663) (v_1@@16 T@FrameType) (q@@13 T@Field_118662_118663) (w@@16 T@FrameType) (r@@13 T@Field_90385_90386) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_118662 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_41051_41000 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_41051_41000 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_118662 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_41051_41000 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_118662_118663) (v_1@@17 T@FrameType) (q@@14 T@Field_90385_90386) (w@@17 T@FrameType) (r@@14 T@Field_118662_118663) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_41000_118662 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_41051_118662 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_41000_118662 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_118662_118663) (v_1@@18 T@FrameType) (q@@15 T@Field_90385_90386) (w@@18 T@FrameType) (r@@15 T@Field_40731_41001) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_41000_83691 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_41051_83691 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_41000_83691 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_118662_118663) (v_1@@19 T@FrameType) (q@@16 T@Field_90385_90386) (w@@19 T@FrameType) (r@@16 T@Field_90385_90386) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_41051_41000 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_41000_41000 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_41051_41000 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41051_41000 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_41000_41000 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_90385_90386) (v_1@@20 T@FrameType) (q@@17 T@Field_40731_41001) (w@@20 T@FrameType) (r@@17 T@Field_118662_118663) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_83691_118662 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_41000_118662 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_83691_118662 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_90385_90386) (v_1@@21 T@FrameType) (q@@18 T@Field_40731_41001) (w@@21 T@FrameType) (r@@18 T@Field_40731_41001) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_83691_83691 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_41000_83691 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_83691_83691 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_90385_90386) (v_1@@22 T@FrameType) (q@@19 T@Field_40731_41001) (w@@22 T@FrameType) (r@@19 T@Field_90385_90386) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_83691 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_83691_41000 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_41000_41000 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_83691 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_83691_41000 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_90385_90386) (v_1@@23 T@FrameType) (q@@20 T@Field_118662_118663) (w@@23 T@FrameType) (r@@20 T@Field_118662_118663) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_41051_118662 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_41000_118662 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_41051_118662 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_90385_90386) (v_1@@24 T@FrameType) (q@@21 T@Field_118662_118663) (w@@24 T@FrameType) (r@@21 T@Field_40731_41001) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_41051_83691 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_41000_83691 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_41051_83691 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_90385_90386) (v_1@@25 T@FrameType) (q@@22 T@Field_118662_118663) (w@@25 T@FrameType) (r@@22 T@Field_90385_90386) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_118662 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_41051_41000 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_41000_41000 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_118662 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_41051_41000 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_90385_90386) (v_1@@26 T@FrameType) (q@@23 T@Field_90385_90386) (w@@26 T@FrameType) (r@@23 T@Field_118662_118663) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_41000_118662 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_41000_118662 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_41000_118662 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_90385_90386) (v_1@@27 T@FrameType) (q@@24 T@Field_90385_90386) (w@@27 T@FrameType) (r@@24 T@Field_40731_41001) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_41000_83691 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_41000_83691 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_41000_83691 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_90385_90386) (v_1@@28 T@FrameType) (q@@25 T@Field_90385_90386) (w@@28 T@FrameType) (r@@25 T@Field_90385_90386) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_41000_41000 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_41000_41000 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_41000_41000 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.173:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_41000_41000 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_41000_41000 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_83631) (Mask@@74 T@PolymorphicMapType_83652) (this@@36 T@Ref) (end_1@@16 T@Ref) ) (!  (=> (and (state Heap@@72 Mask@@74) (or (< AssumeFunctionsAbove 4) (|contentNodes#trigger| (select (|PolymorphicMapType_83631_41000_41001#PolymorphicMapType_83631| Heap@@72) null (lseg this@@36 end_1@@16)) this@@36 end_1@@16))) (=> (= this@@36 end_1@@16) (|Seq#Equal_3092| (|contentNodes'| Heap@@72 this@@36 end_1@@16) |Seq#Empty_3211|)))
 :qid |stdinbpl.597:15|
 :skolemid |62|
 :pattern ( (state Heap@@72 Mask@@74) (|contentNodes'| Heap@@72 this@@36 end_1@@16))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3211|))
 :qid |stdinbpl.209:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_7859| s@@16 n@@12) |Seq#Empty_3211|))
 :qid |stdinbpl.385:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7859| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@73 T@PolymorphicMapType_83631) (Mask@@75 T@PolymorphicMapType_83652) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@73 Mask@@75) (or (< AssumeFunctionsAbove 1) (|length#trigger| (select (|PolymorphicMapType_83631_41051_41052#PolymorphicMapType_83631| Heap@@73) null (List this@@37)) this@@37))) (= (|length'| Heap@@73 this@@37) (|Seq#Length_2867| (content Heap@@73 this@@37))))
 :qid |stdinbpl.1346:15|
 :skolemid |95|
 :pattern ( (state Heap@@73 Mask@@75) (|length'| Heap@@73 this@@37))
)))
; Valid

