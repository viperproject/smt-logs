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
(declare-sort T@Field_34798_53 0)
(declare-sort T@Field_34811_34812 0)
(declare-sort T@Field_41147_4470 0)
(declare-sort T@Field_41643_41644 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_44338_44343 0)
(declare-sort T@Field_23476_23513 0)
(declare-sort T@Field_23476_44343 0)
(declare-sort T@Field_23512_4470 0)
(declare-sort T@Field_23512_23479 0)
(declare-sort T@Field_23512_53 0)
(declare-datatypes ((T@PolymorphicMapType_34759 0)) (((PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| (Array T@Ref T@Field_41643_41644 Real)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| (Array T@Ref T@Field_41147_4470 Real)) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| (Array T@Ref T@Field_34811_34812 Real)) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| (Array T@Ref T@Field_23512_4470 Real)) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| (Array T@Ref T@Field_23512_23479 Real)) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| (Array T@Ref T@Field_23512_53 Real)) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| (Array T@Ref T@Field_44338_44343 Real)) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| (Array T@Ref T@Field_23476_23513 Real)) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| (Array T@Ref T@Field_34798_53 Real)) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| (Array T@Ref T@Field_23476_44343 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35287 0)) (((PolymorphicMapType_35287 (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (Array T@Ref T@Field_41147_4470 Bool)) (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (Array T@Ref T@Field_34811_34812 Bool)) (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (Array T@Ref T@Field_34798_53 Bool)) (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (Array T@Ref T@Field_23476_23513 Bool)) (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (Array T@Ref T@Field_23476_44343 Bool)) (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (Array T@Ref T@Field_23512_4470 Bool)) (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (Array T@Ref T@Field_23512_23479 Bool)) (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (Array T@Ref T@Field_23512_53 Bool)) (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (Array T@Ref T@Field_41643_41644 Bool)) (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (Array T@Ref T@Field_44338_44343 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_34738 0)) (((PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| (Array T@Ref T@Field_34798_53 Bool)) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| (Array T@Ref T@Field_34811_34812 T@Ref)) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| (Array T@Ref T@Field_41147_4470 Int)) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| (Array T@Ref T@Field_41643_41644 T@FrameType)) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| (Array T@Ref T@Field_44338_44343 T@PolymorphicMapType_35287)) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| (Array T@Ref T@Field_23476_23513 T@FrameType)) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| (Array T@Ref T@Field_23476_44343 T@PolymorphicMapType_35287)) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| (Array T@Ref T@Field_23512_4470 Int)) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| (Array T@Ref T@Field_23512_23479 T@Ref)) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| (Array T@Ref T@Field_23512_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_34798_53)
(declare-fun val () T@Field_41147_4470)
(declare-fun next () T@Field_34811_34812)
(declare-fun succHeap (T@PolymorphicMapType_34738 T@PolymorphicMapType_34738) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_34738 T@PolymorphicMapType_34738) Bool)
(declare-fun state (T@PolymorphicMapType_34738 T@PolymorphicMapType_34759) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_34759) Bool)
(declare-fun |allSet'| (T@PolymorphicMapType_34738 T@Ref Int Int) Bool)
(declare-fun dummyFunction_4813 (Bool) Bool)
(declare-fun |allSet#triggerStateless| (T@Ref Int Int) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_35287)
(declare-fun list (T@Ref Int) T@Field_41643_41644)
(declare-fun IsPredicateField_23512_23513 (T@Field_41643_41644) Bool)
(declare-fun |list#trigger_23512| (T@PolymorphicMapType_34738 T@Field_41643_41644) Bool)
(declare-fun |list#everUsed_23512| (T@Field_41643_41644) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun allSet (T@PolymorphicMapType_34738 T@Ref Int Int) Bool)
(declare-fun |Set#Union_23555| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_23552| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_23568| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_23552| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_34738 T@PolymorphicMapType_34738 T@PolymorphicMapType_34759) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_23512 (T@Field_41643_41644) T@Field_44338_44343)
(declare-fun HasDirectPerm_23512_23513 (T@PolymorphicMapType_34759 T@Ref T@Field_41643_41644) Bool)
(declare-fun IsPredicateField_23476_111428 (T@Field_23476_23513) Bool)
(declare-fun PredicateMaskField_23476 (T@Field_23476_23513) T@Field_23476_44343)
(declare-fun HasDirectPerm_23476_23513 (T@PolymorphicMapType_34759 T@Ref T@Field_23476_23513) Bool)
(declare-fun IsWandField_23512_115098 (T@Field_41643_41644) Bool)
(declare-fun WandMaskField_23512 (T@Field_41643_41644) T@Field_44338_44343)
(declare-fun IsWandField_23476_114741 (T@Field_23476_23513) Bool)
(declare-fun WandMaskField_23476 (T@Field_23476_23513) T@Field_23476_44343)
(declare-fun |list#sm| (T@Ref Int) T@Field_44338_44343)
(declare-fun dummyHeap () T@PolymorphicMapType_34738)
(declare-fun ZeroMask () T@PolymorphicMapType_34759)
(declare-fun InsidePredicate_34798_34798 (T@Field_23476_23513 T@FrameType T@Field_23476_23513 T@FrameType) Bool)
(declare-fun InsidePredicate_23512_23512 (T@Field_41643_41644 T@FrameType T@Field_41643_41644 T@FrameType) Bool)
(declare-fun IsPredicateField_23476_4470 (T@Field_41147_4470) Bool)
(declare-fun IsWandField_23476_4470 (T@Field_41147_4470) Bool)
(declare-fun IsPredicateField_23478_23479 (T@Field_34811_34812) Bool)
(declare-fun IsWandField_23478_23479 (T@Field_34811_34812) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_23476_122001 (T@Field_23476_44343) Bool)
(declare-fun IsWandField_23476_122017 (T@Field_23476_44343) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_23476_53 (T@Field_34798_53) Bool)
(declare-fun IsWandField_23476_53 (T@Field_34798_53) Bool)
(declare-fun IsPredicateField_23512_121198 (T@Field_44338_44343) Bool)
(declare-fun IsWandField_23512_121214 (T@Field_44338_44343) Bool)
(declare-fun IsPredicateField_23512_53 (T@Field_23512_53) Bool)
(declare-fun IsWandField_23512_53 (T@Field_23512_53) Bool)
(declare-fun IsPredicateField_23512_23479 (T@Field_23512_23479) Bool)
(declare-fun IsWandField_23512_23479 (T@Field_23512_23479) Bool)
(declare-fun IsPredicateField_23512_4470 (T@Field_23512_4470) Bool)
(declare-fun IsWandField_23512_4470 (T@Field_23512_4470) Bool)
(declare-fun HasDirectPerm_23512_111183 (T@PolymorphicMapType_34759 T@Ref T@Field_44338_44343) Bool)
(declare-fun HasDirectPerm_23512_53 (T@PolymorphicMapType_34759 T@Ref T@Field_23512_53) Bool)
(declare-fun HasDirectPerm_23512_23479 (T@PolymorphicMapType_34759 T@Ref T@Field_23512_23479) Bool)
(declare-fun HasDirectPerm_23512_4470 (T@PolymorphicMapType_34759 T@Ref T@Field_23512_4470) Bool)
(declare-fun HasDirectPerm_23476_110042 (T@PolymorphicMapType_34759 T@Ref T@Field_23476_44343) Bool)
(declare-fun HasDirectPerm_23476_53 (T@PolymorphicMapType_34759 T@Ref T@Field_34798_53) Bool)
(declare-fun HasDirectPerm_23478_23479 (T@PolymorphicMapType_34759 T@Ref T@Field_34811_34812) Bool)
(declare-fun HasDirectPerm_23476_4470 (T@PolymorphicMapType_34759 T@Ref T@Field_41147_4470) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_34759 T@PolymorphicMapType_34759 T@PolymorphicMapType_34759) Bool)
(declare-fun |allSet#frame| (T@FrameType T@Ref Int Int) Bool)
(declare-fun |Set#Difference_23552| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Set#UnionOne_23552| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_23512_23513 (T@Field_41643_41644) Int)
(declare-fun |Set#Empty_23614| () (Array T@Ref Bool))
(declare-fun InsidePredicate_34798_23512 (T@Field_23476_23513 T@FrameType T@Field_41643_41644 T@FrameType) Bool)
(declare-fun InsidePredicate_23512_34798 (T@Field_41643_41644 T@FrameType T@Field_23476_23513 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_34738) (Heap1 T@PolymorphicMapType_34738) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_34738) (Mask T@PolymorphicMapType_34759) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_34738) (Heap1@@0 T@PolymorphicMapType_34738) (Heap2 T@PolymorphicMapType_34738) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_34738) (r_1 T@Ref) (i Int) (v_2 Int) ) (! (dummyFunction_4813 (|allSet#triggerStateless| r_1 i v_2))
 :qid |stdinbpl.539:15|
 :skolemid |83|
 :pattern ( (|allSet'| Heap@@0 r_1 i v_2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_44338_44343) ) (!  (not (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_41643_41644) ) (!  (not (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23512_53) ) (!  (not (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23512_23479) ) (!  (not (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23512_4470) ) (!  (not (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_23476_44343) ) (!  (not (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_23476_23513) ) (!  (not (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_34798_53) ) (!  (not (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34811_34812) ) (!  (not (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_41147_4470) ) (!  (not (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((r_1@@0 T@Ref) (i@@0 Int) ) (! (IsPredicateField_23512_23513 (list r_1@@0 i@@0))
 :qid |stdinbpl.672:15|
 :skolemid |88|
 :pattern ( (list r_1@@0 i@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_34738) (r_1@@1 T@Ref) (i@@1 Int) ) (! (|list#everUsed_23512| (list r_1@@1 i@@1))
 :qid |stdinbpl.691:15|
 :skolemid |92|
 :pattern ( (|list#trigger_23512| Heap@@1 (list r_1@@1 i@@1)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.423:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_34738) (r_1@@2 T@Ref) (i@@2 Int) (v_2@@0 Int) ) (!  (and (= (allSet Heap@@2 r_1@@2 i@@2 v_2@@0) (|allSet'| Heap@@2 r_1@@2 i@@2 v_2@@0)) (dummyFunction_4813 (|allSet#triggerStateless| r_1@@2 i@@2 v_2@@0)))
 :qid |stdinbpl.535:15|
 :skolemid |82|
 :pattern ( (allSet Heap@@2 r_1@@2 i@@2 v_2@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_23555| (|Set#Union_23555| a@@0 b@@0) b@@0) (|Set#Union_23555| a@@0 b@@0))
 :qid |stdinbpl.375:18|
 :skolemid |38|
 :pattern ( (|Set#Union_23555| (|Set#Union_23555| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_23552| (|Set#Intersection_23552| a@@1 b@@1) b@@1) (|Set#Intersection_23552| a@@1 b@@1))
 :qid |stdinbpl.379:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_23552| (|Set#Intersection_23552| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_23568| r) o) (= r o))
 :qid |stdinbpl.344:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_23568| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_23552| (|Set#Union_23555| a@@2 b@@2)) (|Set#Card_23552| (|Set#Intersection_23552| a@@2 b@@2))) (+ (|Set#Card_23552| a@@2) (|Set#Card_23552| b@@2)))
 :qid |stdinbpl.383:18|
 :skolemid |42|
 :pattern ( (|Set#Card_23552| (|Set#Union_23555| a@@2 b@@2)))
 :pattern ( (|Set#Card_23552| (|Set#Intersection_23552| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.426:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_34738) (ExhaleHeap T@PolymorphicMapType_34738) (Mask@@0 T@PolymorphicMapType_34759) (pm_f_25 T@Field_41643_41644) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23512_23513 Mask@@0 null pm_f_25) (IsPredicateField_23512_23513 pm_f_25)) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@3) null (PredicateMaskField_23512 pm_f_25)) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap) null (PredicateMaskField_23512 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_23512_23513 pm_f_25) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap) null (PredicateMaskField_23512 pm_f_25)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_34738) (ExhaleHeap@@0 T@PolymorphicMapType_34738) (Mask@@1 T@PolymorphicMapType_34759) (pm_f_25@@0 T@Field_23476_23513) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_23476_23513 Mask@@1 null pm_f_25@@0) (IsPredicateField_23476_111428 pm_f_25@@0)) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@4) null (PredicateMaskField_23476 pm_f_25@@0)) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@0) null (PredicateMaskField_23476 pm_f_25@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_23476_111428 pm_f_25@@0) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@0) null (PredicateMaskField_23476 pm_f_25@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_34738) (ExhaleHeap@@1 T@PolymorphicMapType_34738) (Mask@@2 T@PolymorphicMapType_34759) (pm_f_25@@1 T@Field_41643_41644) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_23512_23513 Mask@@2 null pm_f_25@@1) (IsWandField_23512_115098 pm_f_25@@1)) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@5) null (WandMaskField_23512 pm_f_25@@1)) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@1) null (WandMaskField_23512 pm_f_25@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_23512_115098 pm_f_25@@1) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@1) null (WandMaskField_23512 pm_f_25@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_34738) (ExhaleHeap@@2 T@PolymorphicMapType_34738) (Mask@@3 T@PolymorphicMapType_34759) (pm_f_25@@2 T@Field_23476_23513) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_23476_23513 Mask@@3 null pm_f_25@@2) (IsWandField_23476_114741 pm_f_25@@2)) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@6) null (WandMaskField_23476 pm_f_25@@2)) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@2) null (WandMaskField_23476 pm_f_25@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_23476_114741 pm_f_25@@2) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@2) null (WandMaskField_23476 pm_f_25@@2)))
)))
(assert (forall ((r_1@@3 T@Ref) (i@@3 Int) (r2 T@Ref) (i2_1 Int) ) (!  (=> (= (list r_1@@3 i@@3) (list r2 i2_1)) (and (= r_1@@3 r2) (= i@@3 i2_1)))
 :qid |stdinbpl.682:15|
 :skolemid |90|
 :pattern ( (list r_1@@3 i@@3) (list r2 i2_1))
)))
(assert (forall ((r_1@@4 T@Ref) (i@@4 Int) (r2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|list#sm| r_1@@4 i@@4) (|list#sm| r2@@0 i2_1@@0)) (and (= r_1@@4 r2@@0) (= i@@4 i2_1@@0)))
 :qid |stdinbpl.686:15|
 :skolemid |91|
 :pattern ( (|list#sm| r_1@@4 i@@4) (|list#sm| r2@@0 i2_1@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_34738) (ExhaleHeap@@3 T@PolymorphicMapType_34738) (Mask@@4 T@PolymorphicMapType_34759) (pm_f_25@@3 T@Field_41643_41644) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_23512_23513 Mask@@4 null pm_f_25@@3) (IsPredicateField_23512_23513 pm_f_25@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_25 T@Ref) (f_51 T@Field_41147_4470) ) (!  (=> (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25 f_51) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@7) o2_25 f_51) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25 f_51))
)) (forall ((o2_25@@0 T@Ref) (f_51@@0 T@Field_34811_34812) ) (!  (=> (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@0 f_51@@0) (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@7) o2_25@@0 f_51@@0) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@0 f_51@@0))
))) (forall ((o2_25@@1 T@Ref) (f_51@@1 T@Field_34798_53) ) (!  (=> (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@1 f_51@@1) (= (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@7) o2_25@@1 f_51@@1) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@1 f_51@@1))
))) (forall ((o2_25@@2 T@Ref) (f_51@@2 T@Field_23476_23513) ) (!  (=> (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@2 f_51@@2) (= (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@7) o2_25@@2 f_51@@2) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@2 f_51@@2))
))) (forall ((o2_25@@3 T@Ref) (f_51@@3 T@Field_23476_44343) ) (!  (=> (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@3 f_51@@3) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@7) o2_25@@3 f_51@@3) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@3 f_51@@3))
))) (forall ((o2_25@@4 T@Ref) (f_51@@4 T@Field_23512_4470) ) (!  (=> (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@4 f_51@@4) (= (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@7) o2_25@@4 f_51@@4) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@4 f_51@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@4 f_51@@4))
))) (forall ((o2_25@@5 T@Ref) (f_51@@5 T@Field_23512_23479) ) (!  (=> (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@5 f_51@@5) (= (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@7) o2_25@@5 f_51@@5) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@5 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@5 f_51@@5))
))) (forall ((o2_25@@6 T@Ref) (f_51@@6 T@Field_23512_53) ) (!  (=> (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@6 f_51@@6) (= (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@7) o2_25@@6 f_51@@6) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@6 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@6 f_51@@6))
))) (forall ((o2_25@@7 T@Ref) (f_51@@7 T@Field_41643_41644) ) (!  (=> (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@7 f_51@@7) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@7) o2_25@@7 f_51@@7) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@7 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@7 f_51@@7))
))) (forall ((o2_25@@8 T@Ref) (f_51@@8 T@Field_44338_44343) ) (!  (=> (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) null (PredicateMaskField_23512 pm_f_25@@3))) o2_25@@8 f_51@@8) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@7) o2_25@@8 f_51@@8) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@8 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@3) o2_25@@8 f_51@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_23512_23513 pm_f_25@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_34738) (ExhaleHeap@@4 T@PolymorphicMapType_34738) (Mask@@5 T@PolymorphicMapType_34759) (pm_f_25@@4 T@Field_23476_23513) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_23476_23513 Mask@@5 null pm_f_25@@4) (IsPredicateField_23476_111428 pm_f_25@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@9 T@Ref) (f_51@@9 T@Field_41147_4470) ) (!  (=> (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@9 f_51@@9) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@8) o2_25@@9 f_51@@9) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@9 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@9 f_51@@9))
)) (forall ((o2_25@@10 T@Ref) (f_51@@10 T@Field_34811_34812) ) (!  (=> (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@10 f_51@@10) (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@8) o2_25@@10 f_51@@10) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@10 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@10 f_51@@10))
))) (forall ((o2_25@@11 T@Ref) (f_51@@11 T@Field_34798_53) ) (!  (=> (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@11 f_51@@11) (= (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@8) o2_25@@11 f_51@@11) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@11 f_51@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@11 f_51@@11))
))) (forall ((o2_25@@12 T@Ref) (f_51@@12 T@Field_23476_23513) ) (!  (=> (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@12 f_51@@12) (= (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@8) o2_25@@12 f_51@@12) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@12 f_51@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@12 f_51@@12))
))) (forall ((o2_25@@13 T@Ref) (f_51@@13 T@Field_23476_44343) ) (!  (=> (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@13 f_51@@13) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) o2_25@@13 f_51@@13) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@13 f_51@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@13 f_51@@13))
))) (forall ((o2_25@@14 T@Ref) (f_51@@14 T@Field_23512_4470) ) (!  (=> (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@14 f_51@@14) (= (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@8) o2_25@@14 f_51@@14) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@14 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@14 f_51@@14))
))) (forall ((o2_25@@15 T@Ref) (f_51@@15 T@Field_23512_23479) ) (!  (=> (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@15 f_51@@15) (= (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@8) o2_25@@15 f_51@@15) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@15 f_51@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@15 f_51@@15))
))) (forall ((o2_25@@16 T@Ref) (f_51@@16 T@Field_23512_53) ) (!  (=> (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@16 f_51@@16) (= (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@8) o2_25@@16 f_51@@16) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@16 f_51@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@16 f_51@@16))
))) (forall ((o2_25@@17 T@Ref) (f_51@@17 T@Field_41643_41644) ) (!  (=> (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@17 f_51@@17) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@8) o2_25@@17 f_51@@17) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@17 f_51@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@17 f_51@@17))
))) (forall ((o2_25@@18 T@Ref) (f_51@@18 T@Field_44338_44343) ) (!  (=> (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@8) null (PredicateMaskField_23476 pm_f_25@@4))) o2_25@@18 f_51@@18) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@8) o2_25@@18 f_51@@18) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@18 f_51@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@4) o2_25@@18 f_51@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_23476_111428 pm_f_25@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_34738) (ExhaleHeap@@5 T@PolymorphicMapType_34738) (Mask@@6 T@PolymorphicMapType_34759) (pm_f_25@@5 T@Field_41643_41644) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_23512_23513 Mask@@6 null pm_f_25@@5) (IsWandField_23512_115098 pm_f_25@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@19 T@Ref) (f_51@@19 T@Field_41147_4470) ) (!  (=> (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@19 f_51@@19) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@9) o2_25@@19 f_51@@19) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@19 f_51@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@19 f_51@@19))
)) (forall ((o2_25@@20 T@Ref) (f_51@@20 T@Field_34811_34812) ) (!  (=> (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@20 f_51@@20) (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@9) o2_25@@20 f_51@@20) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@20 f_51@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@20 f_51@@20))
))) (forall ((o2_25@@21 T@Ref) (f_51@@21 T@Field_34798_53) ) (!  (=> (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@21 f_51@@21) (= (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@9) o2_25@@21 f_51@@21) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@21 f_51@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@21 f_51@@21))
))) (forall ((o2_25@@22 T@Ref) (f_51@@22 T@Field_23476_23513) ) (!  (=> (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@22 f_51@@22) (= (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@9) o2_25@@22 f_51@@22) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@22 f_51@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@22 f_51@@22))
))) (forall ((o2_25@@23 T@Ref) (f_51@@23 T@Field_23476_44343) ) (!  (=> (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@23 f_51@@23) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@9) o2_25@@23 f_51@@23) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@23 f_51@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@23 f_51@@23))
))) (forall ((o2_25@@24 T@Ref) (f_51@@24 T@Field_23512_4470) ) (!  (=> (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@24 f_51@@24) (= (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@9) o2_25@@24 f_51@@24) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@24 f_51@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@24 f_51@@24))
))) (forall ((o2_25@@25 T@Ref) (f_51@@25 T@Field_23512_23479) ) (!  (=> (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@25 f_51@@25) (= (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@9) o2_25@@25 f_51@@25) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@25 f_51@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@25 f_51@@25))
))) (forall ((o2_25@@26 T@Ref) (f_51@@26 T@Field_23512_53) ) (!  (=> (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@26 f_51@@26) (= (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@9) o2_25@@26 f_51@@26) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@26 f_51@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@26 f_51@@26))
))) (forall ((o2_25@@27 T@Ref) (f_51@@27 T@Field_41643_41644) ) (!  (=> (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@27 f_51@@27) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@9) o2_25@@27 f_51@@27) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@27 f_51@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@27 f_51@@27))
))) (forall ((o2_25@@28 T@Ref) (f_51@@28 T@Field_44338_44343) ) (!  (=> (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) null (WandMaskField_23512 pm_f_25@@5))) o2_25@@28 f_51@@28) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@9) o2_25@@28 f_51@@28) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@28 f_51@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@5) o2_25@@28 f_51@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_23512_115098 pm_f_25@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_34738) (ExhaleHeap@@6 T@PolymorphicMapType_34738) (Mask@@7 T@PolymorphicMapType_34759) (pm_f_25@@6 T@Field_23476_23513) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_23476_23513 Mask@@7 null pm_f_25@@6) (IsWandField_23476_114741 pm_f_25@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@29 T@Ref) (f_51@@29 T@Field_41147_4470) ) (!  (=> (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@29 f_51@@29) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@10) o2_25@@29 f_51@@29) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@29 f_51@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@29 f_51@@29))
)) (forall ((o2_25@@30 T@Ref) (f_51@@30 T@Field_34811_34812) ) (!  (=> (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@30 f_51@@30) (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@10) o2_25@@30 f_51@@30) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@30 f_51@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@30 f_51@@30))
))) (forall ((o2_25@@31 T@Ref) (f_51@@31 T@Field_34798_53) ) (!  (=> (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@31 f_51@@31) (= (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@10) o2_25@@31 f_51@@31) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@31 f_51@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@31 f_51@@31))
))) (forall ((o2_25@@32 T@Ref) (f_51@@32 T@Field_23476_23513) ) (!  (=> (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@32 f_51@@32) (= (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@10) o2_25@@32 f_51@@32) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@32 f_51@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@32 f_51@@32))
))) (forall ((o2_25@@33 T@Ref) (f_51@@33 T@Field_23476_44343) ) (!  (=> (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@33 f_51@@33) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) o2_25@@33 f_51@@33) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@33 f_51@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@33 f_51@@33))
))) (forall ((o2_25@@34 T@Ref) (f_51@@34 T@Field_23512_4470) ) (!  (=> (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@34 f_51@@34) (= (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@10) o2_25@@34 f_51@@34) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@34 f_51@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@34 f_51@@34))
))) (forall ((o2_25@@35 T@Ref) (f_51@@35 T@Field_23512_23479) ) (!  (=> (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@35 f_51@@35) (= (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@10) o2_25@@35 f_51@@35) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@35 f_51@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@35 f_51@@35))
))) (forall ((o2_25@@36 T@Ref) (f_51@@36 T@Field_23512_53) ) (!  (=> (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@36 f_51@@36) (= (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@10) o2_25@@36 f_51@@36) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@36 f_51@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@36 f_51@@36))
))) (forall ((o2_25@@37 T@Ref) (f_51@@37 T@Field_41643_41644) ) (!  (=> (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@37 f_51@@37) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@10) o2_25@@37 f_51@@37) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@37 f_51@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@37 f_51@@37))
))) (forall ((o2_25@@38 T@Ref) (f_51@@38 T@Field_44338_44343) ) (!  (=> (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@10) null (WandMaskField_23476 pm_f_25@@6))) o2_25@@38 f_51@@38) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@10) o2_25@@38 f_51@@38) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@38 f_51@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@6) o2_25@@38 f_51@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_23476_114741 pm_f_25@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_34738) (ExhaleHeap@@7 T@PolymorphicMapType_34738) (Mask@@8 T@PolymorphicMapType_34759) (o_50 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@11) o_50 $allocated) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@7) o_50 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@7) o_50 $allocated))
)))
(assert (forall ((p T@Field_23476_23513) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34798_34798 p v_1 p w))
 :qid |stdinbpl.321:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34798_34798 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_41643_41644) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_23512_23512 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.321:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23512_23512 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_23476_4470 val)))
