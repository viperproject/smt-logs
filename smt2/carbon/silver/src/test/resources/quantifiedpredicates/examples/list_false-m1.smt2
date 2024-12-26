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
(declare-fun QPMask@44 () T@PolymorphicMapType_34759)
(declare-fun r_12 () T@Ref)
(declare-fun length_2 () Int)
(declare-fun lists () (Array T@Ref Bool))
(declare-fun neverTriggered2 (T@Ref) Bool)
(declare-fun PostHeap@0 () T@PolymorphicMapType_34738)
(declare-fun invRecv2 (T@Ref Int) T@Ref)
(declare-fun qpRange2 (T@Ref Int) Bool)
(declare-fun getPredWandId_23476_4470 (T@Field_41147_4470) Int)
(declare-fun getPredWandId_23476_23479 (T@Field_34811_34812) Int)
(declare-fun getPredWandId_23476_23513 (T@Field_23476_23513) Int)
(declare-fun getPredWandId_23476_53 (T@Field_34798_53) Int)
(declare-fun getPredWandId_23476_131207 (T@Field_23476_44343) Int)
(declare-fun getPredWandId_23512_4470 (T@Field_23512_4470) Int)
(declare-fun getPredWandId_23512_23479 (T@Field_23512_23479) Int)
(declare-fun getPredWandId_23512_53 (T@Field_23512_53) Int)
(declare-fun getPredWandId_23512_132016 (T@Field_44338_44343) Int)
(declare-fun r1_5 () T@Ref)
(declare-fun s_2@3 () (Array T@Ref Bool))
(declare-fun r2_5 () T@Ref)
(declare-fun Heap@10 () T@PolymorphicMapType_34738)
(declare-fun sNext@2 () (Array T@Ref Bool))
(declare-fun r_60 () T@Ref)
(declare-fun v_2@@3 () Int)
(declare-fun r_58 () T@Ref)
(declare-fun s_2@0 () (Array T@Ref Bool))
(declare-fun Heap@9 () T@PolymorphicMapType_34738)
(declare-fun l_2 () T@Ref)
(declare-fun Mask@10 () T@PolymorphicMapType_34759)
(declare-fun sNext@1 () (Array T@Ref Bool))
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref Int) T@Ref)
(declare-fun qpRange16 (T@Ref Int) Bool)
(declare-fun QPMask@36 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@37 () T@PolymorphicMapType_34759)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref Int) T@Ref)
(declare-fun qpRange18 (T@Ref Int) Bool)
(declare-fun QPMask@38 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun QPMask@39 () T@PolymorphicMapType_34759)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun r_18 () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_34759)
(declare-fun Mask@7 () T@PolymorphicMapType_34759)
(declare-fun Mask@8 () T@PolymorphicMapType_34759)
(declare-fun Mask@9 () T@PolymorphicMapType_34759)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_34738)
(declare-fun Heap@8 () T@PolymorphicMapType_34738)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@8 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref Int) T@Ref)
(declare-fun qpRange12 (T@Ref Int) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_34759)
(declare-fun QPMask@6 () T@PolymorphicMapType_34759)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref Int) T@Ref)
(declare-fun qpRange14 (T@Ref Int) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_34759)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun FrameFragment_23293 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_4470 (Int) T@FrameType)
(declare-fun FrameFragment_23479 (T@Ref) T@FrameType)
(declare-fun s_2@2 () (Array T@Ref Bool))
(declare-fun r_129 () T@Ref)
(declare-fun Heap@7 () T@PolymorphicMapType_34738)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun QPMask@30 () T@PolymorphicMapType_34759)
(declare-fun invRecv41 (T@Ref Int) T@Ref)
(declare-fun qpRange41 (T@Ref Int) Bool)
(declare-fun QPMask@31 () T@PolymorphicMapType_34759)
(declare-fun r1_13 () T@Ref)
(declare-fun r2_13 () T@Ref)
(declare-fun neverTriggered40 (T@Ref) Bool)
(declare-fun QPMask@29 () T@PolymorphicMapType_34759)
(declare-fun qpRange40 (T@Ref) Bool)
(declare-fun invRecv40 (T@Ref) T@Ref)
(declare-fun r_124 () T@Ref)
(declare-fun neverTriggered39 (T@Ref) Bool)
(declare-fun QPMask@28 () T@PolymorphicMapType_34759)
(declare-fun qpRange39 (T@Ref) Bool)
(declare-fun invRecv39 (T@Ref) T@Ref)
(declare-fun r_121 () T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_34759)
(declare-fun s_2@1 () (Array T@Ref Bool))
(declare-fun l2_2 () T@Ref)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun invRecv38 (T@Ref Int) T@Ref)
(declare-fun qpRange38 (T@Ref Int) Bool)
(declare-fun Heap@3 () T@PolymorphicMapType_34738)
(declare-fun Heap@4 () T@PolymorphicMapType_34738)
(declare-fun Heap@5 () T@PolymorphicMapType_34738)
(declare-fun newPMask@0 () T@PolymorphicMapType_35287)
(declare-fun Heap@6 () T@PolymorphicMapType_34738)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_34738)
(declare-fun Heap@1 () T@PolymorphicMapType_34738)
(declare-fun Heap@2 () T@PolymorphicMapType_34738)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@4 () T@PolymorphicMapType_34759)
(declare-fun Mask@3 () T@PolymorphicMapType_34759)
(declare-fun Mask@2 () T@PolymorphicMapType_34759)
(declare-fun Mask@1 () T@PolymorphicMapType_34759)
(declare-fun QPMask@22 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref Int) T@Ref)
(declare-fun qpRange34 (T@Ref Int) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_34759)
(declare-fun QPMask@20 () T@PolymorphicMapType_34759)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) T@Ref)
(declare-fun QPMask@21 () T@PolymorphicMapType_34759)
(declare-fun qpRange36 (T@Ref) Bool)
(declare-fun invRecv36 (T@Ref) T@Ref)
(declare-fun neverTriggered37 (T@Ref) Bool)
(declare-fun invRecv37 (T@Ref Int) T@Ref)
(declare-fun qpRange37 (T@Ref Int) Bool)
(declare-fun QPMask@35 () T@PolymorphicMapType_34759)
(declare-fun r_26 () T@Ref)
(declare-fun neverTriggered33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref Int) T@Ref)
(declare-fun qpRange33 (T@Ref Int) Bool)
(declare-fun QPMask@34 () T@PolymorphicMapType_34759)
(declare-fun r_24 () T@Ref)
(declare-fun r1_2 () T@Ref)
(declare-fun r2_2 () T@Ref)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) T@Ref)
(declare-fun QPMask@33 () T@PolymorphicMapType_34759)
(declare-fun r_23 () T@Ref)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) T@Ref)
(declare-fun QPMask@32 () T@PolymorphicMapType_34759)
(declare-fun r_21 () T@Ref)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_34759)
(declare-fun invRecv30 (T@Ref Int) T@Ref)
(declare-fun qpRange30 (T@Ref Int) Bool)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun invRecv42 (T@Ref Int) T@Ref)
(declare-fun qpRange42 (T@Ref Int) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_34759)
(declare-fun QPMask@24 () T@PolymorphicMapType_34759)
(declare-fun qpRange43 (T@Ref) Bool)
(declare-fun invRecv43 (T@Ref) T@Ref)
(declare-fun QPMask@25 () T@PolymorphicMapType_34759)
(declare-fun qpRange44 (T@Ref) Bool)
(declare-fun invRecv44 (T@Ref) T@Ref)
(declare-fun neverTriggered45 (T@Ref) Bool)
(declare-fun invRecv45 (T@Ref Int) T@Ref)
(declare-fun qpRange45 (T@Ref Int) Bool)
(declare-fun QPMask@26 () T@PolymorphicMapType_34759)
(declare-fun Heap@0 () T@PolymorphicMapType_34738)
(declare-fun r_88 () T@Ref)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_34759)
(declare-fun invRecv29 (T@Ref Int) T@Ref)
(declare-fun qpRange29 (T@Ref Int) Bool)
(declare-fun r1_8 () T@Ref)
(declare-fun r2_8 () T@Ref)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_34759)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) T@Ref)
(declare-fun r_83 () T@Ref)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_34759)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) T@Ref)
(declare-fun r_80 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref Int) T@Ref)
(declare-fun qpRange26 (T@Ref Int) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_34759)
(declare-fun arg_length@0 () Int)
(declare-fun neverTriggered24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref Int) T@Ref)
(declare-fun qpRange24 (T@Ref Int) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_34759)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_34738)
(declare-fun neverTriggered25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref Int) T@Ref)
(declare-fun qpRange25 (T@Ref Int) Bool)
(declare-fun QPMask@14 () T@PolymorphicMapType_34759)
(declare-fun QPMask@4 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref Int) T@Ref)
(declare-fun qpRange20 (T@Ref Int) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_34759)
(declare-fun QPMask@10 () T@PolymorphicMapType_34759)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun neverTriggered22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref Int) T@Ref)
(declare-fun qpRange22 (T@Ref Int) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_34759)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) T@Ref)
(declare-fun r1_1 () T@Ref)
(declare-fun r2_1 () T@Ref)
(declare-fun QPMask@43 () T@PolymorphicMapType_34759)
(declare-fun r_15 () T@Ref)
(declare-fun r_13 () T@Ref)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun QPMask@42 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref Int) T@Ref)
(declare-fun qpRange10 (T@Ref Int) Bool)
(declare-fun QPMask@41 () T@PolymorphicMapType_34759)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun QPMask@40 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref Int) T@Ref)
(declare-fun qpRange8 (T@Ref Int) Bool)
(declare-fun Heap@@36 () T@PolymorphicMapType_34738)
(declare-fun r1 () T@Ref)
(declare-fun r2@@1 () T@Ref)
(declare-fun sNext@0 () (Array T@Ref Bool))
(declare-fun r_22 () T@Ref)
(declare-fun r_20 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref Int) T@Ref)
(declare-fun qpRange4 (T@Ref Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_34759)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref Int) T@Ref)
(declare-fun qpRange6 (T@Ref Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_34759)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref Int) T@Ref)
(declare-fun qpRange1 (T@Ref Int) Bool)
(set-info :boogie-vc-id m1)
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
 (=> (= (ControlFlow 0 0) 252) (let ((anon157_Then_correct  (=> (= (ControlFlow 0 244) (- 0 243)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) null (list r_12 length_2)))))))
(let ((anon9_correct true))
(let ((anon156_Then_correct  (=> (select lists r_12) (and (=> (= (ControlFlow 0 245) 244) anon157_Then_correct) (=> (= (ControlFlow 0 245) 241) anon9_correct)))))
(let ((anon156_Else_correct  (=> (and (not (select lists r_12)) (= (ControlFlow 0 242) 241)) anon9_correct)))
(let ((anon155_Else_correct true))
(let ((anon154_Else_correct  (and (=> (= (ControlFlow 0 246) (- 0 247)) (forall ((r_5 T@Ref) (r_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_5 r_5_1)) (select lists r_5)) (select lists r_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_5 r_5_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.860:17|
 :skolemid |99|
 :pattern ( (neverTriggered2 r_5) (neverTriggered2 r_5_1))
))) (=> (forall ((r_5@@0 T@Ref) (r_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_5@@0 r_5_1@@0)) (select lists r_5@@0)) (select lists r_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_5@@0 r_5_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.860:17|
 :skolemid |99|
 :pattern ( (neverTriggered2 r_5@@0) (neverTriggered2 r_5_1@@0))
)) (=> (forall ((r_5@@1 T@Ref) ) (!  (=> (and (select lists r_5@@1) (< NoPerm FullPerm)) (and (= (invRecv2 r_5@@1 length_2) r_5@@1) (qpRange2 r_5@@1 length_2)))
 :qid |stdinbpl.866:22|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| PostHeap@0) null (list r_5@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_5@@1 length_2)))
 :pattern ( (select lists r_5@@1))
)) (=> (and (forall ((r_6_1_1 T@Ref) (i_1 Int) ) (!  (=> (and (and (select lists (invRecv2 r_6_1_1 i_1)) (< NoPerm FullPerm)) (qpRange2 r_6_1_1 i_1)) (and (= (invRecv2 r_6_1_1 i_1) r_6_1_1) (= length_2 i_1)))
 :qid |stdinbpl.870:22|
 :skolemid |101|
 :pattern ( (invRecv2 r_6_1_1 i_1))
)) (forall ((r_6_1_1@@0 T@Ref) (i_1@@0 Int) ) (!  (=> (and (and (select lists (invRecv2 r_6_1_1@@0 i_1@@0)) (< NoPerm FullPerm)) (qpRange2 r_6_1_1@@0 i_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv2 r_6_1_1@@0 i_1@@0) r_6_1_1@@0) (= length_2 i_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) null (list r_6_1_1@@0 i_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_6_1_1@@0 i_1@@0)) FullPerm))))
 :qid |stdinbpl.876:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) null (list r_6_1_1@@0 i_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_23476_4470 f_5))) (not (= (getPredWandId_23476_4470 f_5) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@44) o_4 f_5)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@44) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_23478_23479 f_5@@0))) (not (= (getPredWandId_23476_23479 f_5@@0) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@44) o_4@@0 f_5@@0)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@44) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_23476_111428 f_5@@1))) (not (= (getPredWandId_23476_23513 f_5@@1) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@44) o_4@@1 f_5@@1)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@44) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_23476_53 f_5@@2))) (not (= (getPredWandId_23476_53 f_5@@2) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@44) o_4@@2 f_5@@2)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@44) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_23476_122001 f_5@@3))) (not (= (getPredWandId_23476_131207 f_5@@3) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@44) o_4@@3 f_5@@3)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@44) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_23512_4470 f_5@@4))) (not (= (getPredWandId_23512_4470 f_5@@4) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@44) o_4@@4 f_5@@4)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@44) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_23512_23479 f_5@@5))) (not (= (getPredWandId_23512_23479 f_5@@5) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@44) o_4@@5 f_5@@5)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@44) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_23512_23513 f_5@@6))) (not (= (getPredWandId_23512_23513 f_5@@6) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) o_4@@6 f_5@@6)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_23512_53 f_5@@7))) (not (= (getPredWandId_23512_53 f_5@@7) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@44) o_4@@7 f_5@@7)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@44) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_23512_121198 f_5@@8))) (not (= (getPredWandId_23512_132016 f_5@@8) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@44) o_4@@8 f_5@@8)))
 :qid |stdinbpl.882:29|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@44) o_4@@8 f_5@@8))
))) (forall ((r_6_1_1@@1 T@Ref) (i_1@@1 Int) ) (!  (=> (not (and (and (select lists (invRecv2 r_6_1_1@@1 i_1@@1)) (< NoPerm FullPerm)) (qpRange2 r_6_1_1@@1 i_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) null (list r_6_1_1@@1 i_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_6_1_1@@1 i_1@@1))))
 :qid |stdinbpl.886:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@44) null (list r_6_1_1@@1 i_1@@1)))
))) (and (state PostHeap@0 QPMask@44) (state PostHeap@0 QPMask@44))) (and (and (=> (= (ControlFlow 0 246) 240) anon155_Else_correct) (=> (= (ControlFlow 0 246) 245) anon156_Then_correct)) (=> (= (ControlFlow 0 246) 242) anon156_Else_correct)))))))))
(let ((anon154_Then_correct true))
(let ((anon153_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 248) 239) anon154_Then_correct) (=> (= (ControlFlow 0 248) 246) anon154_Else_correct)))))
(let ((anon67_correct true))
(let ((anon186_Else_correct  (=> (and (not (and (select lists r1_5) (and (not (select s_2@3 r1_5)) (and (select lists r2_5) (and (not (select s_2@3 r2_5)) (not (= r1_5 r2_5))))))) (= (ControlFlow 0 199) 196)) anon67_correct)))
(let ((anon186_Then_correct  (=> (and (select lists r1_5) (and (not (select s_2@3 r1_5)) (and (select lists r2_5) (and (not (select s_2@3 r2_5)) (not (= r1_5 r2_5)))))) (and (=> (= (ControlFlow 0 197) (- 0 198)) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r1_5 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r2_5 next)))) (=> (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r1_5 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r2_5 next))) (=> (= (ControlFlow 0 197) 196) anon67_correct))))))
(let ((anon185_Else_correct true))
(let ((anon183_Else_correct  (=> (forall ((r_61_1 T@Ref) ) (!  (=> (and (select lists r_61_1) (not (select s_2@3 r_61_1))) (select sNext@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_61_1 next)))
 :qid |stdinbpl.1806:24|
 :skolemid |217|
 :pattern ( (select lists r_61_1))
 :pattern ( (select s_2@3 r_61_1))
 :pattern ( (select sNext@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_61_1 next)))
)) (and (and (=> (= (ControlFlow 0 200) 195) anon185_Else_correct) (=> (= (ControlFlow 0 200) 197) anon186_Then_correct)) (=> (= (ControlFlow 0 200) 199) anon186_Else_correct)))))
(let ((anon63_correct true))
(let ((anon184_Else_correct  (=> (and (not (and (select lists r_60) (not (select s_2@3 r_60)))) (= (ControlFlow 0 194) 191)) anon63_correct)))
(let ((anon184_Then_correct  (=> (and (select lists r_60) (not (select s_2@3 r_60))) (and (=> (= (ControlFlow 0 192) (- 0 193)) (select sNext@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_60 next))) (=> (select sNext@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_60 next)) (=> (= (ControlFlow 0 192) 191) anon63_correct))))))
(let ((anon181_Else_correct  (=> (forall ((r_59_1 T@Ref) ) (!  (=> (and (select lists r_59_1) (not (select s_2@3 r_59_1))) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_59_1 val) v_2@@3))
 :qid |stdinbpl.1795:24|
 :skolemid |216|
 :pattern ( (select lists r_59_1))
 :pattern ( (select s_2@3 r_59_1))
)) (and (and (=> (= (ControlFlow 0 201) 200) anon183_Else_correct) (=> (= (ControlFlow 0 201) 192) anon184_Then_correct)) (=> (= (ControlFlow 0 201) 194) anon184_Else_correct)))))
(let ((anon59_correct true))
(let ((anon182_Else_correct  (=> (and (not (and (select lists r_58) (not (select s_2@3 r_58)))) (= (ControlFlow 0 190) 187)) anon59_correct)))
(let ((anon182_Then_correct  (=> (and (select lists r_58) (not (select s_2@3 r_58))) (and (=> (= (ControlFlow 0 188) (- 0 189)) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_58 val) v_2@@3)) (=> (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_58 val) v_2@@3) (=> (= (ControlFlow 0 188) 187) anon59_correct))))))
(let ((anon179_Else_correct  (=> (forall ((r_51 T@Ref) ) (!  (=> (and (select lists r_51) (not (select s_2@0 r_51))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) r_51 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next))))
 :qid |stdinbpl.1589:28|
 :skolemid |189|
 :pattern ( (select lists r_51))
 :pattern ( (select s_2@0 r_51))
)) (=> (and (and (state Heap@9 Mask@10) (state Heap@9 Mask@10)) (and (= s_2@3 (|Set#Difference_23552| s_2@0 (|Set#Singleton_23568| l_2))) (state Heap@9 Mask@10))) (and (=> (= (ControlFlow 0 202) (- 0 212)) (HasDirectPerm_23478_23479 Mask@10 l_2 next)) (=> (HasDirectPerm_23478_23479 Mask@10 l_2 next) (=> (and (= sNext@2 (|Set#Union_23555| sNext@1 (|Set#Singleton_23568| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next)))) (state Heap@9 Mask@10)) (and (=> (= (ControlFlow 0 202) (- 0 211)) (= FullPerm (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@10) l_2 val))) (=> (= FullPerm (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@10) l_2 val)) (=> (and (= Heap@10 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) (store (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@9) l_2 val v_2@@3) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@9) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@9))) (state Heap@10 Mask@10)) (and (=> (= (ControlFlow 0 202) (- 0 210)) (forall ((r_52 T@Ref) (r_52_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_52 r_52_1)) (select s_2@3 r_52)) (select s_2@3 r_52_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_52 r_52_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.1623:21|
 :skolemid |190|
 :pattern ( (neverTriggered16 r_52) (neverTriggered16 r_52_1))
))) (=> (forall ((r_52@@0 T@Ref) (r_52_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_52@@0 r_52_1@@0)) (select s_2@3 r_52@@0)) (select s_2@3 r_52_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_52@@0 r_52_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.1623:21|
 :skolemid |190|
 :pattern ( (neverTriggered16 r_52@@0) (neverTriggered16 r_52_1@@0))
)) (and (=> (= (ControlFlow 0 202) (- 0 209)) (forall ((r_52@@1 T@Ref) ) (!  (=> (select s_2@3 r_52@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_52@@1 length_2)) FullPerm))
 :qid |stdinbpl.1630:21|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@10) null (list r_52@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_52@@1 length_2)))
 :pattern ( (select s_2@3 r_52@@1))
))) (=> (forall ((r_52@@2 T@Ref) ) (!  (=> (select s_2@3 r_52@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_52@@2 length_2)) FullPerm))
 :qid |stdinbpl.1630:21|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@10) null (list r_52@@2 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_52@@2 length_2)))
 :pattern ( (select s_2@3 r_52@@2))
)) (=> (and (and (forall ((r_52@@3 T@Ref) ) (!  (=> (and (select s_2@3 r_52@@3) (< NoPerm FullPerm)) (and (= (invRecv16 r_52@@3 length_2) r_52@@3) (qpRange16 r_52@@3 length_2)))
 :qid |stdinbpl.1636:26|
 :skolemid |192|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@10) null (list r_52@@3 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_52@@3 length_2)))
 :pattern ( (select s_2@3 r_52@@3))
)) (forall ((r_53_1 T@Ref) (i_9_1 Int) ) (!  (=> (and (and (select s_2@3 (invRecv16 r_53_1 i_9_1)) (< NoPerm FullPerm)) (qpRange16 r_53_1 i_9_1)) (and (= (invRecv16 r_53_1 i_9_1) r_53_1) (= length_2 i_9_1)))
 :qid |stdinbpl.1640:26|
 :skolemid |193|
 :pattern ( (invRecv16 r_53_1 i_9_1))
))) (and (forall ((r_53_1@@0 T@Ref) (i_9_1@@0 Int) ) (!  (=> (and (and (select s_2@3 (invRecv16 r_53_1@@0 i_9_1@@0)) (< NoPerm FullPerm)) (qpRange16 r_53_1@@0 i_9_1@@0)) (and (and (= (invRecv16 r_53_1@@0 i_9_1@@0) r_53_1@@0) (= length_2 i_9_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) null (list r_53_1@@0 i_9_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_53_1@@0 i_9_1@@0)) FullPerm))))
 :qid |stdinbpl.1646:26|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) null (list r_53_1@@0 i_9_1@@0)))
)) (forall ((r_53_1@@1 T@Ref) (i_9_1@@1 Int) ) (!  (=> (not (and (and (select s_2@3 (invRecv16 r_53_1@@1 i_9_1@@1)) (< NoPerm FullPerm)) (qpRange16 r_53_1@@1 i_9_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) null (list r_53_1@@1 i_9_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) null (list r_53_1@@1 i_9_1@@1))))
 :qid |stdinbpl.1650:26|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) null (list r_53_1@@1 i_9_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_23476_4470 f_5@@9))) (not (= (getPredWandId_23476_4470 f_5@@9) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@10) o_4@@9 f_5@@9) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@36) o_4@@9 f_5@@9)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@10) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@36) o_4@@9 f_5@@9))
)) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_23478_23479 f_5@@10))) (not (= (getPredWandId_23476_23479 f_5@@10) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@10) o_4@@10 f_5@@10) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) o_4@@10 f_5@@10)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@10) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsPredicateField_23476_111428 f_5@@11))) (not (= (getPredWandId_23476_23513 f_5@@11) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@10) o_4@@11 f_5@@11) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@36) o_4@@11 f_5@@11)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@10) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@36) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsPredicateField_23476_53 f_5@@12))) (not (= (getPredWandId_23476_53 f_5@@12) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@10) o_4@@12 f_5@@12) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@36) o_4@@12 f_5@@12)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@10) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@36) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsPredicateField_23476_122001 f_5@@13))) (not (= (getPredWandId_23476_131207 f_5@@13) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@10) o_4@@13 f_5@@13) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@36) o_4@@13 f_5@@13)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@10) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@36) o_4@@13 f_5@@13))
))) (forall ((o_4@@14 T@Ref) (f_5@@14 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@14 null)) (not (IsPredicateField_23512_4470 f_5@@14))) (not (= (getPredWandId_23512_4470 f_5@@14) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@10) o_4@@14 f_5@@14) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@36) o_4@@14 f_5@@14)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@10) o_4@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@36) o_4@@14 f_5@@14))
))) (forall ((o_4@@15 T@Ref) (f_5@@15 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@15 null)) (not (IsPredicateField_23512_23479 f_5@@15))) (not (= (getPredWandId_23512_23479 f_5@@15) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@10) o_4@@15 f_5@@15) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@36) o_4@@15 f_5@@15)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@10) o_4@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@36) o_4@@15 f_5@@15))
))) (forall ((o_4@@16 T@Ref) (f_5@@16 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@16 null)) (not (IsPredicateField_23512_23513 f_5@@16))) (not (= (getPredWandId_23512_23513 f_5@@16) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) o_4@@16 f_5@@16) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) o_4@@16 f_5@@16)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@10) o_4@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) o_4@@16 f_5@@16))
))) (forall ((o_4@@17 T@Ref) (f_5@@17 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@17 null)) (not (IsPredicateField_23512_53 f_5@@17))) (not (= (getPredWandId_23512_53 f_5@@17) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@10) o_4@@17 f_5@@17) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@36) o_4@@17 f_5@@17)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@10) o_4@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@36) o_4@@17 f_5@@17))
))) (forall ((o_4@@18 T@Ref) (f_5@@18 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@18 null)) (not (IsPredicateField_23512_121198 f_5@@18))) (not (= (getPredWandId_23512_132016 f_5@@18) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@10) o_4@@18 f_5@@18) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@36) o_4@@18 f_5@@18)))
 :qid |stdinbpl.1656:33|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@10) o_4@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@36) o_4@@18 f_5@@18))
))) (and (=> (= (ControlFlow 0 202) (- 0 208)) (forall ((r_54 T@Ref) (r_54_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_54 r_54_1)) (and (select lists r_54) (not (select s_2@3 r_54)))) (and (select lists r_54_1) (not (select s_2@3 r_54_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_54 r_54_1)))
 :qid |stdinbpl.1668:21|
 :skolemid |197|
 :pattern ( (neverTriggered17 r_54) (neverTriggered17 r_54_1))
))) (=> (forall ((r_54@@0 T@Ref) (r_54_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_54@@0 r_54_1@@0)) (and (select lists r_54@@0) (not (select s_2@3 r_54@@0)))) (and (select lists r_54_1@@0) (not (select s_2@3 r_54_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_54@@0 r_54_1@@0)))
 :qid |stdinbpl.1668:21|
 :skolemid |197|
 :pattern ( (neverTriggered17 r_54@@0) (neverTriggered17 r_54_1@@0))
)) (and (=> (= (ControlFlow 0 202) (- 0 207)) (forall ((r_54@@1 T@Ref) ) (!  (=> (and (select lists r_54@@1) (not (select s_2@3 r_54@@1))) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) r_54@@1 next) FullPerm))
 :qid |stdinbpl.1675:21|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_54@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) r_54@@1 next))
 :pattern ( (select lists r_54@@1))
 :pattern ( (select s_2@3 r_54@@1))
))) (=> (forall ((r_54@@2 T@Ref) ) (!  (=> (and (select lists r_54@@2) (not (select s_2@3 r_54@@2))) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) r_54@@2 next) FullPerm))
 :qid |stdinbpl.1675:21|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_54@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) r_54@@2 next))
 :pattern ( (select lists r_54@@2))
 :pattern ( (select s_2@3 r_54@@2))
)) (=> (forall ((r_54@@3 T@Ref) ) (!  (=> (and (and (select lists r_54@@3) (not (select s_2@3 r_54@@3))) (< NoPerm FullPerm)) (and (qpRange17 r_54@@3) (= (invRecv17 r_54@@3) r_54@@3)))
 :qid |stdinbpl.1681:26|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@10) r_54@@3 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) r_54@@3 next))
 :pattern ( (select lists r_54@@3))
 :pattern ( (select s_2@3 r_54@@3))
)) (=> (and (forall ((o_4@@19 T@Ref) ) (!  (=> (and (and (select lists (invRecv17 o_4@@19)) (not (select s_2@3 (invRecv17 o_4@@19)))) (and (< NoPerm FullPerm) (qpRange17 o_4@@19))) (= (invRecv17 o_4@@19) o_4@@19))
 :qid |stdinbpl.1685:26|
 :skolemid |200|
 :pattern ( (invRecv17 o_4@@19))
)) (forall ((o_4@@20 T@Ref) ) (!  (and (=> (and (and (select lists (invRecv17 o_4@@20)) (not (select s_2@3 (invRecv17 o_4@@20)))) (and (< NoPerm FullPerm) (qpRange17 o_4@@20))) (and (= (invRecv17 o_4@@20) o_4@@20) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@20 next) (- (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) o_4@@20 next) FullPerm)))) (=> (not (and (and (select lists (invRecv17 o_4@@20)) (not (select s_2@3 (invRecv17 o_4@@20)))) (and (< NoPerm FullPerm) (qpRange17 o_4@@20)))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@20 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) o_4@@20 next))))
 :qid |stdinbpl.1691:26|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@20 next))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@21 T@Ref) (f_5@@19 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@36) o_4@@21 f_5@@19) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@37) o_4@@21 f_5@@19)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@37) o_4@@21 f_5@@19))
)) (forall ((o_4@@22 T@Ref) (f_5@@20 T@Field_34811_34812) ) (!  (=> (not (= f_5@@20 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@36) o_4@@22 f_5@@20) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@22 f_5@@20)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@22 f_5@@20))
))) (forall ((o_4@@23 T@Ref) (f_5@@21 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@36) o_4@@23 f_5@@21) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@37) o_4@@23 f_5@@21)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@37) o_4@@23 f_5@@21))
))) (forall ((o_4@@24 T@Ref) (f_5@@22 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@36) o_4@@24 f_5@@22) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@37) o_4@@24 f_5@@22)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@37) o_4@@24 f_5@@22))
))) (forall ((o_4@@25 T@Ref) (f_5@@23 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@36) o_4@@25 f_5@@23) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@37) o_4@@25 f_5@@23)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@37) o_4@@25 f_5@@23))
))) (forall ((o_4@@26 T@Ref) (f_5@@24 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@36) o_4@@26 f_5@@24) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@37) o_4@@26 f_5@@24)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@37) o_4@@26 f_5@@24))
))) (forall ((o_4@@27 T@Ref) (f_5@@25 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@36) o_4@@27 f_5@@25) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@37) o_4@@27 f_5@@25)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@37) o_4@@27 f_5@@25))
))) (forall ((o_4@@28 T@Ref) (f_5@@26 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@36) o_4@@28 f_5@@26) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@37) o_4@@28 f_5@@26)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@37) o_4@@28 f_5@@26))
))) (forall ((o_4@@29 T@Ref) (f_5@@27 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@36) o_4@@29 f_5@@27) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) o_4@@29 f_5@@27)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) o_4@@29 f_5@@27))
))) (forall ((o_4@@30 T@Ref) (f_5@@28 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@36) o_4@@30 f_5@@28) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@37) o_4@@30 f_5@@28)))
 :qid |stdinbpl.1697:33|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@37) o_4@@30 f_5@@28))
))) (and (=> (= (ControlFlow 0 202) (- 0 206)) (forall ((r_55 T@Ref) (r_55_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_55 r_55_1)) (select sNext@2 r_55)) (select sNext@2 r_55_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_55 r_55_1)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1709:21|
 :skolemid |203|
 :pattern ( (neverTriggered18 r_55) (neverTriggered18 r_55_1))
))) (=> (forall ((r_55@@0 T@Ref) (r_55_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_55@@0 r_55_1@@0)) (select sNext@2 r_55@@0)) (select sNext@2 r_55_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_55@@0 r_55_1@@0)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1709:21|
 :skolemid |203|
 :pattern ( (neverTriggered18 r_55@@0) (neverTriggered18 r_55_1@@0))
)) (and (=> (= (ControlFlow 0 202) (- 0 205)) (forall ((r_55@@1 T@Ref) ) (!  (=> (select sNext@2 r_55@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) null (list r_55@@1 (- length_2 1))) FullPerm))
 :qid |stdinbpl.1716:21|
 :skolemid |204|
 :pattern ( (select sNext@2 r_55@@1))
))) (=> (forall ((r_55@@2 T@Ref) ) (!  (=> (select sNext@2 r_55@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) null (list r_55@@2 (- length_2 1))) FullPerm))
 :qid |stdinbpl.1716:21|
 :skolemid |204|
 :pattern ( (select sNext@2 r_55@@2))
)) (=> (and (and (forall ((r_55@@3 T@Ref) ) (!  (=> (and (select sNext@2 r_55@@3) (< NoPerm FullPerm)) (and (= (invRecv18 r_55@@3 (- length_2 1)) r_55@@3) (qpRange18 r_55@@3 (- length_2 1))))
 :qid |stdinbpl.1722:26|
 :skolemid |205|
 :pattern ( (select sNext@2 r_55@@3))
)) (forall ((r_56_1 T@Ref) (i_10_1 Int) ) (!  (=> (and (and (select sNext@2 (invRecv18 r_56_1 i_10_1)) (< NoPerm FullPerm)) (qpRange18 r_56_1 i_10_1)) (and (= (invRecv18 r_56_1 i_10_1) r_56_1) (= (- length_2 1) i_10_1)))
 :qid |stdinbpl.1726:26|
 :skolemid |206|
 :pattern ( (invRecv18 r_56_1 i_10_1))
))) (and (forall ((r_56_1@@0 T@Ref) (i_10_1@@0 Int) ) (!  (=> (and (and (select sNext@2 (invRecv18 r_56_1@@0 i_10_1@@0)) (< NoPerm FullPerm)) (qpRange18 r_56_1@@0 i_10_1@@0)) (and (and (= (invRecv18 r_56_1@@0 i_10_1@@0) r_56_1@@0) (= (- length_2 1) i_10_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) null (list r_56_1@@0 i_10_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) null (list r_56_1@@0 i_10_1@@0)) FullPerm))))
 :qid |stdinbpl.1732:26|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) null (list r_56_1@@0 i_10_1@@0)))
)) (forall ((r_56_1@@1 T@Ref) (i_10_1@@1 Int) ) (!  (=> (not (and (and (select sNext@2 (invRecv18 r_56_1@@1 i_10_1@@1)) (< NoPerm FullPerm)) (qpRange18 r_56_1@@1 i_10_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) null (list r_56_1@@1 i_10_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) null (list r_56_1@@1 i_10_1@@1))))
 :qid |stdinbpl.1736:26|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) null (list r_56_1@@1 i_10_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@31 T@Ref) (f_5@@29 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@31 null)) (not (IsPredicateField_23476_4470 f_5@@29))) (not (= (getPredWandId_23476_4470 f_5@@29) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@37) o_4@@31 f_5@@29) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) o_4@@31 f_5@@29)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@37) o_4@@31 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) o_4@@31 f_5@@29))
)) (forall ((o_4@@32 T@Ref) (f_5@@30 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@32 null)) (not (IsPredicateField_23478_23479 f_5@@30))) (not (= (getPredWandId_23476_23479 f_5@@30) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@32 f_5@@30) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@38) o_4@@32 f_5@@30)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@37) o_4@@32 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@38) o_4@@32 f_5@@30))
))) (forall ((o_4@@33 T@Ref) (f_5@@31 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@33 null)) (not (IsPredicateField_23476_111428 f_5@@31))) (not (= (getPredWandId_23476_23513 f_5@@31) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@37) o_4@@33 f_5@@31) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@38) o_4@@33 f_5@@31)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@37) o_4@@33 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@38) o_4@@33 f_5@@31))
))) (forall ((o_4@@34 T@Ref) (f_5@@32 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@34 null)) (not (IsPredicateField_23476_53 f_5@@32))) (not (= (getPredWandId_23476_53 f_5@@32) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@37) o_4@@34 f_5@@32) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@38) o_4@@34 f_5@@32)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@37) o_4@@34 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@38) o_4@@34 f_5@@32))
))) (forall ((o_4@@35 T@Ref) (f_5@@33 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@35 null)) (not (IsPredicateField_23476_122001 f_5@@33))) (not (= (getPredWandId_23476_131207 f_5@@33) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@37) o_4@@35 f_5@@33) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@38) o_4@@35 f_5@@33)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@37) o_4@@35 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@38) o_4@@35 f_5@@33))
))) (forall ((o_4@@36 T@Ref) (f_5@@34 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@36 null)) (not (IsPredicateField_23512_4470 f_5@@34))) (not (= (getPredWandId_23512_4470 f_5@@34) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@37) o_4@@36 f_5@@34) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@38) o_4@@36 f_5@@34)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@37) o_4@@36 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@38) o_4@@36 f_5@@34))
))) (forall ((o_4@@37 T@Ref) (f_5@@35 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@37 null)) (not (IsPredicateField_23512_23479 f_5@@35))) (not (= (getPredWandId_23512_23479 f_5@@35) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@37) o_4@@37 f_5@@35) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@38) o_4@@37 f_5@@35)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@37) o_4@@37 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@38) o_4@@37 f_5@@35))
))) (forall ((o_4@@38 T@Ref) (f_5@@36 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@38 null)) (not (IsPredicateField_23512_23513 f_5@@36))) (not (= (getPredWandId_23512_23513 f_5@@36) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) o_4@@38 f_5@@36) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) o_4@@38 f_5@@36)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@37) o_4@@38 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) o_4@@38 f_5@@36))
))) (forall ((o_4@@39 T@Ref) (f_5@@37 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@39 null)) (not (IsPredicateField_23512_53 f_5@@37))) (not (= (getPredWandId_23512_53 f_5@@37) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@37) o_4@@39 f_5@@37) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@38) o_4@@39 f_5@@37)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@37) o_4@@39 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@38) o_4@@39 f_5@@37))
))) (forall ((o_4@@40 T@Ref) (f_5@@38 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@40 null)) (not (IsPredicateField_23512_121198 f_5@@38))) (not (= (getPredWandId_23512_132016 f_5@@38) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@37) o_4@@40 f_5@@38) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@38) o_4@@40 f_5@@38)))
 :qid |stdinbpl.1742:33|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@37) o_4@@40 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@38) o_4@@40 f_5@@38))
))) (and (=> (= (ControlFlow 0 202) (- 0 204)) (forall ((r_57 T@Ref) (r_57_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_57 r_57_1)) (and (select lists r_57) (not (select s_2@3 r_57)))) (and (select lists r_57_1) (not (select s_2@3 r_57_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_57 r_57_1)))
 :qid |stdinbpl.1754:21|
 :skolemid |210|
 :pattern ( (neverTriggered19 r_57) (neverTriggered19 r_57_1))
))) (=> (forall ((r_57@@0 T@Ref) (r_57_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_57@@0 r_57_1@@0)) (and (select lists r_57@@0) (not (select s_2@3 r_57@@0)))) (and (select lists r_57_1@@0) (not (select s_2@3 r_57_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_57@@0 r_57_1@@0)))
 :qid |stdinbpl.1754:21|
 :skolemid |210|
 :pattern ( (neverTriggered19 r_57@@0) (neverTriggered19 r_57_1@@0))
)) (and (=> (= (ControlFlow 0 202) (- 0 203)) (forall ((r_57@@1 T@Ref) ) (!  (=> (and (select lists r_57@@1) (not (select s_2@3 r_57@@1))) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) r_57@@1 val) FullPerm))
 :qid |stdinbpl.1761:21|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_57@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) r_57@@1 val))
 :pattern ( (select lists r_57@@1))
 :pattern ( (select s_2@3 r_57@@1))
))) (=> (forall ((r_57@@2 T@Ref) ) (!  (=> (and (select lists r_57@@2) (not (select s_2@3 r_57@@2))) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) r_57@@2 val) FullPerm))
 :qid |stdinbpl.1761:21|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_57@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) r_57@@2 val))
 :pattern ( (select lists r_57@@2))
 :pattern ( (select s_2@3 r_57@@2))
)) (=> (forall ((r_57@@3 T@Ref) ) (!  (=> (and (and (select lists r_57@@3) (not (select s_2@3 r_57@@3))) (< NoPerm FullPerm)) (and (qpRange19 r_57@@3) (= (invRecv19 r_57@@3) r_57@@3)))
 :qid |stdinbpl.1767:26|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@10) r_57@@3 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) r_57@@3 val))
 :pattern ( (select lists r_57@@3))
 :pattern ( (select s_2@3 r_57@@3))
)) (=> (and (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (select lists (invRecv19 o_4@@41)) (not (select s_2@3 (invRecv19 o_4@@41)))) (and (< NoPerm FullPerm) (qpRange19 o_4@@41))) (= (invRecv19 o_4@@41) o_4@@41))
 :qid |stdinbpl.1771:26|
 :skolemid |213|
 :pattern ( (invRecv19 o_4@@41))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (select lists (invRecv19 o_4@@42)) (not (select s_2@3 (invRecv19 o_4@@42)))) (and (< NoPerm FullPerm) (qpRange19 o_4@@42))) (and (= (invRecv19 o_4@@42) o_4@@42) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) o_4@@42 val) (- (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) o_4@@42 val) FullPerm)))) (=> (not (and (and (select lists (invRecv19 o_4@@42)) (not (select s_2@3 (invRecv19 o_4@@42)))) (and (< NoPerm FullPerm) (qpRange19 o_4@@42)))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) o_4@@42 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) o_4@@42 val))))
 :qid |stdinbpl.1777:26|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) o_4@@42 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@39 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@38) o_4@@43 f_5@@39) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@39) o_4@@43 f_5@@39)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@39) o_4@@43 f_5@@39))
)) (forall ((o_4@@44 T@Ref) (f_5@@40 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@38) o_4@@44 f_5@@40) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@39) o_4@@44 f_5@@40)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@39) o_4@@44 f_5@@40))
))) (forall ((o_4@@45 T@Ref) (f_5@@41 T@Field_41147_4470) ) (!  (=> (not (= f_5@@41 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@38) o_4@@45 f_5@@41) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) o_4@@45 f_5@@41)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@39) o_4@@45 f_5@@41))
))) (forall ((o_4@@46 T@Ref) (f_5@@42 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@38) o_4@@46 f_5@@42) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@39) o_4@@46 f_5@@42)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@39) o_4@@46 f_5@@42))
))) (forall ((o_4@@47 T@Ref) (f_5@@43 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@38) o_4@@47 f_5@@43) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@39) o_4@@47 f_5@@43)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@39) o_4@@47 f_5@@43))
))) (forall ((o_4@@48 T@Ref) (f_5@@44 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@38) o_4@@48 f_5@@44) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@39) o_4@@48 f_5@@44)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@39) o_4@@48 f_5@@44))
))) (forall ((o_4@@49 T@Ref) (f_5@@45 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@38) o_4@@49 f_5@@45) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@39) o_4@@49 f_5@@45)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@39) o_4@@49 f_5@@45))
))) (forall ((o_4@@50 T@Ref) (f_5@@46 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@38) o_4@@50 f_5@@46) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@39) o_4@@50 f_5@@46)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@39) o_4@@50 f_5@@46))
))) (forall ((o_4@@51 T@Ref) (f_5@@47 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@38) o_4@@51 f_5@@47) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@39) o_4@@51 f_5@@47)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@39) o_4@@51 f_5@@47))
))) (forall ((o_4@@52 T@Ref) (f_5@@48 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@38) o_4@@52 f_5@@48) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@39) o_4@@52 f_5@@48)))
 :qid |stdinbpl.1783:33|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@39) o_4@@52 f_5@@48))
))) (and (and (=> (= (ControlFlow 0 202) 201) anon181_Else_correct) (=> (= (ControlFlow 0 202) 188) anon182_Then_correct)) (=> (= (ControlFlow 0 202) 190) anon182_Else_correct))))))))))))))))))))))))))))))))))))))
(let ((anon55_correct true))
(let ((anon180_Else_correct  (=> (and (not (and (select lists r_18) (not (select s_2@0 r_18)))) (= (ControlFlow 0 186) 182)) anon55_correct)))
(let ((anon180_Then_correct  (=> (and (select lists r_18) (not (select s_2@0 r_18))) (and (=> (= (ControlFlow 0 183) (- 0 185)) (HasDirectPerm_23478_23479 Mask@10 r_18 next)) (=> (HasDirectPerm_23478_23479 Mask@10 r_18 next) (and (=> (= (ControlFlow 0 183) (- 0 184)) (HasDirectPerm_23478_23479 Mask@10 l_2 next)) (=> (HasDirectPerm_23478_23479 Mask@10 l_2 next) (=> (= (ControlFlow 0 183) 182) anon55_correct))))))))
(let ((anon52_correct  (=> (and (state Heap@9 Mask@10) (state Heap@9 Mask@10)) (and (and (=> (= (ControlFlow 0 213) 202) anon179_Else_correct) (=> (= (ControlFlow 0 213) 183) anon180_Then_correct)) (=> (= (ControlFlow 0 213) 186) anon180_Else_correct)))))
(let ((anon178_Else_correct  (=> (>= 0 length_2) (=> (and (= Mask@10 Mask@6) (= (ControlFlow 0 215) 213)) anon52_correct))))
(let ((anon178_Then_correct  (=> (and (and (> length_2 0) (not (= l_2 null))) (and (= Mask@7 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@6) (store (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@6) l_2 val (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@6) l_2 val) FullPerm)) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@6) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@6))) (state Heap@9 Mask@7))) (=> (and (and (and (not (= l_2 null)) (= Mask@8 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@7) (store (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@7) l_2 next (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@7) l_2 next) FullPerm)) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@7) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@7)))) (and (state Heap@9 Mask@8) (= Mask@9 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@8) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next) (- length_2 1)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@8) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next) (- length_2 1))) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@8) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@8))))) (and (and (InsidePredicate_23512_23512 (list l_2 length_2) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@9) null (list l_2 length_2)) (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next) (- length_2 1)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@9) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@9) l_2 next) (- length_2 1)))) (state Heap@9 Mask@9)) (and (= Mask@10 Mask@9) (= (ControlFlow 0 214) 213)))) anon52_correct))))
(let ((anon177_Else_correct  (=> (and (HasDirectPerm_23512_23513 Mask@6 null (list l_2 length_2)) (= Heap@9 ExhaleHeap@0)) (and (=> (= (ControlFlow 0 217) 214) anon178_Then_correct) (=> (= (ControlFlow 0 217) 215) anon178_Else_correct)))))
(let ((anon177_Then_correct  (=> (not (HasDirectPerm_23512_23513 Mask@6 null (list l_2 length_2))) (=> (and (= Heap@8 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) (store (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list l_2 length_2) newVersion@0) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@0) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@0))) (= Heap@9 Heap@8)) (and (=> (= (ControlFlow 0 216) 214) anon178_Then_correct) (=> (= (ControlFlow 0 216) 215) anon178_Else_correct))))))
(let ((anon48_correct  (=> (= Mask@6 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) null (list l_2 length_2) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) null (list l_2 length_2)) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@8) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@8))) (and (=> (= (ControlFlow 0 218) 216) anon177_Then_correct) (=> (= (ControlFlow 0 218) 217) anon177_Else_correct)))))
(let ((anon176_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 221) 218)) anon48_correct)))
(let ((anon176_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 219) (- 0 220)) (<= FullPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) null (list l_2 length_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) null (list l_2 length_2))) (=> (= (ControlFlow 0 219) 218) anon48_correct))))))
(let ((anon175_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 222) (- 0 226)) (forall ((r_40 T@Ref) (r_40_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_40 r_40_1)) (select s_2@0 r_40)) (select s_2@0 r_40_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_40 r_40_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.1375:21|
 :skolemid |162|
 :pattern ( (neverTriggered12 r_40) (neverTriggered12 r_40_1))
))) (=> (forall ((r_40@@0 T@Ref) (r_40_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_40@@0 r_40_1@@0)) (select s_2@0 r_40@@0)) (select s_2@0 r_40_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_40@@0 r_40_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.1375:21|
 :skolemid |162|
 :pattern ( (neverTriggered12 r_40@@0) (neverTriggered12 r_40_1@@0))
)) (=> (forall ((r_40@@1 T@Ref) ) (!  (=> (and (select s_2@0 r_40@@1) (< NoPerm FullPerm)) (and (= (invRecv12 r_40@@1 length_2) r_40@@1) (qpRange12 r_40@@1 length_2)))
 :qid |stdinbpl.1381:26|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_40@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_40@@1 length_2)))
 :pattern ( (select s_2@0 r_40@@1))
)) (=> (and (forall ((r_41_1 T@Ref) (i_7_1 Int) ) (!  (=> (and (and (select s_2@0 (invRecv12 r_41_1 i_7_1)) (< NoPerm FullPerm)) (qpRange12 r_41_1 i_7_1)) (and (= (invRecv12 r_41_1 i_7_1) r_41_1) (= length_2 i_7_1)))
 :qid |stdinbpl.1385:26|
 :skolemid |164|
 :pattern ( (invRecv12 r_41_1 i_7_1))
)) (forall ((r_41_1@@0 T@Ref) (i_7_1@@0 Int) ) (!  (=> (and (and (select s_2@0 (invRecv12 r_41_1@@0 i_7_1@@0)) (< NoPerm FullPerm)) (qpRange12 r_41_1@@0 i_7_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv12 r_41_1@@0 i_7_1@@0) r_41_1@@0) (= length_2 i_7_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) null (list r_41_1@@0 i_7_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_41_1@@0 i_7_1@@0)) FullPerm))))
 :qid |stdinbpl.1391:26|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) null (list r_41_1@@0 i_7_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@53 T@Ref) (f_5@@49 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@53 null)) (not (IsPredicateField_23476_4470 f_5@@49))) (not (= (getPredWandId_23476_4470 f_5@@49) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@53 f_5@@49) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@5) o_4@@53 f_5@@49)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@53 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@5) o_4@@53 f_5@@49))
)) (forall ((o_4@@54 T@Ref) (f_5@@50 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@54 null)) (not (IsPredicateField_23478_23479 f_5@@50))) (not (= (getPredWandId_23476_23479 f_5@@50) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@54 f_5@@50) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@54 f_5@@50)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@54 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@54 f_5@@50))
))) (forall ((o_4@@55 T@Ref) (f_5@@51 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@55 null)) (not (IsPredicateField_23476_111428 f_5@@51))) (not (= (getPredWandId_23476_23513 f_5@@51) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@55 f_5@@51) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@5) o_4@@55 f_5@@51)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@55 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@5) o_4@@55 f_5@@51))
))) (forall ((o_4@@56 T@Ref) (f_5@@52 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@56 null)) (not (IsPredicateField_23476_53 f_5@@52))) (not (= (getPredWandId_23476_53 f_5@@52) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@56 f_5@@52) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@5) o_4@@56 f_5@@52)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@56 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@5) o_4@@56 f_5@@52))
))) (forall ((o_4@@57 T@Ref) (f_5@@53 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@57 null)) (not (IsPredicateField_23476_122001 f_5@@53))) (not (= (getPredWandId_23476_131207 f_5@@53) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@57 f_5@@53) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@5) o_4@@57 f_5@@53)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@57 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@5) o_4@@57 f_5@@53))
))) (forall ((o_4@@58 T@Ref) (f_5@@54 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@58 null)) (not (IsPredicateField_23512_4470 f_5@@54))) (not (= (getPredWandId_23512_4470 f_5@@54) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@58 f_5@@54) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@5) o_4@@58 f_5@@54)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@58 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@5) o_4@@58 f_5@@54))
))) (forall ((o_4@@59 T@Ref) (f_5@@55 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@59 null)) (not (IsPredicateField_23512_23479 f_5@@55))) (not (= (getPredWandId_23512_23479 f_5@@55) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@59 f_5@@55) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@5) o_4@@59 f_5@@55)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@59 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@5) o_4@@59 f_5@@55))
))) (forall ((o_4@@60 T@Ref) (f_5@@56 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@60 null)) (not (IsPredicateField_23512_23513 f_5@@56))) (not (= (getPredWandId_23512_23513 f_5@@56) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@60 f_5@@56) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) o_4@@60 f_5@@56)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@60 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) o_4@@60 f_5@@56))
))) (forall ((o_4@@61 T@Ref) (f_5@@57 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@61 null)) (not (IsPredicateField_23512_53 f_5@@57))) (not (= (getPredWandId_23512_53 f_5@@57) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@61 f_5@@57) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@5) o_4@@61 f_5@@57)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@61 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@5) o_4@@61 f_5@@57))
))) (forall ((o_4@@62 T@Ref) (f_5@@58 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@62 null)) (not (IsPredicateField_23512_121198 f_5@@58))) (not (= (getPredWandId_23512_132016 f_5@@58) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@62 f_5@@58) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@5) o_4@@62 f_5@@58)))
 :qid |stdinbpl.1397:33|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@62 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@5) o_4@@62 f_5@@58))
))) (and (forall ((r_41_1@@1 T@Ref) (i_7_1@@1 Int) ) (!  (=> (not (and (and (select s_2@0 (invRecv12 r_41_1@@1 i_7_1@@1)) (< NoPerm FullPerm)) (qpRange12 r_41_1@@1 i_7_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) null (list r_41_1@@1 i_7_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_41_1@@1 i_7_1@@1))))
 :qid |stdinbpl.1401:26|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) null (list r_41_1@@1 i_7_1@@1)))
)) (state ExhaleHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 222) (- 0 225)) (forall ((r_43 T@Ref) (r_43_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_43 r_43_1)) (and (select lists r_43) (not (select s_2@0 r_43)))) (and (select lists r_43_1) (not (select s_2@0 r_43_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_43 r_43_1)))
 :qid |stdinbpl.1409:19|
 :skolemid |168|
))) (=> (forall ((r_43@@0 T@Ref) (r_43_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_43@@0 r_43_1@@0)) (and (select lists r_43@@0) (not (select s_2@0 r_43@@0)))) (and (select lists r_43_1@@0) (not (select s_2@0 r_43_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_43@@0 r_43_1@@0)))
 :qid |stdinbpl.1409:19|
 :skolemid |168|
)) (=> (and (and (forall ((r_43@@1 T@Ref) ) (!  (=> (and (and (select lists r_43@@1) (not (select s_2@0 r_43@@1))) (< NoPerm FullPerm)) (and (qpRange13 r_43@@1) (= (invRecv13 r_43@@1) r_43@@1)))
 :qid |stdinbpl.1415:26|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_43@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) r_43@@1 next))
 :pattern ( (select lists r_43@@1))
 :pattern ( (select s_2@0 r_43@@1))
)) (forall ((o_4@@63 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv13 o_4@@63)) (not (select s_2@0 (invRecv13 o_4@@63)))) (< NoPerm FullPerm)) (qpRange13 o_4@@63)) (= (invRecv13 o_4@@63) o_4@@63))
 :qid |stdinbpl.1419:26|
 :skolemid |170|
 :pattern ( (invRecv13 o_4@@63))
))) (and (forall ((r_43@@2 T@Ref) ) (!  (=> (and (select lists r_43@@2) (not (select s_2@0 r_43@@2))) (not (= r_43@@2 null)))
 :qid |stdinbpl.1425:26|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_43@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) r_43@@2 next))
 :pattern ( (select lists r_43@@2))
 :pattern ( (select s_2@0 r_43@@2))
)) (forall ((o_4@@64 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv13 o_4@@64)) (not (select s_2@0 (invRecv13 o_4@@64)))) (< NoPerm FullPerm)) (qpRange13 o_4@@64)) (and (=> (< NoPerm FullPerm) (= (invRecv13 o_4@@64) o_4@@64)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@64 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@64 next) FullPerm)))) (=> (not (and (and (and (select lists (invRecv13 o_4@@64)) (not (select s_2@0 (invRecv13 o_4@@64)))) (< NoPerm FullPerm)) (qpRange13 o_4@@64))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@64 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@64 next))))
 :qid |stdinbpl.1431:26|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@64 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@65 T@Ref) (f_5@@59 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@5) o_4@@65 f_5@@59) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@6) o_4@@65 f_5@@59)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@5) o_4@@65 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@6) o_4@@65 f_5@@59))
)) (forall ((o_4@@66 T@Ref) (f_5@@60 T@Field_34811_34812) ) (!  (=> (not (= f_5@@60 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@66 f_5@@60) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@66 f_5@@60)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@5) o_4@@66 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@66 f_5@@60))
))) (forall ((o_4@@67 T@Ref) (f_5@@61 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@5) o_4@@67 f_5@@61) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@6) o_4@@67 f_5@@61)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@5) o_4@@67 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@6) o_4@@67 f_5@@61))
))) (forall ((o_4@@68 T@Ref) (f_5@@62 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@5) o_4@@68 f_5@@62) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@6) o_4@@68 f_5@@62)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@5) o_4@@68 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@6) o_4@@68 f_5@@62))
))) (forall ((o_4@@69 T@Ref) (f_5@@63 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@5) o_4@@69 f_5@@63) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@6) o_4@@69 f_5@@63)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@5) o_4@@69 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@6) o_4@@69 f_5@@63))
))) (forall ((o_4@@70 T@Ref) (f_5@@64 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@5) o_4@@70 f_5@@64) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@6) o_4@@70 f_5@@64)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@5) o_4@@70 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@6) o_4@@70 f_5@@64))
))) (forall ((o_4@@71 T@Ref) (f_5@@65 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@5) o_4@@71 f_5@@65) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@6) o_4@@71 f_5@@65)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@5) o_4@@71 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@6) o_4@@71 f_5@@65))
))) (forall ((o_4@@72 T@Ref) (f_5@@66 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@5) o_4@@72 f_5@@66) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@6) o_4@@72 f_5@@66)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@5) o_4@@72 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@6) o_4@@72 f_5@@66))
))) (forall ((o_4@@73 T@Ref) (f_5@@67 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) o_4@@73 f_5@@67) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) o_4@@73 f_5@@67)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@5) o_4@@73 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) o_4@@73 f_5@@67))
))) (forall ((o_4@@74 T@Ref) (f_5@@68 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@5) o_4@@74 f_5@@68) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@6) o_4@@74 f_5@@68)))
 :qid |stdinbpl.1435:33|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@5) o_4@@74 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@6) o_4@@74 f_5@@68))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 222) (- 0 224)) (forall ((r_44 T@Ref) (r_44_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_44 r_44_1)) (select sNext@1 r_44)) (select sNext@1 r_44_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_44 r_44_1)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1445:21|
 :skolemid |174|
 :pattern ( (neverTriggered14 r_44) (neverTriggered14 r_44_1))
))) (=> (forall ((r_44@@0 T@Ref) (r_44_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_44@@0 r_44_1@@0)) (select sNext@1 r_44@@0)) (select sNext@1 r_44_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_44@@0 r_44_1@@0)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1445:21|
 :skolemid |174|
 :pattern ( (neverTriggered14 r_44@@0) (neverTriggered14 r_44_1@@0))
)) (=> (forall ((r_44@@1 T@Ref) ) (!  (=> (and (select sNext@1 r_44@@1) (< NoPerm FullPerm)) (and (= (invRecv14 r_44@@1 (- length_2 1)) r_44@@1) (qpRange14 r_44@@1 (- length_2 1))))
 :qid |stdinbpl.1451:26|
 :skolemid |175|
 :pattern ( (select sNext@1 r_44@@1))
)) (=> (and (forall ((r_45_1 T@Ref) (i_8_2 Int) ) (!  (=> (and (and (select sNext@1 (invRecv14 r_45_1 i_8_2)) (< NoPerm FullPerm)) (qpRange14 r_45_1 i_8_2)) (and (= (invRecv14 r_45_1 i_8_2) r_45_1) (= (- length_2 1) i_8_2)))
 :qid |stdinbpl.1455:26|
 :skolemid |176|
 :pattern ( (invRecv14 r_45_1 i_8_2))
)) (forall ((r_45_1@@0 T@Ref) (i_8_2@@0 Int) ) (!  (=> (and (and (select sNext@1 (invRecv14 r_45_1@@0 i_8_2@@0)) (< NoPerm FullPerm)) (qpRange14 r_45_1@@0 i_8_2@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv14 r_45_1@@0 i_8_2@@0) r_45_1@@0) (= (- length_2 1) i_8_2@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) null (list r_45_1@@0 i_8_2@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) null (list r_45_1@@0 i_8_2@@0)) FullPerm))))
 :qid |stdinbpl.1461:26|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) null (list r_45_1@@0 i_8_2@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@75 T@Ref) (f_5@@69 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@75 null)) (not (IsPredicateField_23476_4470 f_5@@69))) (not (= (getPredWandId_23476_4470 f_5@@69) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@6) o_4@@75 f_5@@69) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@75 f_5@@69)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@6) o_4@@75 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@75 f_5@@69))
)) (forall ((o_4@@76 T@Ref) (f_5@@70 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@76 null)) (not (IsPredicateField_23478_23479 f_5@@70))) (not (= (getPredWandId_23476_23479 f_5@@70) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@76 f_5@@70) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@7) o_4@@76 f_5@@70)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@6) o_4@@76 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@7) o_4@@76 f_5@@70))
))) (forall ((o_4@@77 T@Ref) (f_5@@71 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@77 null)) (not (IsPredicateField_23476_111428 f_5@@71))) (not (= (getPredWandId_23476_23513 f_5@@71) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@6) o_4@@77 f_5@@71) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@7) o_4@@77 f_5@@71)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@6) o_4@@77 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@7) o_4@@77 f_5@@71))
))) (forall ((o_4@@78 T@Ref) (f_5@@72 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@78 null)) (not (IsPredicateField_23476_53 f_5@@72))) (not (= (getPredWandId_23476_53 f_5@@72) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@6) o_4@@78 f_5@@72) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@7) o_4@@78 f_5@@72)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@6) o_4@@78 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@7) o_4@@78 f_5@@72))
))) (forall ((o_4@@79 T@Ref) (f_5@@73 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@79 null)) (not (IsPredicateField_23476_122001 f_5@@73))) (not (= (getPredWandId_23476_131207 f_5@@73) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@6) o_4@@79 f_5@@73) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@7) o_4@@79 f_5@@73)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@6) o_4@@79 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@7) o_4@@79 f_5@@73))
))) (forall ((o_4@@80 T@Ref) (f_5@@74 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@80 null)) (not (IsPredicateField_23512_4470 f_5@@74))) (not (= (getPredWandId_23512_4470 f_5@@74) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@6) o_4@@80 f_5@@74) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@7) o_4@@80 f_5@@74)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@6) o_4@@80 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@7) o_4@@80 f_5@@74))
))) (forall ((o_4@@81 T@Ref) (f_5@@75 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@81 null)) (not (IsPredicateField_23512_23479 f_5@@75))) (not (= (getPredWandId_23512_23479 f_5@@75) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@6) o_4@@81 f_5@@75) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@7) o_4@@81 f_5@@75)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@6) o_4@@81 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@7) o_4@@81 f_5@@75))
))) (forall ((o_4@@82 T@Ref) (f_5@@76 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@82 null)) (not (IsPredicateField_23512_23513 f_5@@76))) (not (= (getPredWandId_23512_23513 f_5@@76) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) o_4@@82 f_5@@76) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) o_4@@82 f_5@@76)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) o_4@@82 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) o_4@@82 f_5@@76))
))) (forall ((o_4@@83 T@Ref) (f_5@@77 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@83 null)) (not (IsPredicateField_23512_53 f_5@@77))) (not (= (getPredWandId_23512_53 f_5@@77) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@6) o_4@@83 f_5@@77) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@7) o_4@@83 f_5@@77)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@6) o_4@@83 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@7) o_4@@83 f_5@@77))
))) (forall ((o_4@@84 T@Ref) (f_5@@78 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@84 null)) (not (IsPredicateField_23512_121198 f_5@@78))) (not (= (getPredWandId_23512_132016 f_5@@78) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@6) o_4@@84 f_5@@78) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@7) o_4@@84 f_5@@78)))
 :qid |stdinbpl.1467:33|
 :skolemid |178|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@6) o_4@@84 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@7) o_4@@84 f_5@@78))
))) (and (forall ((r_45_1@@1 T@Ref) (i_8_2@@1 Int) ) (!  (=> (not (and (and (select sNext@1 (invRecv14 r_45_1@@1 i_8_2@@1)) (< NoPerm FullPerm)) (qpRange14 r_45_1@@1 i_8_2@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) null (list r_45_1@@1 i_8_2@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@6) null (list r_45_1@@1 i_8_2@@1))))
 :qid |stdinbpl.1471:26|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) null (list r_45_1@@1 i_8_2@@1)))
)) (state ExhaleHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 222) (- 0 223)) (forall ((r_47 T@Ref) (r_47_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_47 r_47_1)) (and (select lists r_47) (not (select s_2@0 r_47)))) (and (select lists r_47_1) (not (select s_2@0 r_47_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_47 r_47_1)))
 :qid |stdinbpl.1479:19|
 :skolemid |180|
))) (=> (forall ((r_47@@0 T@Ref) (r_47_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_47@@0 r_47_1@@0)) (and (select lists r_47@@0) (not (select s_2@0 r_47@@0)))) (and (select lists r_47_1@@0) (not (select s_2@0 r_47_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_47@@0 r_47_1@@0)))
 :qid |stdinbpl.1479:19|
 :skolemid |180|
)) (=> (and (and (forall ((r_47@@1 T@Ref) ) (!  (=> (and (and (select lists r_47@@1) (not (select s_2@0 r_47@@1))) (< NoPerm FullPerm)) (and (qpRange15 r_47@@1) (= (invRecv15 r_47@@1) r_47@@1)))
 :qid |stdinbpl.1485:26|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_47@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) r_47@@1 val))
 :pattern ( (select lists r_47@@1))
 :pattern ( (select s_2@0 r_47@@1))
)) (forall ((o_4@@85 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv15 o_4@@85)) (not (select s_2@0 (invRecv15 o_4@@85)))) (< NoPerm FullPerm)) (qpRange15 o_4@@85)) (= (invRecv15 o_4@@85) o_4@@85))
 :qid |stdinbpl.1489:26|
 :skolemid |182|
 :pattern ( (invRecv15 o_4@@85))
))) (and (forall ((r_47@@2 T@Ref) ) (!  (=> (and (select lists r_47@@2) (not (select s_2@0 r_47@@2))) (not (= r_47@@2 null)))
 :qid |stdinbpl.1495:26|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_47@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) r_47@@2 val))
 :pattern ( (select lists r_47@@2))
 :pattern ( (select s_2@0 r_47@@2))
)) (forall ((o_4@@86 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv15 o_4@@86)) (not (select s_2@0 (invRecv15 o_4@@86)))) (< NoPerm FullPerm)) (qpRange15 o_4@@86)) (and (=> (< NoPerm FullPerm) (= (invRecv15 o_4@@86) o_4@@86)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) o_4@@86 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@86 val) FullPerm)))) (=> (not (and (and (and (select lists (invRecv15 o_4@@86)) (not (select s_2@0 (invRecv15 o_4@@86)))) (< NoPerm FullPerm)) (qpRange15 o_4@@86))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) o_4@@86 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@86 val))))
 :qid |stdinbpl.1501:26|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) o_4@@86 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@87 T@Ref) (f_5@@79 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@7) o_4@@87 f_5@@79) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@8) o_4@@87 f_5@@79)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@7) o_4@@87 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@8) o_4@@87 f_5@@79))
)) (forall ((o_4@@88 T@Ref) (f_5@@80 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@7) o_4@@88 f_5@@80) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@8) o_4@@88 f_5@@80)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@7) o_4@@88 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@8) o_4@@88 f_5@@80))
))) (forall ((o_4@@89 T@Ref) (f_5@@81 T@Field_41147_4470) ) (!  (=> (not (= f_5@@81 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@89 f_5@@81) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) o_4@@89 f_5@@81)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@7) o_4@@89 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@8) o_4@@89 f_5@@81))
))) (forall ((o_4@@90 T@Ref) (f_5@@82 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@7) o_4@@90 f_5@@82) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@8) o_4@@90 f_5@@82)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@7) o_4@@90 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@8) o_4@@90 f_5@@82))
))) (forall ((o_4@@91 T@Ref) (f_5@@83 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@7) o_4@@91 f_5@@83) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@8) o_4@@91 f_5@@83)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@7) o_4@@91 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@8) o_4@@91 f_5@@83))
))) (forall ((o_4@@92 T@Ref) (f_5@@84 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@7) o_4@@92 f_5@@84) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@8) o_4@@92 f_5@@84)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@7) o_4@@92 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@8) o_4@@92 f_5@@84))
))) (forall ((o_4@@93 T@Ref) (f_5@@85 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@7) o_4@@93 f_5@@85) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@8) o_4@@93 f_5@@85)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@7) o_4@@93 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@8) o_4@@93 f_5@@85))
))) (forall ((o_4@@94 T@Ref) (f_5@@86 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@7) o_4@@94 f_5@@86) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@8) o_4@@94 f_5@@86)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@7) o_4@@94 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@8) o_4@@94 f_5@@86))
))) (forall ((o_4@@95 T@Ref) (f_5@@87 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) o_4@@95 f_5@@87) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) o_4@@95 f_5@@87)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@7) o_4@@95 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@8) o_4@@95 f_5@@87))
))) (forall ((o_4@@96 T@Ref) (f_5@@88 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@7) o_4@@96 f_5@@88) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@8) o_4@@96 f_5@@88)))
 :qid |stdinbpl.1505:33|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@7) o_4@@96 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@8) o_4@@96 f_5@@88))
))) (state ExhaleHeap@0 QPMask@8)) (and (and (forall ((r_48 T@Ref) ) (!  (=> (and (select lists r_48) (not (select s_2@0 r_48))) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_48 val) v_2@@3))
 :qid |stdinbpl.1511:24|
 :skolemid |186|
 :pattern ( (select lists r_48))
 :pattern ( (select s_2@0 r_48))
)) (forall ((r_49 T@Ref) ) (!  (=> (and (select lists r_49) (not (select s_2@0 r_49))) (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_49 next)))
 :qid |stdinbpl.1515:24|
 :skolemid |187|
 :pattern ( (select lists r_49))
 :pattern ( (select s_2@0 r_49))
 :pattern ( (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_49 next)))
))) (and (forall ((r1_4 T@Ref) (r2_4 T@Ref) ) (!  (=> (and (select lists r1_4) (and (not (select s_2@0 r1_4)) (and (select lists r2_4) (and (not (select s_2@0 r2_4)) (not (= r1_4 r2_4)))))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r1_4 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r2_4 next))))
 :qid |stdinbpl.1519:24|
 :skolemid |188|
 :pattern ( (select lists r1_4) (select lists r2_4))
 :pattern ( (select lists r1_4) (select s_2@0 r2_4))
 :pattern ( (select s_2@0 r1_4) (select lists r2_4))
 :pattern ( (select s_2@0 r1_4) (select s_2@0 r2_4))
)) (state ExhaleHeap@0 QPMask@8)))) (and (and (and (> (|Set#Card_23552| s_2@0) 0) (state ExhaleHeap@0 QPMask@8)) (and (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@0) l_2 $allocated) (select s_2@0 l_2))) (and (and (state ExhaleHeap@0 QPMask@8) (state ExhaleHeap@0 QPMask@8)) (and (|list#trigger_23512| ExhaleHeap@0 (list l_2 length_2)) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list l_2 length_2)) (FrameFragment_23293 (ite (> length_2 0) (CombineFrames (FrameFragment_4470 (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) l_2 val)) (CombineFrames (FrameFragment_23479 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) l_2 next)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) l_2 next) (- length_2 1))))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 222) 219) anon176_Then_correct) (=> (= (ControlFlow 0 222) 221) anon176_Else_correct)))))))))))))))))))))))
(let ((anon145_correct true))
(let ((anon226_Else_correct  (=> (and (not (select s_2@2 r_129)) (= (ControlFlow 0 121) 118)) anon145_correct)))
(let ((anon226_Then_correct  (=> (select s_2@2 r_129) (and (=> (= (ControlFlow 0 119) (- 0 120)) (allSet Heap@7 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_129 next) (- length_2 1) v_2@@3)) (=> (allSet Heap@7 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_129 next) (- length_2 1) v_2@@3) (=> (= (ControlFlow 0 119) 118) anon145_correct))))))
(let ((anon225_Else_correct true))
(let ((anon223_Else_correct  (=> (forall ((r1_14_1 T@Ref) (r2_14_1 T@Ref) ) (!  (=> (and (select s_2@2 r1_14_1) (and (select s_2@2 r2_14_1) (not (= r1_14_1 r2_14_1)))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r1_14_1 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r2_14_1 next))))
 :qid |stdinbpl.2982:24|
 :skolemid |368|
 :pattern ( (select s_2@2 r1_14_1) (select s_2@2 r2_14_1))
)) (and (=> (= (ControlFlow 0 122) (- 0 124)) (forall ((r_127 T@Ref) (r_127_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_127 r_127_1)) (select s_2@2 r_127)) (select s_2@2 r_127_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127_1 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2993:21|
 :skolemid |369|
 :pattern ( (neverTriggered41 r_127) (neverTriggered41 r_127_1))
))) (=> (forall ((r_127@@0 T@Ref) (r_127_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_127@@0 r_127_1@@0)) (select s_2@2 r_127@@0)) (select s_2@2 r_127_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127@@0 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127_1@@0 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2993:21|
 :skolemid |369|
 :pattern ( (neverTriggered41 r_127@@0) (neverTriggered41 r_127_1@@0))
)) (and (=> (= (ControlFlow 0 122) (- 0 123)) (forall ((r_127@@1 T@Ref) ) (!  (=> (select s_2@2 r_127@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127@@1 next) (- length_2 1))) FullPerm))
 :qid |stdinbpl.3000:21|
 :skolemid |370|
 :pattern ( (select s_2@2 r_127@@1))
))) (=> (forall ((r_127@@2 T@Ref) ) (!  (=> (select s_2@2 r_127@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127@@2 next) (- length_2 1))) FullPerm))
 :qid |stdinbpl.3000:21|
 :skolemid |370|
 :pattern ( (select s_2@2 r_127@@2))
)) (=> (and (and (forall ((r_127@@3 T@Ref) ) (!  (=> (and (select s_2@2 r_127@@3) (< NoPerm FullPerm)) (and (= (invRecv41 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127@@3 next) (- length_2 1)) r_127@@3) (qpRange41 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_127@@3 next) (- length_2 1))))
 :qid |stdinbpl.3006:26|
 :skolemid |371|
 :pattern ( (select s_2@2 r_127@@3))
)) (forall ((r_128_1 T@Ref) (i_22_1 Int) ) (!  (=> (and (and (select s_2@2 (invRecv41 r_128_1 i_22_1)) (< NoPerm FullPerm)) (qpRange41 r_128_1 i_22_1)) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) (invRecv41 r_128_1 i_22_1) next) r_128_1) (= (- length_2 1) i_22_1)))
 :qid |stdinbpl.3010:26|
 :skolemid |372|
 :pattern ( (invRecv41 r_128_1 i_22_1))
))) (and (forall ((r_128_1@@0 T@Ref) (i_22_1@@0 Int) ) (!  (=> (and (and (select s_2@2 (invRecv41 r_128_1@@0 i_22_1@@0)) (< NoPerm FullPerm)) (qpRange41 r_128_1@@0 i_22_1@@0)) (and (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) (invRecv41 r_128_1@@0 i_22_1@@0) next) r_128_1@@0) (= (- length_2 1) i_22_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) null (list r_128_1@@0 i_22_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) null (list r_128_1@@0 i_22_1@@0)) FullPerm))))
 :qid |stdinbpl.3016:26|
 :skolemid |373|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) null (list r_128_1@@0 i_22_1@@0)))
)) (forall ((r_128_1@@1 T@Ref) (i_22_1@@1 Int) ) (!  (=> (not (and (and (select s_2@2 (invRecv41 r_128_1@@1 i_22_1@@1)) (< NoPerm FullPerm)) (qpRange41 r_128_1@@1 i_22_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) null (list r_128_1@@1 i_22_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) null (list r_128_1@@1 i_22_1@@1))))
 :qid |stdinbpl.3020:26|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) null (list r_128_1@@1 i_22_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@97 T@Ref) (f_5@@89 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@97 null)) (not (IsPredicateField_23476_4470 f_5@@89))) (not (= (getPredWandId_23476_4470 f_5@@89) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@30) o_4@@97 f_5@@89) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@31) o_4@@97 f_5@@89)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@30) o_4@@97 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@31) o_4@@97 f_5@@89))
)) (forall ((o_4@@98 T@Ref) (f_5@@90 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@98 null)) (not (IsPredicateField_23478_23479 f_5@@90))) (not (= (getPredWandId_23476_23479 f_5@@90) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@98 f_5@@90) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@31) o_4@@98 f_5@@90)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@98 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@31) o_4@@98 f_5@@90))
))) (forall ((o_4@@99 T@Ref) (f_5@@91 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@99 null)) (not (IsPredicateField_23476_111428 f_5@@91))) (not (= (getPredWandId_23476_23513 f_5@@91) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@30) o_4@@99 f_5@@91) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@31) o_4@@99 f_5@@91)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@30) o_4@@99 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@31) o_4@@99 f_5@@91))
))) (forall ((o_4@@100 T@Ref) (f_5@@92 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@100 null)) (not (IsPredicateField_23476_53 f_5@@92))) (not (= (getPredWandId_23476_53 f_5@@92) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@30) o_4@@100 f_5@@92) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@31) o_4@@100 f_5@@92)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@30) o_4@@100 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@31) o_4@@100 f_5@@92))
))) (forall ((o_4@@101 T@Ref) (f_5@@93 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@101 null)) (not (IsPredicateField_23476_122001 f_5@@93))) (not (= (getPredWandId_23476_131207 f_5@@93) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@30) o_4@@101 f_5@@93) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@31) o_4@@101 f_5@@93)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@30) o_4@@101 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@31) o_4@@101 f_5@@93))
))) (forall ((o_4@@102 T@Ref) (f_5@@94 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@102 null)) (not (IsPredicateField_23512_4470 f_5@@94))) (not (= (getPredWandId_23512_4470 f_5@@94) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@30) o_4@@102 f_5@@94) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@31) o_4@@102 f_5@@94)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@30) o_4@@102 f_5@@94))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@31) o_4@@102 f_5@@94))
))) (forall ((o_4@@103 T@Ref) (f_5@@95 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@103 null)) (not (IsPredicateField_23512_23479 f_5@@95))) (not (= (getPredWandId_23512_23479 f_5@@95) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@30) o_4@@103 f_5@@95) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@31) o_4@@103 f_5@@95)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@30) o_4@@103 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@31) o_4@@103 f_5@@95))
))) (forall ((o_4@@104 T@Ref) (f_5@@96 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@104 null)) (not (IsPredicateField_23512_23513 f_5@@96))) (not (= (getPredWandId_23512_23513 f_5@@96) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) o_4@@104 f_5@@96) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) o_4@@104 f_5@@96)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) o_4@@104 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@31) o_4@@104 f_5@@96))
))) (forall ((o_4@@105 T@Ref) (f_5@@97 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@105 null)) (not (IsPredicateField_23512_53 f_5@@97))) (not (= (getPredWandId_23512_53 f_5@@97) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@30) o_4@@105 f_5@@97) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@31) o_4@@105 f_5@@97)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@30) o_4@@105 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@31) o_4@@105 f_5@@97))
))) (forall ((o_4@@106 T@Ref) (f_5@@98 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@106 null)) (not (IsPredicateField_23512_121198 f_5@@98))) (not (= (getPredWandId_23512_132016 f_5@@98) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@30) o_4@@106 f_5@@98) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@31) o_4@@106 f_5@@98)))
 :qid |stdinbpl.3026:33|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@30) o_4@@106 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@31) o_4@@106 f_5@@98))
))) (and (and (=> (= (ControlFlow 0 122) 117) anon225_Else_correct) (=> (= (ControlFlow 0 122) 119) anon226_Then_correct)) (=> (= (ControlFlow 0 122) 121) anon226_Else_correct)))))))))))
(let ((anon141_correct true))
(let ((anon224_Else_correct  (=> (and (not (and (select s_2@2 r1_13) (and (select s_2@2 r2_13) (not (= r1_13 r2_13))))) (= (ControlFlow 0 116) 113)) anon141_correct)))
(let ((anon224_Then_correct  (=> (and (select s_2@2 r1_13) (and (select s_2@2 r2_13) (not (= r1_13 r2_13)))) (and (=> (= (ControlFlow 0 114) (- 0 115)) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r1_13 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r2_13 next)))) (=> (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r1_13 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r2_13 next))) (=> (= (ControlFlow 0 114) 113) anon141_correct))))))
(let ((anon221_Else_correct  (=> (forall ((r_125_1 T@Ref) ) (!  (=> (select s_2@2 r_125_1) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_125_1 val) v_2@@3))
 :qid |stdinbpl.2930:24|
 :skolemid |361|
 :pattern ( (select s_2@2 r_125_1))
)) (and (=> (= (ControlFlow 0 125) (- 0 127)) (forall ((r_126 T@Ref) (r_126_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_126 r_126_1)) (select s_2@2 r_126)) (select s_2@2 r_126_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_126 r_126_1)))
 :qid |stdinbpl.2941:21|
 :skolemid |362|
 :pattern ( (neverTriggered40 r_126) (neverTriggered40 r_126_1))
))) (=> (forall ((r_126@@0 T@Ref) (r_126_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_126@@0 r_126_1@@0)) (select s_2@2 r_126@@0)) (select s_2@2 r_126_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_126@@0 r_126_1@@0)))
 :qid |stdinbpl.2941:21|
 :skolemid |362|
 :pattern ( (neverTriggered40 r_126@@0) (neverTriggered40 r_126_1@@0))
)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (forall ((r_126@@1 T@Ref) ) (!  (=> (select s_2@2 r_126@@1) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) r_126@@1 next) FullPerm))
 :qid |stdinbpl.2948:21|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_126@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) r_126@@1 next))
 :pattern ( (select s_2@2 r_126@@1))
))) (=> (forall ((r_126@@2 T@Ref) ) (!  (=> (select s_2@2 r_126@@2) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) r_126@@2 next) FullPerm))
 :qid |stdinbpl.2948:21|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_126@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) r_126@@2 next))
 :pattern ( (select s_2@2 r_126@@2))
)) (=> (forall ((r_126@@3 T@Ref) ) (!  (=> (and (select s_2@2 r_126@@3) (< NoPerm FullPerm)) (and (qpRange40 r_126@@3) (= (invRecv40 r_126@@3) r_126@@3)))
 :qid |stdinbpl.2954:26|
 :skolemid |364|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@7) r_126@@3 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) r_126@@3 next))
 :pattern ( (select s_2@2 r_126@@3))
)) (=> (and (forall ((o_4@@107 T@Ref) ) (!  (=> (and (select s_2@2 (invRecv40 o_4@@107)) (and (< NoPerm FullPerm) (qpRange40 o_4@@107))) (= (invRecv40 o_4@@107) o_4@@107))
 :qid |stdinbpl.2958:26|
 :skolemid |365|
 :pattern ( (invRecv40 o_4@@107))
)) (forall ((o_4@@108 T@Ref) ) (!  (and (=> (and (select s_2@2 (invRecv40 o_4@@108)) (and (< NoPerm FullPerm) (qpRange40 o_4@@108))) (and (= (invRecv40 o_4@@108) o_4@@108) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@108 next) (- (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) o_4@@108 next) FullPerm)))) (=> (not (and (select s_2@2 (invRecv40 o_4@@108)) (and (< NoPerm FullPerm) (qpRange40 o_4@@108)))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@108 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) o_4@@108 next))))
 :qid |stdinbpl.2964:26|
 :skolemid |366|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@108 next))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@109 T@Ref) (f_5@@99 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@29) o_4@@109 f_5@@99) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@30) o_4@@109 f_5@@99)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@30) o_4@@109 f_5@@99))
)) (forall ((o_4@@110 T@Ref) (f_5@@100 T@Field_34811_34812) ) (!  (=> (not (= f_5@@100 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) o_4@@110 f_5@@100) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@110 f_5@@100)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@30) o_4@@110 f_5@@100))
))) (forall ((o_4@@111 T@Ref) (f_5@@101 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@111 f_5@@101) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@30) o_4@@111 f_5@@101)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@30) o_4@@111 f_5@@101))
))) (forall ((o_4@@112 T@Ref) (f_5@@102 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@29) o_4@@112 f_5@@102) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@30) o_4@@112 f_5@@102)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@30) o_4@@112 f_5@@102))
))) (forall ((o_4@@113 T@Ref) (f_5@@103 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@29) o_4@@113 f_5@@103) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@30) o_4@@113 f_5@@103)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@30) o_4@@113 f_5@@103))
))) (forall ((o_4@@114 T@Ref) (f_5@@104 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@29) o_4@@114 f_5@@104) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@30) o_4@@114 f_5@@104)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@30) o_4@@114 f_5@@104))
))) (forall ((o_4@@115 T@Ref) (f_5@@105 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@29) o_4@@115 f_5@@105) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@30) o_4@@115 f_5@@105)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@30) o_4@@115 f_5@@105))
))) (forall ((o_4@@116 T@Ref) (f_5@@106 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@29) o_4@@116 f_5@@106) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@30) o_4@@116 f_5@@106)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@30) o_4@@116 f_5@@106))
))) (forall ((o_4@@117 T@Ref) (f_5@@107 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@29) o_4@@117 f_5@@107) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) o_4@@117 f_5@@107)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@30) o_4@@117 f_5@@107))
))) (forall ((o_4@@118 T@Ref) (f_5@@108 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@29) o_4@@118 f_5@@108) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@30) o_4@@118 f_5@@108)))
 :qid |stdinbpl.2970:33|
 :skolemid |367|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@30) o_4@@118 f_5@@108))
))) (and (and (=> (= (ControlFlow 0 125) 122) anon223_Else_correct) (=> (= (ControlFlow 0 125) 114) anon224_Then_correct)) (=> (= (ControlFlow 0 125) 116) anon224_Else_correct))))))))))))
(let ((anon137_correct true))
(let ((anon222_Else_correct  (=> (and (not (select s_2@2 r_124)) (= (ControlFlow 0 112) 109)) anon137_correct)))
(let ((anon222_Then_correct  (=> (select s_2@2 r_124) (and (=> (= (ControlFlow 0 110) (- 0 111)) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_124 val) v_2@@3)) (=> (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_124 val) v_2@@3) (=> (= (ControlFlow 0 110) 109) anon137_correct))))))
(let ((anon219_Else_correct  (=> (forall ((r_122_1 T@Ref) ) (!  (=> (and (select lists r_122_1) (not (select s_2@2 r_122_1))) (allSet Heap@7 r_122_1 length_2 v_2@@3))
 :qid |stdinbpl.2878:24|
 :skolemid |354|
 :pattern ( (select lists r_122_1))
 :pattern ( (select s_2@2 r_122_1))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@7) null (list r_122_1 length_2)) r_122_1 length_2 v_2@@3))
)) (and (=> (= (ControlFlow 0 128) (- 0 130)) (forall ((r_123 T@Ref) (r_123_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_123 r_123_1)) (select s_2@2 r_123)) (select s_2@2 r_123_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_123 r_123_1)))
 :qid |stdinbpl.2889:21|
 :skolemid |355|
 :pattern ( (neverTriggered39 r_123) (neverTriggered39 r_123_1))
))) (=> (forall ((r_123@@0 T@Ref) (r_123_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_123@@0 r_123_1@@0)) (select s_2@2 r_123@@0)) (select s_2@2 r_123_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_123@@0 r_123_1@@0)))
 :qid |stdinbpl.2889:21|
 :skolemid |355|
 :pattern ( (neverTriggered39 r_123@@0) (neverTriggered39 r_123_1@@0))
)) (and (=> (= (ControlFlow 0 128) (- 0 129)) (forall ((r_123@@1 T@Ref) ) (!  (=> (select s_2@2 r_123@@1) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) r_123@@1 val) FullPerm))
 :qid |stdinbpl.2896:21|
 :skolemid |356|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_123@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) r_123@@1 val))
 :pattern ( (select s_2@2 r_123@@1))
))) (=> (forall ((r_123@@2 T@Ref) ) (!  (=> (select s_2@2 r_123@@2) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) r_123@@2 val) FullPerm))
 :qid |stdinbpl.2896:21|
 :skolemid |356|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_123@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) r_123@@2 val))
 :pattern ( (select s_2@2 r_123@@2))
)) (=> (forall ((r_123@@3 T@Ref) ) (!  (=> (and (select s_2@2 r_123@@3) (< NoPerm FullPerm)) (and (qpRange39 r_123@@3) (= (invRecv39 r_123@@3) r_123@@3)))
 :qid |stdinbpl.2902:26|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@7) r_123@@3 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) r_123@@3 val))
 :pattern ( (select s_2@2 r_123@@3))
)) (=> (and (forall ((o_4@@119 T@Ref) ) (!  (=> (and (select s_2@2 (invRecv39 o_4@@119)) (and (< NoPerm FullPerm) (qpRange39 o_4@@119))) (= (invRecv39 o_4@@119) o_4@@119))
 :qid |stdinbpl.2906:26|
 :skolemid |358|
 :pattern ( (invRecv39 o_4@@119))
)) (forall ((o_4@@120 T@Ref) ) (!  (and (=> (and (select s_2@2 (invRecv39 o_4@@120)) (and (< NoPerm FullPerm) (qpRange39 o_4@@120))) (and (= (invRecv39 o_4@@120) o_4@@120) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@120 val) (- (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) o_4@@120 val) FullPerm)))) (=> (not (and (select s_2@2 (invRecv39 o_4@@120)) (and (< NoPerm FullPerm) (qpRange39 o_4@@120)))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@120 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) o_4@@120 val))))
 :qid |stdinbpl.2912:26|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@120 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@121 T@Ref) (f_5@@109 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@28) o_4@@121 f_5@@109) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@29) o_4@@121 f_5@@109)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@29) o_4@@121 f_5@@109))
)) (forall ((o_4@@122 T@Ref) (f_5@@110 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@28) o_4@@122 f_5@@110) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) o_4@@122 f_5@@110)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@29) o_4@@122 f_5@@110))
))) (forall ((o_4@@123 T@Ref) (f_5@@111 T@Field_41147_4470) ) (!  (=> (not (= f_5@@111 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) o_4@@123 f_5@@111) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@123 f_5@@111)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@29) o_4@@123 f_5@@111))
))) (forall ((o_4@@124 T@Ref) (f_5@@112 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@28) o_4@@124 f_5@@112) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@29) o_4@@124 f_5@@112)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@29) o_4@@124 f_5@@112))
))) (forall ((o_4@@125 T@Ref) (f_5@@113 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@28) o_4@@125 f_5@@113) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@29) o_4@@125 f_5@@113)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@29) o_4@@125 f_5@@113))
))) (forall ((o_4@@126 T@Ref) (f_5@@114 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@28) o_4@@126 f_5@@114) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@29) o_4@@126 f_5@@114)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@29) o_4@@126 f_5@@114))
))) (forall ((o_4@@127 T@Ref) (f_5@@115 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@28) o_4@@127 f_5@@115) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@29) o_4@@127 f_5@@115)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@29) o_4@@127 f_5@@115))
))) (forall ((o_4@@128 T@Ref) (f_5@@116 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@28) o_4@@128 f_5@@116) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@29) o_4@@128 f_5@@116)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@29) o_4@@128 f_5@@116))
))) (forall ((o_4@@129 T@Ref) (f_5@@117 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) o_4@@129 f_5@@117) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@29) o_4@@129 f_5@@117)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@29) o_4@@129 f_5@@117))
))) (forall ((o_4@@130 T@Ref) (f_5@@118 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@28) o_4@@130 f_5@@118) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@29) o_4@@130 f_5@@118)))
 :qid |stdinbpl.2918:33|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@29) o_4@@130 f_5@@118))
))) (and (and (=> (= (ControlFlow 0 128) 125) anon221_Else_correct) (=> (= (ControlFlow 0 128) 110) anon222_Then_correct)) (=> (= (ControlFlow 0 128) 112) anon222_Else_correct))))))))))))
(let ((anon133_correct true))
(let ((anon220_Else_correct  (=> (and (not (and (select lists r_121) (not (select s_2@2 r_121)))) (= (ControlFlow 0 108) 105)) anon133_correct)))
(let ((anon220_Then_correct  (=> (and (select lists r_121) (not (select s_2@2 r_121))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (allSet Heap@7 r_121 length_2 v_2@@3)) (=> (allSet Heap@7 r_121 length_2 v_2@@3) (=> (= (ControlFlow 0 106) 105) anon133_correct))))))
(let ((anon130_correct  (=> (and (and (state Heap@7 Mask@5) (state Heap@7 Mask@5)) (and (= s_2@2 (|Set#Difference_23552| s_2@1 (|Set#Singleton_23568| l2_2))) (state Heap@7 Mask@5))) (and (=> (= (ControlFlow 0 131) (- 0 133)) (forall ((r_119 T@Ref) (r_119_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_119 r_119_1)) (and (select lists r_119) (not (select s_2@2 r_119)))) (and (select lists r_119_1) (not (select s_2@2 r_119_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_119 r_119_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.2833:21|
 :skolemid |347|
 :pattern ( (neverTriggered38 r_119) (neverTriggered38 r_119_1))
))) (=> (forall ((r_119@@0 T@Ref) (r_119_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_119@@0 r_119_1@@0)) (and (select lists r_119@@0) (not (select s_2@2 r_119@@0)))) (and (select lists r_119_1@@0) (not (select s_2@2 r_119_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_119@@0 r_119_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.2833:21|
 :skolemid |347|
 :pattern ( (neverTriggered38 r_119@@0) (neverTriggered38 r_119_1@@0))
)) (and (=> (= (ControlFlow 0 131) (- 0 132)) (forall ((r_119@@1 T@Ref) ) (!  (=> (and (select lists r_119@@1) (not (select s_2@2 r_119@@1))) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_119@@1 length_2)) FullPerm))
 :qid |stdinbpl.2840:21|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@7) null (list r_119@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_119@@1 length_2)))
 :pattern ( (select lists r_119@@1))
 :pattern ( (select s_2@2 r_119@@1))
))) (=> (forall ((r_119@@2 T@Ref) ) (!  (=> (and (select lists r_119@@2) (not (select s_2@2 r_119@@2))) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_119@@2 length_2)) FullPerm))
 :qid |stdinbpl.2840:21|
 :skolemid |348|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@7) null (list r_119@@2 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_119@@2 length_2)))
 :pattern ( (select lists r_119@@2))
 :pattern ( (select s_2@2 r_119@@2))
)) (=> (and (and (forall ((r_119@@3 T@Ref) ) (!  (=> (and (and (select lists r_119@@3) (not (select s_2@2 r_119@@3))) (< NoPerm FullPerm)) (and (= (invRecv38 r_119@@3 length_2) r_119@@3) (qpRange38 r_119@@3 length_2)))
 :qid |stdinbpl.2846:26|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@7) null (list r_119@@3 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_119@@3 length_2)))
 :pattern ( (select lists r_119@@3))
 :pattern ( (select s_2@2 r_119@@3))
)) (forall ((r_120_1 T@Ref) (i_21 Int) ) (!  (=> (and (and (and (select lists (invRecv38 r_120_1 i_21)) (not (select s_2@2 (invRecv38 r_120_1 i_21)))) (< NoPerm FullPerm)) (qpRange38 r_120_1 i_21)) (and (= (invRecv38 r_120_1 i_21) r_120_1) (= length_2 i_21)))
 :qid |stdinbpl.2850:26|
 :skolemid |350|
 :pattern ( (invRecv38 r_120_1 i_21))
))) (and (forall ((r_120_1@@0 T@Ref) (i_21@@0 Int) ) (!  (=> (and (and (and (select lists (invRecv38 r_120_1@@0 i_21@@0)) (not (select s_2@2 (invRecv38 r_120_1@@0 i_21@@0)))) (< NoPerm FullPerm)) (qpRange38 r_120_1@@0 i_21@@0)) (and (and (= (invRecv38 r_120_1@@0 i_21@@0) r_120_1@@0) (= length_2 i_21@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) null (list r_120_1@@0 i_21@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_120_1@@0 i_21@@0)) FullPerm))))
 :qid |stdinbpl.2856:26|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) null (list r_120_1@@0 i_21@@0)))
)) (forall ((r_120_1@@1 T@Ref) (i_21@@1 Int) ) (!  (=> (not (and (and (and (select lists (invRecv38 r_120_1@@1 i_21@@1)) (not (select s_2@2 (invRecv38 r_120_1@@1 i_21@@1)))) (< NoPerm FullPerm)) (qpRange38 r_120_1@@1 i_21@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) null (list r_120_1@@1 i_21@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) null (list r_120_1@@1 i_21@@1))))
 :qid |stdinbpl.2860:26|
 :skolemid |352|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) null (list r_120_1@@1 i_21@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@131 T@Ref) (f_5@@119 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@131 null)) (not (IsPredicateField_23476_4470 f_5@@119))) (not (= (getPredWandId_23476_4470 f_5@@119) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@5) o_4@@131 f_5@@119) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) o_4@@131 f_5@@119)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@5) o_4@@131 f_5@@119))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@28) o_4@@131 f_5@@119))
)) (forall ((o_4@@132 T@Ref) (f_5@@120 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@132 null)) (not (IsPredicateField_23478_23479 f_5@@120))) (not (= (getPredWandId_23476_23479 f_5@@120) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@5) o_4@@132 f_5@@120) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@28) o_4@@132 f_5@@120)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@5) o_4@@132 f_5@@120))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@28) o_4@@132 f_5@@120))
))) (forall ((o_4@@133 T@Ref) (f_5@@121 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@133 null)) (not (IsPredicateField_23476_111428 f_5@@121))) (not (= (getPredWandId_23476_23513 f_5@@121) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@5) o_4@@133 f_5@@121) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@28) o_4@@133 f_5@@121)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@5) o_4@@133 f_5@@121))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@28) o_4@@133 f_5@@121))
))) (forall ((o_4@@134 T@Ref) (f_5@@122 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@134 null)) (not (IsPredicateField_23476_53 f_5@@122))) (not (= (getPredWandId_23476_53 f_5@@122) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@5) o_4@@134 f_5@@122) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@28) o_4@@134 f_5@@122)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@5) o_4@@134 f_5@@122))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@28) o_4@@134 f_5@@122))
))) (forall ((o_4@@135 T@Ref) (f_5@@123 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@135 null)) (not (IsPredicateField_23476_122001 f_5@@123))) (not (= (getPredWandId_23476_131207 f_5@@123) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@5) o_4@@135 f_5@@123) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@28) o_4@@135 f_5@@123)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@5) o_4@@135 f_5@@123))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@28) o_4@@135 f_5@@123))
))) (forall ((o_4@@136 T@Ref) (f_5@@124 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@136 null)) (not (IsPredicateField_23512_4470 f_5@@124))) (not (= (getPredWandId_23512_4470 f_5@@124) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@5) o_4@@136 f_5@@124) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@28) o_4@@136 f_5@@124)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@5) o_4@@136 f_5@@124))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@28) o_4@@136 f_5@@124))
))) (forall ((o_4@@137 T@Ref) (f_5@@125 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@137 null)) (not (IsPredicateField_23512_23479 f_5@@125))) (not (= (getPredWandId_23512_23479 f_5@@125) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@5) o_4@@137 f_5@@125) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@28) o_4@@137 f_5@@125)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@5) o_4@@137 f_5@@125))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@28) o_4@@137 f_5@@125))
))) (forall ((o_4@@138 T@Ref) (f_5@@126 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@138 null)) (not (IsPredicateField_23512_23513 f_5@@126))) (not (= (getPredWandId_23512_23513 f_5@@126) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) o_4@@138 f_5@@126) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) o_4@@138 f_5@@126)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@5) o_4@@138 f_5@@126))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@28) o_4@@138 f_5@@126))
))) (forall ((o_4@@139 T@Ref) (f_5@@127 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@139 null)) (not (IsPredicateField_23512_53 f_5@@127))) (not (= (getPredWandId_23512_53 f_5@@127) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@5) o_4@@139 f_5@@127) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@28) o_4@@139 f_5@@127)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@5) o_4@@139 f_5@@127))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@28) o_4@@139 f_5@@127))
))) (forall ((o_4@@140 T@Ref) (f_5@@128 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@140 null)) (not (IsPredicateField_23512_121198 f_5@@128))) (not (= (getPredWandId_23512_132016 f_5@@128) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@5) o_4@@140 f_5@@128) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@28) o_4@@140 f_5@@128)))
 :qid |stdinbpl.2866:33|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@5) o_4@@140 f_5@@128))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@28) o_4@@140 f_5@@128))
))) (and (and (=> (= (ControlFlow 0 131) 128) anon219_Else_correct) (=> (= (ControlFlow 0 131) 106) anon220_Then_correct)) (=> (= (ControlFlow 0 131) 108) anon220_Else_correct)))))))))))
(let ((anon218_Else_correct  (=> (>= 0 length_2) (=> (and (= Heap@7 Heap@3) (= (ControlFlow 0 135) 131)) anon130_correct))))
(let ((anon218_Then_correct  (=> (> length_2 0) (=> (and (= Heap@4 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@3) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2) (PolymorphicMapType_35287 (store (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) l2_2 val true) (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@3) null (|list#sm| l2_2 length_2))))) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@3) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@3))) (= Heap@5 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@4) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2) (PolymorphicMapType_35287 (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (store (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) l2_2 next true) (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))) (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@4) null (|list#sm| l2_2 length_2))))) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@4) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@4)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_8 T@Ref) (f_30 T@Field_41147_4470) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8 f_30) (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8 f_30)) (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| newPMask@0) o_8 f_30))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_23476_4470#PolymorphicMapType_35287| newPMask@0) o_8 f_30))
)) (forall ((o_8@@0 T@Ref) (f_30@@0 T@Field_34811_34812) ) (!  (=> (or (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@0 f_30@@0) (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@0 f_30@@0)) (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| newPMask@0) o_8@@0 f_30@@0))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_23478_23479#PolymorphicMapType_35287| newPMask@0) o_8@@0 f_30@@0))
))) (forall ((o_8@@1 T@Ref) (f_30@@1 T@Field_34798_53) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@1 f_30@@1) (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@1 f_30@@1)) (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| newPMask@0) o_8@@1 f_30@@1))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_23476_53#PolymorphicMapType_35287| newPMask@0) o_8@@1 f_30@@1))
))) (forall ((o_8@@2 T@Ref) (f_30@@2 T@Field_23476_23513) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@2 f_30@@2) (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@2 f_30@@2)) (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| newPMask@0) o_8@@2 f_30@@2))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_23476_41644#PolymorphicMapType_35287| newPMask@0) o_8@@2 f_30@@2))
))) (forall ((o_8@@3 T@Ref) (f_30@@3 T@Field_23476_44343) ) (!  (=> (or (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@3 f_30@@3) (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@3 f_30@@3)) (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| newPMask@0) o_8@@3 f_30@@3))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_23476_112885#PolymorphicMapType_35287| newPMask@0) o_8@@3 f_30@@3))
))) (forall ((o_8@@4 T@Ref) (f_30@@4 T@Field_23512_4470) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@4 f_30@@4) (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@4 f_30@@4)) (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| newPMask@0) o_8@@4 f_30@@4))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_41643_4470#PolymorphicMapType_35287| newPMask@0) o_8@@4 f_30@@4))
))) (forall ((o_8@@5 T@Ref) (f_30@@5 T@Field_23512_23479) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@5 f_30@@5) (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@5 f_30@@5)) (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| newPMask@0) o_8@@5 f_30@@5))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_41643_23479#PolymorphicMapType_35287| newPMask@0) o_8@@5 f_30@@5))
))) (forall ((o_8@@6 T@Ref) (f_30@@6 T@Field_23512_53) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@6 f_30@@6) (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@6 f_30@@6)) (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| newPMask@0) o_8@@6 f_30@@6))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_41643_53#PolymorphicMapType_35287| newPMask@0) o_8@@6 f_30@@6))
))) (forall ((o_8@@7 T@Ref) (f_30@@7 T@Field_41643_41644) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@7 f_30@@7) (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@7 f_30@@7)) (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| newPMask@0) o_8@@7 f_30@@7))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_41643_41644#PolymorphicMapType_35287| newPMask@0) o_8@@7 f_30@@7))
))) (forall ((o_8@@8 T@Ref) (f_30@@8 T@Field_44338_44343) ) (!  (=> (or (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2))) o_8@@8 f_30@@8) (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| (select (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) l2_2 next) (- length_2 1)))) o_8@@8 f_30@@8)) (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| newPMask@0) o_8@@8 f_30@@8))
 :qid |stdinbpl.2811:37|
 :skolemid |346|
 :pattern ( (select (|PolymorphicMapType_35287_41643_113933#PolymorphicMapType_35287| newPMask@0) o_8@@8 f_30@@8))
))) (= Heap@6 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@5) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@5) null (|list#sm| l2_2 length_2) newPMask@0) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@5) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 134) 131))) anon130_correct)))))
(let ((anon217_Else_correct  (=> (and (HasDirectPerm_23512_23513 Mask@5 null (list l2_2 length_2)) (= Heap@3 ExhaleHeap@2)) (and (=> (= (ControlFlow 0 137) 134) anon218_Then_correct) (=> (= (ControlFlow 0 137) 135) anon218_Else_correct)))))
(let ((anon217_Then_correct  (=> (and (and (not (HasDirectPerm_23512_23513 Mask@5 null (list l2_2 length_2))) (= Heap@1 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) (store (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| ExhaleHeap@2) null (|list#sm| l2_2 length_2) ZeroPMask) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| ExhaleHeap@2) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| ExhaleHeap@2)))) (and (= Heap@2 (PolymorphicMapType_34738 (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@1) (store (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@1) null (list l2_2 length_2) freshVersion@0) (|PolymorphicMapType_34738_23516_44432#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23476_23513#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23476_110084#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_4470#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_23479#PolymorphicMapType_34738| Heap@1) (|PolymorphicMapType_34738_23512_53#PolymorphicMapType_34738| Heap@1))) (= Heap@3 Heap@2))) (and (=> (= (ControlFlow 0 136) 134) anon218_Then_correct) (=> (= (ControlFlow 0 136) 135) anon218_Else_correct)))))
(let ((anon126_correct  (=> (= Mask@5 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@4) null (list l2_2 length_2) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@4) null (list l2_2 length_2)) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@4) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@4))) (=> (and (and (state ExhaleHeap@2 Mask@5) (state ExhaleHeap@2 Mask@5)) (and (|list#trigger_23512| ExhaleHeap@2 (list l2_2 length_2)) (= (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list l2_2 length_2)) (FrameFragment_23293 (ite (> length_2 0) (CombineFrames (FrameFragment_4470 (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 val)) (CombineFrames (FrameFragment_23479 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1))))) EmptyFrame))))) (and (=> (= (ControlFlow 0 138) 136) anon217_Then_correct) (=> (= (ControlFlow 0 138) 137) anon217_Else_correct))))))
(let ((anon125_correct  (=> (and (and (= Mask@3 (PolymorphicMapType_34759 (store (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1))) FullPerm)) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@2) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@2))) (InsidePredicate_23512_23512 (list l2_2 length_2) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list l2_2 length_2)) (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1)) (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1))))) (and (= Mask@4 Mask@3) (= (ControlFlow 0 140) 138))) anon126_correct)))
(let ((anon216_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 143) 140)) anon125_correct)))
(let ((anon216_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 141) (- 0 142)) (<= FullPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1))))) (=> (<= FullPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@2) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 next) (- length_2 1)))) (=> (= (ControlFlow 0 141) 140) anon125_correct))))))
(let ((anon123_correct  (=> (= Mask@2 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@1) (store (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@1) l2_2 next (- (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@1) l2_2 next) FullPerm)) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@1) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@1))) (and (=> (= (ControlFlow 0 144) 141) anon216_Then_correct) (=> (= (ControlFlow 0 144) 143) anon216_Else_correct)))))
(let ((anon215_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 147) 144)) anon123_correct)))
(let ((anon215_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 145) (- 0 146)) (<= FullPerm (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@1) l2_2 next))) (=> (<= FullPerm (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@1) l2_2 next)) (=> (= (ControlFlow 0 145) 144) anon123_correct))))))
(let ((anon121_correct  (=> (= Mask@1 (PolymorphicMapType_34759 (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) (store (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) l2_2 val (- (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) l2_2 val) FullPerm)) (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@22) (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@22))) (and (=> (= (ControlFlow 0 148) 145) anon215_Then_correct) (=> (= (ControlFlow 0 148) 147) anon215_Else_correct)))))
(let ((anon214_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 151) 148)) anon121_correct)))
(let ((anon214_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 149) (- 0 150)) (<= FullPerm (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) l2_2 val))) (=> (<= FullPerm (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) l2_2 val)) (=> (= (ControlFlow 0 149) 148) anon121_correct))))))
(let ((anon213_Then_correct  (=> (> length_2 0) (and (=> (= (ControlFlow 0 152) 149) anon214_Then_correct) (=> (= (ControlFlow 0 152) 151) anon214_Else_correct)))))
(let ((anon213_Else_correct  (=> (>= 0 length_2) (=> (and (= Mask@4 QPMask@22) (= (ControlFlow 0 139) 138)) anon126_correct))))
(let ((anon212_Then_correct  (=> (state ExhaleHeap@2 ZeroMask) (and (=> (= (ControlFlow 0 153) (- 0 157)) (forall ((r_108 T@Ref) (r_108_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_108 r_108_1)) (and (select lists r_108) (not (select s_2@1 r_108)))) (and (select lists r_108_1) (not (select s_2@1 r_108_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_108 r_108_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.2601:21|
 :skolemid |318|
 :pattern ( (neverTriggered34 r_108) (neverTriggered34 r_108_1))
))) (=> (forall ((r_108@@0 T@Ref) (r_108_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_108@@0 r_108_1@@0)) (and (select lists r_108@@0) (not (select s_2@1 r_108@@0)))) (and (select lists r_108_1@@0) (not (select s_2@1 r_108_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_108@@0 r_108_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.2601:21|
 :skolemid |318|
 :pattern ( (neverTriggered34 r_108@@0) (neverTriggered34 r_108_1@@0))
)) (=> (forall ((r_108@@1 T@Ref) ) (!  (=> (and (and (select lists r_108@@1) (not (select s_2@1 r_108@@1))) (< NoPerm FullPerm)) (and (= (invRecv34 r_108@@1 length_2) r_108@@1) (qpRange34 r_108@@1 length_2)))
 :qid |stdinbpl.2607:26|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_108@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_108@@1 length_2)))
 :pattern ( (select lists r_108@@1))
 :pattern ( (select s_2@1 r_108@@1))
)) (=> (and (forall ((r_109_1 T@Ref) (i_19 Int) ) (!  (=> (and (and (and (select lists (invRecv34 r_109_1 i_19)) (not (select s_2@1 (invRecv34 r_109_1 i_19)))) (< NoPerm FullPerm)) (qpRange34 r_109_1 i_19)) (and (= (invRecv34 r_109_1 i_19) r_109_1) (= length_2 i_19)))
 :qid |stdinbpl.2611:26|
 :skolemid |320|
 :pattern ( (invRecv34 r_109_1 i_19))
)) (forall ((r_109_1@@0 T@Ref) (i_19@@0 Int) ) (!  (=> (and (and (and (select lists (invRecv34 r_109_1@@0 i_19@@0)) (not (select s_2@1 (invRecv34 r_109_1@@0 i_19@@0)))) (< NoPerm FullPerm)) (qpRange34 r_109_1@@0 i_19@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv34 r_109_1@@0 i_19@@0) r_109_1@@0) (= length_2 i_19@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) null (list r_109_1@@0 i_19@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_109_1@@0 i_19@@0)) FullPerm))))
 :qid |stdinbpl.2617:26|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) null (list r_109_1@@0 i_19@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@141 T@Ref) (f_5@@129 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@141 null)) (not (IsPredicateField_23476_4470 f_5@@129))) (not (= (getPredWandId_23476_4470 f_5@@129) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@141 f_5@@129) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@141 f_5@@129)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@141 f_5@@129))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@141 f_5@@129))
)) (forall ((o_4@@142 T@Ref) (f_5@@130 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@142 null)) (not (IsPredicateField_23478_23479 f_5@@130))) (not (= (getPredWandId_23476_23479 f_5@@130) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@142 f_5@@130) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@19) o_4@@142 f_5@@130)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@142 f_5@@130))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@19) o_4@@142 f_5@@130))
))) (forall ((o_4@@143 T@Ref) (f_5@@131 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@143 null)) (not (IsPredicateField_23476_111428 f_5@@131))) (not (= (getPredWandId_23476_23513 f_5@@131) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@143 f_5@@131) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@19) o_4@@143 f_5@@131)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@143 f_5@@131))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@19) o_4@@143 f_5@@131))
))) (forall ((o_4@@144 T@Ref) (f_5@@132 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@144 null)) (not (IsPredicateField_23476_53 f_5@@132))) (not (= (getPredWandId_23476_53 f_5@@132) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@144 f_5@@132) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@19) o_4@@144 f_5@@132)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@144 f_5@@132))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@19) o_4@@144 f_5@@132))
))) (forall ((o_4@@145 T@Ref) (f_5@@133 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@145 null)) (not (IsPredicateField_23476_122001 f_5@@133))) (not (= (getPredWandId_23476_131207 f_5@@133) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@145 f_5@@133) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@19) o_4@@145 f_5@@133)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@145 f_5@@133))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@19) o_4@@145 f_5@@133))
))) (forall ((o_4@@146 T@Ref) (f_5@@134 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@146 null)) (not (IsPredicateField_23512_4470 f_5@@134))) (not (= (getPredWandId_23512_4470 f_5@@134) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@146 f_5@@134) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@19) o_4@@146 f_5@@134)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@146 f_5@@134))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@19) o_4@@146 f_5@@134))
))) (forall ((o_4@@147 T@Ref) (f_5@@135 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@147 null)) (not (IsPredicateField_23512_23479 f_5@@135))) (not (= (getPredWandId_23512_23479 f_5@@135) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@147 f_5@@135) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@19) o_4@@147 f_5@@135)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@147 f_5@@135))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@19) o_4@@147 f_5@@135))
))) (forall ((o_4@@148 T@Ref) (f_5@@136 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@148 null)) (not (IsPredicateField_23512_23513 f_5@@136))) (not (= (getPredWandId_23512_23513 f_5@@136) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@148 f_5@@136) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) o_4@@148 f_5@@136)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@148 f_5@@136))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) o_4@@148 f_5@@136))
))) (forall ((o_4@@149 T@Ref) (f_5@@137 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@149 null)) (not (IsPredicateField_23512_53 f_5@@137))) (not (= (getPredWandId_23512_53 f_5@@137) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@149 f_5@@137) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@19) o_4@@149 f_5@@137)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@149 f_5@@137))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@19) o_4@@149 f_5@@137))
))) (forall ((o_4@@150 T@Ref) (f_5@@138 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@150 null)) (not (IsPredicateField_23512_121198 f_5@@138))) (not (= (getPredWandId_23512_132016 f_5@@138) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@150 f_5@@138) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@19) o_4@@150 f_5@@138)))
 :qid |stdinbpl.2623:33|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@150 f_5@@138))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@19) o_4@@150 f_5@@138))
))) (and (and (forall ((r_109_1@@1 T@Ref) (i_19@@1 Int) ) (!  (=> (not (and (and (and (select lists (invRecv34 r_109_1@@1 i_19@@1)) (not (select s_2@1 (invRecv34 r_109_1@@1 i_19@@1)))) (< NoPerm FullPerm)) (qpRange34 r_109_1@@1 i_19@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) null (list r_109_1@@1 i_19@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_109_1@@1 i_19@@1))))
 :qid |stdinbpl.2627:26|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) null (list r_109_1@@1 i_19@@1)))
)) (state ExhaleHeap@2 QPMask@19)) (and (state ExhaleHeap@2 QPMask@19) (forall ((r_111 T@Ref) ) (!  (=> (and (select lists r_111) (not (select s_2@1 r_111))) (allSet ExhaleHeap@2 r_111 length_2 v_2@@3))
 :qid |stdinbpl.2634:24|
 :skolemid |324|
 :pattern ( (select lists r_111))
 :pattern ( (select s_2@1 r_111))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_111 length_2)) r_111 length_2 v_2@@3))
))))) (and (=> (= (ControlFlow 0 153) (- 0 156)) (forall ((r_112 T@Ref) (r_112_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_112 r_112_1)) (select s_2@1 r_112)) (select s_2@1 r_112_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_112 r_112_1)))
 :qid |stdinbpl.2640:19|
 :skolemid |325|
))) (=> (forall ((r_112@@0 T@Ref) (r_112_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_112@@0 r_112_1@@0)) (select s_2@1 r_112@@0)) (select s_2@1 r_112_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_112@@0 r_112_1@@0)))
 :qid |stdinbpl.2640:19|
 :skolemid |325|
)) (=> (and (and (forall ((r_112@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_112@@1) (< NoPerm FullPerm)) (and (qpRange35 r_112@@1) (= (invRecv35 r_112@@1) r_112@@1)))
 :qid |stdinbpl.2646:26|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_112@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) r_112@@1 val))
 :pattern ( (select s_2@1 r_112@@1))
)) (forall ((o_4@@151 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv35 o_4@@151)) (< NoPerm FullPerm)) (qpRange35 o_4@@151)) (= (invRecv35 o_4@@151) o_4@@151))
 :qid |stdinbpl.2650:26|
 :skolemid |327|
 :pattern ( (invRecv35 o_4@@151))
))) (and (forall ((r_112@@2 T@Ref) ) (!  (=> (select s_2@1 r_112@@2) (not (= r_112@@2 null)))
 :qid |stdinbpl.2656:26|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_112@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) r_112@@2 val))
 :pattern ( (select s_2@1 r_112@@2))
)) (forall ((o_4@@152 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv35 o_4@@152)) (< NoPerm FullPerm)) (qpRange35 o_4@@152)) (and (=> (< NoPerm FullPerm) (= (invRecv35 o_4@@152) o_4@@152)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@152 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@152 val) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv35 o_4@@152)) (< NoPerm FullPerm)) (qpRange35 o_4@@152))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@152 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@152 val))))
 :qid |stdinbpl.2662:26|
 :skolemid |329|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@152 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@153 T@Ref) (f_5@@139 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@19) o_4@@153 f_5@@139) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@20) o_4@@153 f_5@@139)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@19) o_4@@153 f_5@@139))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@20) o_4@@153 f_5@@139))
)) (forall ((o_4@@154 T@Ref) (f_5@@140 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@19) o_4@@154 f_5@@140) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@154 f_5@@140)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@19) o_4@@154 f_5@@140))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@154 f_5@@140))
))) (forall ((o_4@@155 T@Ref) (f_5@@141 T@Field_41147_4470) ) (!  (=> (not (= f_5@@141 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@155 f_5@@141) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@155 f_5@@141)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@19) o_4@@155 f_5@@141))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@155 f_5@@141))
))) (forall ((o_4@@156 T@Ref) (f_5@@142 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@19) o_4@@156 f_5@@142) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@20) o_4@@156 f_5@@142)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@19) o_4@@156 f_5@@142))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@20) o_4@@156 f_5@@142))
))) (forall ((o_4@@157 T@Ref) (f_5@@143 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@19) o_4@@157 f_5@@143) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@20) o_4@@157 f_5@@143)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@19) o_4@@157 f_5@@143))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@20) o_4@@157 f_5@@143))
))) (forall ((o_4@@158 T@Ref) (f_5@@144 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@19) o_4@@158 f_5@@144) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@20) o_4@@158 f_5@@144)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@19) o_4@@158 f_5@@144))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@20) o_4@@158 f_5@@144))
))) (forall ((o_4@@159 T@Ref) (f_5@@145 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@19) o_4@@159 f_5@@145) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@20) o_4@@159 f_5@@145)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@19) o_4@@159 f_5@@145))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@20) o_4@@159 f_5@@145))
))) (forall ((o_4@@160 T@Ref) (f_5@@146 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@19) o_4@@160 f_5@@146) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@20) o_4@@160 f_5@@146)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@19) o_4@@160 f_5@@146))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@20) o_4@@160 f_5@@146))
))) (forall ((o_4@@161 T@Ref) (f_5@@147 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) o_4@@161 f_5@@147) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@20) o_4@@161 f_5@@147)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@19) o_4@@161 f_5@@147))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@20) o_4@@161 f_5@@147))
))) (forall ((o_4@@162 T@Ref) (f_5@@148 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@19) o_4@@162 f_5@@148) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@20) o_4@@162 f_5@@148)))
 :qid |stdinbpl.2666:33|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@19) o_4@@162 f_5@@148))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@20) o_4@@162 f_5@@148))
))) (and (state ExhaleHeap@2 QPMask@20) (forall ((r_113 T@Ref) ) (!  (=> (select s_2@1 r_113) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_113 val) v_2@@3))
 :qid |stdinbpl.2672:24|
 :skolemid |331|
 :pattern ( (select s_2@1 r_113))
)))) (and (=> (= (ControlFlow 0 153) (- 0 155)) (forall ((r_114 T@Ref) (r_114_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_114 r_114_1)) (select s_2@1 r_114)) (select s_2@1 r_114_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_114 r_114_1)))
 :qid |stdinbpl.2678:19|
 :skolemid |332|
))) (=> (forall ((r_114@@0 T@Ref) (r_114_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_114@@0 r_114_1@@0)) (select s_2@1 r_114@@0)) (select s_2@1 r_114_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_114@@0 r_114_1@@0)))
 :qid |stdinbpl.2678:19|
 :skolemid |332|
)) (=> (and (and (forall ((r_114@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_114@@1) (< NoPerm FullPerm)) (and (qpRange36 r_114@@1) (= (invRecv36 r_114@@1) r_114@@1)))
 :qid |stdinbpl.2684:26|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_114@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) r_114@@1 next))
 :pattern ( (select s_2@1 r_114@@1))
)) (forall ((o_4@@163 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv36 o_4@@163)) (< NoPerm FullPerm)) (qpRange36 o_4@@163)) (= (invRecv36 o_4@@163) o_4@@163))
 :qid |stdinbpl.2688:26|
 :skolemid |334|
 :pattern ( (invRecv36 o_4@@163))
))) (and (forall ((r_114@@2 T@Ref) ) (!  (=> (select s_2@1 r_114@@2) (not (= r_114@@2 null)))
 :qid |stdinbpl.2694:26|
 :skolemid |335|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_114@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) r_114@@2 next))
 :pattern ( (select s_2@1 r_114@@2))
)) (forall ((o_4@@164 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv36 o_4@@164)) (< NoPerm FullPerm)) (qpRange36 o_4@@164)) (and (=> (< NoPerm FullPerm) (= (invRecv36 o_4@@164) o_4@@164)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@164 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@164 next) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv36 o_4@@164)) (< NoPerm FullPerm)) (qpRange36 o_4@@164))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@164 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@164 next))))
 :qid |stdinbpl.2700:26|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@164 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@165 T@Ref) (f_5@@149 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@20) o_4@@165 f_5@@149) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@21) o_4@@165 f_5@@149)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@20) o_4@@165 f_5@@149))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@21) o_4@@165 f_5@@149))
)) (forall ((o_4@@166 T@Ref) (f_5@@150 T@Field_34811_34812) ) (!  (=> (not (= f_5@@150 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@166 f_5@@150) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@166 f_5@@150)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@20) o_4@@166 f_5@@150))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@166 f_5@@150))
))) (forall ((o_4@@167 T@Ref) (f_5@@151 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@167 f_5@@151) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@21) o_4@@167 f_5@@151)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@20) o_4@@167 f_5@@151))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@21) o_4@@167 f_5@@151))
))) (forall ((o_4@@168 T@Ref) (f_5@@152 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@20) o_4@@168 f_5@@152) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@21) o_4@@168 f_5@@152)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@20) o_4@@168 f_5@@152))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@21) o_4@@168 f_5@@152))
))) (forall ((o_4@@169 T@Ref) (f_5@@153 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@20) o_4@@169 f_5@@153) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@21) o_4@@169 f_5@@153)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@20) o_4@@169 f_5@@153))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@21) o_4@@169 f_5@@153))
))) (forall ((o_4@@170 T@Ref) (f_5@@154 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@20) o_4@@170 f_5@@154) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@21) o_4@@170 f_5@@154)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@20) o_4@@170 f_5@@154))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@21) o_4@@170 f_5@@154))
))) (forall ((o_4@@171 T@Ref) (f_5@@155 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@20) o_4@@171 f_5@@155) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@21) o_4@@171 f_5@@155)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@20) o_4@@171 f_5@@155))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@21) o_4@@171 f_5@@155))
))) (forall ((o_4@@172 T@Ref) (f_5@@156 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@20) o_4@@172 f_5@@156) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@21) o_4@@172 f_5@@156)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@20) o_4@@172 f_5@@156))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@21) o_4@@172 f_5@@156))
))) (forall ((o_4@@173 T@Ref) (f_5@@157 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@20) o_4@@173 f_5@@157) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) o_4@@173 f_5@@157)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@20) o_4@@173 f_5@@157))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) o_4@@173 f_5@@157))
))) (forall ((o_4@@174 T@Ref) (f_5@@158 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@20) o_4@@174 f_5@@158) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@21) o_4@@174 f_5@@158)))
 :qid |stdinbpl.2704:33|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@20) o_4@@174 f_5@@158))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@21) o_4@@174 f_5@@158))
))) (and (state ExhaleHeap@2 QPMask@21) (forall ((r1_12 T@Ref) (r2_12 T@Ref) ) (!  (=> (and (select s_2@1 r1_12) (and (select s_2@1 r2_12) (not (= r1_12 r2_12)))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r1_12 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r2_12 next))))
 :qid |stdinbpl.2710:24|
 :skolemid |338|
 :pattern ( (select s_2@1 r1_12) (select s_2@1 r2_12))
)))) (and (=> (= (ControlFlow 0 153) (- 0 154)) (forall ((r_115 T@Ref) (r_115_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_115 r_115_1)) (select s_2@1 r_115)) (select s_2@1 r_115_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115_1 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2718:21|
 :skolemid |339|
 :pattern ( (neverTriggered37 r_115) (neverTriggered37 r_115_1))
))) (=> (forall ((r_115@@0 T@Ref) (r_115_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_115@@0 r_115_1@@0)) (select s_2@1 r_115@@0)) (select s_2@1 r_115_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115@@0 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115_1@@0 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2718:21|
 :skolemid |339|
 :pattern ( (neverTriggered37 r_115@@0) (neverTriggered37 r_115_1@@0))
)) (=> (forall ((r_115@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_115@@1) (< NoPerm FullPerm)) (and (= (invRecv37 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115@@1 next) (- length_2 1)) r_115@@1) (qpRange37 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_115@@1 next) (- length_2 1))))
 :qid |stdinbpl.2724:26|
 :skolemid |340|
 :pattern ( (select s_2@1 r_115@@1))
)) (=> (and (forall ((r_116_1 T@Ref) (i_20_1 Int) ) (!  (=> (and (and (select s_2@1 (invRecv37 r_116_1 i_20_1)) (< NoPerm FullPerm)) (qpRange37 r_116_1 i_20_1)) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv37 r_116_1 i_20_1) next) r_116_1) (= (- length_2 1) i_20_1)))
 :qid |stdinbpl.2728:26|
 :skolemid |341|
 :pattern ( (invRecv37 r_116_1 i_20_1))
)) (forall ((r_116_1@@0 T@Ref) (i_20_1@@0 Int) ) (!  (=> (and (and (select s_2@1 (invRecv37 r_116_1@@0 i_20_1@@0)) (< NoPerm FullPerm)) (qpRange37 r_116_1@@0 i_20_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv37 r_116_1@@0 i_20_1@@0) next) r_116_1@@0) (= (- length_2 1) i_20_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) null (list r_116_1@@0 i_20_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) null (list r_116_1@@0 i_20_1@@0)) FullPerm))))
 :qid |stdinbpl.2734:26|
 :skolemid |342|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) null (list r_116_1@@0 i_20_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@175 T@Ref) (f_5@@159 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@175 null)) (not (IsPredicateField_23476_4470 f_5@@159))) (not (= (getPredWandId_23476_4470 f_5@@159) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@21) o_4@@175 f_5@@159) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) o_4@@175 f_5@@159)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@21) o_4@@175 f_5@@159))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@22) o_4@@175 f_5@@159))
)) (forall ((o_4@@176 T@Ref) (f_5@@160 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@176 null)) (not (IsPredicateField_23478_23479 f_5@@160))) (not (= (getPredWandId_23476_23479 f_5@@160) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@176 f_5@@160) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@22) o_4@@176 f_5@@160)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@21) o_4@@176 f_5@@160))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@22) o_4@@176 f_5@@160))
))) (forall ((o_4@@177 T@Ref) (f_5@@161 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@177 null)) (not (IsPredicateField_23476_111428 f_5@@161))) (not (= (getPredWandId_23476_23513 f_5@@161) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@21) o_4@@177 f_5@@161) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@22) o_4@@177 f_5@@161)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@21) o_4@@177 f_5@@161))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@22) o_4@@177 f_5@@161))
))) (forall ((o_4@@178 T@Ref) (f_5@@162 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@178 null)) (not (IsPredicateField_23476_53 f_5@@162))) (not (= (getPredWandId_23476_53 f_5@@162) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@21) o_4@@178 f_5@@162) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@22) o_4@@178 f_5@@162)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@21) o_4@@178 f_5@@162))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@22) o_4@@178 f_5@@162))
))) (forall ((o_4@@179 T@Ref) (f_5@@163 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@179 null)) (not (IsPredicateField_23476_122001 f_5@@163))) (not (= (getPredWandId_23476_131207 f_5@@163) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@21) o_4@@179 f_5@@163) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@22) o_4@@179 f_5@@163)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@21) o_4@@179 f_5@@163))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@22) o_4@@179 f_5@@163))
))) (forall ((o_4@@180 T@Ref) (f_5@@164 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@180 null)) (not (IsPredicateField_23512_4470 f_5@@164))) (not (= (getPredWandId_23512_4470 f_5@@164) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@21) o_4@@180 f_5@@164) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@22) o_4@@180 f_5@@164)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@21) o_4@@180 f_5@@164))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@22) o_4@@180 f_5@@164))
))) (forall ((o_4@@181 T@Ref) (f_5@@165 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@181 null)) (not (IsPredicateField_23512_23479 f_5@@165))) (not (= (getPredWandId_23512_23479 f_5@@165) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@21) o_4@@181 f_5@@165) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@22) o_4@@181 f_5@@165)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@21) o_4@@181 f_5@@165))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@22) o_4@@181 f_5@@165))
))) (forall ((o_4@@182 T@Ref) (f_5@@166 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@182 null)) (not (IsPredicateField_23512_23513 f_5@@166))) (not (= (getPredWandId_23512_23513 f_5@@166) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) o_4@@182 f_5@@166) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) o_4@@182 f_5@@166)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) o_4@@182 f_5@@166))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) o_4@@182 f_5@@166))
))) (forall ((o_4@@183 T@Ref) (f_5@@167 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@183 null)) (not (IsPredicateField_23512_53 f_5@@167))) (not (= (getPredWandId_23512_53 f_5@@167) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@21) o_4@@183 f_5@@167) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@22) o_4@@183 f_5@@167)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@21) o_4@@183 f_5@@167))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@22) o_4@@183 f_5@@167))
))) (forall ((o_4@@184 T@Ref) (f_5@@168 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@184 null)) (not (IsPredicateField_23512_121198 f_5@@168))) (not (= (getPredWandId_23512_132016 f_5@@168) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@21) o_4@@184 f_5@@168) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@22) o_4@@184 f_5@@168)))
 :qid |stdinbpl.2740:33|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@21) o_4@@184 f_5@@168))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@22) o_4@@184 f_5@@168))
))) (forall ((r_116_1@@1 T@Ref) (i_20_1@@1 Int) ) (!  (=> (not (and (and (select s_2@1 (invRecv37 r_116_1@@1 i_20_1@@1)) (< NoPerm FullPerm)) (qpRange37 r_116_1@@1 i_20_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) null (list r_116_1@@1 i_20_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@21) null (list r_116_1@@1 i_20_1@@1))))
 :qid |stdinbpl.2744:26|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@22) null (list r_116_1@@1 i_20_1@@1)))
))) (and (state ExhaleHeap@2 QPMask@22) (state ExhaleHeap@2 QPMask@22))) (and (and (and (forall ((r_118 T@Ref) ) (!  (=> (select s_2@1 r_118) (allSet ExhaleHeap@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_118 next) (- length_2 1) v_2@@3))
 :qid |stdinbpl.2751:24|
 :skolemid |345|
 :pattern ( (select s_2@1 r_118))
)) (state ExhaleHeap@2 QPMask@22)) (and (> (|Set#Card_23552| s_2@1) 0) (state ExhaleHeap@2 QPMask@22))) (and (and (select (|PolymorphicMapType_34738_23007_53#PolymorphicMapType_34738| ExhaleHeap@2) l2_2 $allocated) (select s_2@1 l2_2)) (and (state ExhaleHeap@2 QPMask@22) (state ExhaleHeap@2 QPMask@22))))) (and (=> (= (ControlFlow 0 153) 152) anon213_Then_correct) (=> (= (ControlFlow 0 153) 139) anon213_Else_correct)))))))))))))))))))))))
(let ((anon211_Then_correct  (=> (= (ControlFlow 0 91) (- 0 90)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_26 next) (- length_2 1))))))))
(let ((anon115_correct true))
(let ((anon210_Then_correct  (=> (select s_2@1 r_26) (and (=> (= (ControlFlow 0 92) (- 0 93)) (HasDirectPerm_23478_23479 QPMask@35 r_26 next)) (=> (HasDirectPerm_23478_23479 QPMask@35 r_26 next) (and (=> (= (ControlFlow 0 92) 91) anon211_Then_correct) (=> (= (ControlFlow 0 92) 88) anon115_correct)))))))
(let ((anon210_Else_correct  (=> (and (not (select s_2@1 r_26)) (= (ControlFlow 0 89) 88)) anon115_correct)))
(let ((anon209_Else_correct true))
(let ((anon207_Else_correct  (and (=> (= (ControlFlow 0 94) (- 0 95)) (forall ((r_103 T@Ref) (r_103_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_103 r_103_1)) (select s_2@1 r_103)) (select s_2@1 r_103_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103_1 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2524:21|
 :skolemid |311|
 :pattern ( (neverTriggered33 r_103) (neverTriggered33 r_103_1))
))) (=> (forall ((r_103@@0 T@Ref) (r_103_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_103@@0 r_103_1@@0)) (select s_2@1 r_103@@0)) (select s_2@1 r_103_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103@@0 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103_1@@0 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2524:21|
 :skolemid |311|
 :pattern ( (neverTriggered33 r_103@@0) (neverTriggered33 r_103_1@@0))
)) (=> (forall ((r_103@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_103@@1) (< NoPerm FullPerm)) (and (= (invRecv33 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103@@1 next) (- length_2 1)) r_103@@1) (qpRange33 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_103@@1 next) (- length_2 1))))
 :qid |stdinbpl.2530:26|
 :skolemid |312|
 :pattern ( (select s_2@1 r_103@@1))
)) (=> (and (forall ((r_104_1 T@Ref) (i_18_1 Int) ) (!  (=> (and (and (select s_2@1 (invRecv33 r_104_1 i_18_1)) (< NoPerm FullPerm)) (qpRange33 r_104_1 i_18_1)) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv33 r_104_1 i_18_1) next) r_104_1) (= (- length_2 1) i_18_1)))
 :qid |stdinbpl.2534:26|
 :skolemid |313|
 :pattern ( (invRecv33 r_104_1 i_18_1))
)) (forall ((r_104_1@@0 T@Ref) (i_18_1@@0 Int) ) (!  (=> (and (and (select s_2@1 (invRecv33 r_104_1@@0 i_18_1@@0)) (< NoPerm FullPerm)) (qpRange33 r_104_1@@0 i_18_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv33 r_104_1@@0 i_18_1@@0) next) r_104_1@@0) (= (- length_2 1) i_18_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) null (list r_104_1@@0 i_18_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) null (list r_104_1@@0 i_18_1@@0)) FullPerm))))
 :qid |stdinbpl.2540:26|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) null (list r_104_1@@0 i_18_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@185 T@Ref) (f_5@@169 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@185 null)) (not (IsPredicateField_23476_4470 f_5@@169))) (not (= (getPredWandId_23476_4470 f_5@@169) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@34) o_4@@185 f_5@@169) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@35) o_4@@185 f_5@@169)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@34) o_4@@185 f_5@@169))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@35) o_4@@185 f_5@@169))
)) (forall ((o_4@@186 T@Ref) (f_5@@170 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@186 null)) (not (IsPredicateField_23478_23479 f_5@@170))) (not (= (getPredWandId_23476_23479 f_5@@170) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@186 f_5@@170) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@35) o_4@@186 f_5@@170)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@186 f_5@@170))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@35) o_4@@186 f_5@@170))
))) (forall ((o_4@@187 T@Ref) (f_5@@171 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@187 null)) (not (IsPredicateField_23476_111428 f_5@@171))) (not (= (getPredWandId_23476_23513 f_5@@171) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@34) o_4@@187 f_5@@171) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@35) o_4@@187 f_5@@171)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@34) o_4@@187 f_5@@171))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@35) o_4@@187 f_5@@171))
))) (forall ((o_4@@188 T@Ref) (f_5@@172 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@188 null)) (not (IsPredicateField_23476_53 f_5@@172))) (not (= (getPredWandId_23476_53 f_5@@172) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@34) o_4@@188 f_5@@172) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@35) o_4@@188 f_5@@172)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@34) o_4@@188 f_5@@172))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@35) o_4@@188 f_5@@172))
))) (forall ((o_4@@189 T@Ref) (f_5@@173 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@189 null)) (not (IsPredicateField_23476_122001 f_5@@173))) (not (= (getPredWandId_23476_131207 f_5@@173) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@34) o_4@@189 f_5@@173) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@35) o_4@@189 f_5@@173)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@34) o_4@@189 f_5@@173))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@35) o_4@@189 f_5@@173))
))) (forall ((o_4@@190 T@Ref) (f_5@@174 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@190 null)) (not (IsPredicateField_23512_4470 f_5@@174))) (not (= (getPredWandId_23512_4470 f_5@@174) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@34) o_4@@190 f_5@@174) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@35) o_4@@190 f_5@@174)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@34) o_4@@190 f_5@@174))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@35) o_4@@190 f_5@@174))
))) (forall ((o_4@@191 T@Ref) (f_5@@175 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@191 null)) (not (IsPredicateField_23512_23479 f_5@@175))) (not (= (getPredWandId_23512_23479 f_5@@175) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@34) o_4@@191 f_5@@175) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@35) o_4@@191 f_5@@175)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@34) o_4@@191 f_5@@175))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@35) o_4@@191 f_5@@175))
))) (forall ((o_4@@192 T@Ref) (f_5@@176 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@192 null)) (not (IsPredicateField_23512_23513 f_5@@176))) (not (= (getPredWandId_23512_23513 f_5@@176) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) o_4@@192 f_5@@176) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) o_4@@192 f_5@@176)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) o_4@@192 f_5@@176))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) o_4@@192 f_5@@176))
))) (forall ((o_4@@193 T@Ref) (f_5@@177 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@193 null)) (not (IsPredicateField_23512_53 f_5@@177))) (not (= (getPredWandId_23512_53 f_5@@177) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@34) o_4@@193 f_5@@177) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@35) o_4@@193 f_5@@177)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@34) o_4@@193 f_5@@177))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@35) o_4@@193 f_5@@177))
))) (forall ((o_4@@194 T@Ref) (f_5@@178 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@194 null)) (not (IsPredicateField_23512_121198 f_5@@178))) (not (= (getPredWandId_23512_132016 f_5@@178) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@34) o_4@@194 f_5@@178) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@35) o_4@@194 f_5@@178)))
 :qid |stdinbpl.2546:33|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@34) o_4@@194 f_5@@178))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@35) o_4@@194 f_5@@178))
))) (and (and (forall ((r_104_1@@1 T@Ref) (i_18_1@@1 Int) ) (!  (=> (not (and (and (select s_2@1 (invRecv33 r_104_1@@1 i_18_1@@1)) (< NoPerm FullPerm)) (qpRange33 r_104_1@@1 i_18_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) null (list r_104_1@@1 i_18_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) null (list r_104_1@@1 i_18_1@@1))))
 :qid |stdinbpl.2550:26|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@35) null (list r_104_1@@1 i_18_1@@1)))
)) (state ExhaleHeap@2 QPMask@35)) (and (state ExhaleHeap@2 QPMask@35) (state ExhaleHeap@2 QPMask@35)))) (and (and (=> (= (ControlFlow 0 94) 87) anon209_Else_correct) (=> (= (ControlFlow 0 94) 92) anon210_Then_correct)) (=> (= (ControlFlow 0 94) 89) anon210_Else_correct)))))))))
(let ((anon110_correct true))
(let ((anon208_Else_correct  (=> (and (not (select s_2@1 r_24)) (= (ControlFlow 0 86) 83)) anon110_correct)))
(let ((anon208_Then_correct  (=> (select s_2@1 r_24) (and (=> (= (ControlFlow 0 84) (- 0 85)) (HasDirectPerm_23478_23479 QPMask@34 r_24 next)) (=> (HasDirectPerm_23478_23479 QPMask@34 r_24 next) (=> (= (ControlFlow 0 84) 83) anon110_correct))))))
(let ((anon205_Else_correct  (=> (and (forall ((r1_11 T@Ref) (r2_11 T@Ref) ) (!  (=> (and (select s_2@1 r1_11) (and (select s_2@1 r2_11) (not (= r1_11 r2_11)))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r1_11 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r2_11 next))))
 :qid |stdinbpl.2506:24|
 :skolemid |310|
 :pattern ( (select s_2@1 r1_11) (select s_2@1 r2_11))
)) (state ExhaleHeap@2 QPMask@34)) (and (and (=> (= (ControlFlow 0 96) 94) anon207_Else_correct) (=> (= (ControlFlow 0 96) 84) anon208_Then_correct)) (=> (= (ControlFlow 0 96) 86) anon208_Else_correct)))))
(let ((anon106_correct true))
(let ((anon206_Else_correct  (=> (and (not (and (select s_2@1 r1_2) (and (select s_2@1 r2_2) (not (= r1_2 r2_2))))) (= (ControlFlow 0 82) 78)) anon106_correct)))
(let ((anon206_Then_correct  (=> (and (select s_2@1 r1_2) (and (select s_2@1 r2_2) (not (= r1_2 r2_2)))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (HasDirectPerm_23478_23479 QPMask@34 r1_2 next)) (=> (HasDirectPerm_23478_23479 QPMask@34 r1_2 next) (and (=> (= (ControlFlow 0 79) (- 0 80)) (HasDirectPerm_23478_23479 QPMask@34 r2_2 next)) (=> (HasDirectPerm_23478_23479 QPMask@34 r2_2 next) (=> (= (ControlFlow 0 79) 78) anon106_correct))))))))
(let ((anon204_Else_correct  (and (=> (= (ControlFlow 0 97) (- 0 98)) (forall ((r_101 T@Ref) (r_101_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_101 r_101_1)) (select s_2@1 r_101)) (select s_2@1 r_101_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_101 r_101_1)))
 :qid |stdinbpl.2462:19|
 :skolemid |304|
))) (=> (forall ((r_101@@0 T@Ref) (r_101_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_101@@0 r_101_1@@0)) (select s_2@1 r_101@@0)) (select s_2@1 r_101_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_101@@0 r_101_1@@0)))
 :qid |stdinbpl.2462:19|
 :skolemid |304|
)) (=> (and (and (forall ((r_101@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_101@@1) (< NoPerm FullPerm)) (and (qpRange32 r_101@@1) (= (invRecv32 r_101@@1) r_101@@1)))
 :qid |stdinbpl.2468:26|
 :skolemid |305|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_101@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) r_101@@1 next))
 :pattern ( (select s_2@1 r_101@@1))
)) (forall ((o_4@@195 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv32 o_4@@195)) (< NoPerm FullPerm)) (qpRange32 o_4@@195)) (= (invRecv32 o_4@@195) o_4@@195))
 :qid |stdinbpl.2472:26|
 :skolemid |306|
 :pattern ( (invRecv32 o_4@@195))
))) (and (forall ((r_101@@2 T@Ref) ) (!  (=> (select s_2@1 r_101@@2) (not (= r_101@@2 null)))
 :qid |stdinbpl.2478:26|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_101@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) r_101@@2 next))
 :pattern ( (select s_2@1 r_101@@2))
)) (forall ((o_4@@196 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv32 o_4@@196)) (< NoPerm FullPerm)) (qpRange32 o_4@@196)) (and (=> (< NoPerm FullPerm) (= (invRecv32 o_4@@196) o_4@@196)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@196 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@196 next) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv32 o_4@@196)) (< NoPerm FullPerm)) (qpRange32 o_4@@196))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@196 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@196 next))))
 :qid |stdinbpl.2484:26|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@196 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@197 T@Ref) (f_5@@179 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@33) o_4@@197 f_5@@179) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@34) o_4@@197 f_5@@179)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@33) o_4@@197 f_5@@179))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@34) o_4@@197 f_5@@179))
)) (forall ((o_4@@198 T@Ref) (f_5@@180 T@Field_34811_34812) ) (!  (=> (not (= f_5@@180 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@198 f_5@@180) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@198 f_5@@180)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@198 f_5@@180))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@34) o_4@@198 f_5@@180))
))) (forall ((o_4@@199 T@Ref) (f_5@@181 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@199 f_5@@181) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@34) o_4@@199 f_5@@181)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@199 f_5@@181))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@34) o_4@@199 f_5@@181))
))) (forall ((o_4@@200 T@Ref) (f_5@@182 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@33) o_4@@200 f_5@@182) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@34) o_4@@200 f_5@@182)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@33) o_4@@200 f_5@@182))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@34) o_4@@200 f_5@@182))
))) (forall ((o_4@@201 T@Ref) (f_5@@183 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@33) o_4@@201 f_5@@183) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@34) o_4@@201 f_5@@183)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@33) o_4@@201 f_5@@183))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@34) o_4@@201 f_5@@183))
))) (forall ((o_4@@202 T@Ref) (f_5@@184 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@33) o_4@@202 f_5@@184) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@34) o_4@@202 f_5@@184)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@33) o_4@@202 f_5@@184))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@34) o_4@@202 f_5@@184))
))) (forall ((o_4@@203 T@Ref) (f_5@@185 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@33) o_4@@203 f_5@@185) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@34) o_4@@203 f_5@@185)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@33) o_4@@203 f_5@@185))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@34) o_4@@203 f_5@@185))
))) (forall ((o_4@@204 T@Ref) (f_5@@186 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@33) o_4@@204 f_5@@186) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@34) o_4@@204 f_5@@186)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@33) o_4@@204 f_5@@186))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@34) o_4@@204 f_5@@186))
))) (forall ((o_4@@205 T@Ref) (f_5@@187 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@33) o_4@@205 f_5@@187) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) o_4@@205 f_5@@187)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@33) o_4@@205 f_5@@187))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@34) o_4@@205 f_5@@187))
))) (forall ((o_4@@206 T@Ref) (f_5@@188 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@33) o_4@@206 f_5@@188) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@34) o_4@@206 f_5@@188)))
 :qid |stdinbpl.2488:33|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@33) o_4@@206 f_5@@188))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@34) o_4@@206 f_5@@188))
))) (and (state ExhaleHeap@2 QPMask@34) (state ExhaleHeap@2 QPMask@34))) (and (and (=> (= (ControlFlow 0 97) 96) anon205_Else_correct) (=> (= (ControlFlow 0 97) 79) anon206_Then_correct)) (=> (= (ControlFlow 0 97) 82) anon206_Else_correct))))))))
(let ((anon204_Then_correct true))
(let ((anon202_Else_correct  (=> (forall ((r_99 T@Ref) ) (!  (=> (select s_2@1 r_99) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_99 val) v_2@@3))
 :qid |stdinbpl.2451:24|
 :skolemid |303|
 :pattern ( (select s_2@1 r_99))
)) (and (=> (= (ControlFlow 0 99) 77) anon204_Then_correct) (=> (= (ControlFlow 0 99) 97) anon204_Else_correct)))))
(let ((anon100_correct true))
(let ((anon203_Else_correct  (=> (and (not (select s_2@1 r_23)) (= (ControlFlow 0 76) 73)) anon100_correct)))
(let ((anon203_Then_correct  (=> (select s_2@1 r_23) (and (=> (= (ControlFlow 0 74) (- 0 75)) (HasDirectPerm_23476_4470 QPMask@33 r_23 val)) (=> (HasDirectPerm_23476_4470 QPMask@33 r_23 val) (=> (= (ControlFlow 0 74) 73) anon100_correct))))))
(let ((anon201_Else_correct  (and (=> (= (ControlFlow 0 100) (- 0 101)) (forall ((r_97 T@Ref) (r_97_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_97 r_97_1)) (select s_2@1 r_97)) (select s_2@1 r_97_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_97 r_97_1)))
 :qid |stdinbpl.2410:19|
 :skolemid |297|
))) (=> (forall ((r_97@@0 T@Ref) (r_97_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_97@@0 r_97_1@@0)) (select s_2@1 r_97@@0)) (select s_2@1 r_97_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_97@@0 r_97_1@@0)))
 :qid |stdinbpl.2410:19|
 :skolemid |297|
)) (=> (and (and (forall ((r_97@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_97@@1) (< NoPerm FullPerm)) (and (qpRange31 r_97@@1) (= (invRecv31 r_97@@1) r_97@@1)))
 :qid |stdinbpl.2416:26|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_97@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) r_97@@1 val))
 :pattern ( (select s_2@1 r_97@@1))
)) (forall ((o_4@@207 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv31 o_4@@207)) (< NoPerm FullPerm)) (qpRange31 o_4@@207)) (= (invRecv31 o_4@@207) o_4@@207))
 :qid |stdinbpl.2420:26|
 :skolemid |299|
 :pattern ( (invRecv31 o_4@@207))
))) (and (forall ((r_97@@2 T@Ref) ) (!  (=> (select s_2@1 r_97@@2) (not (= r_97@@2 null)))
 :qid |stdinbpl.2426:26|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_97@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) r_97@@2 val))
 :pattern ( (select s_2@1 r_97@@2))
)) (forall ((o_4@@208 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv31 o_4@@208)) (< NoPerm FullPerm)) (qpRange31 o_4@@208)) (and (=> (< NoPerm FullPerm) (= (invRecv31 o_4@@208) o_4@@208)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@208 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@208 val) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv31 o_4@@208)) (< NoPerm FullPerm)) (qpRange31 o_4@@208))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@208 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@208 val))))
 :qid |stdinbpl.2432:26|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@208 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@209 T@Ref) (f_5@@189 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@32) o_4@@209 f_5@@189) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@33) o_4@@209 f_5@@189)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@32) o_4@@209 f_5@@189))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@33) o_4@@209 f_5@@189))
)) (forall ((o_4@@210 T@Ref) (f_5@@190 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@32) o_4@@210 f_5@@190) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@210 f_5@@190)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@32) o_4@@210 f_5@@190))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@33) o_4@@210 f_5@@190))
))) (forall ((o_4@@211 T@Ref) (f_5@@191 T@Field_41147_4470) ) (!  (=> (not (= f_5@@191 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@211 f_5@@191) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@211 f_5@@191)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@211 f_5@@191))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@33) o_4@@211 f_5@@191))
))) (forall ((o_4@@212 T@Ref) (f_5@@192 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@32) o_4@@212 f_5@@192) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@33) o_4@@212 f_5@@192)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@32) o_4@@212 f_5@@192))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@33) o_4@@212 f_5@@192))
))) (forall ((o_4@@213 T@Ref) (f_5@@193 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@32) o_4@@213 f_5@@193) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@33) o_4@@213 f_5@@193)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@32) o_4@@213 f_5@@193))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@33) o_4@@213 f_5@@193))
))) (forall ((o_4@@214 T@Ref) (f_5@@194 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@32) o_4@@214 f_5@@194) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@33) o_4@@214 f_5@@194)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@32) o_4@@214 f_5@@194))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@33) o_4@@214 f_5@@194))
))) (forall ((o_4@@215 T@Ref) (f_5@@195 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@32) o_4@@215 f_5@@195) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@33) o_4@@215 f_5@@195)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@32) o_4@@215 f_5@@195))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@33) o_4@@215 f_5@@195))
))) (forall ((o_4@@216 T@Ref) (f_5@@196 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@32) o_4@@216 f_5@@196) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@33) o_4@@216 f_5@@196)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@32) o_4@@216 f_5@@196))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@33) o_4@@216 f_5@@196))
))) (forall ((o_4@@217 T@Ref) (f_5@@197 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) o_4@@217 f_5@@197) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@33) o_4@@217 f_5@@197)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) o_4@@217 f_5@@197))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@33) o_4@@217 f_5@@197))
))) (forall ((o_4@@218 T@Ref) (f_5@@198 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@32) o_4@@218 f_5@@198) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@33) o_4@@218 f_5@@198)))
 :qid |stdinbpl.2436:33|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@32) o_4@@218 f_5@@198))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@33) o_4@@218 f_5@@198))
))) (state ExhaleHeap@2 QPMask@33)) (and (and (=> (= (ControlFlow 0 100) 99) anon202_Else_correct) (=> (= (ControlFlow 0 100) 74) anon203_Then_correct)) (=> (= (ControlFlow 0 100) 76) anon203_Else_correct))))))))
(let ((anon201_Then_correct true))
(let ((anon198_Else_correct  (=> (and (forall ((r_95 T@Ref) ) (!  (=> (and (select lists r_95) (not (select s_2@1 r_95))) (allSet ExhaleHeap@2 r_95 length_2 v_2@@3))
 :qid |stdinbpl.2398:24|
 :skolemid |296|
 :pattern ( (select lists r_95))
 :pattern ( (select s_2@1 r_95))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_95 length_2)) r_95 length_2 v_2@@3))
)) (state ExhaleHeap@2 QPMask@32)) (and (=> (= (ControlFlow 0 102) 72) anon201_Then_correct) (=> (= (ControlFlow 0 102) 100) anon201_Else_correct)))))
(let ((anon200_Then_correct  (=> (= (ControlFlow 0 70) (- 0 69)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) null (list r_21 length_2)))))))
(let ((anon94_correct true))
(let ((anon199_Then_correct  (=> (and (select lists r_21) (not (select s_2@1 r_21))) (and (=> (= (ControlFlow 0 71) 70) anon200_Then_correct) (=> (= (ControlFlow 0 71) 67) anon94_correct)))))
(let ((anon199_Else_correct  (=> (and (not (and (select lists r_21) (not (select s_2@1 r_21)))) (= (ControlFlow 0 68) 67)) anon94_correct)))
(let ((anon197_Else_correct  (and (=> (= (ControlFlow 0 103) (- 0 104)) (forall ((r_91 T@Ref) (r_91_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_91 r_91_1)) (and (select lists r_91) (not (select s_2@1 r_91)))) (and (select lists r_91_1) (not (select s_2@1 r_91_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_91 r_91_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.2343:21|
 :skolemid |290|
 :pattern ( (neverTriggered30 r_91) (neverTriggered30 r_91_1))
))) (=> (forall ((r_91@@0 T@Ref) (r_91_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_91@@0 r_91_1@@0)) (and (select lists r_91@@0) (not (select s_2@1 r_91@@0)))) (and (select lists r_91_1@@0) (not (select s_2@1 r_91_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_91@@0 r_91_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.2343:21|
 :skolemid |290|
 :pattern ( (neverTriggered30 r_91@@0) (neverTriggered30 r_91_1@@0))
)) (=> (forall ((r_91@@1 T@Ref) ) (!  (=> (and (and (select lists r_91@@1) (not (select s_2@1 r_91@@1))) (< NoPerm FullPerm)) (and (= (invRecv30 r_91@@1 length_2) r_91@@1) (qpRange30 r_91@@1 length_2)))
 :qid |stdinbpl.2349:26|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_91@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_91@@1 length_2)))
 :pattern ( (select lists r_91@@1))
 :pattern ( (select s_2@1 r_91@@1))
)) (=> (and (forall ((r_92_1 T@Ref) (i_17 Int) ) (!  (=> (and (and (and (select lists (invRecv30 r_92_1 i_17)) (not (select s_2@1 (invRecv30 r_92_1 i_17)))) (< NoPerm FullPerm)) (qpRange30 r_92_1 i_17)) (and (= (invRecv30 r_92_1 i_17) r_92_1) (= length_2 i_17)))
 :qid |stdinbpl.2353:26|
 :skolemid |292|
 :pattern ( (invRecv30 r_92_1 i_17))
)) (forall ((r_92_1@@0 T@Ref) (i_17@@0 Int) ) (!  (=> (and (and (and (select lists (invRecv30 r_92_1@@0 i_17@@0)) (not (select s_2@1 (invRecv30 r_92_1@@0 i_17@@0)))) (< NoPerm FullPerm)) (qpRange30 r_92_1@@0 i_17@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv30 r_92_1@@0 i_17@@0) r_92_1@@0) (= length_2 i_17@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) null (list r_92_1@@0 i_17@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_92_1@@0 i_17@@0)) FullPerm))))
 :qid |stdinbpl.2359:26|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) null (list r_92_1@@0 i_17@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@219 T@Ref) (f_5@@199 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@219 null)) (not (IsPredicateField_23476_4470 f_5@@199))) (not (= (getPredWandId_23476_4470 f_5@@199) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@219 f_5@@199) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@219 f_5@@199)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@219 f_5@@199))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@32) o_4@@219 f_5@@199))
)) (forall ((o_4@@220 T@Ref) (f_5@@200 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@220 null)) (not (IsPredicateField_23478_23479 f_5@@200))) (not (= (getPredWandId_23476_23479 f_5@@200) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@220 f_5@@200) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@32) o_4@@220 f_5@@200)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@220 f_5@@200))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@32) o_4@@220 f_5@@200))
))) (forall ((o_4@@221 T@Ref) (f_5@@201 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@221 null)) (not (IsPredicateField_23476_111428 f_5@@201))) (not (= (getPredWandId_23476_23513 f_5@@201) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@221 f_5@@201) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@32) o_4@@221 f_5@@201)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@221 f_5@@201))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@32) o_4@@221 f_5@@201))
))) (forall ((o_4@@222 T@Ref) (f_5@@202 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@222 null)) (not (IsPredicateField_23476_53 f_5@@202))) (not (= (getPredWandId_23476_53 f_5@@202) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@222 f_5@@202) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@32) o_4@@222 f_5@@202)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@222 f_5@@202))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@32) o_4@@222 f_5@@202))
))) (forall ((o_4@@223 T@Ref) (f_5@@203 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@223 null)) (not (IsPredicateField_23476_122001 f_5@@203))) (not (= (getPredWandId_23476_131207 f_5@@203) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@223 f_5@@203) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@32) o_4@@223 f_5@@203)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@223 f_5@@203))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@32) o_4@@223 f_5@@203))
))) (forall ((o_4@@224 T@Ref) (f_5@@204 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@224 null)) (not (IsPredicateField_23512_4470 f_5@@204))) (not (= (getPredWandId_23512_4470 f_5@@204) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@224 f_5@@204) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@32) o_4@@224 f_5@@204)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@224 f_5@@204))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@32) o_4@@224 f_5@@204))
))) (forall ((o_4@@225 T@Ref) (f_5@@205 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@225 null)) (not (IsPredicateField_23512_23479 f_5@@205))) (not (= (getPredWandId_23512_23479 f_5@@205) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@225 f_5@@205) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@32) o_4@@225 f_5@@205)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@225 f_5@@205))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@32) o_4@@225 f_5@@205))
))) (forall ((o_4@@226 T@Ref) (f_5@@206 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@226 null)) (not (IsPredicateField_23512_23513 f_5@@206))) (not (= (getPredWandId_23512_23513 f_5@@206) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@226 f_5@@206) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) o_4@@226 f_5@@206)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@226 f_5@@206))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) o_4@@226 f_5@@206))
))) (forall ((o_4@@227 T@Ref) (f_5@@207 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@227 null)) (not (IsPredicateField_23512_53 f_5@@207))) (not (= (getPredWandId_23512_53 f_5@@207) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@227 f_5@@207) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@32) o_4@@227 f_5@@207)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@227 f_5@@207))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@32) o_4@@227 f_5@@207))
))) (forall ((o_4@@228 T@Ref) (f_5@@208 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@228 null)) (not (IsPredicateField_23512_121198 f_5@@208))) (not (= (getPredWandId_23512_132016 f_5@@208) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@228 f_5@@208) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@32) o_4@@228 f_5@@208)))
 :qid |stdinbpl.2365:33|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@228 f_5@@208))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@32) o_4@@228 f_5@@208))
))) (and (and (forall ((r_92_1@@1 T@Ref) (i_17@@1 Int) ) (!  (=> (not (and (and (and (select lists (invRecv30 r_92_1@@1 i_17@@1)) (not (select s_2@1 (invRecv30 r_92_1@@1 i_17@@1)))) (< NoPerm FullPerm)) (qpRange30 r_92_1@@1 i_17@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) null (list r_92_1@@1 i_17@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_92_1@@1 i_17@@1))))
 :qid |stdinbpl.2369:26|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@32) null (list r_92_1@@1 i_17@@1)))
)) (state ExhaleHeap@2 QPMask@32)) (and (state ExhaleHeap@2 QPMask@32) (state ExhaleHeap@2 QPMask@32)))) (and (and (=> (= (ControlFlow 0 103) 102) anon198_Else_correct) (=> (= (ControlFlow 0 103) 71) anon199_Then_correct)) (=> (= (ControlFlow 0 103) 68) anon199_Else_correct)))))))))
(let ((anon197_Then_correct true))
(let ((anon212_Else_correct  (=> (and (not (> (|Set#Card_23552| s_2@1) 0)) (state ExhaleHeap@2 QPMask@18)) (and (=> (= (ControlFlow 0 59) (- 0 65)) (forall ((r_131 T@Ref) (r_131_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_131 r_131_1)) (and (select lists r_131) (not (select s_2@1 r_131)))) (and (select lists r_131_1) (not (select s_2@1 r_131_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_131 r_131_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.3057:19|
 :skolemid |377|
 :pattern ( (neverTriggered42 r_131) (neverTriggered42 r_131_1))
))) (=> (forall ((r_131@@0 T@Ref) (r_131_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_131@@0 r_131_1@@0)) (and (select lists r_131@@0) (not (select s_2@1 r_131@@0)))) (and (select lists r_131_1@@0) (not (select s_2@1 r_131_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_131@@0 r_131_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.3057:19|
 :skolemid |377|
 :pattern ( (neverTriggered42 r_131@@0) (neverTriggered42 r_131_1@@0))
)) (=> (forall ((r_131@@1 T@Ref) ) (!  (=> (and (and (select lists r_131@@1) (not (select s_2@1 r_131@@1))) (< NoPerm FullPerm)) (and (= (invRecv42 r_131@@1 length_2) r_131@@1) (qpRange42 r_131@@1 length_2)))
 :qid |stdinbpl.3063:24|
 :skolemid |378|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_131@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_131@@1 length_2)))
 :pattern ( (select lists r_131@@1))
 :pattern ( (select s_2@1 r_131@@1))
)) (=> (and (forall ((r_132_1 T@Ref) (i_23 Int) ) (!  (=> (and (and (and (select lists (invRecv42 r_132_1 i_23)) (not (select s_2@1 (invRecv42 r_132_1 i_23)))) (< NoPerm FullPerm)) (qpRange42 r_132_1 i_23)) (and (= (invRecv42 r_132_1 i_23) r_132_1) (= length_2 i_23)))
 :qid |stdinbpl.3067:24|
 :skolemid |379|
 :pattern ( (invRecv42 r_132_1 i_23))
)) (forall ((r_132_1@@0 T@Ref) (i_23@@0 Int) ) (!  (=> (and (and (and (select lists (invRecv42 r_132_1@@0 i_23@@0)) (not (select s_2@1 (invRecv42 r_132_1@@0 i_23@@0)))) (< NoPerm FullPerm)) (qpRange42 r_132_1@@0 i_23@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv42 r_132_1@@0 i_23@@0) r_132_1@@0) (= length_2 i_23@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) null (list r_132_1@@0 i_23@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_132_1@@0 i_23@@0)) FullPerm))))
 :qid |stdinbpl.3073:24|
 :skolemid |380|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) null (list r_132_1@@0 i_23@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@229 T@Ref) (f_5@@209 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@229 null)) (not (IsPredicateField_23476_4470 f_5@@209))) (not (= (getPredWandId_23476_4470 f_5@@209) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@229 f_5@@209) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@229 f_5@@209)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@229 f_5@@209))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@229 f_5@@209))
)) (forall ((o_4@@230 T@Ref) (f_5@@210 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@230 null)) (not (IsPredicateField_23478_23479 f_5@@210))) (not (= (getPredWandId_23476_23479 f_5@@210) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@230 f_5@@210) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@23) o_4@@230 f_5@@210)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@230 f_5@@210))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@23) o_4@@230 f_5@@210))
))) (forall ((o_4@@231 T@Ref) (f_5@@211 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@231 null)) (not (IsPredicateField_23476_111428 f_5@@211))) (not (= (getPredWandId_23476_23513 f_5@@211) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@231 f_5@@211) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@23) o_4@@231 f_5@@211)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@231 f_5@@211))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@23) o_4@@231 f_5@@211))
))) (forall ((o_4@@232 T@Ref) (f_5@@212 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@232 null)) (not (IsPredicateField_23476_53 f_5@@212))) (not (= (getPredWandId_23476_53 f_5@@212) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@232 f_5@@212) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@23) o_4@@232 f_5@@212)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@232 f_5@@212))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@23) o_4@@232 f_5@@212))
))) (forall ((o_4@@233 T@Ref) (f_5@@213 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@233 null)) (not (IsPredicateField_23476_122001 f_5@@213))) (not (= (getPredWandId_23476_131207 f_5@@213) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@233 f_5@@213) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@23) o_4@@233 f_5@@213)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@233 f_5@@213))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@23) o_4@@233 f_5@@213))
))) (forall ((o_4@@234 T@Ref) (f_5@@214 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@234 null)) (not (IsPredicateField_23512_4470 f_5@@214))) (not (= (getPredWandId_23512_4470 f_5@@214) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@234 f_5@@214) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@23) o_4@@234 f_5@@214)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@234 f_5@@214))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@23) o_4@@234 f_5@@214))
))) (forall ((o_4@@235 T@Ref) (f_5@@215 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@235 null)) (not (IsPredicateField_23512_23479 f_5@@215))) (not (= (getPredWandId_23512_23479 f_5@@215) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@235 f_5@@215) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@23) o_4@@235 f_5@@215)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@235 f_5@@215))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@23) o_4@@235 f_5@@215))
))) (forall ((o_4@@236 T@Ref) (f_5@@216 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@236 null)) (not (IsPredicateField_23512_23513 f_5@@216))) (not (= (getPredWandId_23512_23513 f_5@@216) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@236 f_5@@216) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) o_4@@236 f_5@@216)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@236 f_5@@216))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) o_4@@236 f_5@@216))
))) (forall ((o_4@@237 T@Ref) (f_5@@217 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@237 null)) (not (IsPredicateField_23512_53 f_5@@217))) (not (= (getPredWandId_23512_53 f_5@@217) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@237 f_5@@217) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@23) o_4@@237 f_5@@217)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@237 f_5@@217))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@23) o_4@@237 f_5@@217))
))) (forall ((o_4@@238 T@Ref) (f_5@@218 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@238 null)) (not (IsPredicateField_23512_121198 f_5@@218))) (not (= (getPredWandId_23512_132016 f_5@@218) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@238 f_5@@218) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@23) o_4@@238 f_5@@218)))
 :qid |stdinbpl.3079:31|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@238 f_5@@218))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@23) o_4@@238 f_5@@218))
))) (and (and (forall ((r_132_1@@1 T@Ref) (i_23@@1 Int) ) (!  (=> (not (and (and (and (select lists (invRecv42 r_132_1@@1 i_23@@1)) (not (select s_2@1 (invRecv42 r_132_1@@1 i_23@@1)))) (< NoPerm FullPerm)) (qpRange42 r_132_1@@1 i_23@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) null (list r_132_1@@1 i_23@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_132_1@@1 i_23@@1))))
 :qid |stdinbpl.3083:24|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) null (list r_132_1@@1 i_23@@1)))
)) (state ExhaleHeap@2 QPMask@23)) (and (state ExhaleHeap@2 QPMask@23) (forall ((r_134 T@Ref) ) (!  (=> (and (select lists r_134) (not (select s_2@1 r_134))) (allSet ExhaleHeap@2 r_134 length_2 v_2@@3))
 :qid |stdinbpl.3090:22|
 :skolemid |383|
 :pattern ( (select lists r_134))
 :pattern ( (select s_2@1 r_134))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@2) null (list r_134 length_2)) r_134 length_2 v_2@@3))
))))) (and (=> (= (ControlFlow 0 59) (- 0 64)) (forall ((r_135 T@Ref) (r_135_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_135 r_135_1)) (select s_2@1 r_135)) (select s_2@1 r_135_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_135 r_135_1)))
 :qid |stdinbpl.3096:17|
 :skolemid |384|
))) (=> (forall ((r_135@@0 T@Ref) (r_135_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_135@@0 r_135_1@@0)) (select s_2@1 r_135@@0)) (select s_2@1 r_135_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_135@@0 r_135_1@@0)))
 :qid |stdinbpl.3096:17|
 :skolemid |384|
)) (=> (and (and (forall ((r_135@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_135@@1) (< NoPerm FullPerm)) (and (qpRange43 r_135@@1) (= (invRecv43 r_135@@1) r_135@@1)))
 :qid |stdinbpl.3102:24|
 :skolemid |385|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_135@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) r_135@@1 val))
 :pattern ( (select s_2@1 r_135@@1))
)) (forall ((o_4@@239 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv43 o_4@@239)) (< NoPerm FullPerm)) (qpRange43 o_4@@239)) (= (invRecv43 o_4@@239) o_4@@239))
 :qid |stdinbpl.3106:24|
 :skolemid |386|
 :pattern ( (invRecv43 o_4@@239))
))) (and (forall ((r_135@@2 T@Ref) ) (!  (=> (select s_2@1 r_135@@2) (not (= r_135@@2 null)))
 :qid |stdinbpl.3112:24|
 :skolemid |387|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_135@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) r_135@@2 val))
 :pattern ( (select s_2@1 r_135@@2))
)) (forall ((o_4@@240 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv43 o_4@@240)) (< NoPerm FullPerm)) (qpRange43 o_4@@240)) (and (=> (< NoPerm FullPerm) (= (invRecv43 o_4@@240) o_4@@240)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@240 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@240 val) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv43 o_4@@240)) (< NoPerm FullPerm)) (qpRange43 o_4@@240))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@240 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@240 val))))
 :qid |stdinbpl.3118:24|
 :skolemid |388|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@240 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@241 T@Ref) (f_5@@219 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@23) o_4@@241 f_5@@219) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@24) o_4@@241 f_5@@219)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@23) o_4@@241 f_5@@219))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@24) o_4@@241 f_5@@219))
)) (forall ((o_4@@242 T@Ref) (f_5@@220 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@23) o_4@@242 f_5@@220) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@242 f_5@@220)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@23) o_4@@242 f_5@@220))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@242 f_5@@220))
))) (forall ((o_4@@243 T@Ref) (f_5@@221 T@Field_41147_4470) ) (!  (=> (not (= f_5@@221 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@243 f_5@@221) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@243 f_5@@221)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@23) o_4@@243 f_5@@221))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@243 f_5@@221))
))) (forall ((o_4@@244 T@Ref) (f_5@@222 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@23) o_4@@244 f_5@@222) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@24) o_4@@244 f_5@@222)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@23) o_4@@244 f_5@@222))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@24) o_4@@244 f_5@@222))
))) (forall ((o_4@@245 T@Ref) (f_5@@223 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@23) o_4@@245 f_5@@223) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@24) o_4@@245 f_5@@223)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@23) o_4@@245 f_5@@223))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@24) o_4@@245 f_5@@223))
))) (forall ((o_4@@246 T@Ref) (f_5@@224 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@23) o_4@@246 f_5@@224) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@24) o_4@@246 f_5@@224)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@23) o_4@@246 f_5@@224))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@24) o_4@@246 f_5@@224))
))) (forall ((o_4@@247 T@Ref) (f_5@@225 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@23) o_4@@247 f_5@@225) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@24) o_4@@247 f_5@@225)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@23) o_4@@247 f_5@@225))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@24) o_4@@247 f_5@@225))
))) (forall ((o_4@@248 T@Ref) (f_5@@226 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@23) o_4@@248 f_5@@226) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@24) o_4@@248 f_5@@226)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@23) o_4@@248 f_5@@226))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@24) o_4@@248 f_5@@226))
))) (forall ((o_4@@249 T@Ref) (f_5@@227 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) o_4@@249 f_5@@227) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@24) o_4@@249 f_5@@227)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@23) o_4@@249 f_5@@227))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@24) o_4@@249 f_5@@227))
))) (forall ((o_4@@250 T@Ref) (f_5@@228 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@23) o_4@@250 f_5@@228) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@24) o_4@@250 f_5@@228)))
 :qid |stdinbpl.3122:31|
 :skolemid |389|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@23) o_4@@250 f_5@@228))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@24) o_4@@250 f_5@@228))
))) (and (state ExhaleHeap@2 QPMask@24) (forall ((r_136 T@Ref) ) (!  (=> (select s_2@1 r_136) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@2) r_136 val) v_2@@3))
 :qid |stdinbpl.3128:22|
 :skolemid |390|
 :pattern ( (select s_2@1 r_136))
)))) (and (=> (= (ControlFlow 0 59) (- 0 63)) (forall ((r_137 T@Ref) (r_137_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_137 r_137_1)) (select s_2@1 r_137)) (select s_2@1 r_137_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_137 r_137_1)))
 :qid |stdinbpl.3134:17|
 :skolemid |391|
))) (=> (forall ((r_137@@0 T@Ref) (r_137_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_137@@0 r_137_1@@0)) (select s_2@1 r_137@@0)) (select s_2@1 r_137_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_137@@0 r_137_1@@0)))
 :qid |stdinbpl.3134:17|
 :skolemid |391|
)) (=> (and (and (forall ((r_137@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_137@@1) (< NoPerm FullPerm)) (and (qpRange44 r_137@@1) (= (invRecv44 r_137@@1) r_137@@1)))
 :qid |stdinbpl.3140:24|
 :skolemid |392|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_137@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) r_137@@1 next))
 :pattern ( (select s_2@1 r_137@@1))
)) (forall ((o_4@@251 T@Ref) ) (!  (=> (and (and (select s_2@1 (invRecv44 o_4@@251)) (< NoPerm FullPerm)) (qpRange44 o_4@@251)) (= (invRecv44 o_4@@251) o_4@@251))
 :qid |stdinbpl.3144:24|
 :skolemid |393|
 :pattern ( (invRecv44 o_4@@251))
))) (and (forall ((r_137@@2 T@Ref) ) (!  (=> (select s_2@1 r_137@@2) (not (= r_137@@2 null)))
 :qid |stdinbpl.3150:24|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_137@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) r_137@@2 next))
 :pattern ( (select s_2@1 r_137@@2))
)) (forall ((o_4@@252 T@Ref) ) (!  (and (=> (and (and (select s_2@1 (invRecv44 o_4@@252)) (< NoPerm FullPerm)) (qpRange44 o_4@@252)) (and (=> (< NoPerm FullPerm) (= (invRecv44 o_4@@252) o_4@@252)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@252 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@252 next) FullPerm)))) (=> (not (and (and (select s_2@1 (invRecv44 o_4@@252)) (< NoPerm FullPerm)) (qpRange44 o_4@@252))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@252 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@252 next))))
 :qid |stdinbpl.3156:24|
 :skolemid |395|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@252 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@253 T@Ref) (f_5@@229 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@24) o_4@@253 f_5@@229) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@25) o_4@@253 f_5@@229)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@24) o_4@@253 f_5@@229))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@25) o_4@@253 f_5@@229))
)) (forall ((o_4@@254 T@Ref) (f_5@@230 T@Field_34811_34812) ) (!  (=> (not (= f_5@@230 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@254 f_5@@230) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@254 f_5@@230)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@24) o_4@@254 f_5@@230))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@254 f_5@@230))
))) (forall ((o_4@@255 T@Ref) (f_5@@231 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@255 f_5@@231) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@25) o_4@@255 f_5@@231)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@24) o_4@@255 f_5@@231))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@25) o_4@@255 f_5@@231))
))) (forall ((o_4@@256 T@Ref) (f_5@@232 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@24) o_4@@256 f_5@@232) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@25) o_4@@256 f_5@@232)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@24) o_4@@256 f_5@@232))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@25) o_4@@256 f_5@@232))
))) (forall ((o_4@@257 T@Ref) (f_5@@233 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@24) o_4@@257 f_5@@233) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@25) o_4@@257 f_5@@233)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@24) o_4@@257 f_5@@233))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@25) o_4@@257 f_5@@233))
))) (forall ((o_4@@258 T@Ref) (f_5@@234 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@24) o_4@@258 f_5@@234) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@25) o_4@@258 f_5@@234)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@24) o_4@@258 f_5@@234))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@25) o_4@@258 f_5@@234))
))) (forall ((o_4@@259 T@Ref) (f_5@@235 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@24) o_4@@259 f_5@@235) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@25) o_4@@259 f_5@@235)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@24) o_4@@259 f_5@@235))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@25) o_4@@259 f_5@@235))
))) (forall ((o_4@@260 T@Ref) (f_5@@236 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@24) o_4@@260 f_5@@236) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@25) o_4@@260 f_5@@236)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@24) o_4@@260 f_5@@236))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@25) o_4@@260 f_5@@236))
))) (forall ((o_4@@261 T@Ref) (f_5@@237 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@24) o_4@@261 f_5@@237) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) o_4@@261 f_5@@237)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@24) o_4@@261 f_5@@237))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) o_4@@261 f_5@@237))
))) (forall ((o_4@@262 T@Ref) (f_5@@238 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@24) o_4@@262 f_5@@238) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@25) o_4@@262 f_5@@238)))
 :qid |stdinbpl.3160:31|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@24) o_4@@262 f_5@@238))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@25) o_4@@262 f_5@@238))
))) (and (state ExhaleHeap@2 QPMask@25) (forall ((r1_15 T@Ref) (r2_15 T@Ref) ) (!  (=> (and (select s_2@1 r1_15) (and (select s_2@1 r2_15) (not (= r1_15 r2_15)))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r1_15 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r2_15 next))))
 :qid |stdinbpl.3166:22|
 :skolemid |397|
 :pattern ( (select s_2@1 r1_15) (select s_2@1 r2_15))
)))) (and (=> (= (ControlFlow 0 59) (- 0 62)) (forall ((r_138 T@Ref) (r_138_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_138 r_138_1)) (select s_2@1 r_138)) (select s_2@1 r_138_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138_1 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.3174:19|
 :skolemid |398|
 :pattern ( (neverTriggered45 r_138) (neverTriggered45 r_138_1))
))) (=> (forall ((r_138@@0 T@Ref) (r_138_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_138@@0 r_138_1@@0)) (select s_2@1 r_138@@0)) (select s_2@1 r_138_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138@@0 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138_1@@0 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.3174:19|
 :skolemid |398|
 :pattern ( (neverTriggered45 r_138@@0) (neverTriggered45 r_138_1@@0))
)) (=> (forall ((r_138@@1 T@Ref) ) (!  (=> (and (select s_2@1 r_138@@1) (< NoPerm FullPerm)) (and (= (invRecv45 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138@@1 next) (- length_2 1)) r_138@@1) (qpRange45 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_138@@1 next) (- length_2 1))))
 :qid |stdinbpl.3180:24|
 :skolemid |399|
 :pattern ( (select s_2@1 r_138@@1))
)) (=> (and (forall ((r_139_1 T@Ref) (i_24_1 Int) ) (!  (=> (and (and (select s_2@1 (invRecv45 r_139_1 i_24_1)) (< NoPerm FullPerm)) (qpRange45 r_139_1 i_24_1)) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv45 r_139_1 i_24_1) next) r_139_1) (= (- length_2 1) i_24_1)))
 :qid |stdinbpl.3184:24|
 :skolemid |400|
 :pattern ( (invRecv45 r_139_1 i_24_1))
)) (forall ((r_139_1@@0 T@Ref) (i_24_1@@0 Int) ) (!  (=> (and (and (select s_2@1 (invRecv45 r_139_1@@0 i_24_1@@0)) (< NoPerm FullPerm)) (qpRange45 r_139_1@@0 i_24_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) (invRecv45 r_139_1@@0 i_24_1@@0) next) r_139_1@@0) (= (- length_2 1) i_24_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) null (list r_139_1@@0 i_24_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) null (list r_139_1@@0 i_24_1@@0)) FullPerm))))
 :qid |stdinbpl.3190:24|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) null (list r_139_1@@0 i_24_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@263 T@Ref) (f_5@@239 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@263 null)) (not (IsPredicateField_23476_4470 f_5@@239))) (not (= (getPredWandId_23476_4470 f_5@@239) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@25) o_4@@263 f_5@@239) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@26) o_4@@263 f_5@@239)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@25) o_4@@263 f_5@@239))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@26) o_4@@263 f_5@@239))
)) (forall ((o_4@@264 T@Ref) (f_5@@240 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@264 null)) (not (IsPredicateField_23478_23479 f_5@@240))) (not (= (getPredWandId_23476_23479 f_5@@240) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@264 f_5@@240) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@26) o_4@@264 f_5@@240)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@25) o_4@@264 f_5@@240))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@26) o_4@@264 f_5@@240))
))) (forall ((o_4@@265 T@Ref) (f_5@@241 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@265 null)) (not (IsPredicateField_23476_111428 f_5@@241))) (not (= (getPredWandId_23476_23513 f_5@@241) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@25) o_4@@265 f_5@@241) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@26) o_4@@265 f_5@@241)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@25) o_4@@265 f_5@@241))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@26) o_4@@265 f_5@@241))
))) (forall ((o_4@@266 T@Ref) (f_5@@242 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@266 null)) (not (IsPredicateField_23476_53 f_5@@242))) (not (= (getPredWandId_23476_53 f_5@@242) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@25) o_4@@266 f_5@@242) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@26) o_4@@266 f_5@@242)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@25) o_4@@266 f_5@@242))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@26) o_4@@266 f_5@@242))
))) (forall ((o_4@@267 T@Ref) (f_5@@243 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@267 null)) (not (IsPredicateField_23476_122001 f_5@@243))) (not (= (getPredWandId_23476_131207 f_5@@243) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@25) o_4@@267 f_5@@243) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@26) o_4@@267 f_5@@243)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@25) o_4@@267 f_5@@243))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@26) o_4@@267 f_5@@243))
))) (forall ((o_4@@268 T@Ref) (f_5@@244 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@268 null)) (not (IsPredicateField_23512_4470 f_5@@244))) (not (= (getPredWandId_23512_4470 f_5@@244) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@25) o_4@@268 f_5@@244) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@26) o_4@@268 f_5@@244)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@25) o_4@@268 f_5@@244))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@26) o_4@@268 f_5@@244))
))) (forall ((o_4@@269 T@Ref) (f_5@@245 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@269 null)) (not (IsPredicateField_23512_23479 f_5@@245))) (not (= (getPredWandId_23512_23479 f_5@@245) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@25) o_4@@269 f_5@@245) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@26) o_4@@269 f_5@@245)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@25) o_4@@269 f_5@@245))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@26) o_4@@269 f_5@@245))
))) (forall ((o_4@@270 T@Ref) (f_5@@246 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@270 null)) (not (IsPredicateField_23512_23513 f_5@@246))) (not (= (getPredWandId_23512_23513 f_5@@246) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) o_4@@270 f_5@@246) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) o_4@@270 f_5@@246)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) o_4@@270 f_5@@246))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) o_4@@270 f_5@@246))
))) (forall ((o_4@@271 T@Ref) (f_5@@247 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@271 null)) (not (IsPredicateField_23512_53 f_5@@247))) (not (= (getPredWandId_23512_53 f_5@@247) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@25) o_4@@271 f_5@@247) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@26) o_4@@271 f_5@@247)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@25) o_4@@271 f_5@@247))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@26) o_4@@271 f_5@@247))
))) (forall ((o_4@@272 T@Ref) (f_5@@248 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@272 null)) (not (IsPredicateField_23512_121198 f_5@@248))) (not (= (getPredWandId_23512_132016 f_5@@248) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@25) o_4@@272 f_5@@248) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@26) o_4@@272 f_5@@248)))
 :qid |stdinbpl.3196:31|
 :skolemid |402|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@25) o_4@@272 f_5@@248))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@26) o_4@@272 f_5@@248))
))) (forall ((r_139_1@@1 T@Ref) (i_24_1@@1 Int) ) (!  (=> (not (and (and (select s_2@1 (invRecv45 r_139_1@@1 i_24_1@@1)) (< NoPerm FullPerm)) (qpRange45 r_139_1@@1 i_24_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) null (list r_139_1@@1 i_24_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@25) null (list r_139_1@@1 i_24_1@@1))))
 :qid |stdinbpl.3200:24|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@26) null (list r_139_1@@1 i_24_1@@1)))
))) (and (state ExhaleHeap@2 QPMask@26) (state ExhaleHeap@2 QPMask@26))) (and (and (forall ((r_141 T@Ref) ) (!  (=> (select s_2@1 r_141) (allSet ExhaleHeap@2 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@2) r_141 next) (- length_2 1) v_2@@3))
 :qid |stdinbpl.3207:22|
 :skolemid |404|
 :pattern ( (select s_2@1 r_141))
)) (state ExhaleHeap@2 QPMask@26)) (and (state ExhaleHeap@2 QPMask@26) (= (ControlFlow 0 59) (- 0 61))))) false)))))))))))))))))))))
(let ((anon194_Else_correct  (=> (and (forall ((r_89_1 T@Ref) ) (!  (=> (select lists r_89_1) (allSet Heap@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_89_1 next) (- length_2 1) v_2@@3))
 :qid |stdinbpl.2320:24|
 :skolemid |289|
 :pattern ( (select lists r_89_1))
)) (IdenticalOnKnownLocations Heap@0 ExhaleHeap@2 QPMask@18)) (and (and (and (=> (= (ControlFlow 0 158) 153) anon212_Then_correct) (=> (= (ControlFlow 0 158) 59) anon212_Else_correct)) (=> (= (ControlFlow 0 158) 66) anon197_Then_correct)) (=> (= (ControlFlow 0 158) 103) anon197_Else_correct)))))
(let ((anon86_correct true))
(let ((anon195_Else_correct  (=> (and (not (select lists r_88)) (= (ControlFlow 0 57) 54)) anon86_correct)))
(let ((anon195_Then_correct  (=> (select lists r_88) (and (=> (= (ControlFlow 0 55) (- 0 56)) (allSet Heap@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_88 next) (- length_2 1) v_2@@3)) (=> (allSet Heap@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_88 next) (- length_2 1) v_2@@3) (=> (= (ControlFlow 0 55) 54) anon86_correct))))))
(let ((anon192_Else_correct  (=> (forall ((r1_9_1 T@Ref) (r2_9_1 T@Ref) ) (!  (=> (and (select lists r1_9_1) (and (select lists r2_9_1) (not (= r1_9_1 r2_9_1)))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r1_9_1 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r2_9_1 next))))
 :qid |stdinbpl.2264:24|
 :skolemid |281|
 :pattern ( (select lists r1_9_1) (select lists r2_9_1))
)) (and (=> (= (ControlFlow 0 159) (- 0 161)) (forall ((r_86 T@Ref) (r_86_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_86 r_86_1)) (select lists r_86)) (select lists r_86_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86_1 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2275:21|
 :skolemid |282|
 :pattern ( (neverTriggered29 r_86) (neverTriggered29 r_86_1))
))) (=> (forall ((r_86@@0 T@Ref) (r_86_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_86@@0 r_86_1@@0)) (select lists r_86@@0)) (select lists r_86_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86@@0 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86_1@@0 next))) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.2275:21|
 :skolemid |282|
 :pattern ( (neverTriggered29 r_86@@0) (neverTriggered29 r_86_1@@0))
)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (forall ((r_86@@1 T@Ref) ) (!  (=> (select lists r_86@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86@@1 next) (- length_2 1))) FullPerm))
 :qid |stdinbpl.2282:21|
 :skolemid |283|
 :pattern ( (select lists r_86@@1))
))) (=> (forall ((r_86@@2 T@Ref) ) (!  (=> (select lists r_86@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) null (list (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86@@2 next) (- length_2 1))) FullPerm))
 :qid |stdinbpl.2282:21|
 :skolemid |283|
 :pattern ( (select lists r_86@@2))
)) (=> (and (and (forall ((r_86@@3 T@Ref) ) (!  (=> (and (select lists r_86@@3) (< NoPerm FullPerm)) (and (= (invRecv29 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86@@3 next) (- length_2 1)) r_86@@3) (qpRange29 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_86@@3 next) (- length_2 1))))
 :qid |stdinbpl.2288:26|
 :skolemid |284|
 :pattern ( (select lists r_86@@3))
)) (forall ((r_87_1 T@Ref) (i_16_1 Int) ) (!  (=> (and (and (select lists (invRecv29 r_87_1 i_16_1)) (< NoPerm FullPerm)) (qpRange29 r_87_1 i_16_1)) (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) (invRecv29 r_87_1 i_16_1) next) r_87_1) (= (- length_2 1) i_16_1)))
 :qid |stdinbpl.2292:26|
 :skolemid |285|
 :pattern ( (invRecv29 r_87_1 i_16_1))
))) (and (forall ((r_87_1@@0 T@Ref) (i_16_1@@0 Int) ) (!  (=> (and (and (select lists (invRecv29 r_87_1@@0 i_16_1@@0)) (< NoPerm FullPerm)) (qpRange29 r_87_1@@0 i_16_1@@0)) (and (and (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) (invRecv29 r_87_1@@0 i_16_1@@0) next) r_87_1@@0) (= (- length_2 1) i_16_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_87_1@@0 i_16_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) null (list r_87_1@@0 i_16_1@@0)) FullPerm))))
 :qid |stdinbpl.2298:26|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_87_1@@0 i_16_1@@0)))
)) (forall ((r_87_1@@1 T@Ref) (i_16_1@@1 Int) ) (!  (=> (not (and (and (select lists (invRecv29 r_87_1@@1 i_16_1@@1)) (< NoPerm FullPerm)) (qpRange29 r_87_1@@1 i_16_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_87_1@@1 i_16_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) null (list r_87_1@@1 i_16_1@@1))))
 :qid |stdinbpl.2302:26|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) null (list r_87_1@@1 i_16_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@273 T@Ref) (f_5@@249 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@273 null)) (not (IsPredicateField_23476_4470 f_5@@249))) (not (= (getPredWandId_23476_4470 f_5@@249) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@17) o_4@@273 f_5@@249) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@273 f_5@@249)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@17) o_4@@273 f_5@@249))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@18) o_4@@273 f_5@@249))
)) (forall ((o_4@@274 T@Ref) (f_5@@250 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@274 null)) (not (IsPredicateField_23478_23479 f_5@@250))) (not (= (getPredWandId_23476_23479 f_5@@250) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@274 f_5@@250) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@274 f_5@@250)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@274 f_5@@250))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@18) o_4@@274 f_5@@250))
))) (forall ((o_4@@275 T@Ref) (f_5@@251 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@275 null)) (not (IsPredicateField_23476_111428 f_5@@251))) (not (= (getPredWandId_23476_23513 f_5@@251) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@17) o_4@@275 f_5@@251) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@275 f_5@@251)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@17) o_4@@275 f_5@@251))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@18) o_4@@275 f_5@@251))
))) (forall ((o_4@@276 T@Ref) (f_5@@252 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@276 null)) (not (IsPredicateField_23476_53 f_5@@252))) (not (= (getPredWandId_23476_53 f_5@@252) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@17) o_4@@276 f_5@@252) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@276 f_5@@252)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@17) o_4@@276 f_5@@252))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@18) o_4@@276 f_5@@252))
))) (forall ((o_4@@277 T@Ref) (f_5@@253 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@277 null)) (not (IsPredicateField_23476_122001 f_5@@253))) (not (= (getPredWandId_23476_131207 f_5@@253) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@17) o_4@@277 f_5@@253) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@277 f_5@@253)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@17) o_4@@277 f_5@@253))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@18) o_4@@277 f_5@@253))
))) (forall ((o_4@@278 T@Ref) (f_5@@254 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@278 null)) (not (IsPredicateField_23512_4470 f_5@@254))) (not (= (getPredWandId_23512_4470 f_5@@254) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@17) o_4@@278 f_5@@254) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@278 f_5@@254)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@17) o_4@@278 f_5@@254))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@18) o_4@@278 f_5@@254))
))) (forall ((o_4@@279 T@Ref) (f_5@@255 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@279 null)) (not (IsPredicateField_23512_23479 f_5@@255))) (not (= (getPredWandId_23512_23479 f_5@@255) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@17) o_4@@279 f_5@@255) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@279 f_5@@255)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@17) o_4@@279 f_5@@255))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@18) o_4@@279 f_5@@255))
))) (forall ((o_4@@280 T@Ref) (f_5@@256 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@280 null)) (not (IsPredicateField_23512_23513 f_5@@256))) (not (= (getPredWandId_23512_23513 f_5@@256) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) o_4@@280 f_5@@256) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@280 f_5@@256)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) o_4@@280 f_5@@256))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@18) o_4@@280 f_5@@256))
))) (forall ((o_4@@281 T@Ref) (f_5@@257 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@281 null)) (not (IsPredicateField_23512_53 f_5@@257))) (not (= (getPredWandId_23512_53 f_5@@257) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@17) o_4@@281 f_5@@257) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@281 f_5@@257)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@17) o_4@@281 f_5@@257))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@18) o_4@@281 f_5@@257))
))) (forall ((o_4@@282 T@Ref) (f_5@@258 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@282 null)) (not (IsPredicateField_23512_121198 f_5@@258))) (not (= (getPredWandId_23512_132016 f_5@@258) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@17) o_4@@282 f_5@@258) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@282 f_5@@258)))
 :qid |stdinbpl.2308:33|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@17) o_4@@282 f_5@@258))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@18) o_4@@282 f_5@@258))
))) (and (and (=> (= (ControlFlow 0 159) 158) anon194_Else_correct) (=> (= (ControlFlow 0 159) 55) anon195_Then_correct)) (=> (= (ControlFlow 0 159) 57) anon195_Else_correct)))))))))))
(let ((anon82_correct true))
(let ((anon193_Else_correct  (=> (and (not (and (select lists r1_8) (and (select lists r2_8) (not (= r1_8 r2_8))))) (= (ControlFlow 0 53) 50)) anon82_correct)))
(let ((anon193_Then_correct  (=> (and (select lists r1_8) (and (select lists r2_8) (not (= r1_8 r2_8)))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r1_8 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r2_8 next)))) (=> (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r1_8 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r2_8 next))) (=> (= (ControlFlow 0 51) 50) anon82_correct))))))
(let ((anon190_Else_correct  (=> (forall ((r_84_1 T@Ref) ) (!  (=> (select lists r_84_1) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_84_1 val) v_2@@3))
 :qid |stdinbpl.2212:24|
 :skolemid |274|
 :pattern ( (select lists r_84_1))
)) (and (=> (= (ControlFlow 0 162) (- 0 164)) (forall ((r_85 T@Ref) (r_85_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_85 r_85_1)) (select lists r_85)) (select lists r_85_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_85 r_85_1)))
 :qid |stdinbpl.2223:21|
 :skolemid |275|
 :pattern ( (neverTriggered28 r_85) (neverTriggered28 r_85_1))
))) (=> (forall ((r_85@@0 T@Ref) (r_85_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_85@@0 r_85_1@@0)) (select lists r_85@@0)) (select lists r_85_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_85@@0 r_85_1@@0)))
 :qid |stdinbpl.2223:21|
 :skolemid |275|
 :pattern ( (neverTriggered28 r_85@@0) (neverTriggered28 r_85_1@@0))
)) (and (=> (= (ControlFlow 0 162) (- 0 163)) (forall ((r_85@@1 T@Ref) ) (!  (=> (select lists r_85@@1) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) r_85@@1 next) FullPerm))
 :qid |stdinbpl.2230:21|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_85@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) r_85@@1 next))
 :pattern ( (select lists r_85@@1))
))) (=> (forall ((r_85@@2 T@Ref) ) (!  (=> (select lists r_85@@2) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) r_85@@2 next) FullPerm))
 :qid |stdinbpl.2230:21|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_85@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) r_85@@2 next))
 :pattern ( (select lists r_85@@2))
)) (=> (forall ((r_85@@3 T@Ref) ) (!  (=> (and (select lists r_85@@3) (< NoPerm FullPerm)) (and (qpRange28 r_85@@3) (= (invRecv28 r_85@@3) r_85@@3)))
 :qid |stdinbpl.2236:26|
 :skolemid |277|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@0) r_85@@3 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) r_85@@3 next))
 :pattern ( (select lists r_85@@3))
)) (=> (and (forall ((o_4@@283 T@Ref) ) (!  (=> (and (select lists (invRecv28 o_4@@283)) (and (< NoPerm FullPerm) (qpRange28 o_4@@283))) (= (invRecv28 o_4@@283) o_4@@283))
 :qid |stdinbpl.2240:26|
 :skolemid |278|
 :pattern ( (invRecv28 o_4@@283))
)) (forall ((o_4@@284 T@Ref) ) (!  (and (=> (and (select lists (invRecv28 o_4@@284)) (and (< NoPerm FullPerm) (qpRange28 o_4@@284))) (and (= (invRecv28 o_4@@284) o_4@@284) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@284 next) (- (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) o_4@@284 next) FullPerm)))) (=> (not (and (select lists (invRecv28 o_4@@284)) (and (< NoPerm FullPerm) (qpRange28 o_4@@284)))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@284 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) o_4@@284 next))))
 :qid |stdinbpl.2246:26|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@284 next))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@285 T@Ref) (f_5@@259 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@16) o_4@@285 f_5@@259) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@17) o_4@@285 f_5@@259)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@17) o_4@@285 f_5@@259))
)) (forall ((o_4@@286 T@Ref) (f_5@@260 T@Field_34811_34812) ) (!  (=> (not (= f_5@@260 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) o_4@@286 f_5@@260) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@286 f_5@@260)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@17) o_4@@286 f_5@@260))
))) (forall ((o_4@@287 T@Ref) (f_5@@261 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@287 f_5@@261) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@17) o_4@@287 f_5@@261)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@17) o_4@@287 f_5@@261))
))) (forall ((o_4@@288 T@Ref) (f_5@@262 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@16) o_4@@288 f_5@@262) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@17) o_4@@288 f_5@@262)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@17) o_4@@288 f_5@@262))
))) (forall ((o_4@@289 T@Ref) (f_5@@263 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@16) o_4@@289 f_5@@263) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@17) o_4@@289 f_5@@263)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@17) o_4@@289 f_5@@263))
))) (forall ((o_4@@290 T@Ref) (f_5@@264 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@16) o_4@@290 f_5@@264) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@17) o_4@@290 f_5@@264)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@17) o_4@@290 f_5@@264))
))) (forall ((o_4@@291 T@Ref) (f_5@@265 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@16) o_4@@291 f_5@@265) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@17) o_4@@291 f_5@@265)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@17) o_4@@291 f_5@@265))
))) (forall ((o_4@@292 T@Ref) (f_5@@266 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@16) o_4@@292 f_5@@266) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@17) o_4@@292 f_5@@266)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@17) o_4@@292 f_5@@266))
))) (forall ((o_4@@293 T@Ref) (f_5@@267 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@16) o_4@@293 f_5@@267) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) o_4@@293 f_5@@267)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@17) o_4@@293 f_5@@267))
))) (forall ((o_4@@294 T@Ref) (f_5@@268 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@16) o_4@@294 f_5@@268) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@17) o_4@@294 f_5@@268)))
 :qid |stdinbpl.2252:33|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@17) o_4@@294 f_5@@268))
))) (and (and (=> (= (ControlFlow 0 162) 159) anon192_Else_correct) (=> (= (ControlFlow 0 162) 51) anon193_Then_correct)) (=> (= (ControlFlow 0 162) 53) anon193_Else_correct))))))))))))
(let ((anon78_correct true))
(let ((anon191_Else_correct  (=> (and (not (select lists r_83)) (= (ControlFlow 0 49) 46)) anon78_correct)))
(let ((anon191_Then_correct  (=> (select lists r_83) (and (=> (= (ControlFlow 0 47) (- 0 48)) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_83 val) v_2@@3)) (=> (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_83 val) v_2@@3) (=> (= (ControlFlow 0 47) 46) anon78_correct))))))
(let ((anon188_Else_correct  (=> (forall ((r_81_1 T@Ref) ) (!  (=> (and (select lists r_81_1) (not (select lists r_81_1))) (allSet Heap@0 r_81_1 length_2 v_2@@3))
 :qid |stdinbpl.2160:24|
 :skolemid |267|
 :pattern ( (select lists r_81_1))
 :pattern ( (select lists r_81_1))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@0) null (list r_81_1 length_2)) r_81_1 length_2 v_2@@3))
)) (and (=> (= (ControlFlow 0 165) (- 0 167)) (forall ((r_82 T@Ref) (r_82_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_82 r_82_1)) (select lists r_82)) (select lists r_82_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_82 r_82_1)))
 :qid |stdinbpl.2171:21|
 :skolemid |268|
 :pattern ( (neverTriggered27 r_82) (neverTriggered27 r_82_1))
))) (=> (forall ((r_82@@0 T@Ref) (r_82_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_82@@0 r_82_1@@0)) (select lists r_82@@0)) (select lists r_82_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_82@@0 r_82_1@@0)))
 :qid |stdinbpl.2171:21|
 :skolemid |268|
 :pattern ( (neverTriggered27 r_82@@0) (neverTriggered27 r_82_1@@0))
)) (and (=> (= (ControlFlow 0 165) (- 0 166)) (forall ((r_82@@1 T@Ref) ) (!  (=> (select lists r_82@@1) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) r_82@@1 val) FullPerm))
 :qid |stdinbpl.2178:21|
 :skolemid |269|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_82@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) r_82@@1 val))
 :pattern ( (select lists r_82@@1))
))) (=> (forall ((r_82@@2 T@Ref) ) (!  (=> (select lists r_82@@2) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) r_82@@2 val) FullPerm))
 :qid |stdinbpl.2178:21|
 :skolemid |269|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_82@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) r_82@@2 val))
 :pattern ( (select lists r_82@@2))
)) (=> (forall ((r_82@@3 T@Ref) ) (!  (=> (and (select lists r_82@@3) (< NoPerm FullPerm)) (and (qpRange27 r_82@@3) (= (invRecv27 r_82@@3) r_82@@3)))
 :qid |stdinbpl.2184:26|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@0) r_82@@3 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) r_82@@3 val))
 :pattern ( (select lists r_82@@3))
)) (=> (and (forall ((o_4@@295 T@Ref) ) (!  (=> (and (select lists (invRecv27 o_4@@295)) (and (< NoPerm FullPerm) (qpRange27 o_4@@295))) (= (invRecv27 o_4@@295) o_4@@295))
 :qid |stdinbpl.2188:26|
 :skolemid |271|
 :pattern ( (invRecv27 o_4@@295))
)) (forall ((o_4@@296 T@Ref) ) (!  (and (=> (and (select lists (invRecv27 o_4@@296)) (and (< NoPerm FullPerm) (qpRange27 o_4@@296))) (and (= (invRecv27 o_4@@296) o_4@@296) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@296 val) (- (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) o_4@@296 val) FullPerm)))) (=> (not (and (select lists (invRecv27 o_4@@296)) (and (< NoPerm FullPerm) (qpRange27 o_4@@296)))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@296 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) o_4@@296 val))))
 :qid |stdinbpl.2194:26|
 :skolemid |272|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@296 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@297 T@Ref) (f_5@@269 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@15) o_4@@297 f_5@@269) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@16) o_4@@297 f_5@@269)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@16) o_4@@297 f_5@@269))
)) (forall ((o_4@@298 T@Ref) (f_5@@270 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@15) o_4@@298 f_5@@270) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) o_4@@298 f_5@@270)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@16) o_4@@298 f_5@@270))
))) (forall ((o_4@@299 T@Ref) (f_5@@271 T@Field_41147_4470) ) (!  (=> (not (= f_5@@271 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) o_4@@299 f_5@@271) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@299 f_5@@271)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@16) o_4@@299 f_5@@271))
))) (forall ((o_4@@300 T@Ref) (f_5@@272 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@15) o_4@@300 f_5@@272) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@16) o_4@@300 f_5@@272)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@16) o_4@@300 f_5@@272))
))) (forall ((o_4@@301 T@Ref) (f_5@@273 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@15) o_4@@301 f_5@@273) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@16) o_4@@301 f_5@@273)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@16) o_4@@301 f_5@@273))
))) (forall ((o_4@@302 T@Ref) (f_5@@274 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@15) o_4@@302 f_5@@274) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@16) o_4@@302 f_5@@274)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@16) o_4@@302 f_5@@274))
))) (forall ((o_4@@303 T@Ref) (f_5@@275 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@15) o_4@@303 f_5@@275) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@16) o_4@@303 f_5@@275)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@16) o_4@@303 f_5@@275))
))) (forall ((o_4@@304 T@Ref) (f_5@@276 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@15) o_4@@304 f_5@@276) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@16) o_4@@304 f_5@@276)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@16) o_4@@304 f_5@@276))
))) (forall ((o_4@@305 T@Ref) (f_5@@277 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) o_4@@305 f_5@@277) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@16) o_4@@305 f_5@@277)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@16) o_4@@305 f_5@@277))
))) (forall ((o_4@@306 T@Ref) (f_5@@278 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@15) o_4@@306 f_5@@278) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@16) o_4@@306 f_5@@278)))
 :qid |stdinbpl.2200:33|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@16) o_4@@306 f_5@@278))
))) (and (and (=> (= (ControlFlow 0 165) 162) anon190_Else_correct) (=> (= (ControlFlow 0 165) 47) anon191_Then_correct)) (=> (= (ControlFlow 0 165) 49) anon191_Else_correct))))))))))))
(let ((anon74_correct true))
(let ((anon189_Else_correct  (=> (and (not (and (select lists r_80) (not (select lists r_80)))) (= (ControlFlow 0 45) 42)) anon74_correct)))
(let ((anon189_Then_correct  (=> (and (select lists r_80) (not (select lists r_80))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (allSet Heap@0 r_80 length_2 v_2@@3)) (=> (allSet Heap@0 r_80 length_2 v_2@@3) (=> (= (ControlFlow 0 43) 42) anon74_correct))))))
(let ((anon71_correct  (=> (and (state Heap@0 Mask@0) (state Heap@0 Mask@0)) (and (=> (= (ControlFlow 0 168) (- 0 170)) (forall ((r_78 T@Ref) (r_78_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_78 r_78_1)) (and (select lists r_78) (not (select lists r_78)))) (and (select lists r_78_1) (not (select lists r_78_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_78 r_78_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.2115:21|
 :skolemid |260|
 :pattern ( (neverTriggered26 r_78) (neverTriggered26 r_78_1))
))) (=> (forall ((r_78@@0 T@Ref) (r_78_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_78@@0 r_78_1@@0)) (and (select lists r_78@@0) (not (select lists r_78@@0)))) (and (select lists r_78_1@@0) (not (select lists r_78_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_78@@0 r_78_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.2115:21|
 :skolemid |260|
 :pattern ( (neverTriggered26 r_78@@0) (neverTriggered26 r_78_1@@0))
)) (and (=> (= (ControlFlow 0 168) (- 0 169)) (forall ((r_78@@1 T@Ref) ) (!  (=> (and (select lists r_78@@1) (not (select lists r_78@@1))) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_78@@1 length_2)) FullPerm))
 :qid |stdinbpl.2122:21|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@0) null (list r_78@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_78@@1 length_2)))
 :pattern ( (select lists r_78@@1))
 :pattern ( (select lists r_78@@1))
))) (=> (forall ((r_78@@2 T@Ref) ) (!  (=> (and (select lists r_78@@2) (not (select lists r_78@@2))) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_78@@2 length_2)) FullPerm))
 :qid |stdinbpl.2122:21|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@0) null (list r_78@@2 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_78@@2 length_2)))
 :pattern ( (select lists r_78@@2))
 :pattern ( (select lists r_78@@2))
)) (=> (and (and (forall ((r_78@@3 T@Ref) ) (!  (=> (and (and (select lists r_78@@3) (not (select lists r_78@@3))) (< NoPerm FullPerm)) (and (= (invRecv26 r_78@@3 length_2) r_78@@3) (qpRange26 r_78@@3 length_2)))
 :qid |stdinbpl.2128:26|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@0) null (list r_78@@3 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_78@@3 length_2)))
 :pattern ( (select lists r_78@@3))
 :pattern ( (select lists r_78@@3))
)) (forall ((r_79_1 T@Ref) (i_15 Int) ) (!  (=> (and (and (and (select lists (invRecv26 r_79_1 i_15)) (not (select lists (invRecv26 r_79_1 i_15)))) (< NoPerm FullPerm)) (qpRange26 r_79_1 i_15)) (and (= (invRecv26 r_79_1 i_15) r_79_1) (= length_2 i_15)))
 :qid |stdinbpl.2132:26|
 :skolemid |263|
 :pattern ( (invRecv26 r_79_1 i_15))
))) (and (forall ((r_79_1@@0 T@Ref) (i_15@@0 Int) ) (!  (=> (and (and (and (select lists (invRecv26 r_79_1@@0 i_15@@0)) (not (select lists (invRecv26 r_79_1@@0 i_15@@0)))) (< NoPerm FullPerm)) (qpRange26 r_79_1@@0 i_15@@0)) (and (and (= (invRecv26 r_79_1@@0 i_15@@0) r_79_1@@0) (= length_2 i_15@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) null (list r_79_1@@0 i_15@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_79_1@@0 i_15@@0)) FullPerm))))
 :qid |stdinbpl.2138:26|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) null (list r_79_1@@0 i_15@@0)))
)) (forall ((r_79_1@@1 T@Ref) (i_15@@1 Int) ) (!  (=> (not (and (and (and (select lists (invRecv26 r_79_1@@1 i_15@@1)) (not (select lists (invRecv26 r_79_1@@1 i_15@@1)))) (< NoPerm FullPerm)) (qpRange26 r_79_1@@1 i_15@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) null (list r_79_1@@1 i_15@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) null (list r_79_1@@1 i_15@@1))))
 :qid |stdinbpl.2142:26|
 :skolemid |265|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) null (list r_79_1@@1 i_15@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@307 T@Ref) (f_5@@279 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@307 null)) (not (IsPredicateField_23476_4470 f_5@@279))) (not (= (getPredWandId_23476_4470 f_5@@279) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@0) o_4@@307 f_5@@279) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) o_4@@307 f_5@@279)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| Mask@0) o_4@@307 f_5@@279))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@15) o_4@@307 f_5@@279))
)) (forall ((o_4@@308 T@Ref) (f_5@@280 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@308 null)) (not (IsPredicateField_23478_23479 f_5@@280))) (not (= (getPredWandId_23476_23479 f_5@@280) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@0) o_4@@308 f_5@@280) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@15) o_4@@308 f_5@@280)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| Mask@0) o_4@@308 f_5@@280))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@15) o_4@@308 f_5@@280))
))) (forall ((o_4@@309 T@Ref) (f_5@@281 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@309 null)) (not (IsPredicateField_23476_111428 f_5@@281))) (not (= (getPredWandId_23476_23513 f_5@@281) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@0) o_4@@309 f_5@@281) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@15) o_4@@309 f_5@@281)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| Mask@0) o_4@@309 f_5@@281))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@15) o_4@@309 f_5@@281))
))) (forall ((o_4@@310 T@Ref) (f_5@@282 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@310 null)) (not (IsPredicateField_23476_53 f_5@@282))) (not (= (getPredWandId_23476_53 f_5@@282) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@0) o_4@@310 f_5@@282) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@15) o_4@@310 f_5@@282)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| Mask@0) o_4@@310 f_5@@282))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@15) o_4@@310 f_5@@282))
))) (forall ((o_4@@311 T@Ref) (f_5@@283 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@311 null)) (not (IsPredicateField_23476_122001 f_5@@283))) (not (= (getPredWandId_23476_131207 f_5@@283) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@0) o_4@@311 f_5@@283) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@15) o_4@@311 f_5@@283)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| Mask@0) o_4@@311 f_5@@283))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@15) o_4@@311 f_5@@283))
))) (forall ((o_4@@312 T@Ref) (f_5@@284 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@312 null)) (not (IsPredicateField_23512_4470 f_5@@284))) (not (= (getPredWandId_23512_4470 f_5@@284) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@0) o_4@@312 f_5@@284) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@15) o_4@@312 f_5@@284)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| Mask@0) o_4@@312 f_5@@284))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@15) o_4@@312 f_5@@284))
))) (forall ((o_4@@313 T@Ref) (f_5@@285 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@313 null)) (not (IsPredicateField_23512_23479 f_5@@285))) (not (= (getPredWandId_23512_23479 f_5@@285) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@0) o_4@@313 f_5@@285) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@15) o_4@@313 f_5@@285)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| Mask@0) o_4@@313 f_5@@285))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@15) o_4@@313 f_5@@285))
))) (forall ((o_4@@314 T@Ref) (f_5@@286 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@314 null)) (not (IsPredicateField_23512_23513 f_5@@286))) (not (= (getPredWandId_23512_23513 f_5@@286) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) o_4@@314 f_5@@286) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) o_4@@314 f_5@@286)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| Mask@0) o_4@@314 f_5@@286))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@15) o_4@@314 f_5@@286))
))) (forall ((o_4@@315 T@Ref) (f_5@@287 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@315 null)) (not (IsPredicateField_23512_53 f_5@@287))) (not (= (getPredWandId_23512_53 f_5@@287) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@0) o_4@@315 f_5@@287) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@15) o_4@@315 f_5@@287)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| Mask@0) o_4@@315 f_5@@287))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@15) o_4@@315 f_5@@287))
))) (forall ((o_4@@316 T@Ref) (f_5@@288 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@316 null)) (not (IsPredicateField_23512_121198 f_5@@288))) (not (= (getPredWandId_23512_132016 f_5@@288) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@0) o_4@@316 f_5@@288) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@15) o_4@@316 f_5@@288)))
 :qid |stdinbpl.2148:33|
 :skolemid |266|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| Mask@0) o_4@@316 f_5@@288))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@15) o_4@@316 f_5@@288))
))) (and (and (=> (= (ControlFlow 0 168) 165) anon188_Else_correct) (=> (= (ControlFlow 0 168) 43) anon189_Then_correct)) (=> (= (ControlFlow 0 168) 45) anon189_Else_correct)))))))))))
(let ((anon187_Else_correct  (=> (and (and (>= 0 (- length_2 1)) (= Mask@0 QPMask@12)) (and (= Heap@0 ExhaleHeap@0) (= (ControlFlow 0 176) 168))) anon71_correct)))
(let ((anon187_Then_correct  (=> (and (> (- length_2 1) 0) (= arg_length@0 (- length_2 1))) (and (=> (= (ControlFlow 0 171) (- 0 175)) (> arg_length@0 0)) (=> (> arg_length@0 0) (and (=> (= (ControlFlow 0 171) (- 0 174)) (forall ((r_72 T@Ref) (r_72_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_72 r_72_1)) (select sNext@1 r_72)) (select sNext@1 r_72_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_72 r_72_1)) (not (= arg_length@0 arg_length@0))))
 :qid |stdinbpl.2007:23|
 :skolemid |246|
 :pattern ( (neverTriggered24 r_72) (neverTriggered24 r_72_1))
))) (=> (forall ((r_72@@0 T@Ref) (r_72_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_72@@0 r_72_1@@0)) (select sNext@1 r_72@@0)) (select sNext@1 r_72_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_72@@0 r_72_1@@0)) (not (= arg_length@0 arg_length@0))))
 :qid |stdinbpl.2007:23|
 :skolemid |246|
 :pattern ( (neverTriggered24 r_72@@0) (neverTriggered24 r_72_1@@0))
)) (and (=> (= (ControlFlow 0 171) (- 0 173)) (forall ((r_72@@1 T@Ref) ) (!  (=> (select sNext@1 r_72@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_72@@1 arg_length@0)) FullPerm))
 :qid |stdinbpl.2014:23|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_72@@1 arg_length@0)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_72@@1 arg_length@0)))
 :pattern ( (select sNext@1 r_72@@1))
))) (=> (forall ((r_72@@2 T@Ref) ) (!  (=> (select sNext@1 r_72@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_72@@2 arg_length@0)) FullPerm))
 :qid |stdinbpl.2014:23|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_72@@2 arg_length@0)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_72@@2 arg_length@0)))
 :pattern ( (select sNext@1 r_72@@2))
)) (=> (and (and (forall ((r_72@@3 T@Ref) ) (!  (=> (and (select sNext@1 r_72@@3) (< NoPerm FullPerm)) (and (= (invRecv24 r_72@@3 arg_length@0) r_72@@3) (qpRange24 r_72@@3 arg_length@0)))
 :qid |stdinbpl.2020:28|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_72@@3 arg_length@0)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_72@@3 arg_length@0)))
 :pattern ( (select sNext@1 r_72@@3))
)) (forall ((r_73_1 T@Ref) (i_13_1 Int) ) (!  (=> (and (and (select sNext@1 (invRecv24 r_73_1 i_13_1)) (< NoPerm FullPerm)) (qpRange24 r_73_1 i_13_1)) (and (= (invRecv24 r_73_1 i_13_1) r_73_1) (= arg_length@0 i_13_1)))
 :qid |stdinbpl.2024:28|
 :skolemid |249|
 :pattern ( (invRecv24 r_73_1 i_13_1))
))) (and (forall ((r_73_1@@0 T@Ref) (i_13_1@@0 Int) ) (!  (=> (and (and (select sNext@1 (invRecv24 r_73_1@@0 i_13_1@@0)) (< NoPerm FullPerm)) (qpRange24 r_73_1@@0 i_13_1@@0)) (and (and (= (invRecv24 r_73_1@@0 i_13_1@@0) r_73_1@@0) (= arg_length@0 i_13_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_73_1@@0 i_13_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_73_1@@0 i_13_1@@0)) FullPerm))))
 :qid |stdinbpl.2030:28|
 :skolemid |250|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_73_1@@0 i_13_1@@0)))
)) (forall ((r_73_1@@1 T@Ref) (i_13_1@@1 Int) ) (!  (=> (not (and (and (select sNext@1 (invRecv24 r_73_1@@1 i_13_1@@1)) (< NoPerm FullPerm)) (qpRange24 r_73_1@@1 i_13_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_73_1@@1 i_13_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) null (list r_73_1@@1 i_13_1@@1))))
 :qid |stdinbpl.2034:28|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_73_1@@1 i_13_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@317 T@Ref) (f_5@@289 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@317 null)) (not (IsPredicateField_23476_4470 f_5@@289))) (not (= (getPredWandId_23476_4470 f_5@@289) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@317 f_5@@289) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@13) o_4@@317 f_5@@289)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@317 f_5@@289))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@13) o_4@@317 f_5@@289))
)) (forall ((o_4@@318 T@Ref) (f_5@@290 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@318 null)) (not (IsPredicateField_23478_23479 f_5@@290))) (not (= (getPredWandId_23476_23479 f_5@@290) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@12) o_4@@318 f_5@@290) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@13) o_4@@318 f_5@@290)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@12) o_4@@318 f_5@@290))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@13) o_4@@318 f_5@@290))
))) (forall ((o_4@@319 T@Ref) (f_5@@291 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@319 null)) (not (IsPredicateField_23476_111428 f_5@@291))) (not (= (getPredWandId_23476_23513 f_5@@291) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@12) o_4@@319 f_5@@291) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@13) o_4@@319 f_5@@291)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@12) o_4@@319 f_5@@291))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@13) o_4@@319 f_5@@291))
))) (forall ((o_4@@320 T@Ref) (f_5@@292 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@320 null)) (not (IsPredicateField_23476_53 f_5@@292))) (not (= (getPredWandId_23476_53 f_5@@292) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@12) o_4@@320 f_5@@292) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@13) o_4@@320 f_5@@292)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@12) o_4@@320 f_5@@292))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@13) o_4@@320 f_5@@292))
))) (forall ((o_4@@321 T@Ref) (f_5@@293 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@321 null)) (not (IsPredicateField_23476_122001 f_5@@293))) (not (= (getPredWandId_23476_131207 f_5@@293) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@12) o_4@@321 f_5@@293) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@13) o_4@@321 f_5@@293)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@12) o_4@@321 f_5@@293))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@13) o_4@@321 f_5@@293))
))) (forall ((o_4@@322 T@Ref) (f_5@@294 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@322 null)) (not (IsPredicateField_23512_4470 f_5@@294))) (not (= (getPredWandId_23512_4470 f_5@@294) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@12) o_4@@322 f_5@@294) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@13) o_4@@322 f_5@@294)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@12) o_4@@322 f_5@@294))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@13) o_4@@322 f_5@@294))
))) (forall ((o_4@@323 T@Ref) (f_5@@295 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@323 null)) (not (IsPredicateField_23512_23479 f_5@@295))) (not (= (getPredWandId_23512_23479 f_5@@295) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@12) o_4@@323 f_5@@295) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@13) o_4@@323 f_5@@295)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@12) o_4@@323 f_5@@295))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@13) o_4@@323 f_5@@295))
))) (forall ((o_4@@324 T@Ref) (f_5@@296 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@324 null)) (not (IsPredicateField_23512_23513 f_5@@296))) (not (= (getPredWandId_23512_23513 f_5@@296) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) o_4@@324 f_5@@296) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) o_4@@324 f_5@@296)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) o_4@@324 f_5@@296))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) o_4@@324 f_5@@296))
))) (forall ((o_4@@325 T@Ref) (f_5@@297 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@325 null)) (not (IsPredicateField_23512_53 f_5@@297))) (not (= (getPredWandId_23512_53 f_5@@297) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@12) o_4@@325 f_5@@297) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@13) o_4@@325 f_5@@297)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@12) o_4@@325 f_5@@297))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@13) o_4@@325 f_5@@297))
))) (forall ((o_4@@326 T@Ref) (f_5@@298 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@326 null)) (not (IsPredicateField_23512_121198 f_5@@298))) (not (= (getPredWandId_23512_132016 f_5@@298) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@12) o_4@@326 f_5@@298) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@13) o_4@@326 f_5@@298)))
 :qid |stdinbpl.2040:35|
 :skolemid |252|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@12) o_4@@326 f_5@@298))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@13) o_4@@326 f_5@@298))
))) (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@13)) (and (=> (= (ControlFlow 0 171) (- 0 172)) (forall ((r_74 T@Ref) (r_74_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_74 r_74_1)) (select sNext@1 r_74)) (select sNext@1 r_74_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_74 r_74_1)) (not (= arg_length@0 arg_length@0))))
 :qid |stdinbpl.2055:23|
 :skolemid |253|
 :pattern ( (neverTriggered25 r_74) (neverTriggered25 r_74_1))
))) (=> (forall ((r_74@@0 T@Ref) (r_74_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_74@@0 r_74_1@@0)) (select sNext@1 r_74@@0)) (select sNext@1 r_74_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_74@@0 r_74_1@@0)) (not (= arg_length@0 arg_length@0))))
 :qid |stdinbpl.2055:23|
 :skolemid |253|
 :pattern ( (neverTriggered25 r_74@@0) (neverTriggered25 r_74_1@@0))
)) (=> (forall ((r_74@@1 T@Ref) ) (!  (=> (and (select sNext@1 r_74@@1) (< NoPerm FullPerm)) (and (= (invRecv25 r_74@@1 arg_length@0) r_74@@1) (qpRange25 r_74@@1 arg_length@0)))
 :qid |stdinbpl.2061:28|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@1) null (list r_74@@1 arg_length@0)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_74@@1 arg_length@0)))
 :pattern ( (select sNext@1 r_74@@1))
)) (=> (and (forall ((r_75_1 T@Ref) (i_14_1 Int) ) (!  (=> (and (and (select sNext@1 (invRecv25 r_75_1 i_14_1)) (< NoPerm FullPerm)) (qpRange25 r_75_1 i_14_1)) (and (= (invRecv25 r_75_1 i_14_1) r_75_1) (= arg_length@0 i_14_1)))
 :qid |stdinbpl.2065:28|
 :skolemid |255|
 :pattern ( (invRecv25 r_75_1 i_14_1))
)) (forall ((r_75_1@@0 T@Ref) (i_14_1@@0 Int) ) (!  (=> (and (and (select sNext@1 (invRecv25 r_75_1@@0 i_14_1@@0)) (< NoPerm FullPerm)) (qpRange25 r_75_1@@0 i_14_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv25 r_75_1@@0 i_14_1@@0) r_75_1@@0) (= arg_length@0 i_14_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) null (list r_75_1@@0 i_14_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_75_1@@0 i_14_1@@0)) FullPerm))))
 :qid |stdinbpl.2071:28|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) null (list r_75_1@@0 i_14_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@327 T@Ref) (f_5@@299 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@327 null)) (not (IsPredicateField_23476_4470 f_5@@299))) (not (= (getPredWandId_23476_4470 f_5@@299) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@13) o_4@@327 f_5@@299) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@14) o_4@@327 f_5@@299)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@13) o_4@@327 f_5@@299))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@14) o_4@@327 f_5@@299))
)) (forall ((o_4@@328 T@Ref) (f_5@@300 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@328 null)) (not (IsPredicateField_23478_23479 f_5@@300))) (not (= (getPredWandId_23476_23479 f_5@@300) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@13) o_4@@328 f_5@@300) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@14) o_4@@328 f_5@@300)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@13) o_4@@328 f_5@@300))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@14) o_4@@328 f_5@@300))
))) (forall ((o_4@@329 T@Ref) (f_5@@301 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@329 null)) (not (IsPredicateField_23476_111428 f_5@@301))) (not (= (getPredWandId_23476_23513 f_5@@301) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@13) o_4@@329 f_5@@301) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@14) o_4@@329 f_5@@301)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@13) o_4@@329 f_5@@301))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@14) o_4@@329 f_5@@301))
))) (forall ((o_4@@330 T@Ref) (f_5@@302 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@330 null)) (not (IsPredicateField_23476_53 f_5@@302))) (not (= (getPredWandId_23476_53 f_5@@302) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@13) o_4@@330 f_5@@302) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@14) o_4@@330 f_5@@302)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@13) o_4@@330 f_5@@302))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@14) o_4@@330 f_5@@302))
))) (forall ((o_4@@331 T@Ref) (f_5@@303 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@331 null)) (not (IsPredicateField_23476_122001 f_5@@303))) (not (= (getPredWandId_23476_131207 f_5@@303) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@13) o_4@@331 f_5@@303) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@14) o_4@@331 f_5@@303)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@13) o_4@@331 f_5@@303))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@14) o_4@@331 f_5@@303))
))) (forall ((o_4@@332 T@Ref) (f_5@@304 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@332 null)) (not (IsPredicateField_23512_4470 f_5@@304))) (not (= (getPredWandId_23512_4470 f_5@@304) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@13) o_4@@332 f_5@@304) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@14) o_4@@332 f_5@@304)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@13) o_4@@332 f_5@@304))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@14) o_4@@332 f_5@@304))
))) (forall ((o_4@@333 T@Ref) (f_5@@305 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@333 null)) (not (IsPredicateField_23512_23479 f_5@@305))) (not (= (getPredWandId_23512_23479 f_5@@305) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@13) o_4@@333 f_5@@305) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@14) o_4@@333 f_5@@305)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@13) o_4@@333 f_5@@305))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@14) o_4@@333 f_5@@305))
))) (forall ((o_4@@334 T@Ref) (f_5@@306 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@334 null)) (not (IsPredicateField_23512_23513 f_5@@306))) (not (= (getPredWandId_23512_23513 f_5@@306) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) o_4@@334 f_5@@306) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) o_4@@334 f_5@@306)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) o_4@@334 f_5@@306))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) o_4@@334 f_5@@306))
))) (forall ((o_4@@335 T@Ref) (f_5@@307 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@335 null)) (not (IsPredicateField_23512_53 f_5@@307))) (not (= (getPredWandId_23512_53 f_5@@307) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@13) o_4@@335 f_5@@307) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@14) o_4@@335 f_5@@307)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@13) o_4@@335 f_5@@307))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@14) o_4@@335 f_5@@307))
))) (forall ((o_4@@336 T@Ref) (f_5@@308 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@336 null)) (not (IsPredicateField_23512_121198 f_5@@308))) (not (= (getPredWandId_23512_132016 f_5@@308) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@13) o_4@@336 f_5@@308) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@14) o_4@@336 f_5@@308)))
 :qid |stdinbpl.2077:35|
 :skolemid |257|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@13) o_4@@336 f_5@@308))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@14) o_4@@336 f_5@@308))
))) (forall ((r_75_1@@1 T@Ref) (i_14_1@@1 Int) ) (!  (=> (not (and (and (select sNext@1 (invRecv25 r_75_1@@1 i_14_1@@1)) (< NoPerm FullPerm)) (qpRange25 r_75_1@@1 i_14_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) null (list r_75_1@@1 i_14_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@13) null (list r_75_1@@1 i_14_1@@1))))
 :qid |stdinbpl.2081:28|
 :skolemid |258|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@14) null (list r_75_1@@1 i_14_1@@1)))
))) (and (and (and (state ExhaleHeap@1 QPMask@14) (state ExhaleHeap@1 QPMask@14)) (and (forall ((r_77 T@Ref) ) (!  (=> (select sNext@1 r_77) (allSet ExhaleHeap@1 r_77 arg_length@0 v_2@@3))
 :qid |stdinbpl.2088:26|
 :skolemid |259|
 :pattern ( (select sNext@1 r_77))
 :pattern ( (|allSet#frame| (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@1) null (list r_77 arg_length@0)) r_77 arg_length@0 v_2@@3))
)) (state ExhaleHeap@1 QPMask@14))) (and (and (state ExhaleHeap@1 QPMask@14) (= Mask@0 QPMask@14)) (and (= Heap@0 ExhaleHeap@1) (= (ControlFlow 0 171) 168))))) anon71_correct))))))))))))))))
(let ((anon175_Else_correct  (=> (and (not (> (|Set#Card_23552| s_2@0) 0)) (state ExhaleHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 177) (- 0 181)) (forall ((r_62 T@Ref) (r_62_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_62 r_62_1)) (select s_2@0 r_62)) (select s_2@0 r_62_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_62 r_62_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.1836:19|
 :skolemid |219|
 :pattern ( (neverTriggered20 r_62) (neverTriggered20 r_62_1))
))) (=> (forall ((r_62@@0 T@Ref) (r_62_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_62@@0 r_62_1@@0)) (select s_2@0 r_62@@0)) (select s_2@0 r_62_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_62@@0 r_62_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.1836:19|
 :skolemid |219|
 :pattern ( (neverTriggered20 r_62@@0) (neverTriggered20 r_62_1@@0))
)) (=> (forall ((r_62@@1 T@Ref) ) (!  (=> (and (select s_2@0 r_62@@1) (< NoPerm FullPerm)) (and (= (invRecv20 r_62@@1 length_2) r_62@@1) (qpRange20 r_62@@1 length_2)))
 :qid |stdinbpl.1842:24|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_62@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_62@@1 length_2)))
 :pattern ( (select s_2@0 r_62@@1))
)) (=> (and (forall ((r_63_1 T@Ref) (i_11_1 Int) ) (!  (=> (and (and (select s_2@0 (invRecv20 r_63_1 i_11_1)) (< NoPerm FullPerm)) (qpRange20 r_63_1 i_11_1)) (and (= (invRecv20 r_63_1 i_11_1) r_63_1) (= length_2 i_11_1)))
 :qid |stdinbpl.1846:24|
 :skolemid |221|
 :pattern ( (invRecv20 r_63_1 i_11_1))
)) (forall ((r_63_1@@0 T@Ref) (i_11_1@@0 Int) ) (!  (=> (and (and (select s_2@0 (invRecv20 r_63_1@@0 i_11_1@@0)) (< NoPerm FullPerm)) (qpRange20 r_63_1@@0 i_11_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv20 r_63_1@@0 i_11_1@@0) r_63_1@@0) (= length_2 i_11_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) null (list r_63_1@@0 i_11_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_63_1@@0 i_11_1@@0)) FullPerm))))
 :qid |stdinbpl.1852:24|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) null (list r_63_1@@0 i_11_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@337 T@Ref) (f_5@@309 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@337 null)) (not (IsPredicateField_23476_4470 f_5@@309))) (not (= (getPredWandId_23476_4470 f_5@@309) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@337 f_5@@309) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@9) o_4@@337 f_5@@309)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@337 f_5@@309))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@9) o_4@@337 f_5@@309))
)) (forall ((o_4@@338 T@Ref) (f_5@@310 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@338 null)) (not (IsPredicateField_23478_23479 f_5@@310))) (not (= (getPredWandId_23476_23479 f_5@@310) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@338 f_5@@310) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@338 f_5@@310)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@338 f_5@@310))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@338 f_5@@310))
))) (forall ((o_4@@339 T@Ref) (f_5@@311 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@339 null)) (not (IsPredicateField_23476_111428 f_5@@311))) (not (= (getPredWandId_23476_23513 f_5@@311) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@339 f_5@@311) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@9) o_4@@339 f_5@@311)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@339 f_5@@311))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@9) o_4@@339 f_5@@311))
))) (forall ((o_4@@340 T@Ref) (f_5@@312 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@340 null)) (not (IsPredicateField_23476_53 f_5@@312))) (not (= (getPredWandId_23476_53 f_5@@312) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@340 f_5@@312) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@9) o_4@@340 f_5@@312)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@340 f_5@@312))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@9) o_4@@340 f_5@@312))
))) (forall ((o_4@@341 T@Ref) (f_5@@313 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@341 null)) (not (IsPredicateField_23476_122001 f_5@@313))) (not (= (getPredWandId_23476_131207 f_5@@313) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@341 f_5@@313) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@9) o_4@@341 f_5@@313)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@341 f_5@@313))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@9) o_4@@341 f_5@@313))
))) (forall ((o_4@@342 T@Ref) (f_5@@314 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@342 null)) (not (IsPredicateField_23512_4470 f_5@@314))) (not (= (getPredWandId_23512_4470 f_5@@314) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@342 f_5@@314) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@9) o_4@@342 f_5@@314)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@342 f_5@@314))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@9) o_4@@342 f_5@@314))
))) (forall ((o_4@@343 T@Ref) (f_5@@315 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@343 null)) (not (IsPredicateField_23512_23479 f_5@@315))) (not (= (getPredWandId_23512_23479 f_5@@315) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@343 f_5@@315) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@9) o_4@@343 f_5@@315)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@343 f_5@@315))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@9) o_4@@343 f_5@@315))
))) (forall ((o_4@@344 T@Ref) (f_5@@316 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@344 null)) (not (IsPredicateField_23512_23513 f_5@@316))) (not (= (getPredWandId_23512_23513 f_5@@316) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@344 f_5@@316) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) o_4@@344 f_5@@316)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@344 f_5@@316))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) o_4@@344 f_5@@316))
))) (forall ((o_4@@345 T@Ref) (f_5@@317 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@345 null)) (not (IsPredicateField_23512_53 f_5@@317))) (not (= (getPredWandId_23512_53 f_5@@317) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@345 f_5@@317) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@9) o_4@@345 f_5@@317)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@345 f_5@@317))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@9) o_4@@345 f_5@@317))
))) (forall ((o_4@@346 T@Ref) (f_5@@318 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@346 null)) (not (IsPredicateField_23512_121198 f_5@@318))) (not (= (getPredWandId_23512_132016 f_5@@318) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@346 f_5@@318) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@9) o_4@@346 f_5@@318)))
 :qid |stdinbpl.1858:31|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@346 f_5@@318))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@9) o_4@@346 f_5@@318))
))) (and (forall ((r_63_1@@1 T@Ref) (i_11_1@@1 Int) ) (!  (=> (not (and (and (select s_2@0 (invRecv20 r_63_1@@1 i_11_1@@1)) (< NoPerm FullPerm)) (qpRange20 r_63_1@@1 i_11_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) null (list r_63_1@@1 i_11_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_63_1@@1 i_11_1@@1))))
 :qid |stdinbpl.1862:24|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) null (list r_63_1@@1 i_11_1@@1)))
)) (state ExhaleHeap@0 QPMask@9))) (and (=> (= (ControlFlow 0 177) (- 0 180)) (forall ((r_65 T@Ref) (r_65_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_65 r_65_1)) (and (select lists r_65) (not (select s_2@0 r_65)))) (and (select lists r_65_1) (not (select s_2@0 r_65_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_65 r_65_1)))
 :qid |stdinbpl.1870:17|
 :skolemid |225|
))) (=> (forall ((r_65@@0 T@Ref) (r_65_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_65@@0 r_65_1@@0)) (and (select lists r_65@@0) (not (select s_2@0 r_65@@0)))) (and (select lists r_65_1@@0) (not (select s_2@0 r_65_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_65@@0 r_65_1@@0)))
 :qid |stdinbpl.1870:17|
 :skolemid |225|
)) (=> (and (and (forall ((r_65@@1 T@Ref) ) (!  (=> (and (and (select lists r_65@@1) (not (select s_2@0 r_65@@1))) (< NoPerm FullPerm)) (and (qpRange21 r_65@@1) (= (invRecv21 r_65@@1) r_65@@1)))
 :qid |stdinbpl.1876:24|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_65@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) r_65@@1 next))
 :pattern ( (select lists r_65@@1))
 :pattern ( (select s_2@0 r_65@@1))
)) (forall ((o_4@@347 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv21 o_4@@347)) (not (select s_2@0 (invRecv21 o_4@@347)))) (< NoPerm FullPerm)) (qpRange21 o_4@@347)) (= (invRecv21 o_4@@347) o_4@@347))
 :qid |stdinbpl.1880:24|
 :skolemid |227|
 :pattern ( (invRecv21 o_4@@347))
))) (and (forall ((r_65@@2 T@Ref) ) (!  (=> (and (select lists r_65@@2) (not (select s_2@0 r_65@@2))) (not (= r_65@@2 null)))
 :qid |stdinbpl.1886:24|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_65@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) r_65@@2 next))
 :pattern ( (select lists r_65@@2))
 :pattern ( (select s_2@0 r_65@@2))
)) (forall ((o_4@@348 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv21 o_4@@348)) (not (select s_2@0 (invRecv21 o_4@@348)))) (< NoPerm FullPerm)) (qpRange21 o_4@@348)) (and (=> (< NoPerm FullPerm) (= (invRecv21 o_4@@348) o_4@@348)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@348 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@348 next) FullPerm)))) (=> (not (and (and (and (select lists (invRecv21 o_4@@348)) (not (select s_2@0 (invRecv21 o_4@@348)))) (< NoPerm FullPerm)) (qpRange21 o_4@@348))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@348 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@348 next))))
 :qid |stdinbpl.1892:24|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@348 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@349 T@Ref) (f_5@@319 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@9) o_4@@349 f_5@@319) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@10) o_4@@349 f_5@@319)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@9) o_4@@349 f_5@@319))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@10) o_4@@349 f_5@@319))
)) (forall ((o_4@@350 T@Ref) (f_5@@320 T@Field_34811_34812) ) (!  (=> (not (= f_5@@320 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@350 f_5@@320) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@350 f_5@@320)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@9) o_4@@350 f_5@@320))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@350 f_5@@320))
))) (forall ((o_4@@351 T@Ref) (f_5@@321 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@9) o_4@@351 f_5@@321) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@10) o_4@@351 f_5@@321)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@9) o_4@@351 f_5@@321))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@10) o_4@@351 f_5@@321))
))) (forall ((o_4@@352 T@Ref) (f_5@@322 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@9) o_4@@352 f_5@@322) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@10) o_4@@352 f_5@@322)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@9) o_4@@352 f_5@@322))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@10) o_4@@352 f_5@@322))
))) (forall ((o_4@@353 T@Ref) (f_5@@323 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@9) o_4@@353 f_5@@323) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@10) o_4@@353 f_5@@323)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@9) o_4@@353 f_5@@323))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@10) o_4@@353 f_5@@323))
))) (forall ((o_4@@354 T@Ref) (f_5@@324 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@9) o_4@@354 f_5@@324) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@10) o_4@@354 f_5@@324)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@9) o_4@@354 f_5@@324))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@10) o_4@@354 f_5@@324))
))) (forall ((o_4@@355 T@Ref) (f_5@@325 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@9) o_4@@355 f_5@@325) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@10) o_4@@355 f_5@@325)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@9) o_4@@355 f_5@@325))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@10) o_4@@355 f_5@@325))
))) (forall ((o_4@@356 T@Ref) (f_5@@326 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@9) o_4@@356 f_5@@326) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@10) o_4@@356 f_5@@326)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@9) o_4@@356 f_5@@326))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@10) o_4@@356 f_5@@326))
))) (forall ((o_4@@357 T@Ref) (f_5@@327 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) o_4@@357 f_5@@327) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) o_4@@357 f_5@@327)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@9) o_4@@357 f_5@@327))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) o_4@@357 f_5@@327))
))) (forall ((o_4@@358 T@Ref) (f_5@@328 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@9) o_4@@358 f_5@@328) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@10) o_4@@358 f_5@@328)))
 :qid |stdinbpl.1896:31|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@9) o_4@@358 f_5@@328))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@10) o_4@@358 f_5@@328))
))) (state ExhaleHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 177) (- 0 179)) (forall ((r_66 T@Ref) (r_66_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_66 r_66_1)) (select sNext@1 r_66)) (select sNext@1 r_66_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_66 r_66_1)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1906:19|
 :skolemid |231|
 :pattern ( (neverTriggered22 r_66) (neverTriggered22 r_66_1))
))) (=> (forall ((r_66@@0 T@Ref) (r_66_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_66@@0 r_66_1@@0)) (select sNext@1 r_66@@0)) (select sNext@1 r_66_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_66@@0 r_66_1@@0)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1906:19|
 :skolemid |231|
 :pattern ( (neverTriggered22 r_66@@0) (neverTriggered22 r_66_1@@0))
)) (=> (forall ((r_66@@1 T@Ref) ) (!  (=> (and (select sNext@1 r_66@@1) (< NoPerm FullPerm)) (and (= (invRecv22 r_66@@1 (- length_2 1)) r_66@@1) (qpRange22 r_66@@1 (- length_2 1))))
 :qid |stdinbpl.1912:24|
 :skolemid |232|
 :pattern ( (select sNext@1 r_66@@1))
)) (=> (and (forall ((r_67_1 T@Ref) (i_12_1 Int) ) (!  (=> (and (and (select sNext@1 (invRecv22 r_67_1 i_12_1)) (< NoPerm FullPerm)) (qpRange22 r_67_1 i_12_1)) (and (= (invRecv22 r_67_1 i_12_1) r_67_1) (= (- length_2 1) i_12_1)))
 :qid |stdinbpl.1916:24|
 :skolemid |233|
 :pattern ( (invRecv22 r_67_1 i_12_1))
)) (forall ((r_67_1@@0 T@Ref) (i_12_1@@0 Int) ) (!  (=> (and (and (select sNext@1 (invRecv22 r_67_1@@0 i_12_1@@0)) (< NoPerm FullPerm)) (qpRange22 r_67_1@@0 i_12_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv22 r_67_1@@0 i_12_1@@0) r_67_1@@0) (= (- length_2 1) i_12_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) null (list r_67_1@@0 i_12_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) null (list r_67_1@@0 i_12_1@@0)) FullPerm))))
 :qid |stdinbpl.1922:24|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) null (list r_67_1@@0 i_12_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@359 T@Ref) (f_5@@329 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@359 null)) (not (IsPredicateField_23476_4470 f_5@@329))) (not (= (getPredWandId_23476_4470 f_5@@329) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@10) o_4@@359 f_5@@329) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@359 f_5@@329)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@10) o_4@@359 f_5@@329))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@359 f_5@@329))
)) (forall ((o_4@@360 T@Ref) (f_5@@330 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@360 null)) (not (IsPredicateField_23478_23479 f_5@@330))) (not (= (getPredWandId_23476_23479 f_5@@330) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@360 f_5@@330) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@11) o_4@@360 f_5@@330)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@10) o_4@@360 f_5@@330))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@11) o_4@@360 f_5@@330))
))) (forall ((o_4@@361 T@Ref) (f_5@@331 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@361 null)) (not (IsPredicateField_23476_111428 f_5@@331))) (not (= (getPredWandId_23476_23513 f_5@@331) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@10) o_4@@361 f_5@@331) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@11) o_4@@361 f_5@@331)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@10) o_4@@361 f_5@@331))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@11) o_4@@361 f_5@@331))
))) (forall ((o_4@@362 T@Ref) (f_5@@332 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@362 null)) (not (IsPredicateField_23476_53 f_5@@332))) (not (= (getPredWandId_23476_53 f_5@@332) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@10) o_4@@362 f_5@@332) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@11) o_4@@362 f_5@@332)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@10) o_4@@362 f_5@@332))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@11) o_4@@362 f_5@@332))
))) (forall ((o_4@@363 T@Ref) (f_5@@333 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@363 null)) (not (IsPredicateField_23476_122001 f_5@@333))) (not (= (getPredWandId_23476_131207 f_5@@333) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@10) o_4@@363 f_5@@333) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@11) o_4@@363 f_5@@333)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@10) o_4@@363 f_5@@333))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@11) o_4@@363 f_5@@333))
))) (forall ((o_4@@364 T@Ref) (f_5@@334 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@364 null)) (not (IsPredicateField_23512_4470 f_5@@334))) (not (= (getPredWandId_23512_4470 f_5@@334) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@10) o_4@@364 f_5@@334) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@11) o_4@@364 f_5@@334)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@10) o_4@@364 f_5@@334))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@11) o_4@@364 f_5@@334))
))) (forall ((o_4@@365 T@Ref) (f_5@@335 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@365 null)) (not (IsPredicateField_23512_23479 f_5@@335))) (not (= (getPredWandId_23512_23479 f_5@@335) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@10) o_4@@365 f_5@@335) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@11) o_4@@365 f_5@@335)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@10) o_4@@365 f_5@@335))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@11) o_4@@365 f_5@@335))
))) (forall ((o_4@@366 T@Ref) (f_5@@336 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@366 null)) (not (IsPredicateField_23512_23513 f_5@@336))) (not (= (getPredWandId_23512_23513 f_5@@336) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) o_4@@366 f_5@@336) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) o_4@@366 f_5@@336)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) o_4@@366 f_5@@336))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) o_4@@366 f_5@@336))
))) (forall ((o_4@@367 T@Ref) (f_5@@337 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@367 null)) (not (IsPredicateField_23512_53 f_5@@337))) (not (= (getPredWandId_23512_53 f_5@@337) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@10) o_4@@367 f_5@@337) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@11) o_4@@367 f_5@@337)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@10) o_4@@367 f_5@@337))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@11) o_4@@367 f_5@@337))
))) (forall ((o_4@@368 T@Ref) (f_5@@338 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@368 null)) (not (IsPredicateField_23512_121198 f_5@@338))) (not (= (getPredWandId_23512_132016 f_5@@338) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@10) o_4@@368 f_5@@338) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@11) o_4@@368 f_5@@338)))
 :qid |stdinbpl.1928:31|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@10) o_4@@368 f_5@@338))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@11) o_4@@368 f_5@@338))
))) (and (forall ((r_67_1@@1 T@Ref) (i_12_1@@1 Int) ) (!  (=> (not (and (and (select sNext@1 (invRecv22 r_67_1@@1 i_12_1@@1)) (< NoPerm FullPerm)) (qpRange22 r_67_1@@1 i_12_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) null (list r_67_1@@1 i_12_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@10) null (list r_67_1@@1 i_12_1@@1))))
 :qid |stdinbpl.1932:24|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) null (list r_67_1@@1 i_12_1@@1)))
)) (state ExhaleHeap@0 QPMask@11))) (and (=> (= (ControlFlow 0 177) (- 0 178)) (forall ((r_69 T@Ref) (r_69_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_69 r_69_1)) (and (select lists r_69) (not (select s_2@0 r_69)))) (and (select lists r_69_1) (not (select s_2@0 r_69_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_69 r_69_1)))
 :qid |stdinbpl.1940:17|
 :skolemid |237|
))) (=> (forall ((r_69@@0 T@Ref) (r_69_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_69@@0 r_69_1@@0)) (and (select lists r_69@@0) (not (select s_2@0 r_69@@0)))) (and (select lists r_69_1@@0) (not (select s_2@0 r_69_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_69@@0 r_69_1@@0)))
 :qid |stdinbpl.1940:17|
 :skolemid |237|
)) (=> (and (and (forall ((r_69@@1 T@Ref) ) (!  (=> (and (and (select lists r_69@@1) (not (select s_2@0 r_69@@1))) (< NoPerm FullPerm)) (and (qpRange23 r_69@@1) (= (invRecv23 r_69@@1) r_69@@1)))
 :qid |stdinbpl.1946:24|
 :skolemid |238|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_69@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) r_69@@1 val))
 :pattern ( (select lists r_69@@1))
 :pattern ( (select s_2@0 r_69@@1))
)) (forall ((o_4@@369 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv23 o_4@@369)) (not (select s_2@0 (invRecv23 o_4@@369)))) (< NoPerm FullPerm)) (qpRange23 o_4@@369)) (= (invRecv23 o_4@@369) o_4@@369))
 :qid |stdinbpl.1950:24|
 :skolemid |239|
 :pattern ( (invRecv23 o_4@@369))
))) (and (forall ((r_69@@2 T@Ref) ) (!  (=> (and (select lists r_69@@2) (not (select s_2@0 r_69@@2))) (not (= r_69@@2 null)))
 :qid |stdinbpl.1956:24|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_69@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) r_69@@2 val))
 :pattern ( (select lists r_69@@2))
 :pattern ( (select s_2@0 r_69@@2))
)) (forall ((o_4@@370 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv23 o_4@@370)) (not (select s_2@0 (invRecv23 o_4@@370)))) (< NoPerm FullPerm)) (qpRange23 o_4@@370)) (and (=> (< NoPerm FullPerm) (= (invRecv23 o_4@@370) o_4@@370)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@370 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@370 val) FullPerm)))) (=> (not (and (and (and (select lists (invRecv23 o_4@@370)) (not (select s_2@0 (invRecv23 o_4@@370)))) (< NoPerm FullPerm)) (qpRange23 o_4@@370))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@370 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@370 val))))
 :qid |stdinbpl.1962:24|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@370 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@371 T@Ref) (f_5@@339 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@11) o_4@@371 f_5@@339) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@12) o_4@@371 f_5@@339)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@11) o_4@@371 f_5@@339))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@12) o_4@@371 f_5@@339))
)) (forall ((o_4@@372 T@Ref) (f_5@@340 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@11) o_4@@372 f_5@@340) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@12) o_4@@372 f_5@@340)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@11) o_4@@372 f_5@@340))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@12) o_4@@372 f_5@@340))
))) (forall ((o_4@@373 T@Ref) (f_5@@341 T@Field_41147_4470) ) (!  (=> (not (= f_5@@341 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@373 f_5@@341) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@373 f_5@@341)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@11) o_4@@373 f_5@@341))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@12) o_4@@373 f_5@@341))
))) (forall ((o_4@@374 T@Ref) (f_5@@342 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@11) o_4@@374 f_5@@342) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@12) o_4@@374 f_5@@342)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@11) o_4@@374 f_5@@342))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@12) o_4@@374 f_5@@342))
))) (forall ((o_4@@375 T@Ref) (f_5@@343 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@11) o_4@@375 f_5@@343) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@12) o_4@@375 f_5@@343)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@11) o_4@@375 f_5@@343))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@12) o_4@@375 f_5@@343))
))) (forall ((o_4@@376 T@Ref) (f_5@@344 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@11) o_4@@376 f_5@@344) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@12) o_4@@376 f_5@@344)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@11) o_4@@376 f_5@@344))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@12) o_4@@376 f_5@@344))
))) (forall ((o_4@@377 T@Ref) (f_5@@345 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@11) o_4@@377 f_5@@345) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@12) o_4@@377 f_5@@345)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@11) o_4@@377 f_5@@345))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@12) o_4@@377 f_5@@345))
))) (forall ((o_4@@378 T@Ref) (f_5@@346 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@11) o_4@@378 f_5@@346) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@12) o_4@@378 f_5@@346)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@11) o_4@@378 f_5@@346))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@12) o_4@@378 f_5@@346))
))) (forall ((o_4@@379 T@Ref) (f_5@@347 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) o_4@@379 f_5@@347) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) o_4@@379 f_5@@347)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@11) o_4@@379 f_5@@347))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@12) o_4@@379 f_5@@347))
))) (forall ((o_4@@380 T@Ref) (f_5@@348 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@11) o_4@@380 f_5@@348) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@12) o_4@@380 f_5@@348)))
 :qid |stdinbpl.1966:31|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@11) o_4@@380 f_5@@348))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@12) o_4@@380 f_5@@348))
))) (and (state ExhaleHeap@0 QPMask@12) (forall ((r_70 T@Ref) ) (!  (=> (and (select lists r_70) (not (select s_2@0 r_70))) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_70 val) v_2@@3))
 :qid |stdinbpl.1972:22|
 :skolemid |243|
 :pattern ( (select lists r_70))
 :pattern ( (select s_2@0 r_70))
)))) (and (and (forall ((r_71 T@Ref) ) (!  (=> (and (select lists r_71) (not (select s_2@0 r_71))) (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_71 next)))
 :qid |stdinbpl.1976:22|
 :skolemid |244|
 :pattern ( (select lists r_71))
 :pattern ( (select s_2@0 r_71))
 :pattern ( (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_71 next)))
)) (forall ((r1_7 T@Ref) (r2_7 T@Ref) ) (!  (=> (and (select lists r1_7) (and (not (select s_2@0 r1_7)) (and (select lists r2_7) (and (not (select s_2@0 r2_7)) (not (= r1_7 r2_7)))))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r1_7 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r2_7 next))))
 :qid |stdinbpl.1980:22|
 :skolemid |245|
 :pattern ( (select lists r1_7) (select lists r2_7))
 :pattern ( (select lists r1_7) (select s_2@0 r2_7))
 :pattern ( (select s_2@0 r1_7) (select lists r2_7))
 :pattern ( (select s_2@0 r1_7) (select s_2@0 r2_7))
))) (and (state ExhaleHeap@0 QPMask@12) (state ExhaleHeap@0 QPMask@12)))) (and (=> (= (ControlFlow 0 177) 171) anon187_Then_correct) (=> (= (ControlFlow 0 177) 176) anon187_Else_correct)))))))))))))))))))))))
(let ((anon43_correct true))
(let ((anon174_Else_correct  (=> (and (not (and (select lists r1_1) (and (not (select s_2@0 r1_1)) (and (select lists r2_1) (and (not (select s_2@0 r2_1)) (not (= r1_1 r2_1))))))) (= (ControlFlow 0 31) 27)) anon43_correct)))
(let ((anon174_Then_correct  (=> (and (select lists r1_1) (and (not (select s_2@0 r1_1)) (and (select lists r2_1) (and (not (select s_2@0 r2_1)) (not (= r1_1 r2_1)))))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (HasDirectPerm_23478_23479 QPMask@43 r1_1 next)) (=> (HasDirectPerm_23478_23479 QPMask@43 r1_1 next) (and (=> (= (ControlFlow 0 28) (- 0 29)) (HasDirectPerm_23478_23479 QPMask@43 r2_1 next)) (=> (HasDirectPerm_23478_23479 QPMask@43 r2_1 next) (=> (= (ControlFlow 0 28) 27) anon43_correct))))))))
(let ((anon173_Else_correct true))
(let ((anon171_Else_correct  (=> (and (forall ((r_39 T@Ref) ) (!  (=> (and (select lists r_39) (not (select s_2@0 r_39))) (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_39 next)))
 :qid |stdinbpl.1339:24|
 :skolemid |160|
 :pattern ( (select lists r_39))
 :pattern ( (select s_2@0 r_39))
 :pattern ( (select sNext@1 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_39 next)))
)) (state ExhaleHeap@0 QPMask@43)) (and (and (=> (= (ControlFlow 0 32) 26) anon173_Else_correct) (=> (= (ControlFlow 0 32) 28) anon174_Then_correct)) (=> (= (ControlFlow 0 32) 31) anon174_Else_correct)))))
(let ((anon39_correct true))
(let ((anon172_Else_correct  (=> (and (not (and (select lists r_15) (not (select s_2@0 r_15)))) (= (ControlFlow 0 25) 22)) anon39_correct)))
(let ((anon172_Then_correct  (=> (and (select lists r_15) (not (select s_2@0 r_15))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_23478_23479 QPMask@43 r_15 next)) (=> (HasDirectPerm_23478_23479 QPMask@43 r_15 next) (=> (= (ControlFlow 0 23) 22) anon39_correct))))))
(let ((anon169_Else_correct  (=> (and (forall ((r_37 T@Ref) ) (!  (=> (and (select lists r_37) (not (select s_2@0 r_37))) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_37 val) v_2@@3))
 :qid |stdinbpl.1325:24|
 :skolemid |159|
 :pattern ( (select lists r_37))
 :pattern ( (select s_2@0 r_37))
)) (state ExhaleHeap@0 QPMask@43)) (and (and (=> (= (ControlFlow 0 33) 32) anon171_Else_correct) (=> (= (ControlFlow 0 33) 23) anon172_Then_correct)) (=> (= (ControlFlow 0 33) 25) anon172_Else_correct)))))
(let ((anon35_correct true))
(let ((anon170_Else_correct  (=> (and (not (and (select lists r_13) (not (select s_2@0 r_13)))) (= (ControlFlow 0 21) 18)) anon35_correct)))
(let ((anon170_Then_correct  (=> (and (select lists r_13) (not (select s_2@0 r_13))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_23476_4470 QPMask@43 r_13 val)) (=> (HasDirectPerm_23476_4470 QPMask@43 r_13 val) (=> (= (ControlFlow 0 19) 18) anon35_correct))))))
(let ((anon168_Else_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (forall ((r_35 T@Ref) (r_35_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_35 r_35_1)) (and (select lists r_35) (not (select s_2@0 r_35)))) (and (select lists r_35_1) (not (select s_2@0 r_35_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_35 r_35_1)))
 :qid |stdinbpl.1284:19|
 :skolemid |153|
))) (=> (forall ((r_35@@0 T@Ref) (r_35_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_35@@0 r_35_1@@0)) (and (select lists r_35@@0) (not (select s_2@0 r_35@@0)))) (and (select lists r_35_1@@0) (not (select s_2@0 r_35_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_35@@0 r_35_1@@0)))
 :qid |stdinbpl.1284:19|
 :skolemid |153|
)) (=> (and (and (forall ((r_35@@1 T@Ref) ) (!  (=> (and (and (select lists r_35@@1) (not (select s_2@0 r_35@@1))) (< NoPerm FullPerm)) (and (qpRange11 r_35@@1) (= (invRecv11 r_35@@1) r_35@@1)))
 :qid |stdinbpl.1290:26|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_35@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) r_35@@1 val))
 :pattern ( (select lists r_35@@1))
 :pattern ( (select s_2@0 r_35@@1))
)) (forall ((o_4@@381 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv11 o_4@@381)) (not (select s_2@0 (invRecv11 o_4@@381)))) (< NoPerm FullPerm)) (qpRange11 o_4@@381)) (= (invRecv11 o_4@@381) o_4@@381))
 :qid |stdinbpl.1294:26|
 :skolemid |155|
 :pattern ( (invRecv11 o_4@@381))
))) (and (forall ((r_35@@2 T@Ref) ) (!  (=> (and (select lists r_35@@2) (not (select s_2@0 r_35@@2))) (not (= r_35@@2 null)))
 :qid |stdinbpl.1300:26|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| ExhaleHeap@0) r_35@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) r_35@@2 val))
 :pattern ( (select lists r_35@@2))
 :pattern ( (select s_2@0 r_35@@2))
)) (forall ((o_4@@382 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv11 o_4@@382)) (not (select s_2@0 (invRecv11 o_4@@382)))) (< NoPerm FullPerm)) (qpRange11 o_4@@382)) (and (=> (< NoPerm FullPerm) (= (invRecv11 o_4@@382) o_4@@382)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) o_4@@382 val) (+ (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@382 val) FullPerm)))) (=> (not (and (and (and (select lists (invRecv11 o_4@@382)) (not (select s_2@0 (invRecv11 o_4@@382)))) (< NoPerm FullPerm)) (qpRange11 o_4@@382))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) o_4@@382 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@382 val))))
 :qid |stdinbpl.1306:26|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) o_4@@382 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@383 T@Ref) (f_5@@349 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@42) o_4@@383 f_5@@349) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@43) o_4@@383 f_5@@349)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@42) o_4@@383 f_5@@349))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@43) o_4@@383 f_5@@349))
)) (forall ((o_4@@384 T@Ref) (f_5@@350 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@42) o_4@@384 f_5@@350) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@43) o_4@@384 f_5@@350)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@42) o_4@@384 f_5@@350))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@43) o_4@@384 f_5@@350))
))) (forall ((o_4@@385 T@Ref) (f_5@@351 T@Field_41147_4470) ) (!  (=> (not (= f_5@@351 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@385 f_5@@351) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) o_4@@385 f_5@@351)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@385 f_5@@351))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@43) o_4@@385 f_5@@351))
))) (forall ((o_4@@386 T@Ref) (f_5@@352 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@42) o_4@@386 f_5@@352) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@43) o_4@@386 f_5@@352)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@42) o_4@@386 f_5@@352))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@43) o_4@@386 f_5@@352))
))) (forall ((o_4@@387 T@Ref) (f_5@@353 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@42) o_4@@387 f_5@@353) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@43) o_4@@387 f_5@@353)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@42) o_4@@387 f_5@@353))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@43) o_4@@387 f_5@@353))
))) (forall ((o_4@@388 T@Ref) (f_5@@354 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@42) o_4@@388 f_5@@354) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@43) o_4@@388 f_5@@354)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@42) o_4@@388 f_5@@354))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@43) o_4@@388 f_5@@354))
))) (forall ((o_4@@389 T@Ref) (f_5@@355 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@42) o_4@@389 f_5@@355) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@43) o_4@@389 f_5@@355)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@42) o_4@@389 f_5@@355))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@43) o_4@@389 f_5@@355))
))) (forall ((o_4@@390 T@Ref) (f_5@@356 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@42) o_4@@390 f_5@@356) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@43) o_4@@390 f_5@@356)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@42) o_4@@390 f_5@@356))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@43) o_4@@390 f_5@@356))
))) (forall ((o_4@@391 T@Ref) (f_5@@357 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) o_4@@391 f_5@@357) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@43) o_4@@391 f_5@@357)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) o_4@@391 f_5@@357))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@43) o_4@@391 f_5@@357))
))) (forall ((o_4@@392 T@Ref) (f_5@@358 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@42) o_4@@392 f_5@@358) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@43) o_4@@392 f_5@@358)))
 :qid |stdinbpl.1310:33|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@42) o_4@@392 f_5@@358))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@43) o_4@@392 f_5@@358))
))) (state ExhaleHeap@0 QPMask@43)) (and (and (=> (= (ControlFlow 0 34) 33) anon169_Else_correct) (=> (= (ControlFlow 0 34) 19) anon170_Then_correct)) (=> (= (ControlFlow 0 34) 21) anon170_Else_correct))))))))
(let ((anon168_Then_correct true))
(let ((anon167_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((r_31 T@Ref) (r_31_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_31 r_31_1)) (select sNext@1 r_31)) (select sNext@1 r_31_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_31 r_31_1)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1244:21|
 :skolemid |147|
 :pattern ( (neverTriggered10 r_31) (neverTriggered10 r_31_1))
))) (=> (forall ((r_31@@0 T@Ref) (r_31_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_31@@0 r_31_1@@0)) (select sNext@1 r_31@@0)) (select sNext@1 r_31_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_31@@0 r_31_1@@0)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1244:21|
 :skolemid |147|
 :pattern ( (neverTriggered10 r_31@@0) (neverTriggered10 r_31_1@@0))
)) (=> (forall ((r_31@@1 T@Ref) ) (!  (=> (and (select sNext@1 r_31@@1) (< NoPerm FullPerm)) (and (= (invRecv10 r_31@@1 (- length_2 1)) r_31@@1) (qpRange10 r_31@@1 (- length_2 1))))
 :qid |stdinbpl.1250:26|
 :skolemid |148|
 :pattern ( (select sNext@1 r_31@@1))
)) (=> (and (forall ((r_32_1 T@Ref) (i_6_1 Int) ) (!  (=> (and (and (select sNext@1 (invRecv10 r_32_1 i_6_1)) (< NoPerm FullPerm)) (qpRange10 r_32_1 i_6_1)) (and (= (invRecv10 r_32_1 i_6_1) r_32_1) (= (- length_2 1) i_6_1)))
 :qid |stdinbpl.1254:26|
 :skolemid |149|
 :pattern ( (invRecv10 r_32_1 i_6_1))
)) (forall ((r_32_1@@0 T@Ref) (i_6_1@@0 Int) ) (!  (=> (and (and (select sNext@1 (invRecv10 r_32_1@@0 i_6_1@@0)) (< NoPerm FullPerm)) (qpRange10 r_32_1@@0 i_6_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv10 r_32_1@@0 i_6_1@@0) r_32_1@@0) (= (- length_2 1) i_6_1@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) null (list r_32_1@@0 i_6_1@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) null (list r_32_1@@0 i_6_1@@0)) FullPerm))))
 :qid |stdinbpl.1260:26|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) null (list r_32_1@@0 i_6_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@393 T@Ref) (f_5@@359 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@393 null)) (not (IsPredicateField_23476_4470 f_5@@359))) (not (= (getPredWandId_23476_4470 f_5@@359) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@41) o_4@@393 f_5@@359) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@393 f_5@@359)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@41) o_4@@393 f_5@@359))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@42) o_4@@393 f_5@@359))
)) (forall ((o_4@@394 T@Ref) (f_5@@360 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@394 null)) (not (IsPredicateField_23478_23479 f_5@@360))) (not (= (getPredWandId_23476_23479 f_5@@360) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@394 f_5@@360) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@42) o_4@@394 f_5@@360)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@394 f_5@@360))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@42) o_4@@394 f_5@@360))
))) (forall ((o_4@@395 T@Ref) (f_5@@361 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@395 null)) (not (IsPredicateField_23476_111428 f_5@@361))) (not (= (getPredWandId_23476_23513 f_5@@361) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@41) o_4@@395 f_5@@361) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@42) o_4@@395 f_5@@361)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@41) o_4@@395 f_5@@361))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@42) o_4@@395 f_5@@361))
))) (forall ((o_4@@396 T@Ref) (f_5@@362 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@396 null)) (not (IsPredicateField_23476_53 f_5@@362))) (not (= (getPredWandId_23476_53 f_5@@362) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@41) o_4@@396 f_5@@362) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@42) o_4@@396 f_5@@362)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@41) o_4@@396 f_5@@362))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@42) o_4@@396 f_5@@362))
))) (forall ((o_4@@397 T@Ref) (f_5@@363 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@397 null)) (not (IsPredicateField_23476_122001 f_5@@363))) (not (= (getPredWandId_23476_131207 f_5@@363) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@41) o_4@@397 f_5@@363) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@42) o_4@@397 f_5@@363)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@41) o_4@@397 f_5@@363))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@42) o_4@@397 f_5@@363))
))) (forall ((o_4@@398 T@Ref) (f_5@@364 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@398 null)) (not (IsPredicateField_23512_4470 f_5@@364))) (not (= (getPredWandId_23512_4470 f_5@@364) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@41) o_4@@398 f_5@@364) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@42) o_4@@398 f_5@@364)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@41) o_4@@398 f_5@@364))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@42) o_4@@398 f_5@@364))
))) (forall ((o_4@@399 T@Ref) (f_5@@365 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@399 null)) (not (IsPredicateField_23512_23479 f_5@@365))) (not (= (getPredWandId_23512_23479 f_5@@365) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@41) o_4@@399 f_5@@365) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@42) o_4@@399 f_5@@365)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@41) o_4@@399 f_5@@365))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@42) o_4@@399 f_5@@365))
))) (forall ((o_4@@400 T@Ref) (f_5@@366 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@400 null)) (not (IsPredicateField_23512_23513 f_5@@366))) (not (= (getPredWandId_23512_23513 f_5@@366) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) o_4@@400 f_5@@366) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) o_4@@400 f_5@@366)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) o_4@@400 f_5@@366))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) o_4@@400 f_5@@366))
))) (forall ((o_4@@401 T@Ref) (f_5@@367 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@401 null)) (not (IsPredicateField_23512_53 f_5@@367))) (not (= (getPredWandId_23512_53 f_5@@367) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@41) o_4@@401 f_5@@367) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@42) o_4@@401 f_5@@367)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@41) o_4@@401 f_5@@367))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@42) o_4@@401 f_5@@367))
))) (forall ((o_4@@402 T@Ref) (f_5@@368 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@402 null)) (not (IsPredicateField_23512_121198 f_5@@368))) (not (= (getPredWandId_23512_132016 f_5@@368) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@41) o_4@@402 f_5@@368) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@42) o_4@@402 f_5@@368)))
 :qid |stdinbpl.1266:33|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@41) o_4@@402 f_5@@368))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@42) o_4@@402 f_5@@368))
))) (forall ((r_32_1@@1 T@Ref) (i_6_1@@1 Int) ) (!  (=> (not (and (and (select sNext@1 (invRecv10 r_32_1@@1 i_6_1@@1)) (< NoPerm FullPerm)) (qpRange10 r_32_1@@1 i_6_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) null (list r_32_1@@1 i_6_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) null (list r_32_1@@1 i_6_1@@1))))
 :qid |stdinbpl.1270:26|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@42) null (list r_32_1@@1 i_6_1@@1)))
))) (and (state ExhaleHeap@0 QPMask@42) (state ExhaleHeap@0 QPMask@42))) (and (=> (= (ControlFlow 0 36) 17) anon168_Then_correct) (=> (= (ControlFlow 0 36) 34) anon168_Else_correct)))))))))
(let ((anon167_Then_correct true))
(let ((anon166_Else_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall ((r_29 T@Ref) (r_29_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_29 r_29_1)) (and (select lists r_29) (not (select s_2@0 r_29)))) (and (select lists r_29_1) (not (select s_2@0 r_29_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_29 r_29_1)))
 :qid |stdinbpl.1202:19|
 :skolemid |141|
))) (=> (forall ((r_29@@0 T@Ref) (r_29_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_29@@0 r_29_1@@0)) (and (select lists r_29@@0) (not (select s_2@0 r_29@@0)))) (and (select lists r_29_1@@0) (not (select s_2@0 r_29_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_29@@0 r_29_1@@0)))
 :qid |stdinbpl.1202:19|
 :skolemid |141|
)) (=> (and (and (forall ((r_29@@1 T@Ref) ) (!  (=> (and (and (select lists r_29@@1) (not (select s_2@0 r_29@@1))) (< NoPerm FullPerm)) (and (qpRange9 r_29@@1) (= (invRecv9 r_29@@1) r_29@@1)))
 :qid |stdinbpl.1208:26|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_29@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) r_29@@1 next))
 :pattern ( (select lists r_29@@1))
 :pattern ( (select s_2@0 r_29@@1))
)) (forall ((o_4@@403 T@Ref) ) (!  (=> (and (and (and (select lists (invRecv9 o_4@@403)) (not (select s_2@0 (invRecv9 o_4@@403)))) (< NoPerm FullPerm)) (qpRange9 o_4@@403)) (= (invRecv9 o_4@@403) o_4@@403))
 :qid |stdinbpl.1212:26|
 :skolemid |143|
 :pattern ( (invRecv9 o_4@@403))
))) (and (forall ((r_29@@2 T@Ref) ) (!  (=> (and (select lists r_29@@2) (not (select s_2@0 r_29@@2))) (not (= r_29@@2 null)))
 :qid |stdinbpl.1218:26|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| ExhaleHeap@0) r_29@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) r_29@@2 next))
 :pattern ( (select lists r_29@@2))
 :pattern ( (select s_2@0 r_29@@2))
)) (forall ((o_4@@404 T@Ref) ) (!  (and (=> (and (and (and (select lists (invRecv9 o_4@@404)) (not (select s_2@0 (invRecv9 o_4@@404)))) (< NoPerm FullPerm)) (qpRange9 o_4@@404)) (and (=> (< NoPerm FullPerm) (= (invRecv9 o_4@@404) o_4@@404)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@404 next) (+ (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@404 next) FullPerm)))) (=> (not (and (and (and (select lists (invRecv9 o_4@@404)) (not (select s_2@0 (invRecv9 o_4@@404)))) (< NoPerm FullPerm)) (qpRange9 o_4@@404))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@404 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@404 next))))
 :qid |stdinbpl.1224:26|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@404 next))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@405 T@Ref) (f_5@@369 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@40) o_4@@405 f_5@@369) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@41) o_4@@405 f_5@@369)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@40) o_4@@405 f_5@@369))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@41) o_4@@405 f_5@@369))
)) (forall ((o_4@@406 T@Ref) (f_5@@370 T@Field_34811_34812) ) (!  (=> (not (= f_5@@370 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@406 f_5@@370) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@406 f_5@@370)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@406 f_5@@370))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@41) o_4@@406 f_5@@370))
))) (forall ((o_4@@407 T@Ref) (f_5@@371 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@40) o_4@@407 f_5@@371) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@41) o_4@@407 f_5@@371)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@40) o_4@@407 f_5@@371))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@41) o_4@@407 f_5@@371))
))) (forall ((o_4@@408 T@Ref) (f_5@@372 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@40) o_4@@408 f_5@@372) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@41) o_4@@408 f_5@@372)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@40) o_4@@408 f_5@@372))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@41) o_4@@408 f_5@@372))
))) (forall ((o_4@@409 T@Ref) (f_5@@373 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@40) o_4@@409 f_5@@373) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@41) o_4@@409 f_5@@373)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@40) o_4@@409 f_5@@373))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@41) o_4@@409 f_5@@373))
))) (forall ((o_4@@410 T@Ref) (f_5@@374 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@40) o_4@@410 f_5@@374) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@41) o_4@@410 f_5@@374)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@40) o_4@@410 f_5@@374))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@41) o_4@@410 f_5@@374))
))) (forall ((o_4@@411 T@Ref) (f_5@@375 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@40) o_4@@411 f_5@@375) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@41) o_4@@411 f_5@@375)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@40) o_4@@411 f_5@@375))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@41) o_4@@411 f_5@@375))
))) (forall ((o_4@@412 T@Ref) (f_5@@376 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@40) o_4@@412 f_5@@376) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@41) o_4@@412 f_5@@376)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@40) o_4@@412 f_5@@376))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@41) o_4@@412 f_5@@376))
))) (forall ((o_4@@413 T@Ref) (f_5@@377 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) o_4@@413 f_5@@377) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) o_4@@413 f_5@@377)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) o_4@@413 f_5@@377))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@41) o_4@@413 f_5@@377))
))) (forall ((o_4@@414 T@Ref) (f_5@@378 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@40) o_4@@414 f_5@@378) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@41) o_4@@414 f_5@@378)))
 :qid |stdinbpl.1228:33|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@40) o_4@@414 f_5@@378))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@41) o_4@@414 f_5@@378))
))) (and (state ExhaleHeap@0 QPMask@41) (state ExhaleHeap@0 QPMask@41))) (and (=> (= (ControlFlow 0 38) 16) anon167_Then_correct) (=> (= (ControlFlow 0 38) 36) anon167_Else_correct))))))))
(let ((anon166_Then_correct true))
(let ((anon165_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 41)) (forall ((r_25 T@Ref) (r_25_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_25 r_25_1)) (select s_2@0 r_25)) (select s_2@0 r_25_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_25 r_25_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.1162:21|
 :skolemid |135|
 :pattern ( (neverTriggered8 r_25) (neverTriggered8 r_25_1))
))) (=> (forall ((r_25@@0 T@Ref) (r_25_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_25@@0 r_25_1@@0)) (select s_2@0 r_25@@0)) (select s_2@0 r_25_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_25@@0 r_25_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.1162:21|
 :skolemid |135|
 :pattern ( (neverTriggered8 r_25@@0) (neverTriggered8 r_25_1@@0))
)) (=> (forall ((r_25@@1 T@Ref) ) (!  (=> (and (select s_2@0 r_25@@1) (< NoPerm FullPerm)) (and (= (invRecv8 r_25@@1 length_2) r_25@@1) (qpRange8 r_25@@1 length_2)))
 :qid |stdinbpl.1168:26|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| ExhaleHeap@0) null (list r_25@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_25@@1 length_2)))
 :pattern ( (select s_2@0 r_25@@1))
)) (=> (and (forall ((r_26_1 T@Ref) (i_5 Int) ) (!  (=> (and (and (select s_2@0 (invRecv8 r_26_1 i_5)) (< NoPerm FullPerm)) (qpRange8 r_26_1 i_5)) (and (= (invRecv8 r_26_1 i_5) r_26_1) (= length_2 i_5)))
 :qid |stdinbpl.1172:26|
 :skolemid |137|
 :pattern ( (invRecv8 r_26_1 i_5))
)) (forall ((r_26_1@@0 T@Ref) (i_5@@0 Int) ) (!  (=> (and (and (select s_2@0 (invRecv8 r_26_1@@0 i_5@@0)) (< NoPerm FullPerm)) (qpRange8 r_26_1@@0 i_5@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv8 r_26_1@@0 i_5@@0) r_26_1@@0) (= length_2 i_5@@0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) null (list r_26_1@@0 i_5@@0)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_26_1@@0 i_5@@0)) FullPerm))))
 :qid |stdinbpl.1178:26|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) null (list r_26_1@@0 i_5@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@415 T@Ref) (f_5@@379 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@415 null)) (not (IsPredicateField_23476_4470 f_5@@379))) (not (= (getPredWandId_23476_4470 f_5@@379) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@415 f_5@@379) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@40) o_4@@415 f_5@@379)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@415 f_5@@379))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@40) o_4@@415 f_5@@379))
)) (forall ((o_4@@416 T@Ref) (f_5@@380 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@416 null)) (not (IsPredicateField_23478_23479 f_5@@380))) (not (= (getPredWandId_23476_23479 f_5@@380) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@416 f_5@@380) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@416 f_5@@380)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@416 f_5@@380))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@40) o_4@@416 f_5@@380))
))) (forall ((o_4@@417 T@Ref) (f_5@@381 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@417 null)) (not (IsPredicateField_23476_111428 f_5@@381))) (not (= (getPredWandId_23476_23513 f_5@@381) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@417 f_5@@381) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@40) o_4@@417 f_5@@381)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@417 f_5@@381))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@40) o_4@@417 f_5@@381))
))) (forall ((o_4@@418 T@Ref) (f_5@@382 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@418 null)) (not (IsPredicateField_23476_53 f_5@@382))) (not (= (getPredWandId_23476_53 f_5@@382) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@418 f_5@@382) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@40) o_4@@418 f_5@@382)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@418 f_5@@382))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@40) o_4@@418 f_5@@382))
))) (forall ((o_4@@419 T@Ref) (f_5@@383 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@419 null)) (not (IsPredicateField_23476_122001 f_5@@383))) (not (= (getPredWandId_23476_131207 f_5@@383) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@419 f_5@@383) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@40) o_4@@419 f_5@@383)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@419 f_5@@383))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@40) o_4@@419 f_5@@383))
))) (forall ((o_4@@420 T@Ref) (f_5@@384 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@420 null)) (not (IsPredicateField_23512_4470 f_5@@384))) (not (= (getPredWandId_23512_4470 f_5@@384) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@420 f_5@@384) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@40) o_4@@420 f_5@@384)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@420 f_5@@384))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@40) o_4@@420 f_5@@384))
))) (forall ((o_4@@421 T@Ref) (f_5@@385 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@421 null)) (not (IsPredicateField_23512_23479 f_5@@385))) (not (= (getPredWandId_23512_23479 f_5@@385) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@421 f_5@@385) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@40) o_4@@421 f_5@@385)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@421 f_5@@385))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@40) o_4@@421 f_5@@385))
))) (forall ((o_4@@422 T@Ref) (f_5@@386 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@422 null)) (not (IsPredicateField_23512_23513 f_5@@386))) (not (= (getPredWandId_23512_23513 f_5@@386) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@422 f_5@@386) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) o_4@@422 f_5@@386)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@422 f_5@@386))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) o_4@@422 f_5@@386))
))) (forall ((o_4@@423 T@Ref) (f_5@@387 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@423 null)) (not (IsPredicateField_23512_53 f_5@@387))) (not (= (getPredWandId_23512_53 f_5@@387) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@423 f_5@@387) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@40) o_4@@423 f_5@@387)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@423 f_5@@387))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@40) o_4@@423 f_5@@387))
))) (forall ((o_4@@424 T@Ref) (f_5@@388 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@424 null)) (not (IsPredicateField_23512_121198 f_5@@388))) (not (= (getPredWandId_23512_132016 f_5@@388) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@424 f_5@@388) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@40) o_4@@424 f_5@@388)))
 :qid |stdinbpl.1184:33|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@424 f_5@@388))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@40) o_4@@424 f_5@@388))
))) (forall ((r_26_1@@1 T@Ref) (i_5@@1 Int) ) (!  (=> (not (and (and (select s_2@0 (invRecv8 r_26_1@@1 i_5@@1)) (< NoPerm FullPerm)) (qpRange8 r_26_1@@1 i_5@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) null (list r_26_1@@1 i_5@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) null (list r_26_1@@1 i_5@@1))))
 :qid |stdinbpl.1188:26|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@40) null (list r_26_1@@1 i_5@@1)))
))) (and (state ExhaleHeap@0 QPMask@40) (state ExhaleHeap@0 QPMask@40))) (and (=> (= (ControlFlow 0 40) 15) anon166_Then_correct) (=> (= (ControlFlow 0 40) 38) anon166_Else_correct)))))))))
(let ((anon165_Then_correct true))
(let ((anon162_Else_correct  (=> (and (forall ((r1_1_1 T@Ref) (r2_1_1 T@Ref) ) (!  (=> (and (select lists r1_1_1) (and (not (select lists r1_1_1)) (and (select lists r2_1_1) (and (not (select lists r2_1_1)) (not (= r1_1_1 r2_1_1)))))) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r1_1_1 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r2_1_1 next))))
 :qid |stdinbpl.1139:24|
 :skolemid |134|
 :pattern ( (select lists r1_1_1) (select lists r2_1_1))
 :pattern ( (select lists r1_1_1) (select lists r2_1_1))
 :pattern ( (select lists r1_1_1) (select lists r2_1_1))
 :pattern ( (select lists r1_1_1) (select lists r2_1_1))
)) (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@0 QPMask@4)) (and (and (and (=> (= (ControlFlow 0 227) 222) anon175_Then_correct) (=> (= (ControlFlow 0 227) 177) anon175_Else_correct)) (=> (= (ControlFlow 0 227) 14) anon165_Then_correct)) (=> (= (ControlFlow 0 227) 40) anon165_Else_correct)))))
(let ((anon22_correct true))
(let ((anon163_Else_correct  (=> (and (not (and (select lists r1) (and (not (select lists r1)) (and (select lists r2@@1) (and (not (select lists r2@@1)) (not (= r1 r2@@1))))))) (= (ControlFlow 0 13) 10)) anon22_correct)))
(let ((anon163_Then_correct  (=> (and (select lists r1) (and (not (select lists r1)) (and (select lists r2@@1) (and (not (select lists r2@@1)) (not (= r1 r2@@1)))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r1 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r2@@1 next)))) (=> (not (= (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r1 next) (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r2@@1 next))) (=> (= (ControlFlow 0 11) 10) anon22_correct))))))
(let ((anon160_Else_correct  (=> (forall ((r_23_1 T@Ref) ) (!  (=> (and (select lists r_23_1) (not (select lists r_23_1))) (select sNext@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_23_1 next)))
 :qid |stdinbpl.1128:24|
 :skolemid |133|
 :pattern ( (select lists r_23_1))
 :pattern ( (select lists r_23_1))
 :pattern ( (select sNext@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_23_1 next)))
)) (and (and (=> (= (ControlFlow 0 228) 227) anon162_Else_correct) (=> (= (ControlFlow 0 228) 11) anon163_Then_correct)) (=> (= (ControlFlow 0 228) 13) anon163_Else_correct)))))
(let ((anon18_correct true))
(let ((anon161_Else_correct  (=> (and (not (and (select lists r_22) (not (select lists r_22)))) (= (ControlFlow 0 9) 6)) anon18_correct)))
(let ((anon161_Then_correct  (=> (and (select lists r_22) (not (select lists r_22))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (select sNext@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_22 next))) (=> (select sNext@0 (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_22 next)) (=> (= (ControlFlow 0 7) 6) anon18_correct))))))
(let ((anon158_Else_correct  (=> (forall ((r_21_1 T@Ref) ) (!  (=> (and (select lists r_21_1) (not (select lists r_21_1))) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_21_1 val) v_2@@3))
 :qid |stdinbpl.1117:24|
 :skolemid |132|
 :pattern ( (select lists r_21_1))
 :pattern ( (select lists r_21_1))
)) (and (and (=> (= (ControlFlow 0 229) 228) anon160_Else_correct) (=> (= (ControlFlow 0 229) 7) anon161_Then_correct)) (=> (= (ControlFlow 0 229) 9) anon161_Else_correct)))))
(let ((anon14_correct true))
(let ((anon159_Else_correct  (=> (and (not (and (select lists r_20) (not (select lists r_20)))) (= (ControlFlow 0 5) 2)) anon14_correct)))
(let ((anon159_Then_correct  (=> (and (select lists r_20) (not (select lists r_20))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_20 val) v_2@@3)) (=> (= (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_20 val) v_2@@3) (=> (= (ControlFlow 0 3) 2) anon14_correct))))))
(let ((anon153_Else_correct  (=> (state Heap@@36 QPMask@0) (=> (and (= sNext@0 |Set#Empty_23614|) (state Heap@@36 QPMask@0)) (and (=> (= (ControlFlow 0 230) (- 0 238)) (forall ((r_14 T@Ref) (r_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_14 r_14_1)) (select lists r_14)) (select lists r_14_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_14 r_14_1)) (not (= length_2 length_2))))
 :qid |stdinbpl.945:21|
 :skolemid |106|
 :pattern ( (neverTriggered4 r_14) (neverTriggered4 r_14_1))
))) (=> (forall ((r_14@@0 T@Ref) (r_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_14@@0 r_14_1@@0)) (select lists r_14@@0)) (select lists r_14_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_14@@0 r_14_1@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.945:21|
 :skolemid |106|
 :pattern ( (neverTriggered4 r_14@@0) (neverTriggered4 r_14_1@@0))
)) (and (=> (= (ControlFlow 0 230) (- 0 237)) (forall ((r_14@@1 T@Ref) ) (!  (=> (select lists r_14@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_14@@1 length_2)) FullPerm))
 :qid |stdinbpl.952:21|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_14@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_14@@1 length_2)))
 :pattern ( (select lists r_14@@1))
))) (=> (forall ((r_14@@2 T@Ref) ) (!  (=> (select lists r_14@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_14@@2 length_2)) FullPerm))
 :qid |stdinbpl.952:21|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_14@@2 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_14@@2 length_2)))
 :pattern ( (select lists r_14@@2))
)) (=> (and (and (forall ((r_14@@3 T@Ref) ) (!  (=> (and (select lists r_14@@3) (< NoPerm FullPerm)) (and (= (invRecv4 r_14@@3 length_2) r_14@@3) (qpRange4 r_14@@3 length_2)))
 :qid |stdinbpl.958:26|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_14@@3 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_14@@3 length_2)))
 :pattern ( (select lists r_14@@3))
)) (forall ((r_15_1 T@Ref) (i_3 Int) ) (!  (=> (and (and (select lists (invRecv4 r_15_1 i_3)) (< NoPerm FullPerm)) (qpRange4 r_15_1 i_3)) (and (= (invRecv4 r_15_1 i_3) r_15_1) (= length_2 i_3)))
 :qid |stdinbpl.962:26|
 :skolemid |109|
 :pattern ( (invRecv4 r_15_1 i_3))
))) (and (forall ((r_15_1@@0 T@Ref) (i_3@@0 Int) ) (!  (=> (and (and (select lists (invRecv4 r_15_1@@0 i_3@@0)) (< NoPerm FullPerm)) (qpRange4 r_15_1@@0 i_3@@0)) (and (and (= (invRecv4 r_15_1@@0 i_3@@0) r_15_1@@0) (= length_2 i_3@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) null (list r_15_1@@0 i_3@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_15_1@@0 i_3@@0)) FullPerm))))
 :qid |stdinbpl.968:26|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) null (list r_15_1@@0 i_3@@0)))
)) (forall ((r_15_1@@1 T@Ref) (i_3@@1 Int) ) (!  (=> (not (and (and (select lists (invRecv4 r_15_1@@1 i_3@@1)) (< NoPerm FullPerm)) (qpRange4 r_15_1@@1 i_3@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) null (list r_15_1@@1 i_3@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_15_1@@1 i_3@@1))))
 :qid |stdinbpl.972:26|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) null (list r_15_1@@1 i_3@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@425 T@Ref) (f_5@@389 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@425 null)) (not (IsPredicateField_23476_4470 f_5@@389))) (not (= (getPredWandId_23476_4470 f_5@@389) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@0) o_4@@425 f_5@@389) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@1) o_4@@425 f_5@@389)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@0) o_4@@425 f_5@@389))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@1) o_4@@425 f_5@@389))
)) (forall ((o_4@@426 T@Ref) (f_5@@390 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@426 null)) (not (IsPredicateField_23478_23479 f_5@@390))) (not (= (getPredWandId_23476_23479 f_5@@390) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@0) o_4@@426 f_5@@390) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) o_4@@426 f_5@@390)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@0) o_4@@426 f_5@@390))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) o_4@@426 f_5@@390))
))) (forall ((o_4@@427 T@Ref) (f_5@@391 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@427 null)) (not (IsPredicateField_23476_111428 f_5@@391))) (not (= (getPredWandId_23476_23513 f_5@@391) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@0) o_4@@427 f_5@@391) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@1) o_4@@427 f_5@@391)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@0) o_4@@427 f_5@@391))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@1) o_4@@427 f_5@@391))
))) (forall ((o_4@@428 T@Ref) (f_5@@392 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@428 null)) (not (IsPredicateField_23476_53 f_5@@392))) (not (= (getPredWandId_23476_53 f_5@@392) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@0) o_4@@428 f_5@@392) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@1) o_4@@428 f_5@@392)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@0) o_4@@428 f_5@@392))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@1) o_4@@428 f_5@@392))
))) (forall ((o_4@@429 T@Ref) (f_5@@393 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@429 null)) (not (IsPredicateField_23476_122001 f_5@@393))) (not (= (getPredWandId_23476_131207 f_5@@393) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@0) o_4@@429 f_5@@393) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@1) o_4@@429 f_5@@393)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@0) o_4@@429 f_5@@393))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@1) o_4@@429 f_5@@393))
))) (forall ((o_4@@430 T@Ref) (f_5@@394 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@430 null)) (not (IsPredicateField_23512_4470 f_5@@394))) (not (= (getPredWandId_23512_4470 f_5@@394) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@0) o_4@@430 f_5@@394) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@1) o_4@@430 f_5@@394)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@0) o_4@@430 f_5@@394))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@1) o_4@@430 f_5@@394))
))) (forall ((o_4@@431 T@Ref) (f_5@@395 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@431 null)) (not (IsPredicateField_23512_23479 f_5@@395))) (not (= (getPredWandId_23512_23479 f_5@@395) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@0) o_4@@431 f_5@@395) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@1) o_4@@431 f_5@@395)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@0) o_4@@431 f_5@@395))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@1) o_4@@431 f_5@@395))
))) (forall ((o_4@@432 T@Ref) (f_5@@396 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@432 null)) (not (IsPredicateField_23512_23513 f_5@@396))) (not (= (getPredWandId_23512_23513 f_5@@396) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) o_4@@432 f_5@@396) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) o_4@@432 f_5@@396)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) o_4@@432 f_5@@396))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) o_4@@432 f_5@@396))
))) (forall ((o_4@@433 T@Ref) (f_5@@397 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@433 null)) (not (IsPredicateField_23512_53 f_5@@397))) (not (= (getPredWandId_23512_53 f_5@@397) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@0) o_4@@433 f_5@@397) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@1) o_4@@433 f_5@@397)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@0) o_4@@433 f_5@@397))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@1) o_4@@433 f_5@@397))
))) (forall ((o_4@@434 T@Ref) (f_5@@398 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@434 null)) (not (IsPredicateField_23512_121198 f_5@@398))) (not (= (getPredWandId_23512_132016 f_5@@398) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@0) o_4@@434 f_5@@398) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@1) o_4@@434 f_5@@398)))
 :qid |stdinbpl.978:33|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@0) o_4@@434 f_5@@398))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@1) o_4@@434 f_5@@398))
))) (and (=> (= (ControlFlow 0 230) (- 0 236)) (forall ((r_16 T@Ref) (r_16_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_16 r_16_1)) (and (select lists r_16) (not (select lists r_16)))) (and (select lists r_16_1) (not (select lists r_16_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_16 r_16_1)))
 :qid |stdinbpl.990:21|
 :skolemid |113|
 :pattern ( (neverTriggered5 r_16) (neverTriggered5 r_16_1))
))) (=> (forall ((r_16@@0 T@Ref) (r_16_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_16@@0 r_16_1@@0)) (and (select lists r_16@@0) (not (select lists r_16@@0)))) (and (select lists r_16_1@@0) (not (select lists r_16_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_16@@0 r_16_1@@0)))
 :qid |stdinbpl.990:21|
 :skolemid |113|
 :pattern ( (neverTriggered5 r_16@@0) (neverTriggered5 r_16_1@@0))
)) (and (=> (= (ControlFlow 0 230) (- 0 235)) (forall ((r_16@@1 T@Ref) ) (!  (=> (and (select lists r_16@@1) (not (select lists r_16@@1))) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) r_16@@1 next) FullPerm))
 :qid |stdinbpl.997:21|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_16@@1 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) r_16@@1 next))
 :pattern ( (select lists r_16@@1))
 :pattern ( (select lists r_16@@1))
))) (=> (forall ((r_16@@2 T@Ref) ) (!  (=> (and (select lists r_16@@2) (not (select lists r_16@@2))) (>= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) r_16@@2 next) FullPerm))
 :qid |stdinbpl.997:21|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_16@@2 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) r_16@@2 next))
 :pattern ( (select lists r_16@@2))
 :pattern ( (select lists r_16@@2))
)) (=> (forall ((r_16@@3 T@Ref) ) (!  (=> (and (and (select lists r_16@@3) (not (select lists r_16@@3))) (< NoPerm FullPerm)) (and (qpRange5 r_16@@3) (= (invRecv5 r_16@@3) r_16@@3)))
 :qid |stdinbpl.1003:26|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_34738_23010_23011#PolymorphicMapType_34738| Heap@@36) r_16@@3 next))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) r_16@@3 next))
 :pattern ( (select lists r_16@@3))
 :pattern ( (select lists r_16@@3))
)) (=> (and (forall ((o_4@@435 T@Ref) ) (!  (=> (and (and (select lists (invRecv5 o_4@@435)) (not (select lists (invRecv5 o_4@@435)))) (and (< NoPerm FullPerm) (qpRange5 o_4@@435))) (= (invRecv5 o_4@@435) o_4@@435))
 :qid |stdinbpl.1007:26|
 :skolemid |116|
 :pattern ( (invRecv5 o_4@@435))
)) (forall ((o_4@@436 T@Ref) ) (!  (and (=> (and (and (select lists (invRecv5 o_4@@436)) (not (select lists (invRecv5 o_4@@436)))) (and (< NoPerm FullPerm) (qpRange5 o_4@@436))) (and (= (invRecv5 o_4@@436) o_4@@436) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@436 next) (- (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) o_4@@436 next) FullPerm)))) (=> (not (and (and (select lists (invRecv5 o_4@@436)) (not (select lists (invRecv5 o_4@@436)))) (and (< NoPerm FullPerm) (qpRange5 o_4@@436)))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@436 next) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) o_4@@436 next))))
 :qid |stdinbpl.1013:26|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@436 next))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@437 T@Ref) (f_5@@399 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@1) o_4@@437 f_5@@399) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@2) o_4@@437 f_5@@399)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@2) o_4@@437 f_5@@399))
)) (forall ((o_4@@438 T@Ref) (f_5@@400 T@Field_34811_34812) ) (!  (=> (not (= f_5@@400 next)) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@1) o_4@@438 f_5@@400) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@438 f_5@@400)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@438 f_5@@400))
))) (forall ((o_4@@439 T@Ref) (f_5@@401 T@Field_41147_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@1) o_4@@439 f_5@@401) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@2) o_4@@439 f_5@@401)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@2) o_4@@439 f_5@@401))
))) (forall ((o_4@@440 T@Ref) (f_5@@402 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@1) o_4@@440 f_5@@402) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@2) o_4@@440 f_5@@402)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@2) o_4@@440 f_5@@402))
))) (forall ((o_4@@441 T@Ref) (f_5@@403 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@1) o_4@@441 f_5@@403) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@2) o_4@@441 f_5@@403)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@2) o_4@@441 f_5@@403))
))) (forall ((o_4@@442 T@Ref) (f_5@@404 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@1) o_4@@442 f_5@@404) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@2) o_4@@442 f_5@@404)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@2) o_4@@442 f_5@@404))
))) (forall ((o_4@@443 T@Ref) (f_5@@405 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@1) o_4@@443 f_5@@405) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@2) o_4@@443 f_5@@405)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@2) o_4@@443 f_5@@405))
))) (forall ((o_4@@444 T@Ref) (f_5@@406 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@1) o_4@@444 f_5@@406) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@2) o_4@@444 f_5@@406)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@2) o_4@@444 f_5@@406))
))) (forall ((o_4@@445 T@Ref) (f_5@@407 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@1) o_4@@445 f_5@@407) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) o_4@@445 f_5@@407)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) o_4@@445 f_5@@407))
))) (forall ((o_4@@446 T@Ref) (f_5@@408 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@1) o_4@@446 f_5@@408) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@2) o_4@@446 f_5@@408)))
 :qid |stdinbpl.1019:33|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@2) o_4@@446 f_5@@408))
))) (and (=> (= (ControlFlow 0 230) (- 0 234)) (forall ((r_17 T@Ref) (r_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_17 r_17_1)) (select sNext@0 r_17)) (select sNext@0 r_17_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_17 r_17_1)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1031:21|
 :skolemid |119|
 :pattern ( (neverTriggered6 r_17) (neverTriggered6 r_17_1))
))) (=> (forall ((r_17@@0 T@Ref) (r_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_17@@0 r_17_1@@0)) (select sNext@0 r_17@@0)) (select sNext@0 r_17_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_17@@0 r_17_1@@0)) (not (= (- length_2 1) (- length_2 1)))))
 :qid |stdinbpl.1031:21|
 :skolemid |119|
 :pattern ( (neverTriggered6 r_17@@0) (neverTriggered6 r_17_1@@0))
)) (and (=> (= (ControlFlow 0 230) (- 0 233)) (forall ((r_17@@1 T@Ref) ) (!  (=> (select sNext@0 r_17@@1) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) null (list r_17@@1 (- length_2 1))) FullPerm))
 :qid |stdinbpl.1038:21|
 :skolemid |120|
 :pattern ( (select sNext@0 r_17@@1))
))) (=> (forall ((r_17@@2 T@Ref) ) (!  (=> (select sNext@0 r_17@@2) (>= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) null (list r_17@@2 (- length_2 1))) FullPerm))
 :qid |stdinbpl.1038:21|
 :skolemid |120|
 :pattern ( (select sNext@0 r_17@@2))
)) (=> (and (and (forall ((r_17@@3 T@Ref) ) (!  (=> (and (select sNext@0 r_17@@3) (< NoPerm FullPerm)) (and (= (invRecv6 r_17@@3 (- length_2 1)) r_17@@3) (qpRange6 r_17@@3 (- length_2 1))))
 :qid |stdinbpl.1044:26|
 :skolemid |121|
 :pattern ( (select sNext@0 r_17@@3))
)) (forall ((r_18_1 T@Ref) (i_4_1 Int) ) (!  (=> (and (and (select sNext@0 (invRecv6 r_18_1 i_4_1)) (< NoPerm FullPerm)) (qpRange6 r_18_1 i_4_1)) (and (= (invRecv6 r_18_1 i_4_1) r_18_1) (= (- length_2 1) i_4_1)))
 :qid |stdinbpl.1048:26|
 :skolemid |122|
 :pattern ( (invRecv6 r_18_1 i_4_1))
))) (and (forall ((r_18_1@@0 T@Ref) (i_4_1@@0 Int) ) (!  (=> (and (and (select sNext@0 (invRecv6 r_18_1@@0 i_4_1@@0)) (< NoPerm FullPerm)) (qpRange6 r_18_1@@0 i_4_1@@0)) (and (and (= (invRecv6 r_18_1@@0 i_4_1@@0) r_18_1@@0) (= (- length_2 1) i_4_1@@0)) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) null (list r_18_1@@0 i_4_1@@0)) (- (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) null (list r_18_1@@0 i_4_1@@0)) FullPerm))))
 :qid |stdinbpl.1054:26|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) null (list r_18_1@@0 i_4_1@@0)))
)) (forall ((r_18_1@@1 T@Ref) (i_4_1@@1 Int) ) (!  (=> (not (and (and (select sNext@0 (invRecv6 r_18_1@@1 i_4_1@@1)) (< NoPerm FullPerm)) (qpRange6 r_18_1@@1 i_4_1@@1))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) null (list r_18_1@@1 i_4_1@@1)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) null (list r_18_1@@1 i_4_1@@1))))
 :qid |stdinbpl.1058:26|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) null (list r_18_1@@1 i_4_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@447 T@Ref) (f_5@@409 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@447 null)) (not (IsPredicateField_23476_4470 f_5@@409))) (not (= (getPredWandId_23476_4470 f_5@@409) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@2) o_4@@447 f_5@@409) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) o_4@@447 f_5@@409)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@2) o_4@@447 f_5@@409))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) o_4@@447 f_5@@409))
)) (forall ((o_4@@448 T@Ref) (f_5@@410 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@448 null)) (not (IsPredicateField_23478_23479 f_5@@410))) (not (= (getPredWandId_23476_23479 f_5@@410) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@448 f_5@@410) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@3) o_4@@448 f_5@@410)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@2) o_4@@448 f_5@@410))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@3) o_4@@448 f_5@@410))
))) (forall ((o_4@@449 T@Ref) (f_5@@411 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@449 null)) (not (IsPredicateField_23476_111428 f_5@@411))) (not (= (getPredWandId_23476_23513 f_5@@411) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@2) o_4@@449 f_5@@411) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@3) o_4@@449 f_5@@411)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@2) o_4@@449 f_5@@411))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@3) o_4@@449 f_5@@411))
))) (forall ((o_4@@450 T@Ref) (f_5@@412 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@450 null)) (not (IsPredicateField_23476_53 f_5@@412))) (not (= (getPredWandId_23476_53 f_5@@412) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@2) o_4@@450 f_5@@412) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@3) o_4@@450 f_5@@412)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@2) o_4@@450 f_5@@412))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@3) o_4@@450 f_5@@412))
))) (forall ((o_4@@451 T@Ref) (f_5@@413 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@451 null)) (not (IsPredicateField_23476_122001 f_5@@413))) (not (= (getPredWandId_23476_131207 f_5@@413) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@2) o_4@@451 f_5@@413) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@3) o_4@@451 f_5@@413)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@2) o_4@@451 f_5@@413))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@3) o_4@@451 f_5@@413))
))) (forall ((o_4@@452 T@Ref) (f_5@@414 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@452 null)) (not (IsPredicateField_23512_4470 f_5@@414))) (not (= (getPredWandId_23512_4470 f_5@@414) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@2) o_4@@452 f_5@@414) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@3) o_4@@452 f_5@@414)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@2) o_4@@452 f_5@@414))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@3) o_4@@452 f_5@@414))
))) (forall ((o_4@@453 T@Ref) (f_5@@415 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@453 null)) (not (IsPredicateField_23512_23479 f_5@@415))) (not (= (getPredWandId_23512_23479 f_5@@415) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@2) o_4@@453 f_5@@415) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@3) o_4@@453 f_5@@415)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@2) o_4@@453 f_5@@415))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@3) o_4@@453 f_5@@415))
))) (forall ((o_4@@454 T@Ref) (f_5@@416 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@454 null)) (not (IsPredicateField_23512_23513 f_5@@416))) (not (= (getPredWandId_23512_23513 f_5@@416) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) o_4@@454 f_5@@416) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) o_4@@454 f_5@@416)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@2) o_4@@454 f_5@@416))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) o_4@@454 f_5@@416))
))) (forall ((o_4@@455 T@Ref) (f_5@@417 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@455 null)) (not (IsPredicateField_23512_53 f_5@@417))) (not (= (getPredWandId_23512_53 f_5@@417) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@2) o_4@@455 f_5@@417) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@3) o_4@@455 f_5@@417)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@2) o_4@@455 f_5@@417))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@3) o_4@@455 f_5@@417))
))) (forall ((o_4@@456 T@Ref) (f_5@@418 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@456 null)) (not (IsPredicateField_23512_121198 f_5@@418))) (not (= (getPredWandId_23512_132016 f_5@@418) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@2) o_4@@456 f_5@@418) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@3) o_4@@456 f_5@@418)))
 :qid |stdinbpl.1064:33|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@2) o_4@@456 f_5@@418))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@3) o_4@@456 f_5@@418))
))) (and (=> (= (ControlFlow 0 230) (- 0 232)) (forall ((r_19 T@Ref) (r_19_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_19 r_19_1)) (and (select lists r_19) (not (select lists r_19)))) (and (select lists r_19_1) (not (select lists r_19_1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_19 r_19_1)))
 :qid |stdinbpl.1076:21|
 :skolemid |126|
 :pattern ( (neverTriggered7 r_19) (neverTriggered7 r_19_1))
))) (=> (forall ((r_19@@0 T@Ref) (r_19_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_19@@0 r_19_1@@0)) (and (select lists r_19@@0) (not (select lists r_19@@0)))) (and (select lists r_19_1@@0) (not (select lists r_19_1@@0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_19@@0 r_19_1@@0)))
 :qid |stdinbpl.1076:21|
 :skolemid |126|
 :pattern ( (neverTriggered7 r_19@@0) (neverTriggered7 r_19_1@@0))
)) (and (=> (= (ControlFlow 0 230) (- 0 231)) (forall ((r_19@@1 T@Ref) ) (!  (=> (and (select lists r_19@@1) (not (select lists r_19@@1))) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) r_19@@1 val) FullPerm))
 :qid |stdinbpl.1083:21|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_19@@1 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) r_19@@1 val))
 :pattern ( (select lists r_19@@1))
 :pattern ( (select lists r_19@@1))
))) (=> (forall ((r_19@@2 T@Ref) ) (!  (=> (and (select lists r_19@@2) (not (select lists r_19@@2))) (>= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) r_19@@2 val) FullPerm))
 :qid |stdinbpl.1083:21|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_19@@2 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) r_19@@2 val))
 :pattern ( (select lists r_19@@2))
 :pattern ( (select lists r_19@@2))
)) (=> (forall ((r_19@@3 T@Ref) ) (!  (=> (and (and (select lists r_19@@3) (not (select lists r_19@@3))) (< NoPerm FullPerm)) (and (qpRange7 r_19@@3) (= (invRecv7 r_19@@3) r_19@@3)))
 :qid |stdinbpl.1089:26|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_34738_23476_4470#PolymorphicMapType_34738| Heap@@36) r_19@@3 val))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) r_19@@3 val))
 :pattern ( (select lists r_19@@3))
 :pattern ( (select lists r_19@@3))
)) (=> (and (forall ((o_4@@457 T@Ref) ) (!  (=> (and (and (select lists (invRecv7 o_4@@457)) (not (select lists (invRecv7 o_4@@457)))) (and (< NoPerm FullPerm) (qpRange7 o_4@@457))) (= (invRecv7 o_4@@457) o_4@@457))
 :qid |stdinbpl.1093:26|
 :skolemid |129|
 :pattern ( (invRecv7 o_4@@457))
)) (forall ((o_4@@458 T@Ref) ) (!  (and (=> (and (and (select lists (invRecv7 o_4@@458)) (not (select lists (invRecv7 o_4@@458)))) (and (< NoPerm FullPerm) (qpRange7 o_4@@458))) (and (= (invRecv7 o_4@@458) o_4@@458) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@458 val) (- (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) o_4@@458 val) FullPerm)))) (=> (not (and (and (select lists (invRecv7 o_4@@458)) (not (select lists (invRecv7 o_4@@458)))) (and (< NoPerm FullPerm) (qpRange7 o_4@@458)))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@458 val) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) o_4@@458 val))))
 :qid |stdinbpl.1099:26|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@458 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@459 T@Ref) (f_5@@419 T@Field_34798_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@3) o_4@@459 f_5@@419) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@459 f_5@@419)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@4) o_4@@459 f_5@@419))
)) (forall ((o_4@@460 T@Ref) (f_5@@420 T@Field_34811_34812) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@3) o_4@@460 f_5@@420) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@460 f_5@@420)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@4) o_4@@460 f_5@@420))
))) (forall ((o_4@@461 T@Ref) (f_5@@421 T@Field_41147_4470) ) (!  (=> (not (= f_5@@421 val)) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@3) o_4@@461 f_5@@421) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@461 f_5@@421)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@4) o_4@@461 f_5@@421))
))) (forall ((o_4@@462 T@Ref) (f_5@@422 T@Field_23476_23513) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@3) o_4@@462 f_5@@422) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@462 f_5@@422)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@4) o_4@@462 f_5@@422))
))) (forall ((o_4@@463 T@Ref) (f_5@@423 T@Field_23476_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@3) o_4@@463 f_5@@423) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@463 f_5@@423)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@4) o_4@@463 f_5@@423))
))) (forall ((o_4@@464 T@Ref) (f_5@@424 T@Field_23512_53) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@3) o_4@@464 f_5@@424) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@464 f_5@@424)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@4) o_4@@464 f_5@@424))
))) (forall ((o_4@@465 T@Ref) (f_5@@425 T@Field_23512_23479) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@3) o_4@@465 f_5@@425) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@465 f_5@@425)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@4) o_4@@465 f_5@@425))
))) (forall ((o_4@@466 T@Ref) (f_5@@426 T@Field_23512_4470) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@3) o_4@@466 f_5@@426) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@466 f_5@@426)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@4) o_4@@466 f_5@@426))
))) (forall ((o_4@@467 T@Ref) (f_5@@427 T@Field_41643_41644) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@3) o_4@@467 f_5@@427) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@467 f_5@@427)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@4) o_4@@467 f_5@@427))
))) (forall ((o_4@@468 T@Ref) (f_5@@428 T@Field_44338_44343) ) (!  (=> true (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@3) o_4@@468 f_5@@428) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@468 f_5@@428)))
 :qid |stdinbpl.1105:33|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@4) o_4@@468 f_5@@428))
))) (and (and (=> (= (ControlFlow 0 230) 229) anon158_Else_correct) (=> (= (ControlFlow 0 230) 3) anon159_Then_correct)) (=> (= (ControlFlow 0 230) 5) anon159_Else_correct))))))))))))))))))))))))))))))))
(let ((anon152_Else_correct  (and (=> (= (ControlFlow 0 249) (- 0 250)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select lists r_1_1)) (select lists r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1 r_1_2)) (not (= length_2 length_2))))
 :qid |stdinbpl.807:17|
 :skolemid |93|
 :pattern ( (neverTriggered1 r_1_1) (neverTriggered1 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select lists r_1_1@@0)) (select lists r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1@@0 r_1_2@@0)) (not (= length_2 length_2))))
 :qid |stdinbpl.807:17|
 :skolemid |93|
 :pattern ( (neverTriggered1 r_1_1@@0) (neverTriggered1 r_1_2@@0))
)) (=> (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select lists r_1_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 r_1_1@@1 length_2) r_1_1@@1) (qpRange1 r_1_1@@1 length_2)))
 :qid |stdinbpl.813:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_34738_23512_23513#PolymorphicMapType_34738| Heap@@36) null (list r_1_1@@1 length_2)))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_1_1@@1 length_2)))
 :pattern ( (select lists r_1_1@@1))
)) (=> (and (forall ((r_2_1_1 T@Ref) (i@@9 Int) ) (!  (=> (and (and (select lists (invRecv1 r_2_1_1 i@@9)) (< NoPerm FullPerm)) (qpRange1 r_2_1_1 i@@9)) (and (= (invRecv1 r_2_1_1 i@@9) r_2_1_1) (= length_2 i@@9)))
 :qid |stdinbpl.817:22|
 :skolemid |95|
 :pattern ( (invRecv1 r_2_1_1 i@@9))
)) (forall ((r_2_1_1@@0 T@Ref) (i@@10 Int) ) (!  (=> (and (and (select lists (invRecv1 r_2_1_1@@0 i@@10)) (< NoPerm FullPerm)) (qpRange1 r_2_1_1@@0 i@@10)) (and (=> (< NoPerm FullPerm) (and (= (invRecv1 r_2_1_1@@0 i@@10) r_2_1_1@@0) (= length_2 i@@10))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_2_1_1@@0 i@@10)) (+ (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_2_1_1@@0 i@@10)) FullPerm))))
 :qid |stdinbpl.823:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_2_1_1@@0 i@@10)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@469 T@Ref) (f_5@@429 T@Field_41147_4470) ) (!  (=> (or (or (not (= o_4@@469 null)) (not (IsPredicateField_23476_4470 f_5@@429))) (not (= (getPredWandId_23476_4470 f_5@@429) 0))) (= (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@469 f_5@@429) (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@0) o_4@@469 f_5@@429)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| ZeroMask) o_4@@469 f_5@@429))
 :pattern ( (select (|PolymorphicMapType_34759_23476_4470#PolymorphicMapType_34759| QPMask@0) o_4@@469 f_5@@429))
)) (forall ((o_4@@470 T@Ref) (f_5@@430 T@Field_34811_34812) ) (!  (=> (or (or (not (= o_4@@470 null)) (not (IsPredicateField_23478_23479 f_5@@430))) (not (= (getPredWandId_23476_23479 f_5@@430) 0))) (= (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@470 f_5@@430) (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@0) o_4@@470 f_5@@430)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| ZeroMask) o_4@@470 f_5@@430))
 :pattern ( (select (|PolymorphicMapType_34759_23478_23479#PolymorphicMapType_34759| QPMask@0) o_4@@470 f_5@@430))
))) (forall ((o_4@@471 T@Ref) (f_5@@431 T@Field_23476_23513) ) (!  (=> (or (or (not (= o_4@@471 null)) (not (IsPredicateField_23476_111428 f_5@@431))) (not (= (getPredWandId_23476_23513 f_5@@431) 0))) (= (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@471 f_5@@431) (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@0) o_4@@471 f_5@@431)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| ZeroMask) o_4@@471 f_5@@431))
 :pattern ( (select (|PolymorphicMapType_34759_23476_23513#PolymorphicMapType_34759| QPMask@0) o_4@@471 f_5@@431))
))) (forall ((o_4@@472 T@Ref) (f_5@@432 T@Field_34798_53) ) (!  (=> (or (or (not (= o_4@@472 null)) (not (IsPredicateField_23476_53 f_5@@432))) (not (= (getPredWandId_23476_53 f_5@@432) 0))) (= (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@472 f_5@@432) (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@0) o_4@@472 f_5@@432)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| ZeroMask) o_4@@472 f_5@@432))
 :pattern ( (select (|PolymorphicMapType_34759_23476_53#PolymorphicMapType_34759| QPMask@0) o_4@@472 f_5@@432))
))) (forall ((o_4@@473 T@Ref) (f_5@@433 T@Field_23476_44343) ) (!  (=> (or (or (not (= o_4@@473 null)) (not (IsPredicateField_23476_122001 f_5@@433))) (not (= (getPredWandId_23476_131207 f_5@@433) 0))) (= (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@473 f_5@@433) (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@0) o_4@@473 f_5@@433)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| ZeroMask) o_4@@473 f_5@@433))
 :pattern ( (select (|PolymorphicMapType_34759_23476_119723#PolymorphicMapType_34759| QPMask@0) o_4@@473 f_5@@433))
))) (forall ((o_4@@474 T@Ref) (f_5@@434 T@Field_23512_4470) ) (!  (=> (or (or (not (= o_4@@474 null)) (not (IsPredicateField_23512_4470 f_5@@434))) (not (= (getPredWandId_23512_4470 f_5@@434) 0))) (= (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@474 f_5@@434) (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@0) o_4@@474 f_5@@434)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| ZeroMask) o_4@@474 f_5@@434))
 :pattern ( (select (|PolymorphicMapType_34759_23512_4470#PolymorphicMapType_34759| QPMask@0) o_4@@474 f_5@@434))
))) (forall ((o_4@@475 T@Ref) (f_5@@435 T@Field_23512_23479) ) (!  (=> (or (or (not (= o_4@@475 null)) (not (IsPredicateField_23512_23479 f_5@@435))) (not (= (getPredWandId_23512_23479 f_5@@435) 0))) (= (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@475 f_5@@435) (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@0) o_4@@475 f_5@@435)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| ZeroMask) o_4@@475 f_5@@435))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23479#PolymorphicMapType_34759| QPMask@0) o_4@@475 f_5@@435))
))) (forall ((o_4@@476 T@Ref) (f_5@@436 T@Field_41643_41644) ) (!  (=> (or (or (not (= o_4@@476 null)) (not (IsPredicateField_23512_23513 f_5@@436))) (not (= (getPredWandId_23512_23513 f_5@@436) 0))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@476 f_5@@436) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) o_4@@476 f_5@@436)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) o_4@@476 f_5@@436))
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) o_4@@476 f_5@@436))
))) (forall ((o_4@@477 T@Ref) (f_5@@437 T@Field_23512_53) ) (!  (=> (or (or (not (= o_4@@477 null)) (not (IsPredicateField_23512_53 f_5@@437))) (not (= (getPredWandId_23512_53 f_5@@437) 0))) (= (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@477 f_5@@437) (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@0) o_4@@477 f_5@@437)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| ZeroMask) o_4@@477 f_5@@437))
 :pattern ( (select (|PolymorphicMapType_34759_23512_53#PolymorphicMapType_34759| QPMask@0) o_4@@477 f_5@@437))
))) (forall ((o_4@@478 T@Ref) (f_5@@438 T@Field_44338_44343) ) (!  (=> (or (or (not (= o_4@@478 null)) (not (IsPredicateField_23512_121198 f_5@@438))) (not (= (getPredWandId_23512_132016 f_5@@438) 0))) (= (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@478 f_5@@438) (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@0) o_4@@478 f_5@@438)))
 :qid |stdinbpl.829:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| ZeroMask) o_4@@478 f_5@@438))
 :pattern ( (select (|PolymorphicMapType_34759_23512_119324#PolymorphicMapType_34759| QPMask@0) o_4@@478 f_5@@438))
))) (forall ((r_2_1_1@@1 T@Ref) (i@@11 Int) ) (!  (=> (not (and (and (select lists (invRecv1 r_2_1_1@@1 i@@11)) (< NoPerm FullPerm)) (qpRange1 r_2_1_1@@1 i@@11))) (= (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_2_1_1@@1 i@@11)) (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| ZeroMask) null (list r_2_1_1@@1 i@@11))))
 :qid |stdinbpl.833:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_34759_23512_23513#PolymorphicMapType_34759| QPMask@0) null (list r_2_1_1@@1 i@@11)))
))) (and (state Heap@@36 QPMask@0) (state Heap@@36 QPMask@0))) (and (=> (= (ControlFlow 0 249) 248) anon153_Then_correct) (=> (= (ControlFlow 0 249) 230) anon153_Else_correct)))))))))
(let ((anon152_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (> length_2 0) (state Heap@@36 ZeroMask))) (and (=> (= (ControlFlow 0 251) 1) anon152_Then_correct) (=> (= (ControlFlow 0 251) 249) anon152_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 252) 251) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
