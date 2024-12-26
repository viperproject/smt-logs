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
(declare-sort T@Field_7416_53 0)
(declare-sort T@Field_7429_7430 0)
(declare-sort T@Field_4617_18506 0)
(declare-sort T@Field_4617_18373 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7377 0)) (((PolymorphicMapType_7377 (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| (Array T@Ref T@Field_7429_7430 Real)) (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| (Array T@Ref T@Field_7416_53 Real)) (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| (Array T@Ref T@Field_4617_18373 Real)) (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| (Array T@Ref T@Field_4617_18506 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7905 0)) (((PolymorphicMapType_7905 (|PolymorphicMapType_7905_7416_53#PolymorphicMapType_7905| (Array T@Ref T@Field_7416_53 Bool)) (|PolymorphicMapType_7905_7416_7430#PolymorphicMapType_7905| (Array T@Ref T@Field_7429_7430 Bool)) (|PolymorphicMapType_7905_7416_18373#PolymorphicMapType_7905| (Array T@Ref T@Field_4617_18373 Bool)) (|PolymorphicMapType_7905_7416_19486#PolymorphicMapType_7905| (Array T@Ref T@Field_4617_18506 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7356 0)) (((PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| (Array T@Ref T@Field_7416_53 Bool)) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| (Array T@Ref T@Field_7429_7430 T@Ref)) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| (Array T@Ref T@Field_4617_18506 T@PolymorphicMapType_7905)) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| (Array T@Ref T@Field_4617_18373 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7416_53)
(declare-fun left () T@Field_7429_7430)
(declare-fun succHeap (T@PolymorphicMapType_7356 T@PolymorphicMapType_7356) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7356 T@PolymorphicMapType_7356) Bool)
(declare-fun state (T@PolymorphicMapType_7356 T@PolymorphicMapType_7377) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7377) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7905)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4623| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4623| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4623| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4623| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7356 T@PolymorphicMapType_7356 T@PolymorphicMapType_7377) Bool)
(declare-fun IsPredicateField_4617_18464 (T@Field_4617_18373) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4617 (T@Field_4617_18373) T@Field_4617_18506)
(declare-fun HasDirectPerm_4617_18437 (T@PolymorphicMapType_7377 T@Ref T@Field_4617_18373) Bool)
(declare-fun IsWandField_4617_20013 (T@Field_4617_18373) Bool)
(declare-fun WandMaskField_4617 (T@Field_4617_18373) T@Field_4617_18506)
(declare-fun dummyHeap () T@PolymorphicMapType_7356)
(declare-fun ZeroMask () T@PolymorphicMapType_7377)
(declare-fun InsidePredicate_7416_7416 (T@Field_4617_18373 T@FrameType T@Field_4617_18373 T@FrameType) Bool)
(declare-fun IsPredicateField_4617_4618 (T@Field_7429_7430) Bool)
(declare-fun IsWandField_4617_4618 (T@Field_7429_7430) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4617_22947 (T@Field_4617_18506) Bool)
(declare-fun IsWandField_4617_22963 (T@Field_4617_18506) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4617_53 (T@Field_7416_53) Bool)
(declare-fun IsWandField_4617_53 (T@Field_7416_53) Bool)
(declare-fun |Set#Equal_4624| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_4617_23318 (T@PolymorphicMapType_7377 T@Ref T@Field_4617_18506) Bool)
(declare-fun HasDirectPerm_4617_53 (T@PolymorphicMapType_7377 T@Ref T@Field_7416_53) Bool)
(declare-fun HasDirectPerm_4617_4618 (T@PolymorphicMapType_7377 T@Ref T@Field_7429_7430) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7377 T@PolymorphicMapType_7377 T@PolymorphicMapType_7377) Bool)
(declare-fun |Set#Difference_4623| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4623| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_4623| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_7356) (Heap1 T@PolymorphicMapType_7356) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7356) (Mask T@PolymorphicMapType_7377) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7356) (Heap1@@0 T@PolymorphicMapType_7356) (Heap2 T@PolymorphicMapType_7356) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4617_18506) ) (!  (not (select (|PolymorphicMapType_7905_7416_19486#PolymorphicMapType_7905| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7905_7416_19486#PolymorphicMapType_7905| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4617_18373) ) (!  (not (select (|PolymorphicMapType_7905_7416_18373#PolymorphicMapType_7905| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7905_7416_18373#PolymorphicMapType_7905| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7429_7430) ) (!  (not (select (|PolymorphicMapType_7905_7416_7430#PolymorphicMapType_7905| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7905_7416_7430#PolymorphicMapType_7905| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7416_53) ) (!  (not (select (|PolymorphicMapType_7905_7416_53#PolymorphicMapType_7905| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7905_7416_53#PolymorphicMapType_7905| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4623| (|Set#Union_4623| a@@0 b@@0) b@@0) (|Set#Union_4623| a@@0 b@@0))
 :qid |stdinbpl.246:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4623| (|Set#Union_4623| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4623| (|Set#Intersection_4623| a@@1 b@@1) b@@1) (|Set#Intersection_4623| a@@1 b@@1))
 :qid |stdinbpl.250:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4623| (|Set#Intersection_4623| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4623| r) o) (= r o))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4623| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4623| (|Set#Union_4623| a@@2 b@@2)) (|Set#Card_4623| (|Set#Intersection_4623| a@@2 b@@2))) (+ (|Set#Card_4623| a@@2) (|Set#Card_4623| b@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4623| (|Set#Union_4623| a@@2 b@@2)))
 :pattern ( (|Set#Card_4623| (|Set#Intersection_4623| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7356) (ExhaleHeap T@PolymorphicMapType_7356) (Mask@@0 T@PolymorphicMapType_7377) (pm_f_13 T@Field_4617_18373) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4617_18437 Mask@@0 null pm_f_13) (IsPredicateField_4617_18464 pm_f_13)) (= (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@0) null (PredicateMaskField_4617 pm_f_13)) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap) null (PredicateMaskField_4617 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4617_18464 pm_f_13) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap) null (PredicateMaskField_4617 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7356) (ExhaleHeap@@0 T@PolymorphicMapType_7356) (Mask@@1 T@PolymorphicMapType_7377) (pm_f_13@@0 T@Field_4617_18373) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4617_18437 Mask@@1 null pm_f_13@@0) (IsWandField_4617_20013 pm_f_13@@0)) (= (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@1) null (WandMaskField_4617 pm_f_13@@0)) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@0) null (WandMaskField_4617 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4617_20013 pm_f_13@@0) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@0) null (WandMaskField_4617 pm_f_13@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7356) (ExhaleHeap@@1 T@PolymorphicMapType_7356) (Mask@@2 T@PolymorphicMapType_7377) (pm_f_13@@1 T@Field_4617_18373) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4617_18437 Mask@@2 null pm_f_13@@1) (IsPredicateField_4617_18464 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7416_53) ) (!  (=> (select (|PolymorphicMapType_7905_7416_53#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@2) null (PredicateMaskField_4617 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@2) o2_13 f_30) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_7429_7430) ) (!  (=> (select (|PolymorphicMapType_7905_7416_7430#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@2) null (PredicateMaskField_4617 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@2) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_4617_18373) ) (!  (=> (select (|PolymorphicMapType_7905_7416_18373#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@2) null (PredicateMaskField_4617 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@2) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4617_18506) ) (!  (=> (select (|PolymorphicMapType_7905_7416_19486#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@2) null (PredicateMaskField_4617 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@2) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@1) o2_13@@2 f_30@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4617_18464 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7356) (ExhaleHeap@@2 T@PolymorphicMapType_7356) (Mask@@3 T@PolymorphicMapType_7377) (pm_f_13@@2 T@Field_4617_18373) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4617_18437 Mask@@3 null pm_f_13@@2) (IsWandField_4617_20013 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_7416_53) ) (!  (=> (select (|PolymorphicMapType_7905_7416_53#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@3) null (WandMaskField_4617 pm_f_13@@2))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@3) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@3 f_30@@3))
)) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_7429_7430) ) (!  (=> (select (|PolymorphicMapType_7905_7416_7430#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@3) null (WandMaskField_4617 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@3) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_4617_18373) ) (!  (=> (select (|PolymorphicMapType_7905_7416_18373#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@3) null (WandMaskField_4617 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@3) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_4617_18506) ) (!  (=> (select (|PolymorphicMapType_7905_7416_19486#PolymorphicMapType_7905| (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@3) null (WandMaskField_4617 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@3) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@2) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4617_20013 pm_f_13@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7356) (ExhaleHeap@@3 T@PolymorphicMapType_7356) (Mask@@4 T@PolymorphicMapType_7377) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@4) o_22 $allocated) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@3) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@3) o_22 $allocated))
)))
(assert (forall ((p T@Field_4617_18373) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7416_7416 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7416_7416 p v_1 p w))
)))
(assert  (not (IsPredicateField_4617_4618 left)))
(assert  (not (IsWandField_4617_4618 left)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7356) (ExhaleHeap@@4 T@PolymorphicMapType_7356) (Mask@@5 T@PolymorphicMapType_7377) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7377) (o_2@@3 T@Ref) (f_4@@3 T@Field_4617_18506) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4617_22947 f_4@@3))) (not (IsWandField_4617_22963 f_4@@3))) (<= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7377) (o_2@@4 T@Ref) (f_4@@4 T@Field_4617_18373) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4617_18464 f_4@@4))) (not (IsWandField_4617_20013 f_4@@4))) (<= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7377) (o_2@@5 T@Ref) (f_4@@5 T@Field_7416_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4617_53 f_4@@5))) (not (IsWandField_4617_53 f_4@@5))) (<= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7377) (o_2@@6 T@Ref) (f_4@@6 T@Field_7429_7430) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4617_4618 f_4@@6))) (not (IsWandField_4617_4618 f_4@@6))) (<= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_4624| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.279:31|
 :skolemid |48|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.278:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_4624| a@@4 b@@3))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7377) (o_2@@7 T@Ref) (f_4@@7 T@Field_4617_18506) ) (! (= (HasDirectPerm_4617_23318 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4617_23318 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7377) (o_2@@8 T@Ref) (f_4@@8 T@Field_4617_18373) ) (! (= (HasDirectPerm_4617_18437 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4617_18437 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7377) (o_2@@9 T@Ref) (f_4@@9 T@Field_7416_53) ) (! (= (HasDirectPerm_4617_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4617_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7377) (o_2@@10 T@Ref) (f_4@@10 T@Field_7429_7430) ) (! (= (HasDirectPerm_4617_4618 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4617_4618 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7356) (ExhaleHeap@@5 T@PolymorphicMapType_7356) (Mask@@14 T@PolymorphicMapType_7377) (o_22@@0 T@Ref) (f_30@@7 T@Field_4617_18506) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4617_23318 Mask@@14 o_22@@0 f_30@@7) (= (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@6) o_22@@0 f_30@@7) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@5) o_22@@0 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| ExhaleHeap@@5) o_22@@0 f_30@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7356) (ExhaleHeap@@6 T@PolymorphicMapType_7356) (Mask@@15 T@PolymorphicMapType_7377) (o_22@@1 T@Ref) (f_30@@8 T@Field_4617_18373) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4617_18437 Mask@@15 o_22@@1 f_30@@8) (= (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@7) o_22@@1 f_30@@8) (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@6) o_22@@1 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| ExhaleHeap@@6) o_22@@1 f_30@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7356) (ExhaleHeap@@7 T@PolymorphicMapType_7356) (Mask@@16 T@PolymorphicMapType_7377) (o_22@@2 T@Ref) (f_30@@9 T@Field_7416_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4617_53 Mask@@16 o_22@@2 f_30@@9) (= (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@8) o_22@@2 f_30@@9) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@7) o_22@@2 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| ExhaleHeap@@7) o_22@@2 f_30@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7356) (ExhaleHeap@@8 T@PolymorphicMapType_7356) (Mask@@17 T@PolymorphicMapType_7377) (o_22@@3 T@Ref) (f_30@@10 T@Field_7429_7430) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4617_4618 Mask@@17 o_22@@3 f_30@@10) (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@9) o_22@@3 f_30@@10) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@8) o_22@@3 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@@8) o_22@@3 f_30@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4617_18506) ) (! (= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4617_18373) ) (! (= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_7416_53) ) (! (= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7429_7430) ) (! (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7377) (SummandMask1 T@PolymorphicMapType_7377) (SummandMask2 T@PolymorphicMapType_7377) (o_2@@15 T@Ref) (f_4@@15 T@Field_4617_18506) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7377) (SummandMask1@@0 T@PolymorphicMapType_7377) (SummandMask2@@0 T@PolymorphicMapType_7377) (o_2@@16 T@Ref) (f_4@@16 T@Field_4617_18373) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7377) (SummandMask1@@1 T@PolymorphicMapType_7377) (SummandMask2@@1 T@PolymorphicMapType_7377) (o_2@@17 T@Ref) (f_4@@17 T@Field_7416_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7377) (SummandMask1@@2 T@PolymorphicMapType_7377) (SummandMask2@@2 T@PolymorphicMapType_7377) (o_2@@18 T@Ref) (f_4@@18 T@Field_7429_7430) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_4623| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.243:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4623| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_4623| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_4623| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_4623| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.258:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4623| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_4623| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_4624| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.280:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_4624| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@8 y) (select (|Set#UnionOne_4623| a@@8 x) y))
 :qid |stdinbpl.223:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4623| a@@8 x) (select a@@8 y))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@9 y@@0) (select (|Set#Union_4623| a@@9 b@@7) y@@0))
 :qid |stdinbpl.233:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4623| a@@9 b@@7) (select a@@9 y@@0))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@8 y@@1) (select (|Set#Union_4623| a@@10 b@@8) y@@1))
 :qid |stdinbpl.235:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4623| a@@10 b@@8) (select b@@8 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_4623| a@@11 x@@0) o@@3)  (or (= o@@3 x@@0) (select a@@11 o@@3)))
 :qid |stdinbpl.219:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4623| a@@11 x@@0) o@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@9 y@@2) (not (select (|Set#Difference_4623| a@@12 b@@9) y@@2)))
 :qid |stdinbpl.260:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4623| a@@12 b@@9) (select b@@9 y@@2))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4623| (|Set#Difference_4623| a@@13 b@@10)) (|Set#Card_4623| (|Set#Difference_4623| b@@10 a@@13))) (|Set#Card_4623| (|Set#Intersection_4623| a@@13 b@@10))) (|Set#Card_4623| (|Set#Union_4623| a@@13 b@@10))) (= (|Set#Card_4623| (|Set#Difference_4623| a@@13 b@@10)) (- (|Set#Card_4623| a@@13) (|Set#Card_4623| (|Set#Intersection_4623| a@@13 b@@10)))))
 :qid |stdinbpl.262:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4623| (|Set#Difference_4623| a@@13 b@@10)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4623| s))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4623| s))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4623| a@@14 x@@1) x@@1)
 :qid |stdinbpl.221:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4623| a@@14 x@@1))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@15 x@@2) (= (|Set#Card_4623| (|Set#UnionOne_4623| a@@15 x@@2)) (|Set#Card_4623| a@@15)))
 :qid |stdinbpl.225:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4623| (|Set#UnionOne_4623| a@@15 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4623| (|Set#Singleton_4623| r@@0)) 1)
 :qid |stdinbpl.216:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4623| (|Set#Singleton_4623| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4623| r@@1) r@@1)
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4623| r@@1))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (|Set#Union_4623| a@@16 (|Set#Union_4623| a@@16 b@@11)) (|Set#Union_4623| a@@16 b@@11))
 :qid |stdinbpl.248:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4623| a@@16 (|Set#Union_4623| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4623| a@@17 (|Set#Intersection_4623| a@@17 b@@12)) (|Set#Intersection_4623| a@@17 b@@12))
 :qid |stdinbpl.252:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4623| a@@17 (|Set#Intersection_4623| a@@17 b@@12)))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_4623| o@@4))
 :qid |stdinbpl.208:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4623| o@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7356) (o_35 T@Ref) (f_11 T@Field_4617_18373) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@10) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@10) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@10) (store (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@10) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@10) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@10) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@10) (store (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@10) o_35 f_11 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7356) (o_35@@0 T@Ref) (f_11@@0 T@Field_4617_18506) (v@@0 T@PolymorphicMapType_7905) ) (! (succHeap Heap@@11 (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@11) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@11) (store (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@11) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@11) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@11) (store (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@11) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7356) (o_35@@1 T@Ref) (f_11@@1 T@Field_7429_7430) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@12) (store (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@12) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@12) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7356 (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@12) (store (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@12) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@12) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7356) (o_35@@2 T@Ref) (f_11@@2 T@Field_7416_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_7356 (store (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@13) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@13) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@13) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7356 (store (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@13) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@13) (|PolymorphicMapType_7356_4617_18550#PolymorphicMapType_7356| Heap@@13) (|PolymorphicMapType_7356_7416_18373#PolymorphicMapType_7356| Heap@@13)))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4623| s@@0) 0) (= s@@0 |Set#Empty_4623|)) (=> (not (= (|Set#Card_4623| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.211:33|
 :skolemid |24|
))))
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4623| s@@0))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@20 x@@4)) (= (|Set#Card_4623| (|Set#UnionOne_4623| a@@20 x@@4)) (+ (|Set#Card_4623| a@@20) 1)))
 :qid |stdinbpl.227:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4623| (|Set#UnionOne_4623| a@@20 x@@4)))
)))
(assert (forall ((o_35@@3 T@Ref) (f_31 T@Field_7429_7430) (Heap@@14 T@PolymorphicMapType_7356) ) (!  (=> (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@14) o_35@@3 $allocated) (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@14) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@14) o_35@@3 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@14) o_35@@3 f_31))
)))
(assert (forall ((p@@1 T@Field_4617_18373) (v_1@@0 T@FrameType) (q T@Field_4617_18373) (w@@0 T@FrameType) (r@@2 T@Field_4617_18373) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7416_7416 p@@1 v_1@@0 q w@@0) (InsidePredicate_7416_7416 q w@@0 r@@2 u)) (InsidePredicate_7416_7416 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7416_7416 p@@1 v_1@@0 q w@@0) (InsidePredicate_7416_7416 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_4623| a@@22 b@@15) o@@5)  (or (select a@@22 o@@5) (select b@@15 o@@5)))
 :qid |stdinbpl.231:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4623| a@@22 b@@15) o@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun n_11 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_7377)
