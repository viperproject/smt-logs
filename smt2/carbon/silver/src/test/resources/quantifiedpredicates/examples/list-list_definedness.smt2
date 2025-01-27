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
(declare-sort T@Field_34754_53 0)
(declare-sort T@Field_34767_34768 0)
(declare-sort T@Field_41103_4470 0)
(declare-sort T@Field_41599_41600 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_44294_44299 0)
(declare-sort T@Field_23460_23497 0)
(declare-sort T@Field_23460_44299 0)
(declare-sort T@Field_23496_4470 0)
(declare-sort T@Field_23496_23463 0)
(declare-sort T@Field_23496_53 0)
(declare-datatypes ((T@PolymorphicMapType_34715 0)) (((PolymorphicMapType_34715 (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| (Array T@Ref T@Field_41599_41600 Real)) (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| (Array T@Ref T@Field_41103_4470 Real)) (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| (Array T@Ref T@Field_34767_34768 Real)) (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| (Array T@Ref T@Field_23496_4470 Real)) (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| (Array T@Ref T@Field_23496_23463 Real)) (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| (Array T@Ref T@Field_23496_53 Real)) (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| (Array T@Ref T@Field_44294_44299 Real)) (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| (Array T@Ref T@Field_23460_23497 Real)) (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| (Array T@Ref T@Field_34754_53 Real)) (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| (Array T@Ref T@Field_23460_44299 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35243 0)) (((PolymorphicMapType_35243 (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| (Array T@Ref T@Field_41103_4470 Bool)) (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| (Array T@Ref T@Field_34767_34768 Bool)) (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| (Array T@Ref T@Field_34754_53 Bool)) (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| (Array T@Ref T@Field_23460_23497 Bool)) (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| (Array T@Ref T@Field_23460_44299 Bool)) (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| (Array T@Ref T@Field_23496_4470 Bool)) (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| (Array T@Ref T@Field_23496_23463 Bool)) (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| (Array T@Ref T@Field_23496_53 Bool)) (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| (Array T@Ref T@Field_41599_41600 Bool)) (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| (Array T@Ref T@Field_44294_44299 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34694 0)) (((PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| (Array T@Ref T@Field_34754_53 Bool)) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| (Array T@Ref T@Field_34767_34768 T@Ref)) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| (Array T@Ref T@Field_41103_4470 Int)) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| (Array T@Ref T@Field_41599_41600 T@FrameType)) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| (Array T@Ref T@Field_44294_44299 T@PolymorphicMapType_35243)) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| (Array T@Ref T@Field_23460_23497 T@FrameType)) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| (Array T@Ref T@Field_23460_44299 T@PolymorphicMapType_35243)) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| (Array T@Ref T@Field_23496_4470 Int)) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| (Array T@Ref T@Field_23496_23463 T@Ref)) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| (Array T@Ref T@Field_23496_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_34754_53)
(declare-fun val () T@Field_41103_4470)
(declare-fun next () T@Field_34767_34768)
(declare-fun succHeap (T@PolymorphicMapType_34694 T@PolymorphicMapType_34694) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34694 T@PolymorphicMapType_34694) Bool)
(declare-fun state (T@PolymorphicMapType_34694 T@PolymorphicMapType_34715) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34715) Bool)
(declare-fun |allSet'| (T@PolymorphicMapType_34694 T@Ref Int Int) Bool)
(declare-fun dummyFunction_4813 (Bool) Bool)
(declare-fun |allSet#triggerStateless| (T@Ref Int Int) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35243)
(declare-fun list (T@Ref Int) T@Field_41599_41600)
(declare-fun IsPredicateField_23496_23497 (T@Field_41599_41600) Bool)
(declare-fun |list#trigger_23496| (T@PolymorphicMapType_34694 T@Field_41599_41600) Bool)
(declare-fun |list#everUsed_23496| (T@Field_41599_41600) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun allSet (T@PolymorphicMapType_34694 T@Ref Int Int) Bool)
(declare-fun |Set#Union_23539| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_23536| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_23552| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_23536| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34694 T@PolymorphicMapType_34694 T@PolymorphicMapType_34715) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_23496 (T@Field_41599_41600) T@Field_44294_44299)
(declare-fun HasDirectPerm_23496_23497 (T@PolymorphicMapType_34715 T@Ref T@Field_41599_41600) Bool)
(declare-fun IsPredicateField_23460_111271 (T@Field_23460_23497) Bool)
(declare-fun PredicateMaskField_23460 (T@Field_23460_23497) T@Field_23460_44299)
(declare-fun HasDirectPerm_23460_23497 (T@PolymorphicMapType_34715 T@Ref T@Field_23460_23497) Bool)
(declare-fun IsWandField_23496_114941 (T@Field_41599_41600) Bool)
(declare-fun WandMaskField_23496 (T@Field_41599_41600) T@Field_44294_44299)
(declare-fun IsWandField_23460_114584 (T@Field_23460_23497) Bool)
(declare-fun WandMaskField_23460 (T@Field_23460_23497) T@Field_23460_44299)
(declare-fun |list#sm| (T@Ref Int) T@Field_44294_44299)
(declare-fun dummyHeap () T@PolymorphicMapType_34694)
(declare-fun ZeroMask () T@PolymorphicMapType_34715)
(declare-fun InsidePredicate_34754_34754 (T@Field_23460_23497 T@FrameType T@Field_23460_23497 T@FrameType) Bool)
(declare-fun InsidePredicate_23496_23496 (T@Field_41599_41600 T@FrameType T@Field_41599_41600 T@FrameType) Bool)
(declare-fun IsPredicateField_23460_4470 (T@Field_41103_4470) Bool)
(declare-fun IsWandField_23460_4470 (T@Field_41103_4470) Bool)
(declare-fun IsPredicateField_23462_23463 (T@Field_34767_34768) Bool)
(declare-fun IsWandField_23462_23463 (T@Field_34767_34768) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_23460_121844 (T@Field_23460_44299) Bool)
(declare-fun IsWandField_23460_121860 (T@Field_23460_44299) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_23460_53 (T@Field_34754_53) Bool)
(declare-fun IsWandField_23460_53 (T@Field_34754_53) Bool)
(declare-fun IsPredicateField_23496_121041 (T@Field_44294_44299) Bool)
(declare-fun IsWandField_23496_121057 (T@Field_44294_44299) Bool)
(declare-fun IsPredicateField_23496_53 (T@Field_23496_53) Bool)
(declare-fun IsWandField_23496_53 (T@Field_23496_53) Bool)
(declare-fun IsPredicateField_23496_23463 (T@Field_23496_23463) Bool)
(declare-fun IsWandField_23496_23463 (T@Field_23496_23463) Bool)
(declare-fun IsPredicateField_23496_4470 (T@Field_23496_4470) Bool)
(declare-fun IsWandField_23496_4470 (T@Field_23496_4470) Bool)
(declare-fun HasDirectPerm_23496_111026 (T@PolymorphicMapType_34715 T@Ref T@Field_44294_44299) Bool)
(declare-fun HasDirectPerm_23496_53 (T@PolymorphicMapType_34715 T@Ref T@Field_23496_53) Bool)
(declare-fun HasDirectPerm_23496_23463 (T@PolymorphicMapType_34715 T@Ref T@Field_23496_23463) Bool)
(declare-fun HasDirectPerm_23496_4470 (T@PolymorphicMapType_34715 T@Ref T@Field_23496_4470) Bool)
(declare-fun HasDirectPerm_23460_109885 (T@PolymorphicMapType_34715 T@Ref T@Field_23460_44299) Bool)
(declare-fun HasDirectPerm_23460_53 (T@PolymorphicMapType_34715 T@Ref T@Field_34754_53) Bool)
(declare-fun HasDirectPerm_23462_23463 (T@PolymorphicMapType_34715 T@Ref T@Field_34767_34768) Bool)
(declare-fun HasDirectPerm_23460_4470 (T@PolymorphicMapType_34715 T@Ref T@Field_41103_4470) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34715 T@PolymorphicMapType_34715 T@PolymorphicMapType_34715) Bool)
(declare-fun |allSet#frame| (T@FrameType T@Ref Int Int) Bool)
(declare-fun |Set#Difference_23536| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Set#UnionOne_23536| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_23496_23497 (T@Field_41599_41600) Int)
(declare-fun |Set#Empty_23598| () (Array T@Ref Bool))
(declare-fun InsidePredicate_34754_23496 (T@Field_23460_23497 T@FrameType T@Field_41599_41600 T@FrameType) Bool)
(declare-fun InsidePredicate_23496_34754 (T@Field_41599_41600 T@FrameType T@Field_23460_23497 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_34694) (Heap1 T@PolymorphicMapType_34694) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34694) (Mask T@PolymorphicMapType_34715) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34694) (Heap1@@0 T@PolymorphicMapType_34694) (Heap2 T@PolymorphicMapType_34694) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34694) (r_1 T@Ref) (i Int) (v_2 Int) ) (! (dummyFunction_4813 (|allSet#triggerStateless| r_1 i v_2))
 :qid |stdinbpl.539:15|
 :skolemid |83|
 :pattern ( (|allSet'| Heap@@0 r_1 i v_2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_44294_44299) ) (!  (not (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_41599_41600) ) (!  (not (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23496_53) ) (!  (not (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23496_23463) ) (!  (not (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23496_4470) ) (!  (not (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_23460_44299) ) (!  (not (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23460_23497) ) (!  (not (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_34754_53) ) (!  (not (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34767_34768) ) (!  (not (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41103_4470) ) (!  (not (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((r_1@@0 T@Ref) (i@@0 Int) ) (! (IsPredicateField_23496_23497 (list r_1@@0 i@@0))
 :qid |stdinbpl.672:15|
 :skolemid |88|
 :pattern ( (list r_1@@0 i@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34694) (r_1@@1 T@Ref) (i@@1 Int) ) (! (|list#everUsed_23496| (list r_1@@1 i@@1))
 :qid |stdinbpl.691:15|
 :skolemid |92|
 :pattern ( (|list#trigger_23496| Heap@@1 (list r_1@@1 i@@1)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.423:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34694) (r_1@@2 T@Ref) (i@@2 Int) (v_2@@0 Int) ) (!  (and (= (allSet Heap@@2 r_1@@2 i@@2 v_2@@0) (|allSet'| Heap@@2 r_1@@2 i@@2 v_2@@0)) (dummyFunction_4813 (|allSet#triggerStateless| r_1@@2 i@@2 v_2@@0)))
 :qid |stdinbpl.535:15|
 :skolemid |82|
 :pattern ( (allSet Heap@@2 r_1@@2 i@@2 v_2@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_23539| (|Set#Union_23539| a@@0 b@@0) b@@0) (|Set#Union_23539| a@@0 b@@0))
 :qid |stdinbpl.375:18|
 :skolemid |38|
 :pattern ( (|Set#Union_23539| (|Set#Union_23539| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_23536| (|Set#Intersection_23536| a@@1 b@@1) b@@1) (|Set#Intersection_23536| a@@1 b@@1))
 :qid |stdinbpl.379:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_23536| (|Set#Intersection_23536| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_23552| r) o) (= r o))
 :qid |stdinbpl.344:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_23552| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_23536| (|Set#Union_23539| a@@2 b@@2)) (|Set#Card_23536| (|Set#Intersection_23536| a@@2 b@@2))) (+ (|Set#Card_23536| a@@2) (|Set#Card_23536| b@@2)))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Set#Card_23536| (|Set#Union_23539| a@@2 b@@2)))
 :pattern ( (|Set#Card_23536| (|Set#Intersection_23536| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.426:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34694) (ExhaleHeap T@PolymorphicMapType_34694) (Mask@@0 T@PolymorphicMapType_34715) (pm_f_17 T@Field_41599_41600) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23496_23497 Mask@@0 null pm_f_17) (IsPredicateField_23496_23497 pm_f_17)) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@3) null (PredicateMaskField_23496 pm_f_17)) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap) null (PredicateMaskField_23496 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_23496_23497 pm_f_17) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap) null (PredicateMaskField_23496 pm_f_17)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34694) (ExhaleHeap@@0 T@PolymorphicMapType_34694) (Mask@@1 T@PolymorphicMapType_34715) (pm_f_17@@0 T@Field_23460_23497) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_23460_23497 Mask@@1 null pm_f_17@@0) (IsPredicateField_23460_111271 pm_f_17@@0)) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@4) null (PredicateMaskField_23460 pm_f_17@@0)) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@0) null (PredicateMaskField_23460 pm_f_17@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_23460_111271 pm_f_17@@0) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@0) null (PredicateMaskField_23460 pm_f_17@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34694) (ExhaleHeap@@1 T@PolymorphicMapType_34694) (Mask@@2 T@PolymorphicMapType_34715) (pm_f_17@@1 T@Field_41599_41600) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_23496_23497 Mask@@2 null pm_f_17@@1) (IsWandField_23496_114941 pm_f_17@@1)) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@5) null (WandMaskField_23496 pm_f_17@@1)) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@1) null (WandMaskField_23496 pm_f_17@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_23496_114941 pm_f_17@@1) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@1) null (WandMaskField_23496 pm_f_17@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34694) (ExhaleHeap@@2 T@PolymorphicMapType_34694) (Mask@@3 T@PolymorphicMapType_34715) (pm_f_17@@2 T@Field_23460_23497) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_23460_23497 Mask@@3 null pm_f_17@@2) (IsWandField_23460_114584 pm_f_17@@2)) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@6) null (WandMaskField_23460 pm_f_17@@2)) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@2) null (WandMaskField_23460 pm_f_17@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_23460_114584 pm_f_17@@2) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@2) null (WandMaskField_23460 pm_f_17@@2)))
)))
(assert (forall ((r_1@@3 T@Ref) (i@@3 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (list r_1@@3 i@@3) (list r2 i2)) (and (= r_1@@3 r2) (= i@@3 i2)))
 :qid |stdinbpl.682:15|
 :skolemid |90|
 :pattern ( (list r_1@@3 i@@3) (list r2 i2))
)))
(assert (forall ((r_1@@4 T@Ref) (i@@4 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|list#sm| r_1@@4 i@@4) (|list#sm| r2@@0 i2@@0)) (and (= r_1@@4 r2@@0) (= i@@4 i2@@0)))
 :qid |stdinbpl.686:15|
 :skolemid |91|
 :pattern ( (|list#sm| r_1@@4 i@@4) (|list#sm| r2@@0 i2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34694) (ExhaleHeap@@3 T@PolymorphicMapType_34694) (Mask@@4 T@PolymorphicMapType_34715) (pm_f_17@@3 T@Field_41599_41600) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_23496_23497 Mask@@4 null pm_f_17@@3) (IsPredicateField_23496_23497 pm_f_17@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_17 T@Ref) (f_18 T@Field_41103_4470) ) (!  (=> (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17 f_18) (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@7) o2_17 f_18) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17 f_18))
)) (forall ((o2_17@@0 T@Ref) (f_18@@0 T@Field_34767_34768) ) (!  (=> (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@0 f_18@@0) (= (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@7) o2_17@@0 f_18@@0) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@0 f_18@@0))
))) (forall ((o2_17@@1 T@Ref) (f_18@@1 T@Field_34754_53) ) (!  (=> (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@1 f_18@@1) (= (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@7) o2_17@@1 f_18@@1) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@1 f_18@@1))
))) (forall ((o2_17@@2 T@Ref) (f_18@@2 T@Field_23460_23497) ) (!  (=> (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@2 f_18@@2) (= (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@7) o2_17@@2 f_18@@2) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@2 f_18@@2))
))) (forall ((o2_17@@3 T@Ref) (f_18@@3 T@Field_23460_44299) ) (!  (=> (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@3 f_18@@3) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@7) o2_17@@3 f_18@@3) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@3 f_18@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@3 f_18@@3))
))) (forall ((o2_17@@4 T@Ref) (f_18@@4 T@Field_23496_4470) ) (!  (=> (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@4 f_18@@4) (= (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@7) o2_17@@4 f_18@@4) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@4 f_18@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@4 f_18@@4))
))) (forall ((o2_17@@5 T@Ref) (f_18@@5 T@Field_23496_23463) ) (!  (=> (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@5 f_18@@5) (= (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@7) o2_17@@5 f_18@@5) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@5 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@5 f_18@@5))
))) (forall ((o2_17@@6 T@Ref) (f_18@@6 T@Field_23496_53) ) (!  (=> (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@6 f_18@@6) (= (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@7) o2_17@@6 f_18@@6) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@6 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@6 f_18@@6))
))) (forall ((o2_17@@7 T@Ref) (f_18@@7 T@Field_41599_41600) ) (!  (=> (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@7 f_18@@7) (= (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@7) o2_17@@7 f_18@@7) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@7 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@7 f_18@@7))
))) (forall ((o2_17@@8 T@Ref) (f_18@@8 T@Field_44294_44299) ) (!  (=> (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) null (PredicateMaskField_23496 pm_f_17@@3))) o2_17@@8 f_18@@8) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@7) o2_17@@8 f_18@@8) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@8 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@3) o2_17@@8 f_18@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_23496_23497 pm_f_17@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34694) (ExhaleHeap@@4 T@PolymorphicMapType_34694) (Mask@@5 T@PolymorphicMapType_34715) (pm_f_17@@4 T@Field_23460_23497) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_23460_23497 Mask@@5 null pm_f_17@@4) (IsPredicateField_23460_111271 pm_f_17@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_17@@9 T@Ref) (f_18@@9 T@Field_41103_4470) ) (!  (=> (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@9 f_18@@9) (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@8) o2_17@@9 f_18@@9) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@9 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@9 f_18@@9))
)) (forall ((o2_17@@10 T@Ref) (f_18@@10 T@Field_34767_34768) ) (!  (=> (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@10 f_18@@10) (= (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@8) o2_17@@10 f_18@@10) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@10 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@10 f_18@@10))
))) (forall ((o2_17@@11 T@Ref) (f_18@@11 T@Field_34754_53) ) (!  (=> (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@11 f_18@@11) (= (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@8) o2_17@@11 f_18@@11) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@11 f_18@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@11 f_18@@11))
))) (forall ((o2_17@@12 T@Ref) (f_18@@12 T@Field_23460_23497) ) (!  (=> (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@12 f_18@@12) (= (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@8) o2_17@@12 f_18@@12) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@12 f_18@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@12 f_18@@12))
))) (forall ((o2_17@@13 T@Ref) (f_18@@13 T@Field_23460_44299) ) (!  (=> (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@13 f_18@@13) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) o2_17@@13 f_18@@13) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@13 f_18@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@13 f_18@@13))
))) (forall ((o2_17@@14 T@Ref) (f_18@@14 T@Field_23496_4470) ) (!  (=> (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@14 f_18@@14) (= (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@8) o2_17@@14 f_18@@14) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@14 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@14 f_18@@14))
))) (forall ((o2_17@@15 T@Ref) (f_18@@15 T@Field_23496_23463) ) (!  (=> (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@15 f_18@@15) (= (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@8) o2_17@@15 f_18@@15) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@15 f_18@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@15 f_18@@15))
))) (forall ((o2_17@@16 T@Ref) (f_18@@16 T@Field_23496_53) ) (!  (=> (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@16 f_18@@16) (= (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@8) o2_17@@16 f_18@@16) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@16 f_18@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@16 f_18@@16))
))) (forall ((o2_17@@17 T@Ref) (f_18@@17 T@Field_41599_41600) ) (!  (=> (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@17 f_18@@17) (= (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@8) o2_17@@17 f_18@@17) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@17 f_18@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@17 f_18@@17))
))) (forall ((o2_17@@18 T@Ref) (f_18@@18 T@Field_44294_44299) ) (!  (=> (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@8) null (PredicateMaskField_23460 pm_f_17@@4))) o2_17@@18 f_18@@18) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@8) o2_17@@18 f_18@@18) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@18 f_18@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@4) o2_17@@18 f_18@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_23460_111271 pm_f_17@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34694) (ExhaleHeap@@5 T@PolymorphicMapType_34694) (Mask@@6 T@PolymorphicMapType_34715) (pm_f_17@@5 T@Field_41599_41600) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_23496_23497 Mask@@6 null pm_f_17@@5) (IsWandField_23496_114941 pm_f_17@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_17@@19 T@Ref) (f_18@@19 T@Field_41103_4470) ) (!  (=> (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@19 f_18@@19) (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@9) o2_17@@19 f_18@@19) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@19 f_18@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@19 f_18@@19))
)) (forall ((o2_17@@20 T@Ref) (f_18@@20 T@Field_34767_34768) ) (!  (=> (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@20 f_18@@20) (= (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@9) o2_17@@20 f_18@@20) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@20 f_18@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@20 f_18@@20))
))) (forall ((o2_17@@21 T@Ref) (f_18@@21 T@Field_34754_53) ) (!  (=> (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@21 f_18@@21) (= (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@9) o2_17@@21 f_18@@21) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@21 f_18@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@21 f_18@@21))
))) (forall ((o2_17@@22 T@Ref) (f_18@@22 T@Field_23460_23497) ) (!  (=> (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@22 f_18@@22) (= (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@9) o2_17@@22 f_18@@22) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@22 f_18@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@22 f_18@@22))
))) (forall ((o2_17@@23 T@Ref) (f_18@@23 T@Field_23460_44299) ) (!  (=> (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@23 f_18@@23) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@9) o2_17@@23 f_18@@23) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@23 f_18@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@23 f_18@@23))
))) (forall ((o2_17@@24 T@Ref) (f_18@@24 T@Field_23496_4470) ) (!  (=> (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@24 f_18@@24) (= (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@9) o2_17@@24 f_18@@24) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@24 f_18@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@24 f_18@@24))
))) (forall ((o2_17@@25 T@Ref) (f_18@@25 T@Field_23496_23463) ) (!  (=> (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@25 f_18@@25) (= (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@9) o2_17@@25 f_18@@25) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@25 f_18@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@25 f_18@@25))
))) (forall ((o2_17@@26 T@Ref) (f_18@@26 T@Field_23496_53) ) (!  (=> (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@26 f_18@@26) (= (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@9) o2_17@@26 f_18@@26) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@26 f_18@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@26 f_18@@26))
))) (forall ((o2_17@@27 T@Ref) (f_18@@27 T@Field_41599_41600) ) (!  (=> (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@27 f_18@@27) (= (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@9) o2_17@@27 f_18@@27) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@27 f_18@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@27 f_18@@27))
))) (forall ((o2_17@@28 T@Ref) (f_18@@28 T@Field_44294_44299) ) (!  (=> (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) null (WandMaskField_23496 pm_f_17@@5))) o2_17@@28 f_18@@28) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@9) o2_17@@28 f_18@@28) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@28 f_18@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@5) o2_17@@28 f_18@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_23496_114941 pm_f_17@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34694) (ExhaleHeap@@6 T@PolymorphicMapType_34694) (Mask@@7 T@PolymorphicMapType_34715) (pm_f_17@@6 T@Field_23460_23497) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_23460_23497 Mask@@7 null pm_f_17@@6) (IsWandField_23460_114584 pm_f_17@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_17@@29 T@Ref) (f_18@@29 T@Field_41103_4470) ) (!  (=> (select (|PolymorphicMapType_35243_23460_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@29 f_18@@29) (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@10) o2_17@@29 f_18@@29) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@29 f_18@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@29 f_18@@29))
)) (forall ((o2_17@@30 T@Ref) (f_18@@30 T@Field_34767_34768) ) (!  (=> (select (|PolymorphicMapType_35243_23462_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@30 f_18@@30) (= (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@10) o2_17@@30 f_18@@30) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@30 f_18@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@30 f_18@@30))
))) (forall ((o2_17@@31 T@Ref) (f_18@@31 T@Field_34754_53) ) (!  (=> (select (|PolymorphicMapType_35243_23460_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@31 f_18@@31) (= (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@10) o2_17@@31 f_18@@31) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@31 f_18@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@31 f_18@@31))
))) (forall ((o2_17@@32 T@Ref) (f_18@@32 T@Field_23460_23497) ) (!  (=> (select (|PolymorphicMapType_35243_23460_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@32 f_18@@32) (= (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@10) o2_17@@32 f_18@@32) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@32 f_18@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@32 f_18@@32))
))) (forall ((o2_17@@33 T@Ref) (f_18@@33 T@Field_23460_44299) ) (!  (=> (select (|PolymorphicMapType_35243_23460_112728#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@33 f_18@@33) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) o2_17@@33 f_18@@33) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@33 f_18@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@33 f_18@@33))
))) (forall ((o2_17@@34 T@Ref) (f_18@@34 T@Field_23496_4470) ) (!  (=> (select (|PolymorphicMapType_35243_41599_4470#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@34 f_18@@34) (= (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@10) o2_17@@34 f_18@@34) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@34 f_18@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@34 f_18@@34))
))) (forall ((o2_17@@35 T@Ref) (f_18@@35 T@Field_23496_23463) ) (!  (=> (select (|PolymorphicMapType_35243_41599_23463#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@35 f_18@@35) (= (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@10) o2_17@@35 f_18@@35) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@35 f_18@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@35 f_18@@35))
))) (forall ((o2_17@@36 T@Ref) (f_18@@36 T@Field_23496_53) ) (!  (=> (select (|PolymorphicMapType_35243_41599_53#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@36 f_18@@36) (= (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@10) o2_17@@36 f_18@@36) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@36 f_18@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@36 f_18@@36))
))) (forall ((o2_17@@37 T@Ref) (f_18@@37 T@Field_41599_41600) ) (!  (=> (select (|PolymorphicMapType_35243_41599_41600#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@37 f_18@@37) (= (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@10) o2_17@@37 f_18@@37) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@37 f_18@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@37 f_18@@37))
))) (forall ((o2_17@@38 T@Ref) (f_18@@38 T@Field_44294_44299) ) (!  (=> (select (|PolymorphicMapType_35243_41599_113776#PolymorphicMapType_35243| (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@10) null (WandMaskField_23460 pm_f_17@@6))) o2_17@@38 f_18@@38) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@10) o2_17@@38 f_18@@38) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@38 f_18@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@6) o2_17@@38 f_18@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_23460_114584 pm_f_17@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34694) (ExhaleHeap@@7 T@PolymorphicMapType_34694) (Mask@@8 T@PolymorphicMapType_34715) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@11) o_37 $allocated) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@7) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@7) o_37 $allocated))
)))
(assert (forall ((p T@Field_23460_23497) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34754_34754 p v_1 p w))
 :qid |stdinbpl.321:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34754_34754 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_41599_41600) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_23496_23496 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.321:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23496_23496 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_23460_4470 val)))
(assert  (not (IsWandField_23460_4470 val)))
(assert  (not (IsPredicateField_23462_23463 next)))
(assert  (not (IsWandField_23462_23463 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34694) (ExhaleHeap@@8 T@PolymorphicMapType_34694) (Mask@@9 T@PolymorphicMapType_34715) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34715) (o_2@@9 T@Ref) (f_4@@9 T@Field_23460_44299) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_23460_121844 f_4@@9))) (not (IsWandField_23460_121860 f_4@@9))) (<= (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34715) (o_2@@10 T@Ref) (f_4@@10 T@Field_34754_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_23460_53 f_4@@10))) (not (IsWandField_23460_53 f_4@@10))) (<= (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34715) (o_2@@11 T@Ref) (f_4@@11 T@Field_34767_34768) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_23462_23463 f_4@@11))) (not (IsWandField_23462_23463 f_4@@11))) (<= (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34715) (o_2@@12 T@Ref) (f_4@@12 T@Field_41103_4470) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_23460_4470 f_4@@12))) (not (IsWandField_23460_4470 f_4@@12))) (<= (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34715) (o_2@@13 T@Ref) (f_4@@13 T@Field_23460_23497) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_23460_111271 f_4@@13))) (not (IsWandField_23460_114584 f_4@@13))) (<= (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34715) (o_2@@14 T@Ref) (f_4@@14 T@Field_44294_44299) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_23496_121041 f_4@@14))) (not (IsWandField_23496_121057 f_4@@14))) (<= (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_34715) (o_2@@15 T@Ref) (f_4@@15 T@Field_23496_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_23496_53 f_4@@15))) (not (IsWandField_23496_53 f_4@@15))) (<= (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_34715) (o_2@@16 T@Ref) (f_4@@16 T@Field_23496_23463) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_23496_23463 f_4@@16))) (not (IsWandField_23496_23463 f_4@@16))) (<= (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_34715) (o_2@@17 T@Ref) (f_4@@17 T@Field_23496_4470) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_23496_4470 f_4@@17))) (not (IsWandField_23496_4470 f_4@@17))) (<= (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_34715) (o_2@@18 T@Ref) (f_4@@18 T@Field_41599_41600) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_23496_23497 f_4@@18))) (not (IsWandField_23496_114941 f_4@@18))) (<= (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_34715) (o_2@@19 T@Ref) (f_4@@19 T@Field_44294_44299) ) (! (= (HasDirectPerm_23496_111026 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23496_111026 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_34715) (o_2@@20 T@Ref) (f_4@@20 T@Field_23496_53) ) (! (= (HasDirectPerm_23496_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23496_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_34715) (o_2@@21 T@Ref) (f_4@@21 T@Field_41599_41600) ) (! (= (HasDirectPerm_23496_23497 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23496_23497 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_34715) (o_2@@22 T@Ref) (f_4@@22 T@Field_23496_23463) ) (! (= (HasDirectPerm_23496_23463 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23496_23463 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_34715) (o_2@@23 T@Ref) (f_4@@23 T@Field_23496_4470) ) (! (= (HasDirectPerm_23496_4470 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23496_4470 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_34715) (o_2@@24 T@Ref) (f_4@@24 T@Field_23460_44299) ) (! (= (HasDirectPerm_23460_109885 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23460_109885 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_34715) (o_2@@25 T@Ref) (f_4@@25 T@Field_34754_53) ) (! (= (HasDirectPerm_23460_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23460_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_34715) (o_2@@26 T@Ref) (f_4@@26 T@Field_23460_23497) ) (! (= (HasDirectPerm_23460_23497 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23460_23497 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_34715) (o_2@@27 T@Ref) (f_4@@27 T@Field_34767_34768) ) (! (= (HasDirectPerm_23462_23463 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23462_23463 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_34715) (o_2@@28 T@Ref) (f_4@@28 T@Field_41103_4470) ) (! (= (HasDirectPerm_23460_4470 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23460_4470 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.309:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34694) (ExhaleHeap@@9 T@PolymorphicMapType_34694) (Mask@@30 T@PolymorphicMapType_34715) (o_37@@0 T@Ref) (f_18@@39 T@Field_44294_44299) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_23496_111026 Mask@@30 o_37@@0 f_18@@39) (= (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@13) o_37@@0 f_18@@39) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@9) o_37@@0 f_18@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| ExhaleHeap@@9) o_37@@0 f_18@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34694) (ExhaleHeap@@10 T@PolymorphicMapType_34694) (Mask@@31 T@PolymorphicMapType_34715) (o_37@@1 T@Ref) (f_18@@40 T@Field_23496_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_23496_53 Mask@@31 o_37@@1 f_18@@40) (= (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@14) o_37@@1 f_18@@40) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@10) o_37@@1 f_18@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| ExhaleHeap@@10) o_37@@1 f_18@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34694) (ExhaleHeap@@11 T@PolymorphicMapType_34694) (Mask@@32 T@PolymorphicMapType_34715) (o_37@@2 T@Ref) (f_18@@41 T@Field_41599_41600) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_23496_23497 Mask@@32 o_37@@2 f_18@@41) (= (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@15) o_37@@2 f_18@@41) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@11) o_37@@2 f_18@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| ExhaleHeap@@11) o_37@@2 f_18@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34694) (ExhaleHeap@@12 T@PolymorphicMapType_34694) (Mask@@33 T@PolymorphicMapType_34715) (o_37@@3 T@Ref) (f_18@@42 T@Field_23496_23463) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_23496_23463 Mask@@33 o_37@@3 f_18@@42) (= (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@16) o_37@@3 f_18@@42) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@12) o_37@@3 f_18@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| ExhaleHeap@@12) o_37@@3 f_18@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34694) (ExhaleHeap@@13 T@PolymorphicMapType_34694) (Mask@@34 T@PolymorphicMapType_34715) (o_37@@4 T@Ref) (f_18@@43 T@Field_23496_4470) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_23496_4470 Mask@@34 o_37@@4 f_18@@43) (= (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@17) o_37@@4 f_18@@43) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@13) o_37@@4 f_18@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| ExhaleHeap@@13) o_37@@4 f_18@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_34694) (ExhaleHeap@@14 T@PolymorphicMapType_34694) (Mask@@35 T@PolymorphicMapType_34715) (o_37@@5 T@Ref) (f_18@@44 T@Field_23460_44299) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_23460_109885 Mask@@35 o_37@@5 f_18@@44) (= (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@18) o_37@@5 f_18@@44) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@14) o_37@@5 f_18@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| ExhaleHeap@@14) o_37@@5 f_18@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_34694) (ExhaleHeap@@15 T@PolymorphicMapType_34694) (Mask@@36 T@PolymorphicMapType_34715) (o_37@@6 T@Ref) (f_18@@45 T@Field_34754_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_23460_53 Mask@@36 o_37@@6 f_18@@45) (= (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@19) o_37@@6 f_18@@45) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@15) o_37@@6 f_18@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| ExhaleHeap@@15) o_37@@6 f_18@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_34694) (ExhaleHeap@@16 T@PolymorphicMapType_34694) (Mask@@37 T@PolymorphicMapType_34715) (o_37@@7 T@Ref) (f_18@@46 T@Field_23460_23497) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_23460_23497 Mask@@37 o_37@@7 f_18@@46) (= (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@20) o_37@@7 f_18@@46) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@16) o_37@@7 f_18@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| ExhaleHeap@@16) o_37@@7 f_18@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_34694) (ExhaleHeap@@17 T@PolymorphicMapType_34694) (Mask@@38 T@PolymorphicMapType_34715) (o_37@@8 T@Ref) (f_18@@47 T@Field_34767_34768) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_23462_23463 Mask@@38 o_37@@8 f_18@@47) (= (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@21) o_37@@8 f_18@@47) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@17) o_37@@8 f_18@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| ExhaleHeap@@17) o_37@@8 f_18@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_34694) (ExhaleHeap@@18 T@PolymorphicMapType_34694) (Mask@@39 T@PolymorphicMapType_34715) (o_37@@9 T@Ref) (f_18@@48 T@Field_41103_4470) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_23460_4470 Mask@@39 o_37@@9 f_18@@48) (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@22) o_37@@9 f_18@@48) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@18) o_37@@9 f_18@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| ExhaleHeap@@18) o_37@@9 f_18@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_23460_44299) ) (! (= (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_34754_53) ) (! (= (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_34767_34768) ) (! (= (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_41103_4470) ) (! (= (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_23460_23497) ) (! (= (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_44294_44299) ) (! (= (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_23496_53) ) (! (= (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_23496_23463) ) (! (= (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_23496_4470) ) (! (= (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_41599_41600) ) (! (= (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34715) (SummandMask1 T@PolymorphicMapType_34715) (SummandMask2 T@PolymorphicMapType_34715) (o_2@@39 T@Ref) (f_4@@39 T@Field_23460_44299) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34715) (SummandMask1@@0 T@PolymorphicMapType_34715) (SummandMask2@@0 T@PolymorphicMapType_34715) (o_2@@40 T@Ref) (f_4@@40 T@Field_34754_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34715) (SummandMask1@@1 T@PolymorphicMapType_34715) (SummandMask2@@1 T@PolymorphicMapType_34715) (o_2@@41 T@Ref) (f_4@@41 T@Field_34767_34768) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34715) (SummandMask1@@2 T@PolymorphicMapType_34715) (SummandMask2@@2 T@PolymorphicMapType_34715) (o_2@@42 T@Ref) (f_4@@42 T@Field_41103_4470) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34715) (SummandMask1@@3 T@PolymorphicMapType_34715) (SummandMask2@@3 T@PolymorphicMapType_34715) (o_2@@43 T@Ref) (f_4@@43 T@Field_23460_23497) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34715) (SummandMask1@@4 T@PolymorphicMapType_34715) (SummandMask2@@4 T@PolymorphicMapType_34715) (o_2@@44 T@Ref) (f_4@@44 T@Field_44294_44299) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_34715) (SummandMask1@@5 T@PolymorphicMapType_34715) (SummandMask2@@5 T@PolymorphicMapType_34715) (o_2@@45 T@Ref) (f_4@@45 T@Field_23496_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_34715) (SummandMask1@@6 T@PolymorphicMapType_34715) (SummandMask2@@6 T@PolymorphicMapType_34715) (o_2@@46 T@Ref) (f_4@@46 T@Field_23496_23463) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_34715) (SummandMask1@@7 T@PolymorphicMapType_34715) (SummandMask2@@7 T@PolymorphicMapType_34715) (o_2@@47 T@Ref) (f_4@@47 T@Field_23496_4470) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_34715) (SummandMask1@@8 T@PolymorphicMapType_34715) (SummandMask2@@8 T@PolymorphicMapType_34715) (o_2@@48 T@Ref) (f_4@@48 T@Field_41599_41600) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_23536| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.372:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_23536| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_23536| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_23536| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_34694) (Mask@@40 T@PolymorphicMapType_34715) (r_1@@5 T@Ref) (i@@5 Int) (v_2@@1 Int) ) (!  (=> (state Heap@@23 Mask@@40) (= (|allSet'| Heap@@23 r_1@@5 i@@5 v_2@@1) (|allSet#frame| (select (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@23) null (list r_1@@5 i@@5)) r_1@@5 i@@5 v_2@@1)))
 :qid |stdinbpl.552:15|
 :skolemid |85|
 :pattern ( (state Heap@@23 Mask@@40) (|allSet'| Heap@@23 r_1@@5 i@@5 v_2@@1))
 :pattern ( (state Heap@@23 Mask@@40) (|allSet#triggerStateless| r_1@@5 i@@5 v_2@@1) (|list#trigger_23496| Heap@@23 (list r_1@@5 i@@5)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_23536| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.387:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_23536| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_23536| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_34694) (Mask@@41 T@PolymorphicMapType_34715) (r_1@@6 T@Ref) (i@@6 Int) (v_2@@2 Int) ) (!  (=> (and (state Heap@@24 Mask@@41) (< AssumeFunctionsAbove 0)) (= (allSet Heap@@24 r_1@@6 i@@6 v_2@@2)  (or (<= i@@6 0) (and (= (select (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@24) r_1@@6 val) v_2@@2) (|allSet'| Heap@@24 (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@24) r_1@@6 next) (- i@@6 1) v_2@@2)))))
 :qid |stdinbpl.545:15|
 :skolemid |84|
 :pattern ( (state Heap@@24 Mask@@41) (allSet Heap@@24 r_1@@6 i@@6 v_2@@2))
 :pattern ( (state Heap@@24 Mask@@41) (|allSet#triggerStateless| r_1@@6 i@@6 v_2@@2) (|list#trigger_23496| Heap@@24 (list r_1@@6 i@@6)))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_23536| a@@6 x) y))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_23536| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_23539| a@@7 b@@5) y@@0))
 :qid |stdinbpl.362:18|
 :skolemid |35|
 :pattern ( (|Set#Union_23539| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_23539| a@@8 b@@6) y@@1))
 :qid |stdinbpl.364:18|
 :skolemid |36|
 :pattern ( (|Set#Union_23539| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_23536| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.348:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_23536| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_23536| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.389:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_23536| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_23536| (|Set#Difference_23536| a@@11 b@@8)) (|Set#Card_23536| (|Set#Difference_23536| b@@8 a@@11))) (|Set#Card_23536| (|Set#Intersection_23536| a@@11 b@@8))) (|Set#Card_23536| (|Set#Union_23539| a@@11 b@@8))) (= (|Set#Card_23536| (|Set#Difference_23536| a@@11 b@@8)) (- (|Set#Card_23536| a@@11) (|Set#Card_23536| (|Set#Intersection_23536| a@@11 b@@8)))))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Set#Card_23536| (|Set#Difference_23536| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_23536| s))
 :qid |stdinbpl.334:18|
 :skolemid |22|
 :pattern ( (|Set#Card_23536| s))
)))
(assert (forall ((r_1@@7 T@Ref) (i@@7 Int) ) (! (= (getPredWandId_23496_23497 (list r_1@@7 i@@7)) 0)
 :qid |stdinbpl.676:15|
 :skolemid |89|
 :pattern ( (list r_1@@7 i@@7))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_23536| a@@12 x@@1) x@@1)
 :qid |stdinbpl.350:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_23536| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_23536| (|Set#UnionOne_23536| a@@13 x@@2)) (|Set#Card_23536| a@@13)))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Set#Card_23536| (|Set#UnionOne_23536| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_23536| (|Set#Singleton_23552| r@@0)) 1)
 :qid |stdinbpl.345:18|
 :skolemid |28|
 :pattern ( (|Set#Card_23536| (|Set#Singleton_23552| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_23552| r@@1) r@@1)
 :qid |stdinbpl.343:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_23552| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_23539| a@@14 (|Set#Union_23539| a@@14 b@@9)) (|Set#Union_23539| a@@14 b@@9))
 :qid |stdinbpl.377:18|
 :skolemid |39|
 :pattern ( (|Set#Union_23539| a@@14 (|Set#Union_23539| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_23536| a@@15 (|Set#Intersection_23536| a@@15 b@@10)) (|Set#Intersection_23536| a@@15 b@@10))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_23536| a@@15 (|Set#Intersection_23536| a@@15 b@@10)))
)))
(assert (forall ((r_1@@8 T@Ref) (i@@8 Int) ) (! (= (PredicateMaskField_23496 (list r_1@@8 i@@8)) (|list#sm| r_1@@8 i@@8))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (PredicateMaskField_23496 (list r_1@@8 i@@8)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_23598| o@@3))
 :qid |stdinbpl.337:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_23598| o@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_34694) (o_36 T@Ref) (f_29 T@Field_44294_44299) (v T@PolymorphicMapType_35243) ) (! (succHeap Heap@@25 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@25) (store (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@25) o_36 f_29 v) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@25) (store (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@25) o_36 f_29 v) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@25) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_34694) (o_36@@0 T@Ref) (f_29@@0 T@Field_41599_41600) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@26) (store (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@26) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@26) (store (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@26) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@26) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_34694) (o_36@@1 T@Ref) (f_29@@1 T@Field_23496_4470) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@27) (store (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@27) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@27) (store (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@27) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@27) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_34694) (o_36@@2 T@Ref) (f_29@@2 T@Field_23496_23463) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@28) (store (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@28) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@28) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@28) (store (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@28) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_34694) (o_36@@3 T@Ref) (f_29@@3 T@Field_23496_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@29) (store (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@29) o_36@@3 f_29@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@29) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@29) (store (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@29) o_36@@3 f_29@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_34694) (o_36@@4 T@Ref) (f_29@@4 T@Field_23460_44299) (v@@4 T@PolymorphicMapType_35243) ) (! (succHeap Heap@@30 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@30) (store (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@30) o_36@@4 f_29@@4 v@@4) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@30) (store (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@30) o_36@@4 f_29@@4 v@@4) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@30) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_34694) (o_36@@5 T@Ref) (f_29@@5 T@Field_23460_23497) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@31) (store (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@31) o_36@@5 f_29@@5 v@@5) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@31) (store (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@31) o_36@@5 f_29@@5 v@@5) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@31) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_34694) (o_36@@6 T@Ref) (f_29@@6 T@Field_41103_4470) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@32) (store (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@32) o_36@@6 f_29@@6 v@@6) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@32) (store (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@32) o_36@@6 f_29@@6 v@@6) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@32) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_34694) (o_36@@7 T@Ref) (f_29@@7 T@Field_34767_34768) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@33) (store (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@33) o_36@@7 f_29@@7 v@@7) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@33) (store (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@33) o_36@@7 f_29@@7 v@@7) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@33) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_34694) (o_36@@8 T@Ref) (f_29@@8 T@Field_34754_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_34694 (store (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@34) o_36@@8 f_29@@8 v@@8) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34694 (store (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@34) o_36@@8 f_29@@8 v@@8) (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_4470#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_23497#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23500_44388#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_23497#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23460_109927#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_4470#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_23463#PolymorphicMapType_34694| Heap@@34) (|PolymorphicMapType_34694_23496_53#PolymorphicMapType_34694| Heap@@34)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.421:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.422:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_23536| s@@0) 0) (= s@@0 |Set#Empty_23598|)) (=> (not (= (|Set#Card_23536| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.340:33|
 :skolemid |24|
))))
 :qid |stdinbpl.338:18|
 :skolemid |25|
 :pattern ( (|Set#Card_23536| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_23536| (|Set#UnionOne_23536| a@@18 x@@4)) (+ (|Set#Card_23536| a@@18) 1)))
 :qid |stdinbpl.356:18|
 :skolemid |33|
 :pattern ( (|Set#Card_23536| (|Set#UnionOne_23536| a@@18 x@@4)))
)))
(assert (forall ((o_36@@9 T@Ref) (f_50 T@Field_34767_34768) (Heap@@35 T@PolymorphicMapType_34694) ) (!  (=> (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@35) o_36@@9 $allocated) (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@35) (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@35) o_36@@9 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@35) o_36@@9 f_50))
)))
(assert (forall ((p@@2 T@Field_23460_23497) (v_1@@1 T@FrameType) (q T@Field_23460_23497) (w@@1 T@FrameType) (r@@2 T@Field_23460_23497) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34754_34754 p@@2 v_1@@1 q w@@1) (InsidePredicate_34754_34754 q w@@1 r@@2 u)) (InsidePredicate_34754_34754 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34754_34754 p@@2 v_1@@1 q w@@1) (InsidePredicate_34754_34754 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_23460_23497) (v_1@@2 T@FrameType) (q@@0 T@Field_23460_23497) (w@@2 T@FrameType) (r@@3 T@Field_41599_41600) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_34754_34754 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34754_23496 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_34754_23496 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34754_34754 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34754_23496 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_23460_23497) (v_1@@3 T@FrameType) (q@@1 T@Field_41599_41600) (w@@3 T@FrameType) (r@@4 T@Field_23460_23497) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_34754_23496 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_23496_34754 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_34754_34754 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34754_23496 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_23496_34754 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_23460_23497) (v_1@@4 T@FrameType) (q@@2 T@Field_41599_41600) (w@@4 T@FrameType) (r@@5 T@Field_41599_41600) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_34754_23496 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_23496_23496 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_34754_23496 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34754_23496 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_23496_23496 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_41599_41600) (v_1@@5 T@FrameType) (q@@3 T@Field_23460_23497) (w@@5 T@FrameType) (r@@6 T@Field_23460_23497) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_23496_34754 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34754_34754 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_23496_34754 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23496_34754 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34754_34754 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_41599_41600) (v_1@@6 T@FrameType) (q@@4 T@Field_23460_23497) (w@@6 T@FrameType) (r@@7 T@Field_41599_41600) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_23496_34754 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34754_23496 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_23496_23496 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23496_34754 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34754_23496 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_41599_41600) (v_1@@7 T@FrameType) (q@@5 T@Field_41599_41600) (w@@7 T@FrameType) (r@@8 T@Field_23460_23497) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_23496_23496 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_23496_34754 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_23496_34754 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23496_23496 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_23496_34754 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_41599_41600) (v_1@@8 T@FrameType) (q@@6 T@Field_41599_41600) (w@@8 T@FrameType) (r@@9 T@Field_41599_41600) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_23496_23496 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_23496_23496 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_23496_23496 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23496_23496 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_23496_23496 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.427:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_23539| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.360:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_23539| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@9 () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_34715)
(declare-fun r_1@@9 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_34715)
(declare-fun Heap@@36 () T@PolymorphicMapType_34694)
(declare-fun Mask@1 () T@PolymorphicMapType_34715)
(declare-fun Mask@2 () T@PolymorphicMapType_34715)
(set-info :boogie-vc-id |list#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (>= 0 i@@9) (=> (and (= Mask@3 ZeroMask) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (> i@@9 0) (=> (and (not (= r_1@@9 null)) (= Mask@0 (PolymorphicMapType_34715 (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| ZeroMask) (store (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ZeroMask) r_1@@9 val (+ (select (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| ZeroMask) r_1@@9 val) FullPerm)) (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| ZeroMask) (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| ZeroMask)))) (=> (and (and (state Heap@@36 Mask@0) (not (= r_1@@9 null))) (and (= Mask@1 (PolymorphicMapType_34715 (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@0) (store (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@0) r_1@@9 next (+ (select (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@0) r_1@@9 next) FullPerm)) (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@0) (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@0))) (state Heap@@36 Mask@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_23462_23463 Mask@1 r_1@@9 next)) (=> (HasDirectPerm_23462_23463 Mask@1 r_1@@9 next) (=> (and (and (= Mask@2 (PolymorphicMapType_34715 (store (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@1) null (list (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@36) r_1@@9 next) (- i@@9 1)) (+ (select (|PolymorphicMapType_34715_23496_23497#PolymorphicMapType_34715| Mask@1) null (list (select (|PolymorphicMapType_34694_22994_22995#PolymorphicMapType_34694| Heap@@36) r_1@@9 next) (- i@@9 1))) FullPerm)) (|PolymorphicMapType_34715_23460_4470#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23462_23463#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23496_4470#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23496_23463#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23496_53#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23496_119167#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23460_23497#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23460_53#PolymorphicMapType_34715| Mask@1) (|PolymorphicMapType_34715_23460_119566#PolymorphicMapType_34715| Mask@1))) (state Heap@@36 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@36 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_34694_22991_53#PolymorphicMapType_34694| Heap@@36) r_1@@9 $allocated))) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
