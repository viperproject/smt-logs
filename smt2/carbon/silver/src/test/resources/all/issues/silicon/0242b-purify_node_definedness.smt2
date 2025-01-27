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
(declare-sort T@Field_9068_53 0)
(declare-sort T@Field_9081_9082 0)
(declare-sort T@Field_15252_3276 0)
(declare-sort T@Field_5559_24525 0)
(declare-sort T@Field_5559_24392 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9029 0)) (((PolymorphicMapType_9029 (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| (Array T@Ref T@Field_15252_3276 Real)) (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| (Array T@Ref T@Field_9081_9082 Real)) (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| (Array T@Ref T@Field_9068_53 Real)) (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| (Array T@Ref T@Field_5559_24392 Real)) (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| (Array T@Ref T@Field_5559_24525 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9557 0)) (((PolymorphicMapType_9557 (|PolymorphicMapType_9557_9068_53#PolymorphicMapType_9557| (Array T@Ref T@Field_9068_53 Bool)) (|PolymorphicMapType_9557_9068_9082#PolymorphicMapType_9557| (Array T@Ref T@Field_9081_9082 Bool)) (|PolymorphicMapType_9557_9068_3276#PolymorphicMapType_9557| (Array T@Ref T@Field_15252_3276 Bool)) (|PolymorphicMapType_9557_9068_24392#PolymorphicMapType_9557| (Array T@Ref T@Field_5559_24392 Bool)) (|PolymorphicMapType_9557_9068_25703#PolymorphicMapType_9557| (Array T@Ref T@Field_5559_24525 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9008 0)) (((PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| (Array T@Ref T@Field_9068_53 Bool)) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| (Array T@Ref T@Field_9081_9082 T@Ref)) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| (Array T@Ref T@Field_15252_3276 Int)) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| (Array T@Ref T@Field_5559_24525 T@PolymorphicMapType_9557)) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| (Array T@Ref T@Field_5559_24392 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_9068_53)
(declare-fun m_20 () T@Field_15252_3276)
(declare-fun l () T@Field_9081_9082)
(declare-fun r_11 () T@Field_9081_9082)
(declare-fun succHeap (T@PolymorphicMapType_9008 T@PolymorphicMapType_9008) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9008 T@PolymorphicMapType_9008) Bool)
(declare-fun state (T@PolymorphicMapType_9008 T@PolymorphicMapType_9029) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9029) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9557)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@NodeDomainType 0)
(declare-fun |purify_node'| (T@PolymorphicMapType_9008 T@Ref) T@NodeDomainType)
(declare-fun dummyFunction_5588 (T@NodeDomainType) Bool)
(declare-fun |purify_node#triggerStateless| (T@Ref) T@NodeDomainType)
(declare-fun |Set#Union_5598| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_5598| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_5598| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_5598| ((Array T@Ref Bool)) Int)
(declare-fun purify_node (T@PolymorphicMapType_9008 T@Ref) T@NodeDomainType)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9008 T@PolymorphicMapType_9008 T@PolymorphicMapType_9029) Bool)
(declare-fun IsPredicateField_5559_24483 (T@Field_5559_24392) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5559 (T@Field_5559_24392) T@Field_5559_24525)
(declare-fun HasDirectPerm_5559_24456 (T@PolymorphicMapType_9029 T@Ref T@Field_5559_24392) Bool)
(declare-fun IsWandField_5559_26230 (T@Field_5559_24392) Bool)
(declare-fun WandMaskField_5559 (T@Field_5559_24392) T@Field_5559_24525)
(declare-fun dummyHeap () T@PolymorphicMapType_9008)
(declare-fun ZeroMask () T@PolymorphicMapType_9029)
(declare-fun InsidePredicate_9068_9068 (T@Field_5559_24392 T@FrameType T@Field_5559_24392 T@FrameType) Bool)
(declare-fun IsPredicateField_5557_3276 (T@Field_15252_3276) Bool)
(declare-fun IsWandField_5557_3276 (T@Field_15252_3276) Bool)
(declare-fun IsPredicateField_5559_5560 (T@Field_9081_9082) Bool)
(declare-fun IsWandField_5559_5560 (T@Field_9081_9082) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5557_29747 (T@Field_5559_24525) Bool)
(declare-fun IsWandField_5557_29763 (T@Field_5559_24525) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5557_53 (T@Field_9068_53) Bool)
(declare-fun IsWandField_5557_53 (T@Field_9068_53) Bool)
(declare-fun HasDirectPerm_5559_30201 (T@PolymorphicMapType_9029 T@Ref T@Field_5559_24525) Bool)
(declare-fun HasDirectPerm_5559_3276 (T@PolymorphicMapType_9029 T@Ref T@Field_15252_3276) Bool)
(declare-fun HasDirectPerm_5559_53 (T@PolymorphicMapType_9029 T@Ref T@Field_9068_53) Bool)
(declare-fun HasDirectPerm_5559_5560 (T@PolymorphicMapType_9029 T@Ref T@Field_9081_9082) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9029 T@PolymorphicMapType_9029 T@PolymorphicMapType_9029) Bool)
(declare-fun |Set#Difference_5598| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_5598| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_5598| () (Array T@Ref Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |purify_node#trigger| (T@FrameType T@Ref) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3276 (Int) T@FrameType)
(declare-fun FrameFragment_5560 (T@Ref) T@FrameType)
(declare-fun default_node () T@NodeDomainType)
(declare-fun |purify_node#frame| (T@FrameType T@Ref) T@NodeDomainType)
(assert (distinct l r_11)
)
(assert (forall ((Heap0 T@PolymorphicMapType_9008) (Heap1 T@PolymorphicMapType_9008) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9008) (Mask T@PolymorphicMapType_9029) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9008) (Heap1@@0 T@PolymorphicMapType_9008) (Heap2 T@PolymorphicMapType_9008) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5559_24525) ) (!  (not (select (|PolymorphicMapType_9557_9068_25703#PolymorphicMapType_9557| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9557_9068_25703#PolymorphicMapType_9557| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5559_24392) ) (!  (not (select (|PolymorphicMapType_9557_9068_24392#PolymorphicMapType_9557| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9557_9068_24392#PolymorphicMapType_9557| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15252_3276) ) (!  (not (select (|PolymorphicMapType_9557_9068_3276#PolymorphicMapType_9557| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9557_9068_3276#PolymorphicMapType_9557| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9081_9082) ) (!  (not (select (|PolymorphicMapType_9557_9068_9082#PolymorphicMapType_9557| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9557_9068_9082#PolymorphicMapType_9557| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9068_53) ) (!  (not (select (|PolymorphicMapType_9557_9068_53#PolymorphicMapType_9557| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9557_9068_53#PolymorphicMapType_9557| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.297:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9008) (n T@Ref) ) (! (dummyFunction_5588 (|purify_node#triggerStateless| n))
 :qid |stdinbpl.436:15|
 :skolemid |83|
 :pattern ( (|purify_node'| Heap@@0 n))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_5598| (|Set#Union_5598| a@@0 b@@0) b@@0) (|Set#Union_5598| a@@0 b@@0))
 :qid |stdinbpl.249:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5598| (|Set#Union_5598| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5598| (|Set#Intersection_5598| a@@1 b@@1) b@@1) (|Set#Intersection_5598| a@@1 b@@1))
 :qid |stdinbpl.253:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5598| (|Set#Intersection_5598| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_5598| r) o) (= r o))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5598| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_5598| (|Set#Union_5598| a@@2 b@@2)) (|Set#Card_5598| (|Set#Intersection_5598| a@@2 b@@2))) (+ (|Set#Card_5598| a@@2) (|Set#Card_5598| b@@2)))
 :qid |stdinbpl.257:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5598| (|Set#Union_5598| a@@2 b@@2)))
 :pattern ( (|Set#Card_5598| (|Set#Intersection_5598| a@@2 b@@2)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9008) (n@@0 T@Ref) ) (!  (and (= (purify_node Heap@@1 n@@0) (|purify_node'| Heap@@1 n@@0)) (dummyFunction_5588 (|purify_node#triggerStateless| n@@0)))
 :qid |stdinbpl.432:15|
 :skolemid |82|
 :pattern ( (purify_node Heap@@1 n@@0))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.300:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9008) (ExhaleHeap T@PolymorphicMapType_9008) (Mask@@0 T@PolymorphicMapType_9029) (pm_f_19 T@Field_5559_24392) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5559_24456 Mask@@0 null pm_f_19) (IsPredicateField_5559_24483 pm_f_19)) (= (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@2) null (PredicateMaskField_5559 pm_f_19)) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap) null (PredicateMaskField_5559 pm_f_19)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_5559_24483 pm_f_19) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap) null (PredicateMaskField_5559 pm_f_19)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9008) (ExhaleHeap@@0 T@PolymorphicMapType_9008) (Mask@@1 T@PolymorphicMapType_9029) (pm_f_19@@0 T@Field_5559_24392) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5559_24456 Mask@@1 null pm_f_19@@0) (IsWandField_5559_26230 pm_f_19@@0)) (= (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@3) null (WandMaskField_5559 pm_f_19@@0)) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@0) null (WandMaskField_5559 pm_f_19@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_5559_26230 pm_f_19@@0) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@0) null (WandMaskField_5559 pm_f_19@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9008) (ExhaleHeap@@1 T@PolymorphicMapType_9008) (Mask@@2 T@PolymorphicMapType_9029) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@4) o_12 $allocated) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@1) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@1) o_12 $allocated))
)))
(assert (forall ((p T@Field_5559_24392) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9068_9068 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9068_9068 p v_1 p w))
)))
(assert  (not (IsPredicateField_5557_3276 m_20)))
(assert  (not (IsWandField_5557_3276 m_20)))
(assert  (not (IsPredicateField_5559_5560 l)))
(assert  (not (IsWandField_5559_5560 l)))
(assert  (not (IsPredicateField_5559_5560 r_11)))
(assert  (not (IsWandField_5559_5560 r_11)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9008) (ExhaleHeap@@2 T@PolymorphicMapType_9008) (Mask@@3 T@PolymorphicMapType_9029) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_9029) (o_2@@4 T@Ref) (f_4@@4 T@Field_5559_24525) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5557_29747 f_4@@4))) (not (IsWandField_5557_29763 f_4@@4))) (<= (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_9029) (o_2@@5 T@Ref) (f_4@@5 T@Field_5559_24392) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5559_24483 f_4@@5))) (not (IsWandField_5559_26230 f_4@@5))) (<= (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_9029) (o_2@@6 T@Ref) (f_4@@6 T@Field_9068_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5557_53 f_4@@6))) (not (IsWandField_5557_53 f_4@@6))) (<= (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_9029) (o_2@@7 T@Ref) (f_4@@7 T@Field_9081_9082) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5559_5560 f_4@@7))) (not (IsWandField_5559_5560 f_4@@7))) (<= (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_9029) (o_2@@8 T@Ref) (f_4@@8 T@Field_15252_3276) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5557_3276 f_4@@8))) (not (IsWandField_5557_3276 f_4@@8))) (<= (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_9029) (o_2@@9 T@Ref) (f_4@@9 T@Field_5559_24525) ) (! (= (HasDirectPerm_5559_30201 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_30201 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9029) (o_2@@10 T@Ref) (f_4@@10 T@Field_5559_24392) ) (! (= (HasDirectPerm_5559_24456 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_24456 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9029) (o_2@@11 T@Ref) (f_4@@11 T@Field_15252_3276) ) (! (= (HasDirectPerm_5559_3276 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_3276 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9029) (o_2@@12 T@Ref) (f_4@@12 T@Field_9068_53) ) (! (= (HasDirectPerm_5559_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9029) (o_2@@13 T@Ref) (f_4@@13 T@Field_9081_9082) ) (! (= (HasDirectPerm_5559_5560 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5559_5560 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9008) (ExhaleHeap@@3 T@PolymorphicMapType_9008) (Mask@@14 T@PolymorphicMapType_9029) (pm_f_19@@1 T@Field_5559_24392) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5559_24456 Mask@@14 null pm_f_19@@1) (IsPredicateField_5559_24483 pm_f_19@@1)) (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_9068_53) ) (!  (=> (select (|PolymorphicMapType_9557_9068_53#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) null (PredicateMaskField_5559 pm_f_19@@1))) o2_19 f_19) (= (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@6) o2_19 f_19) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_9081_9082) ) (!  (=> (select (|PolymorphicMapType_9557_9068_9082#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) null (PredicateMaskField_5559 pm_f_19@@1))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@6) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_15252_3276) ) (!  (=> (select (|PolymorphicMapType_9557_9068_3276#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) null (PredicateMaskField_5559 pm_f_19@@1))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@6) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_5559_24392) ) (!  (=> (select (|PolymorphicMapType_9557_9068_24392#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) null (PredicateMaskField_5559 pm_f_19@@1))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@6) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_5559_24525) ) (!  (=> (select (|PolymorphicMapType_9557_9068_25703#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) null (PredicateMaskField_5559 pm_f_19@@1))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@6) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@3) o2_19@@3 f_19@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5559_24483 pm_f_19@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9008) (ExhaleHeap@@4 T@PolymorphicMapType_9008) (Mask@@15 T@PolymorphicMapType_9029) (pm_f_19@@2 T@Field_5559_24392) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5559_24456 Mask@@15 null pm_f_19@@2) (IsWandField_5559_26230 pm_f_19@@2)) (and (and (and (and (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_9068_53) ) (!  (=> (select (|PolymorphicMapType_9557_9068_53#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) null (WandMaskField_5559 pm_f_19@@2))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@7) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@4 f_19@@4))
)) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_9081_9082) ) (!  (=> (select (|PolymorphicMapType_9557_9068_9082#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) null (WandMaskField_5559 pm_f_19@@2))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@7) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_15252_3276) ) (!  (=> (select (|PolymorphicMapType_9557_9068_3276#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) null (WandMaskField_5559 pm_f_19@@2))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@7) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@6 f_19@@6))
))) (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_5559_24392) ) (!  (=> (select (|PolymorphicMapType_9557_9068_24392#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) null (WandMaskField_5559 pm_f_19@@2))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@7) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@7 f_19@@7))
))) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_5559_24525) ) (!  (=> (select (|PolymorphicMapType_9557_9068_25703#PolymorphicMapType_9557| (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) null (WandMaskField_5559 pm_f_19@@2))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@7) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@4) o2_19@@8 f_19@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_5559_26230 pm_f_19@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9008) (ExhaleHeap@@5 T@PolymorphicMapType_9008) (Mask@@16 T@PolymorphicMapType_9029) (o_12@@0 T@Ref) (f_19@@9 T@Field_5559_24525) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5559_30201 Mask@@16 o_12@@0 f_19@@9) (= (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@8) o_12@@0 f_19@@9) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@5) o_12@@0 f_19@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| ExhaleHeap@@5) o_12@@0 f_19@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9008) (ExhaleHeap@@6 T@PolymorphicMapType_9008) (Mask@@17 T@PolymorphicMapType_9029) (o_12@@1 T@Ref) (f_19@@10 T@Field_5559_24392) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5559_24456 Mask@@17 o_12@@1 f_19@@10) (= (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@9) o_12@@1 f_19@@10) (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@6) o_12@@1 f_19@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| ExhaleHeap@@6) o_12@@1 f_19@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9008) (ExhaleHeap@@7 T@PolymorphicMapType_9008) (Mask@@18 T@PolymorphicMapType_9029) (o_12@@2 T@Ref) (f_19@@11 T@Field_15252_3276) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5559_3276 Mask@@18 o_12@@2 f_19@@11) (= (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@10) o_12@@2 f_19@@11) (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@7) o_12@@2 f_19@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| ExhaleHeap@@7) o_12@@2 f_19@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9008) (ExhaleHeap@@8 T@PolymorphicMapType_9008) (Mask@@19 T@PolymorphicMapType_9029) (o_12@@3 T@Ref) (f_19@@12 T@Field_9068_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5559_53 Mask@@19 o_12@@3 f_19@@12) (= (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@11) o_12@@3 f_19@@12) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@8) o_12@@3 f_19@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| ExhaleHeap@@8) o_12@@3 f_19@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9008) (ExhaleHeap@@9 T@PolymorphicMapType_9008) (Mask@@20 T@PolymorphicMapType_9029) (o_12@@4 T@Ref) (f_19@@13 T@Field_9081_9082) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5559_5560 Mask@@20 o_12@@4 f_19@@13) (= (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@12) o_12@@4 f_19@@13) (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@9) o_12@@4 f_19@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| ExhaleHeap@@9) o_12@@4 f_19@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5559_24525) ) (! (= (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5559_24392) ) (! (= (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9068_53) ) (! (= (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9081_9082) ) (! (= (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15252_3276) ) (! (= (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9029) (SummandMask1 T@PolymorphicMapType_9029) (SummandMask2 T@PolymorphicMapType_9029) (o_2@@19 T@Ref) (f_4@@19 T@Field_5559_24525) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9029_5557_28632#PolymorphicMapType_9029| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9029) (SummandMask1@@0 T@PolymorphicMapType_9029) (SummandMask2@@0 T@PolymorphicMapType_9029) (o_2@@20 T@Ref) (f_4@@20 T@Field_5559_24392) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9029_5557_24392#PolymorphicMapType_9029| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9029) (SummandMask1@@1 T@PolymorphicMapType_9029) (SummandMask2@@1 T@PolymorphicMapType_9029) (o_2@@21 T@Ref) (f_4@@21 T@Field_9068_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9029_5557_53#PolymorphicMapType_9029| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9029) (SummandMask1@@2 T@PolymorphicMapType_9029) (SummandMask2@@2 T@PolymorphicMapType_9029) (o_2@@22 T@Ref) (f_4@@22 T@Field_9081_9082) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9029_5559_5560#PolymorphicMapType_9029| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9029) (SummandMask1@@3 T@PolymorphicMapType_9029) (SummandMask2@@3 T@PolymorphicMapType_9029) (o_2@@23 T@Ref) (f_4@@23 T@Field_15252_3276) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9029_5557_3276#PolymorphicMapType_9029| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_5598| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.246:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_5598| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_5598| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_5598| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_5598| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.261:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_5598| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_5598| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_5598| a@@6 x) y))
 :qid |stdinbpl.226:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_5598| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_5598| a@@7 b@@5) y@@0))
 :qid |stdinbpl.236:18|
 :skolemid |35|
 :pattern ( (|Set#Union_5598| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_5598| a@@8 b@@6) y@@1))
 :qid |stdinbpl.238:18|
 :skolemid |36|
 :pattern ( (|Set#Union_5598| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_5598| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.222:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_5598| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_5598| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.263:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_5598| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_5598| (|Set#Difference_5598| a@@11 b@@8)) (|Set#Card_5598| (|Set#Difference_5598| b@@8 a@@11))) (|Set#Card_5598| (|Set#Intersection_5598| a@@11 b@@8))) (|Set#Card_5598| (|Set#Union_5598| a@@11 b@@8))) (= (|Set#Card_5598| (|Set#Difference_5598| a@@11 b@@8)) (- (|Set#Card_5598| a@@11) (|Set#Card_5598| (|Set#Intersection_5598| a@@11 b@@8)))))
 :qid |stdinbpl.265:18|
 :skolemid |45|
 :pattern ( (|Set#Card_5598| (|Set#Difference_5598| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_5598| s))
 :qid |stdinbpl.208:18|
 :skolemid |22|
 :pattern ( (|Set#Card_5598| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_5598| a@@12 x@@1) x@@1)
 :qid |stdinbpl.224:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_5598| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_5598| (|Set#UnionOne_5598| a@@13 x@@2)) (|Set#Card_5598| a@@13)))
 :qid |stdinbpl.228:18|
 :skolemid |32|
 :pattern ( (|Set#Card_5598| (|Set#UnionOne_5598| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_5598| (|Set#Singleton_5598| r@@0)) 1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Set#Card_5598| (|Set#Singleton_5598| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_5598| r@@1) r@@1)
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5598| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_5598| a@@14 (|Set#Union_5598| a@@14 b@@9)) (|Set#Union_5598| a@@14 b@@9))
 :qid |stdinbpl.251:18|
 :skolemid |39|
 :pattern ( (|Set#Union_5598| a@@14 (|Set#Union_5598| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_5598| a@@15 (|Set#Intersection_5598| a@@15 b@@10)) (|Set#Intersection_5598| a@@15 b@@10))
 :qid |stdinbpl.255:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_5598| a@@15 (|Set#Intersection_5598| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_5598| o@@3))
 :qid |stdinbpl.211:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_5598| o@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9008) (o_1 T@Ref) (f_51 T@Field_5559_24392) (v T@FrameType) ) (! (succHeap Heap@@13 (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@13) (store (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@13) o_1 f_51 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@13) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@13) (store (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@13) o_1 f_51 v)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9008) (o_1@@0 T@Ref) (f_51@@0 T@Field_5559_24525) (v@@0 T@PolymorphicMapType_9557) ) (! (succHeap Heap@@14 (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@14) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@14) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@14) (store (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@14) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@14) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@14) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@14) (store (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@14) o_1@@0 f_51@@0 v@@0) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9008) (o_1@@1 T@Ref) (f_51@@1 T@Field_15252_3276) (v@@1 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@15) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@15) (store (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@15) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@15) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@15) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@15) (store (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@15) o_1@@1 f_51@@1 v@@1) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@15) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9008) (o_1@@2 T@Ref) (f_51@@2 T@Field_9081_9082) (v@@2 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@16) (store (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@16) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@16) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@16) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9008 (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@16) (store (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@16) o_1@@2 f_51@@2 v@@2) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@16) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@16) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9008) (o_1@@3 T@Ref) (f_51@@3 T@Field_9068_53) (v@@3 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_9008 (store (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@17) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9008 (store (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@17) o_1@@3 f_51@@3 v@@3) (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_5559_24569#PolymorphicMapType_9008| Heap@@17) (|PolymorphicMapType_9008_9068_24392#PolymorphicMapType_9008| Heap@@17)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.295:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.296:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_5598| s@@0) 0) (= s@@0 |Set#Empty_5598|)) (=> (not (= (|Set#Card_5598| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.214:33|
 :skolemid |24|
))))
 :qid |stdinbpl.212:18|
 :skolemid |25|
 :pattern ( (|Set#Card_5598| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_5598| (|Set#UnionOne_5598| a@@18 x@@4)) (+ (|Set#Card_5598| a@@18) 1)))
 :qid |stdinbpl.230:18|
 :skolemid |33|
 :pattern ( (|Set#Card_5598| (|Set#UnionOne_5598| a@@18 x@@4)))
)))
(assert (forall ((o_1@@4 T@Ref) (f_2 T@Field_9081_9082) (Heap@@18 T@PolymorphicMapType_9008) ) (!  (=> (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@18) o_1@@4 $allocated) (select (|PolymorphicMapType_9008_5253_53#PolymorphicMapType_9008| Heap@@18) (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@18) o_1@@4 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@18) o_1@@4 f_2))
)))
(assert (forall ((p@@1 T@Field_5559_24392) (v_1@@0 T@FrameType) (q T@Field_5559_24392) (w@@0 T@FrameType) (r@@2 T@Field_5559_24392) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9068_9068 p@@1 v_1@@0 q w@@0) (InsidePredicate_9068_9068 q w@@0 r@@2 u)) (InsidePredicate_9068_9068 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9068_9068 p@@1 v_1@@0 q w@@0) (InsidePredicate_9068_9068 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.301:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9008) (Mask@@21 T@PolymorphicMapType_9029) (n@@1 T@Ref) ) (!  (=> (and (state Heap@@19 Mask@@21) (or (< AssumeFunctionsAbove 0) (|purify_node#trigger| (CombineFrames (FrameFragment_3276 (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@19) n@@1 m_20)) (CombineFrames (FrameFragment_5560 (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@19) n@@1 l)) (FrameFragment_5560 (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@19) n@@1 r_11)))) n@@1))) (= (|purify_node'| Heap@@19 n@@1) default_node))
 :qid |stdinbpl.449:15|
 :skolemid |85|
 :pattern ( (state Heap@@19 Mask@@21) (|purify_node'| Heap@@19 n@@1))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_5598| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.234:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_5598| a@@20 b@@13) o@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9008) (Mask@@22 T@PolymorphicMapType_9029) (n@@2 T@Ref) ) (!  (=> (state Heap@@20 Mask@@22) (= (|purify_node'| Heap@@20 n@@2) (|purify_node#frame| (CombineFrames (FrameFragment_3276 (select (|PolymorphicMapType_9008_5557_3276#PolymorphicMapType_9008| Heap@@20) n@@2 m_20)) (CombineFrames (FrameFragment_5560 (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@20) n@@2 l)) (FrameFragment_5560 (select (|PolymorphicMapType_9008_5256_5257#PolymorphicMapType_9008| Heap@@20) n@@2 r_11)))) n@@2)))
 :qid |stdinbpl.443:15|
 :skolemid |84|
 :pattern ( (state Heap@@20 Mask@@22) (|purify_node'| Heap@@20 n@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |purify_node#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