(declare-fun QPMask@0 () T@PolymorphicMapType_7377)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7356)
(declare-fun Heap@@15 () T@PolymorphicMapType_7356)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_7377)
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon9_correct true))
(let ((anon15_Else_correct  (=> (and (not (select xs n_11)) (= (ControlFlow 0 12) 7)) anon9_correct)))
(let ((anon15_Then_correct  (=> (select xs n_11) (and (=> (= (ControlFlow 0 8) (- 0 11)) (HasDirectPerm_4617_4618 QPMask@2 n_11 left)) (=> (HasDirectPerm_4617_4618 QPMask@2 n_11 left) (and (=> (= (ControlFlow 0 8) (- 0 10)) true) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_4617_4618 QPMask@0 n_11 left)) (=> (HasDirectPerm_4617_4618 QPMask@0 n_11 left) (=> (= (ControlFlow 0 8) 7) anon9_correct)))))))))
(let ((anon14_Else_correct  (=> (forall ((n_7 T@Ref) ) (!  (=> (select xs n_7) (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@0) n_7 left) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_7 left)))
 :qid |stdinbpl.611:20|
 :skolemid |100|
 :pattern ( (select xs n_7) (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@0) n_7 left))
)) (=> (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_4617_4618 QPMask@2 a_2 left)) (=> (HasDirectPerm_4617_4618 QPMask@2 a_2 left) (=> (= (ControlFlow 0 5) (- 0 4)) (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@0) a_2 left) b_24))))))))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select xs n_5)) (select xs n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.560:15|
 :skolemid |94|
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select xs n_5@@0)) (select xs n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.560:15|
 :skolemid |94|
)) (=> (and (and (forall ((n_5@@1 T@Ref) ) (!  (=> (and (select xs n_5@@1) (< NoPerm FullPerm)) (and (qpRange3 n_5@@1) (= (invRecv3 n_5@@1) n_5@@1)))
 :qid |stdinbpl.566:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@0) n_5@@1 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) n_5@@1 left))
 :pattern ( (select xs n_5@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select xs (invRecv3 o_4)) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (invRecv3 o_4) o_4))
 :qid |stdinbpl.570:22|
 :skolemid |96|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((n_5@@2 T@Ref) ) (!  (=> (select xs n_5@@2) (not (= n_5@@2 null)))
 :qid |stdinbpl.576:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| ExhaleHeap@0) n_5@@2 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) n_5@@2 left))
 :pattern ( (select xs n_5@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) o_4@@0 left) (+ (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@0 left) FullPerm)))) (=> (not (and (and (select xs (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) o_4@@0 left) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@0 left))))
 :qid |stdinbpl.582:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) o_4@@0 left))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_7416_53) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.586:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_7429_7430) ) (!  (=> (not (= f_5@@0 left)) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.586:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_4617_18373) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.586:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4617_18506) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.586:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@2) o_4@@4 f_5@@2))
))) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 13) 5) anon14_Else_correct) (=> (= (ControlFlow 0 13) 8) anon15_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct))))))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select xs n_3)) (select xs n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.512:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 n_3) (neverTriggered2 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select xs n_3@@0)) (select xs n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.512:17|
 :skolemid |88|
 :pattern ( (neverTriggered2 n_3@@0) (neverTriggered2 n_3_1@@0))
)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select xs n_3@@1) (>= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) n_3@@1 left) FullPerm))
 :qid |stdinbpl.519:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_3@@1 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) n_3@@1 left))
 :pattern ( (select xs n_3@@1))
))) (=> (forall ((n_3@@2 T@Ref) ) (!  (=> (select xs n_3@@2) (>= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) n_3@@2 left) FullPerm))
 :qid |stdinbpl.519:17|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_3@@2 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) n_3@@2 left))
 :pattern ( (select xs n_3@@2))
)) (=> (forall ((n_3@@3 T@Ref) ) (!  (=> (and (select xs n_3@@3) (< NoPerm FullPerm)) (and (qpRange2 n_3@@3) (= (invRecv2 n_3@@3) n_3@@3)))
 :qid |stdinbpl.525:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_3@@3 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) n_3@@3 left))
 :pattern ( (select xs n_3@@3))
)) (=> (and (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select xs (invRecv2 o_4@@5)) (and (< NoPerm FullPerm) (qpRange2 o_4@@5))) (= (invRecv2 o_4@@5) o_4@@5))
 :qid |stdinbpl.529:22|
 :skolemid |91|
 :pattern ( (invRecv2 o_4@@5))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (select xs (invRecv2 o_4@@6)) (and (< NoPerm FullPerm) (qpRange2 o_4@@6))) (and (= (invRecv2 o_4@@6) o_4@@6) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@6 left) (- (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@6 left) FullPerm)))) (=> (not (and (select xs (invRecv2 o_4@@6)) (and (< NoPerm FullPerm) (qpRange2 o_4@@6)))) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@6 left) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@6 left))))
 :qid |stdinbpl.535:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@6 left))
))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_7416_53) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@0) o_4@@7 f_5@@3) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@1) o_4@@7 f_5@@3)))
 :qid |stdinbpl.541:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@1) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_7429_7430) ) (!  (=> (not (= f_5@@4 left)) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.541:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@1) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_4617_18373) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.541:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_4617_18506) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.541:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@1) o_4@@10 f_5@@6))
))) (and (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (=> (= (ControlFlow 0 15) 3) anon13_Then_correct) (=> (= (ControlFlow 0 15) 13) anon13_Else_correct)))))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select xs n_1)) (select xs n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.446:15|
 :skolemid |82|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select xs n_1@@0)) (select xs n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.446:15|
 :skolemid |82|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select xs n_1@@1) (< NoPerm FullPerm)) (and (qpRange1 n_1@@1) (= (invRecv1 n_1@@1) n_1@@1)))
 :qid |stdinbpl.452:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_1@@1 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) n_1@@1 left))
 :pattern ( (select xs n_1@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_4@@11)) (< NoPerm FullPerm)) (qpRange1 o_4@@11)) (= (invRecv1 o_4@@11) o_4@@11))
 :qid |stdinbpl.456:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4@@11))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select xs n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.462:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) n_1@@2 left))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) n_1@@2 left))
 :pattern ( (select xs n_1@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_4@@12)) (< NoPerm FullPerm)) (qpRange1 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@12 left) (+ (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_4@@12 left) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_4@@12)) (< NoPerm FullPerm)) (qpRange1 o_4@@12))) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@12 left) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_4@@12 left))))
 :qid |stdinbpl.468:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@12 left))
)))) (=> (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_7416_53) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ZeroMask) o_4@@13 f_5@@7) (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@0) o_4@@13 f_5@@7)))
 :qid |stdinbpl.472:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| ZeroMask) o_4@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_7377_4617_53#PolymorphicMapType_7377| QPMask@0) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_7429_7430) ) (!  (=> (not (= f_5@@8 left)) (= (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_4@@14 f_5@@8) (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@14 f_5@@8)))
 :qid |stdinbpl.472:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| ZeroMask) o_4@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_7377_4617_4618#PolymorphicMapType_7377| QPMask@0) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_4617_18373) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.472:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_7377_4617_18373#PolymorphicMapType_7377| QPMask@0) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_4617_18506) ) (!  (=> true (= (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.472:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_7377_4617_22052#PolymorphicMapType_7377| QPMask@0) o_4@@16 f_5@@10))
))) (state Heap@@15 QPMask@0)) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (HasDirectPerm_4617_4618 QPMask@0 a_2 left)) (=> (HasDirectPerm_4617_4618 QPMask@0 a_2 left) (=> (and (and (= (select (|PolymorphicMapType_7356_4319_4320#PolymorphicMapType_7356| Heap@@15) a_2 left) b_24) (state Heap@@15 QPMask@0)) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 18) 2) anon12_Then_correct) (=> (= (ControlFlow 0 18) 15) anon12_Else_correct)))))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@15) a_2 $allocated)) (=> (and (and (select (|PolymorphicMapType_7356_4316_53#PolymorphicMapType_7356| Heap@@15) b_24 $allocated) (|Set#Equal_4624| xs (|Set#UnionOne_4623| (|Set#Singleton_4623| b_24) a_2))) (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 21) 1) anon11_Then_correct) (=> (= (ControlFlow 0 21) 18) anon11_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