(assert  (not (IsWandField_23476_4470 val)))
(assert  (not (IsPredicateField_23478_23479 next)))
(assert  (not (IsWandField_23478_23479 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_34738) (ExhaleHeap@@8 T@PolymorphicMapType_34738) (Mask@@9 T@PolymorphicMapType_34759) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_34759) (o_2@@9 T@Ref) (f_4@@9 T@Field_23476_44343) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_23476_122001 f_4@@9))) (not (IsWandField_23476_122017 f_4@@9))) (<= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_34759) (o_2@@10 T@Ref) (f_4@@10 T@Field_34798_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_23476_53 f_4@@10))) (not (IsWandField_23476_53 f_4@@10))) (<= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_34759) (o_2@@11 T@Ref) (f_4@@11 T@Field_34811_34812) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_23478_23479 f_4@@11))) (not (IsWandField_23478_23479 f_4@@11))) (<= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_34759) (o_2@@12 T@Ref) (f_4@@12 T@Field_41147_4470) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_23476_4470 f_4@@12))) (not (IsWandField_23476_4470 f_4@@12))) (<= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_34759) (o_2@@13 T@Ref) (f_4@@13 T@Field_23476_23513) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_23476_111428 f_4@@13))) (not (IsWandField_23476_114741 f_4@@13))) (<= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_34759) (o_2@@14 T@Ref) (f_4@@14 T@Field_44338_44343) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_23512_121198 f_4@@14))) (not (IsWandField_23512_121214 f_4@@14))) (<= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_34759) (o_2@@15 T@Ref) (f_4@@15 T@Field_23512_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_23512_53 f_4@@15))) (not (IsWandField_23512_53 f_4@@15))) (<= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_34759) (o_2@@16 T@Ref) (f_4@@16 T@Field_23512_23479) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_23512_23479 f_4@@16))) (not (IsWandField_23512_23479 f_4@@16))) (<= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_34759) (o_2@@17 T@Ref) (f_4@@17 T@Field_23512_4470) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_23512_4470 f_4@@17))) (not (IsWandField_23512_4470 f_4@@17))) (<= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_34759) (o_2@@18 T@Ref) (f_4@@18 T@Field_41643_41644) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_23512_23513 f_4@@18))) (not (IsWandField_23512_115098 f_4@@18))) (<= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_34759) (o_2@@19 T@Ref) (f_4@@19 T@Field_44338_44343) ) (! (= (HasDirectPerm_23512_111183 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23512_111183 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_34759) (o_2@@20 T@Ref) (f_4@@20 T@Field_23512_53) ) (! (= (HasDirectPerm_23512_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23512_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_34759) (o_2@@21 T@Ref) (f_4@@21 T@Field_41643_41644) ) (! (= (HasDirectPerm_23512_23513 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23512_23513 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_34759) (o_2@@22 T@Ref) (f_4@@22 T@Field_23512_23479) ) (! (= (HasDirectPerm_23512_23479 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23512_23479 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_34759) (o_2@@23 T@Ref) (f_4@@23 T@Field_23512_4470) ) (! (= (HasDirectPerm_23512_4470 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23512_4470 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_34759) (o_2@@24 T@Ref) (f_4@@24 T@Field_23476_44343) ) (! (= (HasDirectPerm_23476_110042 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23476_110042 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_34759) (o_2@@25 T@Ref) (f_4@@25 T@Field_34798_53) ) (! (= (HasDirectPerm_23476_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23476_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_34759) (o_2@@26 T@Ref) (f_4@@26 T@Field_23476_23513) ) (! (= (HasDirectPerm_23476_23513 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23476_23513 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_34759) (o_2@@27 T@Ref) (f_4@@27 T@Field_34811_34812) ) (! (= (HasDirectPerm_23478_23479 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23478_23479 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_34759) (o_2@@28 T@Ref) (f_4@@28 T@Field_41147_4470) ) (! (= (HasDirectPerm_23476_4470 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23476_4470 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.309:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_34738) (ExhaleHeap@@9 T@PolymorphicMapType_34738) (Mask@@30 T@PolymorphicMapType_34759) (o_50@@0 T@Ref) (f_51@@39 T@Field_44338_44343) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_23512_111183 Mask@@30 o_50@@0 f_51@@39) (= (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@13) o_50@@0 f_51@@39) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@9) o_50@@0 f_51@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@@9) o_50@@0 f_51@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_34738) (ExhaleHeap@@10 T@PolymorphicMapType_34738) (Mask@@31 T@PolymorphicMapType_34759) (o_50@@1 T@Ref) (f_51@@40 T@Field_23512_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_23512_53 Mask@@31 o_50@@1 f_51@@40) (= (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@14) o_50@@1 f_51@@40) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@10) o_50@@1 f_51@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@@10) o_50@@1 f_51@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_34738) (ExhaleHeap@@11 T@PolymorphicMapType_34738) (Mask@@32 T@PolymorphicMapType_34759) (o_50@@2 T@Ref) (f_51@@41 T@Field_41643_41644) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_23512_23513 Mask@@32 o_50@@2 f_51@@41) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@15) o_50@@2 f_51@@41) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@11) o_50@@2 f_51@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@@11) o_50@@2 f_51@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_34738) (ExhaleHeap@@12 T@PolymorphicMapType_34738) (Mask@@33 T@PolymorphicMapType_34759) (o_50@@3 T@Ref) (f_51@@42 T@Field_23512_23479) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_23512_23479 Mask@@33 o_50@@3 f_51@@42) (= (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@16) o_50@@3 f_51@@42) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@12) o_50@@3 f_51@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@@12) o_50@@3 f_51@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_34738) (ExhaleHeap@@13 T@PolymorphicMapType_34738) (Mask@@34 T@PolymorphicMapType_34759) (o_50@@4 T@Ref) (f_51@@43 T@Field_23512_4470) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_23512_4470 Mask@@34 o_50@@4 f_51@@43) (= (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@17) o_50@@4 f_51@@43) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@13) o_50@@4 f_51@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@@13) o_50@@4 f_51@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_34738) (ExhaleHeap@@14 T@PolymorphicMapType_34738) (Mask@@35 T@PolymorphicMapType_34759) (o_50@@5 T@Ref) (f_51@@44 T@Field_23476_44343) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_23476_110042 Mask@@35 o_50@@5 f_51@@44) (= (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@18) o_50@@5 f_51@@44) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@14) o_50@@5 f_51@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@@14) o_50@@5 f_51@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_34738) (ExhaleHeap@@15 T@PolymorphicMapType_34738) (Mask@@36 T@PolymorphicMapType_34759) (o_50@@6 T@Ref) (f_51@@45 T@Field_34798_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_23476_53 Mask@@36 o_50@@6 f_51@@45) (= (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@19) o_50@@6 f_51@@45) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@15) o_50@@6 f_51@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@@15) o_50@@6 f_51@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_34738) (ExhaleHeap@@16 T@PolymorphicMapType_34738) (Mask@@37 T@PolymorphicMapType_34759) (o_50@@7 T@Ref) (f_51@@46 T@Field_23476_23513) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_23476_23513 Mask@@37 o_50@@7 f_51@@46) (= (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@20) o_50@@7 f_51@@46) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@16) o_50@@7 f_51@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@@16) o_50@@7 f_51@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_34738) (ExhaleHeap@@17 T@PolymorphicMapType_34738) (Mask@@38 T@PolymorphicMapType_34759) (o_50@@8 T@Ref) (f_51@@47 T@Field_34811_34812) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_23478_23479 Mask@@38 o_50@@8 f_51@@47) (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@21) o_50@@8 f_51@@47) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@17) o_50@@8 f_51@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@@17) o_50@@8 f_51@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_34738) (ExhaleHeap@@18 T@PolymorphicMapType_34738) (Mask@@39 T@PolymorphicMapType_34759) (o_50@@9 T@Ref) (f_51@@48 T@Field_41147_4470) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_23476_4470 Mask@@39 o_50@@9 f_51@@48) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@22) o_50@@9 f_51@@48) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@18) o_50@@9 f_51@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@@18) o_50@@9 f_51@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_23476_44343) ) (! (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_34798_53) ) (! (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_34811_34812) ) (! (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_41147_4470) ) (! (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_23476_23513) ) (! (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_44338_44343) ) (! (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_23512_53) ) (! (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_23512_23479) ) (! (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_23512_4470) ) (! (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_41643_41644) ) (! (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_34759) (SummandMask1 T@PolymorphicMapType_34759) (SummandMask2 T@PolymorphicMapType_34759) (o_2@@39 T@Ref) (f_4@@39 T@Field_23476_44343) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_34759) (SummandMask1@@0 T@PolymorphicMapType_34759) (SummandMask2@@0 T@PolymorphicMapType_34759) (o_2@@40 T@Ref) (f_4@@40 T@Field_34798_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_34759) (SummandMask1@@1 T@PolymorphicMapType_34759) (SummandMask2@@1 T@PolymorphicMapType_34759) (o_2@@41 T@Ref) (f_4@@41 T@Field_34811_34812) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_34759) (SummandMask1@@2 T@PolymorphicMapType_34759) (SummandMask2@@2 T@PolymorphicMapType_34759) (o_2@@42 T@Ref) (f_4@@42 T@Field_41147_4470) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_34759) (SummandMask1@@3 T@PolymorphicMapType_34759) (SummandMask2@@3 T@PolymorphicMapType_34759) (o_2@@43 T@Ref) (f_4@@43 T@Field_23476_23513) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_34759) (SummandMask1@@4 T@PolymorphicMapType_34759) (SummandMask2@@4 T@PolymorphicMapType_34759) (o_2@@44 T@Ref) (f_4@@44 T@Field_44338_44343) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_34759) (SummandMask1@@5 T@PolymorphicMapType_34759) (SummandMask2@@5 T@PolymorphicMapType_34759) (o_2@@45 T@Ref) (f_4@@45 T@Field_23512_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_34759) (SummandMask1@@6 T@PolymorphicMapType_34759) (SummandMask2@@6 T@PolymorphicMapType_34759) (o_2@@46 T@Ref) (f_4@@46 T@Field_23512_23479) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_34759) (SummandMask1@@7 T@PolymorphicMapType_34759) (SummandMask2@@7 T@PolymorphicMapType_34759) (o_2@@47 T@Ref) (f_4@@47 T@Field_23512_4470) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_34759) (SummandMask1@@8 T@PolymorphicMapType_34759) (SummandMask2@@8 T@PolymorphicMapType_34759) (o_2@@48 T@Ref) (f_4@@48 T@Field_41643_41644) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_23552| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.372:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_23552| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_23552| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_23552| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_34738) (Mask@@40 T@PolymorphicMapType_34759) (r_1@@5 T@Ref) (i@@5 Int) (v_2@@1 Int) ) (!  (=> (state Heap@@23 Mask@@40) (= (|allSet'| Heap@@23 r_1@@5 i@@5 v_2@@1) (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@23) null (list r_1@@5 i@@5)) r_1@@5 i@@5 v_2@@1)))
 :qid |stdinbpl.552:15|
 :skolemid |85|
 :pattern ( (state Heap@@23 Mask@@40) (|allSet'| Heap@@23 r_1@@5 i@@5 v_2@@1))
 :pattern ( (state Heap@@23 Mask@@40) (|allSet#triggerStateless| r_1@@5 i@@5 v_2@@1) (|list#trigger_23512| Heap@@23 (list r_1@@5 i@@5)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_23552| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.387:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_23552| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_23552| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_34738) (Mask@@41 T@PolymorphicMapType_34759) (r_1@@6 T@Ref) (i@@6 Int) (v_2@@2 Int) ) (!  (=> (and (state Heap@@24 Mask@@41) (< AssumeFunctionsAbove 0)) (= (allSet Heap@@24 r_1@@6 i@@6 v_2@@2)  (or (<= i@@6 0) (and (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@24) r_1@@6 val) v_2@@2) (|allSet'| Heap@@24 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@24) r_1@@6 next) (- i@@6 1) v_2@@2)))))
 :qid |stdinbpl.545:15|
 :skolemid |84|
 :pattern ( (state Heap@@24 Mask@@41) (allSet Heap@@24 r_1@@6 i@@6 v_2@@2))
 :pattern ( (state Heap@@24 Mask@@41) (|allSet#triggerStateless| r_1@@6 i@@6 v_2@@2) (|list#trigger_23512| Heap@@24 (list r_1@@6 i@@6)))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_23552| a@@6 x) y))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_23552| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_23555| a@@7 b@@5) y@@0))
 :qid |stdinbpl.362:18|
 :skolemid |35|
 :pattern ( (|Set#Union_23555| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_23555| a@@8 b@@6) y@@1))
 :qid |stdinbpl.364:18|
 :skolemid |36|
 :pattern ( (|Set#Union_23555| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_23552| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.348:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_23552| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_23552| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.389:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_23552| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_23552| (|Set#Difference_23552| a@@11 b@@8)) (|Set#Card_23552| (|Set#Difference_23552| b@@8 a@@11))) (|Set#Card_23552| (|Set#Intersection_23552| a@@11 b@@8))) (|Set#Card_23552| (|Set#Union_23555| a@@11 b@@8))) (= (|Set#Card_23552| (|Set#Difference_23552| a@@11 b@@8)) (- (|Set#Card_23552| a@@11) (|Set#Card_23552| (|Set#Intersection_23552| a@@11 b@@8)))))
 :qid |stdinbpl.391:18|
 :skolemid |45|
 :pattern ( (|Set#Card_23552| (|Set#Difference_23552| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_23552| s))
 :qid |stdinbpl.334:18|
 :skolemid |22|
 :pattern ( (|Set#Card_23552| s))
)))
(assert (forall ((r_1@@7 T@Ref) (i@@7 Int) ) (! (= (getPredWandId_23512_23513 (list r_1@@7 i@@7)) 0)
 :qid |stdinbpl.676:15|
 :skolemid |89|
 :pattern ( (list r_1@@7 i@@7))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_23552| a@@12 x@@1) x@@1)
 :qid |stdinbpl.350:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_23552| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_23552| (|Set#UnionOne_23552| a@@13 x@@2)) (|Set#Card_23552| a@@13)))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Set#Card_23552| (|Set#UnionOne_23552| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_23552| (|Set#Singleton_23568| r@@0)) 1)
 :qid |stdinbpl.345:18|
 :skolemid |28|
 :pattern ( (|Set#Card_23552| (|Set#Singleton_23568| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_23568| r@@1) r@@1)
 :qid |stdinbpl.343:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_23568| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_23555| a@@14 (|Set#Union_23555| a@@14 b@@9)) (|Set#Union_23555| a@@14 b@@9))
 :qid |stdinbpl.377:18|
 :skolemid |39|
 :pattern ( (|Set#Union_23555| a@@14 (|Set#Union_23555| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_23552| a@@15 (|Set#Intersection_23552| a@@15 b@@10)) (|Set#Intersection_23552| a@@15 b@@10))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_23552| a@@15 (|Set#Intersection_23552| a@@15 b@@10)))
)))
(assert (forall ((r_1@@8 T@Ref) (i@@8 Int) ) (! (= (PredicateMaskField_23512 (list r_1@@8 i@@8)) (|list#sm| r_1@@8 i@@8))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (PredicateMaskField_23512 (list r_1@@8 i@@8)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_23614| o@@3))
 :qid |stdinbpl.337:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_23614| o@@3))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_34738) (o_39 T@Ref) (f_18 T@Field_44338_44343) (v T@PolymorphicMapType_35287) ) (! (succHeap Heap@@25 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@25) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@25) o_39 f_18 v) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@25) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@25) o_39 f_18 v) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@25) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_34738) (o_39@@0 T@Ref) (f_18@@0 T@Field_41643_41644) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@26) (store (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@26) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@26) (store (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@26) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@26) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_34738) (o_39@@1 T@Ref) (f_18@@1 T@Field_23512_4470) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@27) (store (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@27) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@27) (store (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@27) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@27) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_34738) (o_39@@2 T@Ref) (f_18@@2 T@Field_23512_23479) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@28) (store (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@28) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@28) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@28) (store (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@28) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_34738) (o_39@@3 T@Ref) (f_18@@3 T@Field_23512_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@29) (store (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@29) o_39@@3 f_18@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@29) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@29) (store (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@29) o_39@@3 f_18@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_34738) (o_39@@4 T@Ref) (f_18@@4 T@Field_23476_44343) (v@@4 T@PolymorphicMapType_35287) ) (! (succHeap Heap@@30 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@30) (store (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@30) o_39@@4 f_18@@4 v@@4) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@30) (store (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@30) o_39@@4 f_18@@4 v@@4) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@30) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_34738) (o_39@@5 T@Ref) (f_18@@5 T@Field_23476_23513) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@31) (store (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@31) o_39@@5 f_18@@5 v@@5) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@31) (store (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@31) o_39@@5 f_18@@5 v@@5) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@31) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_34738) (o_39@@6 T@Ref) (f_18@@6 T@Field_41147_4470) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@32) (store (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@32) o_39@@6 f_18@@6 v@@6) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@32) (store (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@32) o_39@@6 f_18@@6 v@@6) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@32) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_34738) (o_39@@7 T@Ref) (f_18@@7 T@Field_34811_34812) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@33) (store (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@33) o_39@@7 f_18@@7 v@@7) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@33) (store (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@33) o_39@@7 f_18@@7 v@@7) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@33) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_34738) (o_39@@8 T@Ref) (f_18@@8 T@Field_34798_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_34738 (store (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@34) o_39@@8 f_18@@8 v@@8) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_34738 (store (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@34) o_39@@8 f_18@@8 v@@8) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@34) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@34)))
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
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_23552| s@@0) 0) (= s@@0 |Set#Empty_23614|)) (=> (not (= (|Set#Card_23552| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.340:33|
 :skolemid |24|
))))
 :qid |stdinbpl.338:18|
 :skolemid |25|
 :pattern ( (|Set#Card_23552| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_23552| (|Set#UnionOne_23552| a@@18 x@@4)) (+ (|Set#Card_23552| a@@18) 1)))
 :qid |stdinbpl.356:18|
 :skolemid |33|
 :pattern ( (|Set#Card_23552| (|Set#UnionOne_23552| a@@18 x@@4)))
)))
(assert (forall ((o_39@@9 T@Ref) (f_45 T@Field_34811_34812) (Heap@@35 T@PolymorphicMapType_34738) ) (!  (=> (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@35) o_39@@9 $allocated) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@35) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@35) o_39@@9 f_45) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@35) o_39@@9 f_45))
)))
(assert (forall ((p@@2 T@Field_23476_23513) (v_1@@1 T@FrameType) (q T@Field_23476_23513) (w@@1 T@FrameType) (r@@2 T@Field_23476_23513) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34798_34798 p@@2 v_1@@1 q w@@1) (InsidePredicate_34798_34798 q w@@1 r@@2 u)) (InsidePredicate_34798_34798 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34798_34798 p@@2 v_1@@1 q w@@1) (InsidePredicate_34798_34798 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_23476_23513) (v_1@@2 T@FrameType) (q@@0 T@Field_23476_23513) (w@@2 T@FrameType) (r@@3 T@Field_41643_41644) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_34798_34798 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34798_23512 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_34798_23512 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34798_34798 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34798_23512 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_23476_23513) (v_1@@3 T@FrameType) (q@@1 T@Field_41643_41644) (w@@3 T@FrameType) (r@@4 T@Field_23476_23513) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_34798_23512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_23512_34798 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_34798_34798 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34798_23512 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_23512_34798 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_23476_23513) (v_1@@4 T@FrameType) (q@@2 T@Field_41643_41644) (w@@4 T@FrameType) (r@@5 T@Field_41643_41644) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_34798_23512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_23512_23512 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_34798_23512 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34798_23512 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_23512_23512 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_41643_41644) (v_1@@5 T@FrameType) (q@@3 T@Field_23476_23513) (w@@5 T@FrameType) (r@@6 T@Field_23476_23513) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_23512_34798 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34798_34798 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_23512_34798 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23512_34798 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34798_34798 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_41643_41644) (v_1@@6 T@FrameType) (q@@4 T@Field_23476_23513) (w@@6 T@FrameType) (r@@7 T@Field_41643_41644) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_23512_34798 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34798_23512 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_23512_23512 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23512_34798 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34798_23512 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_41643_41644) (v_1@@7 T@FrameType) (q@@5 T@Field_41643_41644) (w@@7 T@FrameType) (r@@8 T@Field_23476_23513) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_23512_23512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_23512_34798 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_23512_34798 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23512_23512 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_23512_34798 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_41643_41644) (v_1@@8 T@FrameType) (q@@6 T@Field_41643_41644) (w@@8 T@FrameType) (r@@9 T@Field_41643_41644) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_23512_23512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_23512_23512 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_23512_23512 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.316:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23512_23512 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_23512_23512 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.427:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_23555| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.360:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_23555| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_34759)
(declare-fun Heap@@36 () T@PolymorphicMapType_34738)
(declare-fun r_1@@9 () T@Ref)
(declare-fun i@@9 () Int)
(declare-fun Heap@3 () T@PolymorphicMapType_34738)
(declare-fun Mask@0 () T@PolymorphicMapType_34759)
(declare-fun Heap@0 () T@PolymorphicMapType_34738)
(declare-fun Heap@1 () T@PolymorphicMapType_34738)
(declare-fun newPMask@0 () T@PolymorphicMapType_35287)
(declare-fun Heap@2 () T@PolymorphicMapType_34738)
(declare-fun |allSet#trigger| (T@FrameType T@Ref Int Int) Bool)
(declare-fun v_2@@3 () Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_34759)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_34759)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_34759)
(declare-fun FrameFragment_23293 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4470 (Int) T@FrameType)
(declare-fun FrameFragment_23479 (T@Ref) T@FrameType)
(set-info :boogie-vc-id |allSet#definedness|)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon15_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| UnfoldingMask@3) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1))))))))
(let ((anon11_correct true))
(let ((anon10_correct  (=> (and (state Heap@3 Mask@0) (= (ControlFlow 0 3) 1)) anon11_correct)))
(let ((anon16_Else_correct  (=> (>= 0 i@@9) (=> (and (= Heap@3 Heap@@36) (= (ControlFlow 0 5) 3)) anon10_correct))))
(let ((anon16_Then_correct  (=> (> i@@9 0) (=> (and (= Heap@0 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9) (PolymorphicMapType_35287 (store (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) r_1@@9 val true) (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@@36) null (|list#sm| r_1@@9 i@@9))))) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@@36) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@@36))) (= Heap@1 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@0) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9) (PolymorphicMapType_35287 (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (store (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) r_1@@9 next true) (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))) (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@0) null (|list#sm| r_1@@9 i@@9))))) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@0) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@0)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_41147_4470) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15 f_20) (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15 f_20)) (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| newPMask@0) o_15 f_20))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_34811_34812) ) (!  (=> (or (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_34798_53) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_23476_23513) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_23476_44343) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_23512_4470) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_23512_23479) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_23512_53) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_41643_41644) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_44338_44343) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) r_1@@9 next) (- i@@9 1)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.648:35|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@1) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) null (|list#sm| r_1@@9 i@@9) newPMask@0) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 4) 3))) anon10_correct)))))
(let ((anon15_Else_correct  (=> (|allSet#trigger| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1))) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1) v_2@@3) (and (=> (= (ControlFlow 0 9) 4) anon16_Then_correct) (=> (= (ControlFlow 0 9) 5) anon16_Else_correct)))))
(let ((anon14_Then_correct  (=> (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_1@@9 val) v_2@@3) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_23478_23479 UnfoldingMask@3 r_1@@9 next)) (=> (HasDirectPerm_23478_23479 UnfoldingMask@3 r_1@@9 next) (and (=> (= (ControlFlow 0 10) 8) anon15_Then_correct) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct)))))))
(let ((anon14_Else_correct  (=> (not (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_1@@9 val) v_2@@3)) (and (=> (= (ControlFlow 0 6) 4) anon16_Then_correct) (=> (= (ControlFlow 0 6) 5) anon16_Else_correct)))))
(let ((anon4_correct  (=> (state Heap@@36 UnfoldingMask@3) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_23476_4470 UnfoldingMask@3 r_1@@9 val)) (=> (HasDirectPerm_23476_4470 UnfoldingMask@3 r_1@@9 val) (and (=> (= (ControlFlow 0 12) 10) anon14_Then_correct) (=> (= (ControlFlow 0 12) 6) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (>= 0 i@@9) (=> (and (= UnfoldingMask@3 Mask@0) (= (ControlFlow 0 15) 12)) anon4_correct))))
(let ((anon13_Then_correct  (=> (and (and (> i@@9 0) (not (= r_1@@9 null))) (and (= UnfoldingMask@0 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) (store (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@0) r_1@@9 val (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@0) r_1@@9 val) FullPerm)) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@0) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@0))) (state Heap@@36 UnfoldingMask@0))) (=> (and (and (and (not (= r_1@@9 null)) (= UnfoldingMask@1 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| UnfoldingMask@0) (store (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| UnfoldingMask@0) r_1@@9 next (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| UnfoldingMask@0) r_1@@9 next) FullPerm)) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| UnfoldingMask@0) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| UnfoldingMask@0)))) (and (state Heap@@36 UnfoldingMask@1) (= UnfoldingMask@2 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| UnfoldingMask@1) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| UnfoldingMask@1) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1))) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| UnfoldingMask@1) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| UnfoldingMask@1))))) (and (and (InsidePredicate_23512_23512 (list r_1@@9 i@@9) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_1@@9 i@@9)) (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 14) 12)))) anon4_correct))))
(let ((anon12_Else_correct  (=> (< 0 i@@9) (=> (and (|list#trigger_23512| Heap@@36 (list r_1@@9 i@@9)) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_1@@9 i@@9)) (FrameFragment_23293 (ite (> i@@9 0) (CombineFrames (FrameFragment_4470 (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_1@@9 val)) (CombineFrames (FrameFragment_23479 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_1@@9 next) (- i@@9 1))))) EmptyFrame)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_1@@9 i@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_1@@9 i@@9)))) (and (=> (= (ControlFlow 0 16) 14) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct))))))))
(let ((anon12_Then_correct  (=> (and (<= i@@9 0) (= (ControlFlow 0 2) 1)) anon11_correct)))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@@36) r_1@@9 $allocated)) (=> (and (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_1@@9 i@@9) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_1@@9 i@@9)) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask)))) (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0))) (and (=> (= (ControlFlow 0 18) 2) anon12_Then_correct) (=> (= (ControlFlow 0 18) 16) anon12_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19) 18) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid