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
(declare-sort T@Field_27311_53 0)
(declare-sort T@Field_27324_27325 0)
(declare-sort T@Field_48695_48696 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_51165_51170 0)
(declare-sort T@Field_16052_16469 0)
(declare-sort T@Field_16052_51170 0)
(declare-sort T@Field_16468_16053 0)
(declare-sort T@Field_16468_53 0)
(declare-datatypes ((T@PolymorphicMapType_27272 0)) (((PolymorphicMapType_27272 (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| (Array T@Ref T@Field_48695_48696 Real)) (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| (Array T@Ref T@Field_27324_27325 Real)) (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| (Array T@Ref T@Field_16468_16053 Real)) (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| (Array T@Ref T@Field_16468_53 Real)) (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| (Array T@Ref T@Field_51165_51170 Real)) (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| (Array T@Ref T@Field_16052_16469 Real)) (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| (Array T@Ref T@Field_27311_53 Real)) (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| (Array T@Ref T@Field_16052_51170 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27800 0)) (((PolymorphicMapType_27800 (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (Array T@Ref T@Field_27324_27325 Bool)) (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (Array T@Ref T@Field_27311_53 Bool)) (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (Array T@Ref T@Field_16052_16469 Bool)) (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (Array T@Ref T@Field_16052_51170 Bool)) (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (Array T@Ref T@Field_16468_16053 Bool)) (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (Array T@Ref T@Field_16468_53 Bool)) (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (Array T@Ref T@Field_48695_48696 Bool)) (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (Array T@Ref T@Field_51165_51170 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27251 0)) (((PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| (Array T@Ref T@Field_27311_53 Bool)) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| (Array T@Ref T@Field_27324_27325 T@Ref)) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| (Array T@Ref T@Field_48695_48696 T@FrameType)) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| (Array T@Ref T@Field_51165_51170 T@PolymorphicMapType_27800)) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| (Array T@Ref T@Field_16052_16469 T@FrameType)) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| (Array T@Ref T@Field_16052_51170 T@PolymorphicMapType_27800)) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| (Array T@Ref T@Field_16468_16053 T@Ref)) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| (Array T@Ref T@Field_16468_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_27311_53)
(declare-fun next () T@Field_27324_27325)
(declare-sort T@Seq_8395 0)
(declare-fun |Seq#Length_8470| (T@Seq_8395) Int)
(declare-fun |Seq#Drop_8470| (T@Seq_8395 Int) T@Seq_8395)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_7775| (T@Seq_2867 Int) T@Seq_2867)
(declare-sort T@PredicateInstanceDomainType 0)
(declare-fun nestedPredicates (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_27251 T@PolymorphicMapType_27272) Bool)
(declare-fun booleans (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |booleans'| (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun succHeap (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251) Bool)
(declare-sort T@MultiSet_9339 0)
(declare-fun bounded_57397 (T@MultiSet_9339) Bool)
(declare-fun bounded_5179 (Bool) Bool)
(declare-fun bounded_16040 (T@PredicateInstanceDomainType) Bool)
(declare-fun bounded_16051 (T@Ref) Bool)
(declare-fun |MultiSet#Card_9414| (T@MultiSet_9339) Int)
(declare-fun |MultiSet#Difference_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun |MultiSet#Intersection_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun |MultiSet#Union_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun GoodMask (T@PolymorphicMapType_27272) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251 T@PolymorphicMapType_27272) Bool)
(declare-fun IsPredicateField_16468_16469 (T@Field_48695_48696) Bool)
(declare-fun HasDirectPerm_16468_16469 (T@PolymorphicMapType_27272 T@Ref T@Field_48695_48696) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16468 (T@Field_48695_48696) T@Field_51165_51170)
(declare-fun IsPredicateField_16052_78189 (T@Field_16052_16469) Bool)
(declare-fun HasDirectPerm_16052_16469 (T@PolymorphicMapType_27272 T@Ref T@Field_16052_16469) Bool)
(declare-fun PredicateMaskField_16052 (T@Field_16052_16469) T@Field_16052_51170)
(declare-fun IsWandField_16468_81475 (T@Field_48695_48696) Bool)
(declare-fun WandMaskField_16468 (T@Field_48695_48696) T@Field_51165_51170)
(declare-fun IsWandField_16052_81118 (T@Field_16052_16469) Bool)
(declare-fun WandMaskField_16052 (T@Field_16052_16469) T@Field_16052_51170)
(declare-fun ZeroPMask () T@PolymorphicMapType_27800)
(declare-fun sequences_e (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |sequences_e'| (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |Seq#Append_8117| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_8470| (T@Seq_8395 Int) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_8470| () T@Seq_8395)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun decreasing_645 (Real Real) Bool)
(declare-fun references_e (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |references_e'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun references (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |references'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun list (T@Ref) T@Field_48695_48696)
(declare-fun |fact'| (T@PolymorphicMapType_27251 Int) Int)
(declare-fun dummyFunction_5652 (Int) Bool)
(declare-fun |fact#triggerStateless| (Int) Int)
(declare-fun |fact_e'| (T@PolymorphicMapType_27251 Int) Int)
(declare-fun |fact_e#triggerStateless| (Int) Int)
(declare-fun |references#triggerStateless| (T@Ref) Int)
(declare-fun |references_e#triggerStateless| (T@Ref) Int)
(declare-fun |booleans#triggerStateless| (Bool) Int)
(declare-fun |booleans_e'| (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun |booleans_e#triggerStateless| (Bool) Int)
(declare-fun |rationals'| (T@PolymorphicMapType_27251 Real) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |rationals#triggerStateless| (Real) Real)
(declare-fun |rationals_e'| (T@PolymorphicMapType_27251 Real) Real)
(declare-fun |rationals_e#triggerStateless| (Real) Real)
(declare-fun |sequences'| (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |sequences#triggerStateless| (T@Seq_2867) Int)
(declare-fun |sequences_e#triggerStateless| (T@Seq_2867) Int)
(declare-fun |numberOfUsers'| (T@PolymorphicMapType_27251 T@Seq_8395) Int)
(declare-fun |numberOfUsers#triggerStateless| (T@Seq_8395) Int)
(declare-fun |sets'| (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun |sets#triggerStateless| ((Array Int Bool)) Int)
(declare-fun |sets_e'| (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun |sets_e#triggerStateless| ((Array Int Bool)) Int)
(declare-fun |multiSets'| (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun |multiSets#triggerStateless| (T@MultiSet_9339) Int)
(declare-fun |multiSets_e'| (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun |multiSets_e#triggerStateless| (T@MultiSet_9339) Int)
(declare-fun |predicates'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |predicates#triggerStateless| (T@Ref) Int)
(declare-fun |predicates_e'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |predicates_e#triggerStateless| (T@Ref) Int)
(declare-fun |PI_list'| (T@PolymorphicMapType_27251 T@Ref) T@PredicateInstanceDomainType)
(declare-fun dummyFunction_16461 (T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#triggerStateless| (T@Ref) T@PredicateInstanceDomainType)
(declare-fun |list#trigger_16468| (T@PolymorphicMapType_27251 T@Field_48695_48696) Bool)
(declare-fun |list#everUsed_16468| (T@Field_48695_48696) Bool)
(declare-fun |Seq#Update_8470| (T@Seq_8395 Int Bool) T@Seq_8395)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |MultiSet#Select_9414| (T@MultiSet_9339 Int) Int)
(declare-fun |Set#Union_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun rationals_e (T@PolymorphicMapType_27251 Real) Real)
(declare-fun |Set#Singleton_2998| (Int) (Array Int Bool))
(declare-fun |Seq#Take_8470| (T@Seq_8395 Int) T@Seq_8395)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Set#Card_8806| ((Array Int Bool)) Int)
(declare-fun |booleans#trigger| (T@FrameType Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |booleans_e#trigger| (T@FrameType Bool) Bool)
(declare-fun |Seq#Contains_8395| (T@Seq_8395 Bool) Bool)
(declare-fun |Seq#Skolem_8395| (T@Seq_8395 Bool) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun fact (T@PolymorphicMapType_27251 Int) Int)
(declare-fun fact_e (T@PolymorphicMapType_27251 Int) Int)
(declare-fun booleans_e (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun rationals (T@PolymorphicMapType_27251 Real) Real)
(declare-fun sequences (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun numberOfUsers (T@PolymorphicMapType_27251 T@Seq_8395) Int)
(declare-fun sets (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun sets_e (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun multiSets (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun multiSets_e (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun predicates (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun predicates_e (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun PI_list (T@PolymorphicMapType_27251 T@Ref) T@PredicateInstanceDomainType)
(declare-fun |Math#clip| (Int) Int)
(declare-fun decreasing_5318 (Int Int) Bool)
(declare-fun |Seq#Singleton_8470| (Bool) T@Seq_8395)
(declare-fun |list#sm| (T@Ref) T@Field_51165_51170)
(declare-fun |Seq#Append_8395| (T@Seq_8395 T@Seq_8395) T@Seq_8395)
(declare-fun |sequences_e#trigger| (T@FrameType T@Seq_2867) Bool)
(declare-fun |sequences#trigger| (T@FrameType T@Seq_2867) Bool)
(declare-fun decreasing_5 (Bool Bool) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_27251)
(declare-fun ZeroMask () T@PolymorphicMapType_27272)
(declare-fun |MultiSet#UnionOne_3| (T@MultiSet_9339 Int) T@MultiSet_9339)
(declare-fun |MultiSet#Disjoint_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun decreasing_57554 (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun decreasing_63949 ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun decreasing_63282 (T@Seq_8395 T@Seq_8395) Bool)
(declare-fun decreasing_62320 (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun InsidePredicate_27311_27311 (T@Field_16052_16469 T@FrameType T@Field_16052_16469 T@FrameType) Bool)
(declare-fun InsidePredicate_16468_16468 (T@Field_48695_48696 T@FrameType T@Field_48695_48696 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_4089| (Int) T@MultiSet_9339)
(declare-fun IsPredicateField_16052_16053 (T@Field_27324_27325) Bool)
(declare-fun IsWandField_16052_16053 (T@Field_27324_27325) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16052_87186 (T@Field_16052_51170) Bool)
(declare-fun IsWandField_16052_87202 (T@Field_16052_51170) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16052_53 (T@Field_27311_53) Bool)
(declare-fun IsWandField_16052_53 (T@Field_27311_53) Bool)
(declare-fun IsPredicateField_16468_86537 (T@Field_51165_51170) Bool)
(declare-fun IsWandField_16468_86553 (T@Field_51165_51170) Bool)
(declare-fun IsPredicateField_16468_53 (T@Field_16468_53) Bool)
(declare-fun IsWandField_16468_53 (T@Field_16468_53) Bool)
(declare-fun IsPredicateField_16468_16053 (T@Field_16468_16053) Bool)
(declare-fun IsWandField_16468_16053 (T@Field_16468_16053) Bool)
(declare-fun HasDirectPerm_16468_77944 (T@PolymorphicMapType_27272 T@Ref T@Field_51165_51170) Bool)
(declare-fun HasDirectPerm_16468_53 (T@PolymorphicMapType_27272 T@Ref T@Field_16468_53) Bool)
(declare-fun HasDirectPerm_16468_16053 (T@PolymorphicMapType_27272 T@Ref T@Field_16468_16053) Bool)
(declare-fun HasDirectPerm_16052_77024 (T@PolymorphicMapType_27272 T@Ref T@Field_16052_51170) Bool)
(declare-fun HasDirectPerm_16052_53 (T@PolymorphicMapType_27272 T@Ref T@Field_27311_53) Bool)
(declare-fun HasDirectPerm_16052_16053 (T@PolymorphicMapType_27272 T@Ref T@Field_27324_27325) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27272 T@PolymorphicMapType_27272 T@PolymorphicMapType_27272) Bool)
(declare-fun decreasing_15675 (T@Ref T@Ref) Bool)
(declare-fun |Set#Difference_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun bounded_5343 (Int) Bool)
(declare-fun decreasing_16038 (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun |Seq#Equal_8395| (T@Seq_8395 T@Seq_8395) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |MultiSet#Equal_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun |Set#UnionOne_8806| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun bounded_63300 (T@Seq_8395) Bool)
(declare-fun bounded_62338 (T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_8470| (T@Seq_8395 Bool) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |MultiSet#Empty_9414| () T@MultiSet_9339)
(declare-fun |predicates#frame| (T@FrameType T@Ref) Int)
(declare-fun |predicates_e#frame| (T@FrameType T@Ref) Int)
(declare-fun |PI_list#frame| (T@FrameType T@Ref) T@PredicateInstanceDomainType)
(declare-fun getPredWandId_16468_16469 (T@Field_48695_48696) Int)
(declare-fun |fact#frame| (T@FrameType Int) Int)
(declare-fun |fact_e#frame| (T@FrameType Int) Int)
(declare-fun |references#frame| (T@FrameType T@Ref) Int)
(declare-fun |references_e#frame| (T@FrameType T@Ref) Int)
(declare-fun |booleans#frame| (T@FrameType Bool) Int)
(declare-fun |booleans_e#frame| (T@FrameType Bool) Int)
(declare-fun |rationals#frame| (T@FrameType Real) Real)
(declare-fun |rationals_e#frame| (T@FrameType Real) Real)
(declare-fun |sequences#frame| (T@FrameType T@Seq_2867) Int)
(declare-fun |sequences_e#frame| (T@FrameType T@Seq_2867) Int)
(declare-fun |numberOfUsers#frame| (T@FrameType T@Seq_8395) Int)
(declare-fun |sets#frame| (T@FrameType (Array Int Bool)) Int)
(declare-fun |sets_e#frame| (T@FrameType (Array Int Bool)) Int)
(declare-fun |multiSets#frame| (T@FrameType T@MultiSet_9339) Int)
(declare-fun |multiSets_e#frame| (T@FrameType T@MultiSet_9339) Int)
(declare-fun |Set#Empty_8806| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_8395| (T@Seq_8395 T@Seq_8395) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_27311_16468 (T@Field_16052_16469 T@FrameType T@Field_48695_48696 T@FrameType) Bool)
(declare-fun InsidePredicate_16468_27311 (T@Field_48695_48696 T@FrameType T@Field_16052_16469 T@FrameType) Bool)
(declare-fun |MultiSet#Subset_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun bounded_645 (Real) Bool)
(assert (forall ((s T@Seq_8395) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8470| s)) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) (- (|Seq#Length_8470| s) n))) (=> (< (|Seq#Length_8470| s) n) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) (|Seq#Length_8470| s))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8470| (|Seq#Drop_8470| s n)))
 :pattern ( (|Seq#Length_8470| s) (|Seq#Drop_8470| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_7775| s@@0 n@@0))
)))
(assert (forall ((l1_1 T@PredicateInstanceDomainType) ) (!  (not (nestedPredicates l1_1 l1_1))
 :qid |stdinbpl.873:15|
 :skolemid |128|
 :pattern ( (nestedPredicates l1_1 l1_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27251) (Mask T@PolymorphicMapType_27272) (b_24 Bool) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 2)) (= (booleans Heap b_24) (ite b_24 (|booleans'| Heap  (not b_24)) 1)))
 :qid |stdinbpl.1247:15|
 :skolemid |153|
 :pattern ( (state Heap Mask) (booleans Heap b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27251) (Heap1 T@PolymorphicMapType_27251) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((mSet1 T@MultiSet_9339) ) (! (bounded_57397 mSet1)
 :qid |stdinbpl.765:19|
 :skolemid |119|
 :pattern ( (bounded_57397 mSet1))
)))
(assert (forall ((bool1 Bool) ) (! (bounded_5179 bool1)
 :qid |stdinbpl.832:15|
 :skolemid |124|
 :pattern ( (bounded_5179 bool1))
)))
(assert (forall ((l1_1@@0 T@PredicateInstanceDomainType) ) (! (bounded_16040 l1_1@@0)
 :qid |stdinbpl.851:15|
 :skolemid |126|
 :pattern ( (bounded_16040 l1_1@@0))
)))
(assert (forall ((ref1 T@Ref) ) (! (bounded_16051 ref1)
 :qid |stdinbpl.937:15|
 :skolemid |134|
 :pattern ( (bounded_16051 ref1))
)))
(assert (forall ((a T@MultiSet_9339) (b T@MultiSet_9339) ) (!  (and (= (+ (+ (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)) (|MultiSet#Card_9414| (|MultiSet#Difference_9414| b a))) (* 2 (|MultiSet#Card_9414| (|MultiSet#Intersection_9414| a b)))) (|MultiSet#Card_9414| (|MultiSet#Union_9414| a b))) (= (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)) (- (|MultiSet#Card_9414| a) (|MultiSet#Card_9414| (|MultiSet#Intersection_9414| a b)))))
 :qid |stdinbpl.726:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27251) (Mask@@0 T@PolymorphicMapType_27272) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27251) (ExhaleHeap T@PolymorphicMapType_27251) (Mask@@1 T@PolymorphicMapType_27272) (pm_f_19 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_16468_16469 Mask@@1 null pm_f_19) (IsPredicateField_16468_16469 pm_f_19)) (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19 f_19) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@1) o2_19 f_19) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@1) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@1) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@1) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@1) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap) o2_19@@3 f_19@@3))
))) (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@1) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@4 f_19@@4))
))) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@1) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap) o2_19@@6 f_19@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (IsPredicateField_16468_16469 pm_f_19))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27251) (ExhaleHeap@@0 T@PolymorphicMapType_27251) (Mask@@2 T@PolymorphicMapType_27272) (pm_f_19@@0 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16052_16469 Mask@@2 null pm_f_19@@0) (IsPredicateField_16052_78189 pm_f_19@@0)) (and (and (and (and (and (and (and (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@2) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@7 f_19@@7))
)) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@2) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@8 f_19@@8))
))) (forall ((o2_19@@9 T@Ref) (f_19@@9 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@9 f_19@@9) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@2) o2_19@@9 f_19@@9) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@9 f_19@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@9 f_19@@9))
))) (forall ((o2_19@@10 T@Ref) (f_19@@10 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@10 f_19@@10) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) o2_19@@10 f_19@@10) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@10 f_19@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@10 f_19@@10))
))) (forall ((o2_19@@11 T@Ref) (f_19@@11 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@11 f_19@@11) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@2) o2_19@@11 f_19@@11) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@11 f_19@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@11 f_19@@11))
))) (forall ((o2_19@@12 T@Ref) (f_19@@12 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@12 f_19@@12) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@2) o2_19@@12 f_19@@12) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@12 f_19@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@12 f_19@@12))
))) (forall ((o2_19@@13 T@Ref) (f_19@@13 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@13 f_19@@13) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@2) o2_19@@13 f_19@@13) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@13 f_19@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@13 f_19@@13))
))) (forall ((o2_19@@14 T@Ref) (f_19@@14 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@14 f_19@@14) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@2) o2_19@@14 f_19@@14) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@14 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@14 f_19@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (IsPredicateField_16052_78189 pm_f_19@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27251) (ExhaleHeap@@1 T@PolymorphicMapType_27251) (Mask@@3 T@PolymorphicMapType_27272) (pm_f_19@@1 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_16468_16469 Mask@@3 null pm_f_19@@1) (IsWandField_16468_81475 pm_f_19@@1)) (and (and (and (and (and (and (and (forall ((o2_19@@15 T@Ref) (f_19@@15 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@15 f_19@@15) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@3) o2_19@@15 f_19@@15) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@15 f_19@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@15 f_19@@15))
)) (forall ((o2_19@@16 T@Ref) (f_19@@16 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@16 f_19@@16) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@3) o2_19@@16 f_19@@16) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@16 f_19@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@16 f_19@@16))
))) (forall ((o2_19@@17 T@Ref) (f_19@@17 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@17 f_19@@17) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@3) o2_19@@17 f_19@@17) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@17 f_19@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@17 f_19@@17))
))) (forall ((o2_19@@18 T@Ref) (f_19@@18 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@18 f_19@@18) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@3) o2_19@@18 f_19@@18) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@18 f_19@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@18 f_19@@18))
))) (forall ((o2_19@@19 T@Ref) (f_19@@19 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@19 f_19@@19) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@3) o2_19@@19 f_19@@19) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@19 f_19@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@19 f_19@@19))
))) (forall ((o2_19@@20 T@Ref) (f_19@@20 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@20 f_19@@20) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@3) o2_19@@20 f_19@@20) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@20 f_19@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@20 f_19@@20))
))) (forall ((o2_19@@21 T@Ref) (f_19@@21 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@21 f_19@@21) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@3) o2_19@@21 f_19@@21) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@21 f_19@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@21 f_19@@21))
))) (forall ((o2_19@@22 T@Ref) (f_19@@22 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@22 f_19@@22) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) o2_19@@22 f_19@@22) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@22 f_19@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@22 f_19@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (IsWandField_16468_81475 pm_f_19@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27251) (ExhaleHeap@@2 T@PolymorphicMapType_27251) (Mask@@4 T@PolymorphicMapType_27272) (pm_f_19@@2 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_16052_16469 Mask@@4 null pm_f_19@@2) (IsWandField_16052_81118 pm_f_19@@2)) (and (and (and (and (and (and (and (forall ((o2_19@@23 T@Ref) (f_19@@23 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@23 f_19@@23) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@4) o2_19@@23 f_19@@23) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@23 f_19@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@23 f_19@@23))
)) (forall ((o2_19@@24 T@Ref) (f_19@@24 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@24 f_19@@24) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@4) o2_19@@24 f_19@@24) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@24 f_19@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@24 f_19@@24))
))) (forall ((o2_19@@25 T@Ref) (f_19@@25 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@25 f_19@@25) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@4) o2_19@@25 f_19@@25) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@25 f_19@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@25 f_19@@25))
))) (forall ((o2_19@@26 T@Ref) (f_19@@26 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@26 f_19@@26) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) o2_19@@26 f_19@@26) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@26 f_19@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@26 f_19@@26))
))) (forall ((o2_19@@27 T@Ref) (f_19@@27 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@27 f_19@@27) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@4) o2_19@@27 f_19@@27) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@27 f_19@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@27 f_19@@27))
))) (forall ((o2_19@@28 T@Ref) (f_19@@28 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@28 f_19@@28) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@4) o2_19@@28 f_19@@28) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@28 f_19@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@28 f_19@@28))
))) (forall ((o2_19@@29 T@Ref) (f_19@@29 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@29 f_19@@29) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@4) o2_19@@29 f_19@@29) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@29 f_19@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@29 f_19@@29))
))) (forall ((o2_19@@30 T@Ref) (f_19@@30 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@30 f_19@@30) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@4) o2_19@@30 f_19@@30) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@30 f_19@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@30 f_19@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (IsWandField_16052_81118 pm_f_19@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27251) (Heap1@@0 T@PolymorphicMapType_27251) (Heap2 T@PolymorphicMapType_27251) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((l1_1@@1 T@PredicateInstanceDomainType) (l2 T@PredicateInstanceDomainType) (l3 T@PredicateInstanceDomainType) ) (!  (=> (and (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3)) (nestedPredicates l1_1@@1 l3))
 :qid |stdinbpl.867:15|
 :skolemid |127|
 :pattern ( (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_51165_51170) ) (!  (not (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_48695_48696) ) (!  (not (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16468_53) ) (!  (not (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16468_16053) ) (!  (not (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16052_51170) ) (!  (not (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16052_16469) ) (!  (not (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_27311_53) ) (!  (not (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_27324_27325) ) (!  (not (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27251) (Mask@@5 T@PolymorphicMapType_27272) (seq T@Seq_2867) ) (!  (=> (and (state Heap@@5 Mask@@5) (< AssumeFunctionsAbove 0)) (= (sequences_e Heap@@5 seq) (ite (not (= (|Seq#Length_2867| seq) 0)) (|sequences_e'| Heap@@5 (|Seq#Append_8117| (|Seq#Drop_7775| seq 1) (|Seq#Singleton_3| 1))) 0)))
 :qid |stdinbpl.1604:15|
 :skolemid |176|
 :pattern ( (state Heap@@5 Mask@@5) (sequences_e Heap@@5 seq))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.657:15|
 :skolemid |89|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((s@@1 T@Seq_8395) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8470| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8470| (|Seq#Drop_8470| s@@1 n@@1) j) (|Seq#Index_8470| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8470| (|Seq#Drop_8470| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_7775| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_7775| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8470| |Seq#Empty_8470|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((int1 Real) (int2 Real) ) (!  (=> (<= int1 (- int2 (/ (to_real 1) (to_real 1)))) (decreasing_645 int1 int2))
 :qid |stdinbpl.912:15|
 :skolemid |131|
 :pattern ( (decreasing_645 int1 int2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27251) (Mask@@6 T@PolymorphicMapType_27272) (r_1 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@6) (< AssumeFunctionsAbove 6)) (= (references_e Heap@@6 r_1) (ite (= r_1 null) 1 (|references_e'| Heap@@6 r_1))))
 :qid |stdinbpl.1182:15|
 :skolemid |149|
 :pattern ( (state Heap@@6 Mask@@6) (references_e Heap@@6 r_1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27251) (Mask@@7 T@PolymorphicMapType_27272) (r_1@@0 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@7) (< AssumeFunctionsAbove 9)) (= (references Heap@@7 r_1@@0) (ite (= r_1@@0 null) 1 (|references'| Heap@@7 null))))
 :qid |stdinbpl.1117:15|
 :skolemid |145|
 :pattern ( (state Heap@@7 Mask@@7) (references Heap@@7 r_1@@0))
)))
(assert (forall ((xs T@Ref) ) (! (IsPredicateField_16468_16469 (list xs))
 :qid |stdinbpl.2304:15|
 :skolemid |213|
 :pattern ( (list xs))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27251) (x Int) ) (! (dummyFunction_5652 (|fact#triggerStateless| x))
 :qid |stdinbpl.961:15|
 :skolemid |136|
 :pattern ( (|fact'| Heap@@8 x))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27251) (x@@0 Int) ) (! (dummyFunction_5652 (|fact_e#triggerStateless| x@@0))
 :qid |stdinbpl.1036:15|
 :skolemid |140|
 :pattern ( (|fact_e'| Heap@@9 x@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27251) (r_1@@1 T@Ref) ) (! (dummyFunction_5652 (|references#triggerStateless| r_1@@1))
 :qid |stdinbpl.1111:15|
 :skolemid |144|
 :pattern ( (|references'| Heap@@10 r_1@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27251) (r_1@@2 T@Ref) ) (! (dummyFunction_5652 (|references_e#triggerStateless| r_1@@2))
 :qid |stdinbpl.1176:15|
 :skolemid |148|
 :pattern ( (|references_e'| Heap@@11 r_1@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27251) (b_24@@0 Bool) ) (! (dummyFunction_5652 (|booleans#triggerStateless| b_24@@0))
 :qid |stdinbpl.1241:15|
 :skolemid |152|
 :pattern ( (|booleans'| Heap@@12 b_24@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27251) (b_24@@1 Bool) ) (! (dummyFunction_5652 (|booleans_e#triggerStateless| b_24@@1))
 :qid |stdinbpl.1318:15|
 :skolemid |157|
 :pattern ( (|booleans_e'| Heap@@13 b_24@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27251) (r_1@@3 Real) ) (! (dummyFunction_645 (|rationals#triggerStateless| r_1@@3))
 :qid |stdinbpl.1395:15|
 :skolemid |162|
 :pattern ( (|rationals'| Heap@@14 r_1@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27251) (r_1@@4 Real) ) (! (dummyFunction_645 (|rationals_e#triggerStateless| r_1@@4))
 :qid |stdinbpl.1458:15|
 :skolemid |166|
 :pattern ( (|rationals_e'| Heap@@15 r_1@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27251) (seq@@0 T@Seq_2867) ) (! (dummyFunction_5652 (|sequences#triggerStateless| seq@@0))
 :qid |stdinbpl.1521:15|
 :skolemid |170|
 :pattern ( (|sequences'| Heap@@16 seq@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27251) (seq@@1 T@Seq_2867) ) (! (dummyFunction_5652 (|sequences_e#triggerStateless| seq@@1))
 :qid |stdinbpl.1598:15|
 :skolemid |175|
 :pattern ( (|sequences_e'| Heap@@17 seq@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27251) (seq@@2 T@Seq_8395) ) (! (dummyFunction_5652 (|numberOfUsers#triggerStateless| seq@@2))
 :qid |stdinbpl.1675:15|
 :skolemid |180|
 :pattern ( (|numberOfUsers'| Heap@@18 seq@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27251) (s_1 (Array Int Bool)) ) (! (dummyFunction_5652 (|sets#triggerStateless| s_1))
 :qid |stdinbpl.1751:15|
 :skolemid |184|
 :pattern ( (|sets'| Heap@@19 s_1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27251) (s_1@@0 (Array Int Bool)) ) (! (dummyFunction_5652 (|sets_e#triggerStateless| s_1@@0))
 :qid |stdinbpl.1814:15|
 :skolemid |188|
 :pattern ( (|sets_e'| Heap@@20 s_1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27251) (s_1@@1 T@MultiSet_9339) ) (! (dummyFunction_5652 (|multiSets#triggerStateless| s_1@@1))
 :qid |stdinbpl.1878:15|
 :skolemid |192|
 :pattern ( (|multiSets'| Heap@@21 s_1@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27251) (s_1@@2 T@MultiSet_9339) ) (! (dummyFunction_5652 (|multiSets_e#triggerStateless| s_1@@2))
 :qid |stdinbpl.1941:15|
 :skolemid |196|
 :pattern ( (|multiSets_e'| Heap@@22 s_1@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27251) (xs@@0 T@Ref) ) (! (dummyFunction_5652 (|predicates#triggerStateless| xs@@0))
 :qid |stdinbpl.2005:15|
 :skolemid |200|
 :pattern ( (|predicates'| Heap@@23 xs@@0))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27251) (xs@@1 T@Ref) ) (! (dummyFunction_5652 (|predicates_e#triggerStateless| xs@@1))
 :qid |stdinbpl.2130:15|
 :skolemid |205|
 :pattern ( (|predicates_e'| Heap@@24 xs@@1))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27251) (xs@@2 T@Ref) ) (! (dummyFunction_16461 (|PI_list#triggerStateless| xs@@2))
 :qid |stdinbpl.2253:15|
 :skolemid |210|
 :pattern ( (|PI_list'| Heap@@25 xs@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27251) (xs@@3 T@Ref) ) (! (|list#everUsed_16468| (list xs@@3))
 :qid |stdinbpl.2323:15|
 :skolemid |217|
 :pattern ( (|list#trigger_16468| Heap@@26 (list xs@@3)))
)))
(assert (forall ((s@@3 T@Seq_8395) (i Int) (v Bool) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8470| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3) (|Seq#Index_8470| s@@3 n@@3)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8470| s@@3 n@@3) (|Seq#Update_8470| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@1 T@MultiSet_9339) (b@@1 T@MultiSet_9339) (y Int) ) (!  (=> (<= (|MultiSet#Select_9414| a@@1 y) (|MultiSet#Select_9414| b@@1 y)) (= (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@1 b@@1) y) 0))
 :qid |stdinbpl.724:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_9414| a@@1 b@@1) (|MultiSet#Select_9414| b@@1 y) (|MultiSet#Select_9414| a@@1 y))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Union_8806| (|Set#Union_8806| a@@2 b@@2) b@@2) (|Set#Union_8806| a@@2 b@@2))
 :qid |stdinbpl.609:18|
 :skolemid |74|
 :pattern ( (|Set#Union_8806| (|Set#Union_8806| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Intersection_8806| (|Set#Intersection_8806| a@@3 b@@3) b@@3) (|Set#Intersection_8806| a@@3 b@@3))
 :qid |stdinbpl.613:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_8806| (|Set#Intersection_8806| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@MultiSet_9339) (b@@4 T@MultiSet_9339) ) (! (= (|MultiSet#Intersection_9414| (|MultiSet#Intersection_9414| a@@4 b@@4) b@@4) (|MultiSet#Intersection_9414| a@@4 b@@4))
 :qid |stdinbpl.715:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_9414| (|MultiSet#Intersection_9414| a@@4 b@@4) b@@4))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27251) (Mask@@8 T@PolymorphicMapType_27272) (r_1@@5 Real) ) (!  (=> (and (state Heap@@27 Mask@@8) (< AssumeFunctionsAbove 13)) (= (rationals_e Heap@@27 r_1@@5) (ite (<= (/ (to_real 0) (to_real 1)) r_1@@5) (|rationals_e'| Heap@@27 (/ r_1@@5 (to_real 2))) r_1@@5)))
 :qid |stdinbpl.1464:15|
 :skolemid |167|
 :pattern ( (state Heap@@27 Mask@@8) (rationals_e Heap@@27 r_1@@5))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_2998| r) o) (= r o))
 :qid |stdinbpl.578:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_2998| r) o))
)))
(assert (forall ((s@@5 T@Seq_8395) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8470| s@@5)) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8470| s@@5) n@@5) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) (|Seq#Length_8470| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8470| s@@5 n@@5) (|Seq#Length_8470| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.554:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@5 (Array Int Bool)) ) (! (= (+ (|Set#Card_8806| (|Set#Union_8806| a@@5 b@@5)) (|Set#Card_8806| (|Set#Intersection_8806| a@@5 b@@5))) (+ (|Set#Card_8806| a@@5) (|Set#Card_8806| b@@5)))
 :qid |stdinbpl.617:18|
 :skolemid |78|
 :pattern ( (|Set#Card_8806| (|Set#Union_8806| a@@5 b@@5)))
 :pattern ( (|Set#Card_8806| (|Set#Intersection_8806| a@@5 b@@5)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27251) (Mask@@9 T@PolymorphicMapType_27272) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@28 Mask@@9) (or (< AssumeFunctionsAbove 2) (|booleans#trigger| EmptyFrame b_24@@2))) (= (|booleans'| Heap@@28 b_24@@2) 1))
 :qid |stdinbpl.1260:15|
 :skolemid |155|
 :pattern ( (state Heap@@28 Mask@@9) (|booleans'| Heap@@28 b_24@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27251) (Mask@@10 T@PolymorphicMapType_27272) (b_24@@3 Bool) ) (!  (=> (and (state Heap@@29 Mask@@10) (or (< AssumeFunctionsAbove 8) (|booleans_e#trigger| EmptyFrame b_24@@3))) (= (|booleans_e'| Heap@@29 b_24@@3) 1))
 :qid |stdinbpl.1337:15|
 :skolemid |160|
 :pattern ( (state Heap@@29 Mask@@10) (|booleans_e'| Heap@@29 b_24@@3))
)))
(assert (forall ((s@@7 T@Seq_8395) (x@@1 Bool) ) (!  (=> (|Seq#Contains_8395| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_8395| s@@7 x@@1)) (< (|Seq#Skolem_8395| s@@7 x@@1) (|Seq#Length_8470| s@@7))) (= (|Seq#Index_8470| s@@7 (|Seq#Skolem_8395| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_8395| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@2 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@2)) (< (|Seq#Skolem_2867| s@@8 x@@2) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@2))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27251) (x@@3 Int) ) (!  (and (= (fact Heap@@30 x@@3) (|fact'| Heap@@30 x@@3)) (dummyFunction_5652 (|fact#triggerStateless| x@@3)))
 :qid |stdinbpl.957:15|
 :skolemid |135|
 :pattern ( (fact Heap@@30 x@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27251) (x@@4 Int) ) (!  (and (= (fact_e Heap@@31 x@@4) (|fact_e'| Heap@@31 x@@4)) (dummyFunction_5652 (|fact_e#triggerStateless| x@@4)))
 :qid |stdinbpl.1032:15|
 :skolemid |139|
 :pattern ( (fact_e Heap@@31 x@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27251) (r_1@@6 T@Ref) ) (!  (and (= (references Heap@@32 r_1@@6) (|references'| Heap@@32 r_1@@6)) (dummyFunction_5652 (|references#triggerStateless| r_1@@6)))
 :qid |stdinbpl.1107:15|
 :skolemid |143|
 :pattern ( (references Heap@@32 r_1@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27251) (r_1@@7 T@Ref) ) (!  (and (= (references_e Heap@@33 r_1@@7) (|references_e'| Heap@@33 r_1@@7)) (dummyFunction_5652 (|references_e#triggerStateless| r_1@@7)))
 :qid |stdinbpl.1172:15|
 :skolemid |147|
 :pattern ( (references_e Heap@@33 r_1@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27251) (b_24@@4 Bool) ) (!  (and (= (booleans Heap@@34 b_24@@4) (|booleans'| Heap@@34 b_24@@4)) (dummyFunction_5652 (|booleans#triggerStateless| b_24@@4)))
 :qid |stdinbpl.1237:15|
 :skolemid |151|
 :pattern ( (booleans Heap@@34 b_24@@4))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27251) (b_24@@5 Bool) ) (!  (and (= (booleans_e Heap@@35 b_24@@5) (|booleans_e'| Heap@@35 b_24@@5)) (dummyFunction_5652 (|booleans_e#triggerStateless| b_24@@5)))
 :qid |stdinbpl.1314:15|
 :skolemid |156|
 :pattern ( (booleans_e Heap@@35 b_24@@5))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27251) (r_1@@8 Real) ) (!  (and (= (rationals Heap@@36 r_1@@8) (|rationals'| Heap@@36 r_1@@8)) (dummyFunction_645 (|rationals#triggerStateless| r_1@@8)))
 :qid |stdinbpl.1391:15|
 :skolemid |161|
 :pattern ( (rationals Heap@@36 r_1@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27251) (r_1@@9 Real) ) (!  (and (= (rationals_e Heap@@37 r_1@@9) (|rationals_e'| Heap@@37 r_1@@9)) (dummyFunction_645 (|rationals_e#triggerStateless| r_1@@9)))
 :qid |stdinbpl.1454:15|
 :skolemid |165|
 :pattern ( (rationals_e Heap@@37 r_1@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27251) (seq@@3 T@Seq_2867) ) (!  (and (= (sequences Heap@@38 seq@@3) (|sequences'| Heap@@38 seq@@3)) (dummyFunction_5652 (|sequences#triggerStateless| seq@@3)))
 :qid |stdinbpl.1517:15|
 :skolemid |169|
 :pattern ( (sequences Heap@@38 seq@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27251) (seq@@4 T@Seq_2867) ) (!  (and (= (sequences_e Heap@@39 seq@@4) (|sequences_e'| Heap@@39 seq@@4)) (dummyFunction_5652 (|sequences_e#triggerStateless| seq@@4)))
 :qid |stdinbpl.1594:15|
 :skolemid |174|
 :pattern ( (sequences_e Heap@@39 seq@@4))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27251) (seq@@5 T@Seq_8395) ) (!  (and (= (numberOfUsers Heap@@40 seq@@5) (|numberOfUsers'| Heap@@40 seq@@5)) (dummyFunction_5652 (|numberOfUsers#triggerStateless| seq@@5)))
 :qid |stdinbpl.1671:15|
 :skolemid |179|
 :pattern ( (numberOfUsers Heap@@40 seq@@5))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27251) (s_1@@3 (Array Int Bool)) ) (!  (and (= (sets Heap@@41 s_1@@3) (|sets'| Heap@@41 s_1@@3)) (dummyFunction_5652 (|sets#triggerStateless| s_1@@3)))
 :qid |stdinbpl.1747:15|
 :skolemid |183|
 :pattern ( (sets Heap@@41 s_1@@3))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27251) (s_1@@4 (Array Int Bool)) ) (!  (and (= (sets_e Heap@@42 s_1@@4) (|sets_e'| Heap@@42 s_1@@4)) (dummyFunction_5652 (|sets_e#triggerStateless| s_1@@4)))
 :qid |stdinbpl.1810:15|
 :skolemid |187|
 :pattern ( (sets_e Heap@@42 s_1@@4))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27251) (s_1@@5 T@MultiSet_9339) ) (!  (and (= (multiSets Heap@@43 s_1@@5) (|multiSets'| Heap@@43 s_1@@5)) (dummyFunction_5652 (|multiSets#triggerStateless| s_1@@5)))
 :qid |stdinbpl.1874:15|
 :skolemid |191|
 :pattern ( (multiSets Heap@@43 s_1@@5))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27251) (s_1@@6 T@MultiSet_9339) ) (!  (and (= (multiSets_e Heap@@44 s_1@@6) (|multiSets_e'| Heap@@44 s_1@@6)) (dummyFunction_5652 (|multiSets_e#triggerStateless| s_1@@6)))
 :qid |stdinbpl.1937:15|
 :skolemid |195|
 :pattern ( (multiSets_e Heap@@44 s_1@@6))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27251) (xs@@4 T@Ref) ) (!  (and (= (predicates Heap@@45 xs@@4) (|predicates'| Heap@@45 xs@@4)) (dummyFunction_5652 (|predicates#triggerStateless| xs@@4)))
 :qid |stdinbpl.2001:15|
 :skolemid |199|
 :pattern ( (predicates Heap@@45 xs@@4))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27251) (xs@@5 T@Ref) ) (!  (and (= (predicates_e Heap@@46 xs@@5) (|predicates_e'| Heap@@46 xs@@5)) (dummyFunction_5652 (|predicates_e#triggerStateless| xs@@5)))
 :qid |stdinbpl.2126:15|
 :skolemid |204|
 :pattern ( (predicates_e Heap@@46 xs@@5))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27251) (xs@@6 T@Ref) ) (!  (and (= (PI_list Heap@@47 xs@@6) (|PI_list'| Heap@@47 xs@@6)) (dummyFunction_16461 (|PI_list#triggerStateless| xs@@6)))
 :qid |stdinbpl.2249:15|
 :skolemid |209|
 :pattern ( (PI_list Heap@@47 xs@@6))
)))
(assert (forall ((s@@9 T@Seq_8395) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8470| s@@9 n@@7) s@@9))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8470| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_7775| s@@10 n@@8) s@@10))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7775| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.249:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.660:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((a@@7 T@MultiSet_9339) (b@@6 T@MultiSet_9339) (o@@0 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Intersection_9414| a@@7 b@@6) o@@0) (|Math#min| (|MultiSet#Select_9414| a@@7 o@@0) (|MultiSet#Select_9414| b@@6 o@@0)))
 :qid |stdinbpl.711:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Intersection_9414| a@@7 b@@6) o@@0))
)))
(assert (forall ((int1@@0 Int) (int2@@0 Int) ) (!  (=> (< int1@@0 int2@@0) (decreasing_5318 int1@@0 int2@@0))
 :qid |stdinbpl.893:15|
 :skolemid |129|
 :pattern ( (decreasing_5318 int1@@0 int2@@0))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27251) (ExhaleHeap@@3 T@PolymorphicMapType_27251) (Mask@@11 T@PolymorphicMapType_27272) (pm_f_19@@3 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@3 Mask@@11) (=> (and (HasDirectPerm_16468_16469 Mask@@11 null pm_f_19@@3) (IsPredicateField_16468_16469 pm_f_19@@3)) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@48) null (PredicateMaskField_16468 pm_f_19@@3)) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@3) null (PredicateMaskField_16468 pm_f_19@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@3 Mask@@11) (IsPredicateField_16468_16469 pm_f_19@@3) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@3) null (PredicateMaskField_16468 pm_f_19@@3)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_27251) (ExhaleHeap@@4 T@PolymorphicMapType_27251) (Mask@@12 T@PolymorphicMapType_27272) (pm_f_19@@4 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@4 Mask@@12) (=> (and (HasDirectPerm_16052_16469 Mask@@12 null pm_f_19@@4) (IsPredicateField_16052_78189 pm_f_19@@4)) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@49) null (PredicateMaskField_16052 pm_f_19@@4)) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@4) null (PredicateMaskField_16052 pm_f_19@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@4 Mask@@12) (IsPredicateField_16052_78189 pm_f_19@@4) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@4) null (PredicateMaskField_16052 pm_f_19@@4)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_27251) (ExhaleHeap@@5 T@PolymorphicMapType_27251) (Mask@@13 T@PolymorphicMapType_27272) (pm_f_19@@5 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@5 Mask@@13) (=> (and (HasDirectPerm_16468_16469 Mask@@13 null pm_f_19@@5) (IsWandField_16468_81475 pm_f_19@@5)) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@50) null (WandMaskField_16468 pm_f_19@@5)) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@5) null (WandMaskField_16468 pm_f_19@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@5 Mask@@13) (IsWandField_16468_81475 pm_f_19@@5) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@5) null (WandMaskField_16468 pm_f_19@@5)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_27251) (ExhaleHeap@@6 T@PolymorphicMapType_27251) (Mask@@14 T@PolymorphicMapType_27272) (pm_f_19@@6 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@6 Mask@@14) (=> (and (HasDirectPerm_16052_16469 Mask@@14 null pm_f_19@@6) (IsWandField_16052_81118 pm_f_19@@6)) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@51) null (WandMaskField_16052 pm_f_19@@6)) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@6) null (WandMaskField_16052 pm_f_19@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@6 Mask@@14) (IsWandField_16052_81118 pm_f_19@@6) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@6) null (WandMaskField_16052 pm_f_19@@6)))
)))
(assert (forall ((x@@5 Bool) (y@@0 Bool) ) (! (= (|Seq#Contains_8395| (|Seq#Singleton_8470| x@@5) y@@0) (= x@@5 y@@0))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_8395| (|Seq#Singleton_8470| x@@5) y@@0))
)))
(assert (forall ((x@@6 Int) (y@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@6) y@@1) (= x@@6 y@@1))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@6) y@@1))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_27251) (Mask@@15 T@PolymorphicMapType_27272) (b_24@@6 Bool) ) (!  (=> (and (state Heap@@52 Mask@@15) (< AssumeFunctionsAbove 8)) (= (booleans_e Heap@@52 b_24@@6) (ite  (not b_24@@6) (|booleans_e'| Heap@@52  (not b_24@@6)) 1)))
 :qid |stdinbpl.1324:15|
 :skolemid |158|
 :pattern ( (state Heap@@52 Mask@@15) (booleans_e Heap@@52 b_24@@6))
)))
(assert (forall ((s@@11 T@Seq_8395) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8470| s@@11))) (= (|Seq#Index_8470| (|Seq#Take_8470| s@@11 n@@9) j@@3) (|Seq#Index_8470| s@@11 j@@3)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8470| (|Seq#Take_8470| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8470| s@@11 j@@3) (|Seq#Take_8470| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((xs@@7 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@7) (list xs2)) (= xs@@7 xs2))
 :qid |stdinbpl.2314:15|
 :skolemid |215|
 :pattern ( (list xs@@7) (list xs2))
)))
(assert (forall ((xs@@8 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@8) (|list#sm| xs2@@0)) (= xs@@8 xs2@@0))
 :qid |stdinbpl.2318:15|
 :skolemid |216|
 :pattern ( (|list#sm| xs@@8) (|list#sm| xs2@@0))
)))
(assert (forall ((s@@13 T@Seq_8395) (t T@Seq_8395) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8470| s@@13))) (< n@@11 (|Seq#Length_8470| (|Seq#Append_8395| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8470| s@@13)) (|Seq#Length_8470| s@@13)) n@@11) (= (|Seq#Take_8470| (|Seq#Append_8395| s@@13 t) n@@11) (|Seq#Append_8395| s@@13 (|Seq#Take_8470| t (|Seq#Sub| n@@11 (|Seq#Length_8470| s@@13)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8470| (|Seq#Append_8395| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_8117| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_8117| s@@14 t@@0) n@@12) (|Seq#Append_8117| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_8117| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_27251) (Mask@@16 T@PolymorphicMapType_27272) (x@@7 Int) ) (!  (=> (and (state Heap@@53 Mask@@16) (< AssumeFunctionsAbove 11)) (=> (>= x@@7 0) (= (fact_e Heap@@53 x@@7) (ite (= x@@7 0) 1 (* x@@7 (|fact_e'| Heap@@53 x@@7))))))
 :qid |stdinbpl.1042:15|
 :skolemid |141|
 :pattern ( (state Heap@@53 Mask@@16) (fact_e Heap@@53 x@@7))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_27251) (Mask@@17 T@PolymorphicMapType_27272) (seq@@6 T@Seq_2867) ) (!  (=> (and (state Heap@@54 Mask@@17) (or (< AssumeFunctionsAbove 0) (|sequences_e#trigger| EmptyFrame seq@@6))) (= (|sequences_e'| Heap@@54 seq@@6) (|Seq#Length_2867| seq@@6)))
 :qid |stdinbpl.1617:15|
 :skolemid |178|
 :pattern ( (state Heap@@54 Mask@@17) (|sequences_e'| Heap@@54 seq@@6))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_27251) (Mask@@18 T@PolymorphicMapType_27272) (seq@@7 T@Seq_2867) ) (!  (=> (and (state Heap@@55 Mask@@18) (or (< AssumeFunctionsAbove 17) (|sequences#trigger| EmptyFrame seq@@7))) (= (|sequences'| Heap@@55 seq@@7) (|Seq#Length_2867| seq@@7)))
 :qid |stdinbpl.1540:15|
 :skolemid |173|
 :pattern ( (state Heap@@55 Mask@@18) (|sequences'| Heap@@55 seq@@7))
)))
(assert (decreasing_5 false true))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@8 T@MultiSet_9339) (x@@8 Int) ) (! (= (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@8 x@@8)) (+ (|MultiSet#Card_9414| a@@8) 1))
 :qid |stdinbpl.697:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@8 x@@8)))
 :pattern ( (|MultiSet#UnionOne_3| a@@8 x@@8) (|MultiSet#Card_9414| a@@8))
)))
(assert (forall ((a@@9 T@MultiSet_9339) (b@@7 T@MultiSet_9339) ) (! (= (|MultiSet#Disjoint_9339| a@@9 b@@7) (forall ((o@@1 Int) ) (!  (or (= (|MultiSet#Select_9414| a@@9 o@@1) 0) (= (|MultiSet#Select_9414| b@@7 o@@1) 0))
 :qid |stdinbpl.747:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_9414| a@@9 o@@1))
 :pattern ( (|MultiSet#Select_9414| b@@7 o@@1))
)))
 :qid |stdinbpl.746:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_9339| a@@9 b@@7))
)))
(assert (forall ((mSet1@@0 T@MultiSet_9339) (mSet2 T@MultiSet_9339) ) (!  (=> (< (|MultiSet#Card_9414| mSet1@@0) (|MultiSet#Card_9414| mSet2)) (decreasing_57554 mSet1@@0 mSet2))
 :qid |stdinbpl.759:19|
 :skolemid |118|
 :pattern ( (decreasing_57554 mSet1@@0 mSet2))
)))
(assert (forall ((set1 (Array Int Bool)) (set2 (Array Int Bool)) ) (!  (=> (< (|Set#Card_8806| set1) (|Set#Card_8806| set2)) (decreasing_63949 set1 set2))
 :qid |stdinbpl.778:19|
 :skolemid |120|
 :pattern ( (decreasing_63949 set1 set2))
)))
(assert (forall ((seq1 T@Seq_8395) (seq2 T@Seq_8395) ) (!  (=> (< (|Seq#Length_8470| seq1) (|Seq#Length_8470| seq2)) (decreasing_63282 seq1 seq2))
 :qid |stdinbpl.810:19|
 :skolemid |122|
 :pattern ( (decreasing_63282 seq1 seq2))
)))
(assert (forall ((seq1@@0 T@Seq_2867) (seq2@@0 T@Seq_2867) ) (!  (=> (< (|Seq#Length_2867| seq1@@0) (|Seq#Length_2867| seq2@@0)) (decreasing_62320 seq1@@0 seq2@@0))
 :qid |stdinbpl.810:19|
 :skolemid |122|
 :pattern ( (decreasing_62320 seq1@@0 seq2@@0))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_27251) (ExhaleHeap@@7 T@PolymorphicMapType_27251) (Mask@@19 T@PolymorphicMapType_27272) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@7 Mask@@19) (=> (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@56) o_12 $allocated) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_16052_16469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27311_27311 p v_1 p w))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27311_27311 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_48695_48696) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16468_16468 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16468_16468 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_8395) (s1 T@Seq_8395) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8470|)) (not (= s1 |Seq#Empty_8470|))) (<= (|Seq#Length_8470| s0) n@@13)) (< n@@13 (|Seq#Length_8470| (|Seq#Append_8395| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8470| s0)) (|Seq#Length_8470| s0)) n@@13) (= (|Seq#Index_8470| (|Seq#Append_8395| s0 s1) n@@13) (|Seq#Index_8470| s1 (|Seq#Sub| n@@13 (|Seq#Length_8470| s0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8470| (|Seq#Append_8395| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_8117| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_8117| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((r@@0 Int) ) (!  (and (= (|MultiSet#Card_9414| (|MultiSet#Singleton_4089| r@@0)) 1) (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@0) r@@0) 1))
 :qid |stdinbpl.689:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_4089| r@@0))
)))
(assert  (not (IsPredicateField_16052_16053 next)))
(assert  (not (IsWandField_16052_16053 next)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_27251) (ExhaleHeap@@8 T@PolymorphicMapType_27251) (Mask@@20 T@PolymorphicMapType_27272) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@8 Mask@@20) (succHeap Heap@@57 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@8 Mask@@20))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_27251) (Mask@@21 T@PolymorphicMapType_27272) (r_1@@10 Real) ) (!  (=> (and (state Heap@@58 Mask@@21) (< AssumeFunctionsAbove 5)) (= (rationals Heap@@58 r_1@@10) (ite (<= (/ (to_real 0) (to_real 1)) r_1@@10) (|rationals'| Heap@@58 (- r_1@@10 (/ (to_real 1) (to_real 1)))) r_1@@10)))
 :qid |stdinbpl.1401:15|
 :skolemid |163|
 :pattern ( (state Heap@@58 Mask@@21) (rationals Heap@@58 r_1@@10))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_27272) (o_2@@7 T@Ref) (f_4@@7 T@Field_16052_51170) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_16052_87186 f_4@@7))) (not (IsWandField_16052_87202 f_4@@7))) (<= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_27272) (o_2@@8 T@Ref) (f_4@@8 T@Field_27311_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_16052_53 f_4@@8))) (not (IsWandField_16052_53 f_4@@8))) (<= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_27272) (o_2@@9 T@Ref) (f_4@@9 T@Field_27324_27325) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_16052_16053 f_4@@9))) (not (IsWandField_16052_16053 f_4@@9))) (<= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_27272) (o_2@@10 T@Ref) (f_4@@10 T@Field_16052_16469) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_16052_78189 f_4@@10))) (not (IsWandField_16052_81118 f_4@@10))) (<= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_27272) (o_2@@11 T@Ref) (f_4@@11 T@Field_51165_51170) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_16468_86537 f_4@@11))) (not (IsWandField_16468_86553 f_4@@11))) (<= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_27272) (o_2@@12 T@Ref) (f_4@@12 T@Field_16468_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_16468_53 f_4@@12))) (not (IsWandField_16468_53 f_4@@12))) (<= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_27272) (o_2@@13 T@Ref) (f_4@@13 T@Field_16468_16053) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_16468_16053 f_4@@13))) (not (IsWandField_16468_16053 f_4@@13))) (<= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_27272) (o_2@@14 T@Ref) (f_4@@14 T@Field_48695_48696) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_16468_16469 f_4@@14))) (not (IsWandField_16468_81475 f_4@@14))) (<= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_27272) (o_2@@15 T@Ref) (f_4@@15 T@Field_51165_51170) ) (! (= (HasDirectPerm_16468_77944 Mask@@30 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@30) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_77944 Mask@@30 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_27272) (o_2@@16 T@Ref) (f_4@@16 T@Field_16468_53) ) (! (= (HasDirectPerm_16468_53 Mask@@31 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@31) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_53 Mask@@31 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_27272) (o_2@@17 T@Ref) (f_4@@17 T@Field_48695_48696) ) (! (= (HasDirectPerm_16468_16469 Mask@@32 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@32) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_16469 Mask@@32 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_27272) (o_2@@18 T@Ref) (f_4@@18 T@Field_16468_16053) ) (! (= (HasDirectPerm_16468_16053 Mask@@33 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@33) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_16053 Mask@@33 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_27272) (o_2@@19 T@Ref) (f_4@@19 T@Field_16052_51170) ) (! (= (HasDirectPerm_16052_77024 Mask@@34 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@34) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_77024 Mask@@34 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_27272) (o_2@@20 T@Ref) (f_4@@20 T@Field_27311_53) ) (! (= (HasDirectPerm_16052_53 Mask@@35 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@35) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_53 Mask@@35 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_27272) (o_2@@21 T@Ref) (f_4@@21 T@Field_16052_16469) ) (! (= (HasDirectPerm_16052_16469 Mask@@36 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@36) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_16469 Mask@@36 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_27272) (o_2@@22 T@Ref) (f_4@@22 T@Field_27324_27325) ) (! (= (HasDirectPerm_16052_16053 Mask@@37 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@37) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_16053 Mask@@37 o_2@@22 f_4@@22))
)))
(assert (forall ((a@@10 T@MultiSet_9339) (b@@8 T@MultiSet_9339) ) (! (= (|MultiSet#Card_9414| (|MultiSet#Union_9414| a@@10 b@@8)) (+ (|MultiSet#Card_9414| a@@10) (|MultiSet#Card_9414| b@@8)))
 :qid |stdinbpl.707:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#Union_9414| a@@10 b@@8)))
 :pattern ( (|MultiSet#Card_9414| a@@10) (|MultiSet#Union_9414| a@@10 b@@8))
 :pattern ( (|MultiSet#Card_9414| b@@8) (|MultiSet#Union_9414| a@@10 b@@8))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.179:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.552:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_27251) (ExhaleHeap@@9 T@PolymorphicMapType_27251) (Mask@@38 T@PolymorphicMapType_27272) (o_12@@0 T@Ref) (f_19@@31 T@Field_51165_51170) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@9 Mask@@38) (=> (HasDirectPerm_16468_77944 Mask@@38 o_12@@0 f_19@@31) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@59) o_12@@0 f_19@@31) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@9) o_12@@0 f_19@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@9 Mask@@38) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@9) o_12@@0 f_19@@31))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_27251) (ExhaleHeap@@10 T@PolymorphicMapType_27251) (Mask@@39 T@PolymorphicMapType_27272) (o_12@@1 T@Ref) (f_19@@32 T@Field_16468_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@10 Mask@@39) (=> (HasDirectPerm_16468_53 Mask@@39 o_12@@1 f_19@@32) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@60) o_12@@1 f_19@@32) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@10) o_12@@1 f_19@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@10 Mask@@39) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@10) o_12@@1 f_19@@32))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_27251) (ExhaleHeap@@11 T@PolymorphicMapType_27251) (Mask@@40 T@PolymorphicMapType_27272) (o_12@@2 T@Ref) (f_19@@33 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@11 Mask@@40) (=> (HasDirectPerm_16468_16469 Mask@@40 o_12@@2 f_19@@33) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@61) o_12@@2 f_19@@33) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@11) o_12@@2 f_19@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@11 Mask@@40) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@11) o_12@@2 f_19@@33))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_27251) (ExhaleHeap@@12 T@PolymorphicMapType_27251) (Mask@@41 T@PolymorphicMapType_27272) (o_12@@3 T@Ref) (f_19@@34 T@Field_16468_16053) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@12 Mask@@41) (=> (HasDirectPerm_16468_16053 Mask@@41 o_12@@3 f_19@@34) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@62) o_12@@3 f_19@@34) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@12) o_12@@3 f_19@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@12 Mask@@41) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@12) o_12@@3 f_19@@34))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_27251) (ExhaleHeap@@13 T@PolymorphicMapType_27251) (Mask@@42 T@PolymorphicMapType_27272) (o_12@@4 T@Ref) (f_19@@35 T@Field_16052_51170) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@13 Mask@@42) (=> (HasDirectPerm_16052_77024 Mask@@42 o_12@@4 f_19@@35) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@63) o_12@@4 f_19@@35) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@13) o_12@@4 f_19@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@13 Mask@@42) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@13) o_12@@4 f_19@@35))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_27251) (ExhaleHeap@@14 T@PolymorphicMapType_27251) (Mask@@43 T@PolymorphicMapType_27272) (o_12@@5 T@Ref) (f_19@@36 T@Field_27311_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@14 Mask@@43) (=> (HasDirectPerm_16052_53 Mask@@43 o_12@@5 f_19@@36) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@64) o_12@@5 f_19@@36) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@14) o_12@@5 f_19@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@14 Mask@@43) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@14) o_12@@5 f_19@@36))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_27251) (ExhaleHeap@@15 T@PolymorphicMapType_27251) (Mask@@44 T@PolymorphicMapType_27272) (o_12@@6 T@Ref) (f_19@@37 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@15 Mask@@44) (=> (HasDirectPerm_16052_16469 Mask@@44 o_12@@6 f_19@@37) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@65) o_12@@6 f_19@@37) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@15) o_12@@6 f_19@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@15 Mask@@44) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@15) o_12@@6 f_19@@37))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_27251) (ExhaleHeap@@16 T@PolymorphicMapType_27251) (Mask@@45 T@PolymorphicMapType_27272) (o_12@@7 T@Ref) (f_19@@38 T@Field_27324_27325) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@16 Mask@@45) (=> (HasDirectPerm_16052_16053 Mask@@45 o_12@@7 f_19@@38) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@66) o_12@@7 f_19@@38) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@16) o_12@@7 f_19@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@16 Mask@@45) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@16) o_12@@7 f_19@@38))
)))
(assert (forall ((s0@@1 T@Seq_8395) (s1@@1 T@Seq_8395) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8470|)) (not (= s1@@1 |Seq#Empty_8470|))) (= (|Seq#Length_8470| (|Seq#Append_8395| s0@@1 s1@@1)) (+ (|Seq#Length_8470| s0@@1) (|Seq#Length_8470| s1@@1))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8470| (|Seq#Append_8395| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_8117| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_8117| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_16052_51170) ) (! (= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_27311_53) ) (! (= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_27324_27325) ) (! (= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_16052_16469) ) (! (= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_51165_51170) ) (! (= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_16468_53) ) (! (= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16468_16053) ) (! (= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_48695_48696) ) (! (= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@15 T@Seq_8395) (t@@1 T@Seq_8395) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8470| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8470| s@@15)) (|Seq#Length_8470| s@@15)) n@@15) (= (|Seq#Drop_8470| (|Seq#Append_8395| s@@15 t@@1) n@@15) (|Seq#Drop_8470| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8470| s@@15))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8470| (|Seq#Append_8395| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_7775| (|Seq#Append_8117| s@@16 t@@2) n@@16) (|Seq#Drop_7775| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7775| (|Seq#Append_8117| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27272) (SummandMask1 T@PolymorphicMapType_27272) (SummandMask2 T@PolymorphicMapType_27272) (o_2@@31 T@Ref) (f_4@@31 T@Field_16052_51170) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27272) (SummandMask1@@0 T@PolymorphicMapType_27272) (SummandMask2@@0 T@PolymorphicMapType_27272) (o_2@@32 T@Ref) (f_4@@32 T@Field_27311_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27272) (SummandMask1@@1 T@PolymorphicMapType_27272) (SummandMask2@@1 T@PolymorphicMapType_27272) (o_2@@33 T@Ref) (f_4@@33 T@Field_27324_27325) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27272) (SummandMask1@@2 T@PolymorphicMapType_27272) (SummandMask2@@2 T@PolymorphicMapType_27272) (o_2@@34 T@Ref) (f_4@@34 T@Field_16052_16469) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27272) (SummandMask1@@3 T@PolymorphicMapType_27272) (SummandMask2@@3 T@PolymorphicMapType_27272) (o_2@@35 T@Ref) (f_4@@35 T@Field_51165_51170) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_27272) (SummandMask1@@4 T@PolymorphicMapType_27272) (SummandMask2@@4 T@PolymorphicMapType_27272) (o_2@@36 T@Ref) (f_4@@36 T@Field_16468_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_27272) (SummandMask1@@5 T@PolymorphicMapType_27272) (SummandMask2@@5 T@PolymorphicMapType_27272) (o_2@@37 T@Ref) (f_4@@37 T@Field_16468_16053) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_27272) (SummandMask1@@6 T@PolymorphicMapType_27272) (SummandMask2@@6 T@PolymorphicMapType_27272) (o_2@@38 T@Ref) (f_4@@38 T@Field_48695_48696) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((a@@11 (Array Int Bool)) (b@@9 (Array Int Bool)) (o@@2 Int) ) (! (= (select (|Set#Intersection_8806| a@@11 b@@9) o@@2)  (and (select a@@11 o@@2) (select b@@9 o@@2)))
 :qid |stdinbpl.606:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_8806| a@@11 b@@9) o@@2))
 :pattern ( (|Set#Intersection_8806| a@@11 b@@9) (select a@@11 o@@2))
 :pattern ( (|Set#Intersection_8806| a@@11 b@@9) (select b@@9 o@@2))
)))
(assert (forall ((ref1@@0 T@Ref) ) (!  (=> (not (= ref1@@0 null)) (decreasing_15675 null ref1@@0))
 :qid |stdinbpl.931:15|
 :skolemid |133|
 :pattern ( (decreasing_15675 null ref1@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.551:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@10 (Array Int Bool)) (o@@3 Int) ) (! (= (select (|Set#Difference_8806| a@@12 b@@10) o@@3)  (and (select a@@12 o@@3) (not (select b@@10 o@@3))))
 :qid |stdinbpl.621:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_8806| a@@12 b@@10) o@@3))
 :pattern ( (|Set#Difference_8806| a@@12 b@@10) (select a@@12 o@@3))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_27251) (Mask@@46 T@PolymorphicMapType_27272) (s_1@@7 (Array Int Bool)) ) (!  (=> (and (state Heap@@67 Mask@@46) (< AssumeFunctionsAbove 3)) (= (sets Heap@@67 s_1@@7) (ite  (and (> (|Set#Card_8806| s_1@@7) 0) (select s_1@@7 (|Set#Card_8806| s_1@@7))) (|sets'| Heap@@67 (|Set#Difference_8806| s_1@@7 (|Set#Singleton_2998| (|Set#Card_8806| s_1@@7)))) 1)))
 :qid |stdinbpl.1757:15|
 :skolemid |185|
 :pattern ( (state Heap@@67 Mask@@46) (sets Heap@@67 s_1@@7))
)))
(assert (forall ((int1@@1 Int) ) (!  (=> (>= int1@@1 0) (bounded_5343 int1@@1))
 :qid |stdinbpl.899:15|
 :skolemid |130|
 :pattern ( (bounded_5343 int1@@1))
)))
(assert (forall ((l1_1@@2 T@PredicateInstanceDomainType) (l2@@0 T@PredicateInstanceDomainType) ) (! (= (decreasing_16038 l1_1@@2 l2@@0) (nestedPredicates l1_1@@2 l2@@0))
 :qid |stdinbpl.845:15|
 :skolemid |125|
 :pattern ( (nestedPredicates l1_1@@2 l2@@0))
)))
(assert (forall ((a@@13 T@Seq_8395) (b@@11 T@Seq_8395) ) (!  (=> (|Seq#Equal_8395| a@@13 b@@11) (= a@@13 b@@11))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_8395| a@@13 b@@11))
)))
(assert (forall ((a@@14 T@Seq_2867) (b@@12 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@14 b@@12) (= a@@14 b@@12))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@14 b@@12))
)))
(assert (forall ((a@@15 T@MultiSet_9339) (b@@13 T@MultiSet_9339) ) (!  (=> (|MultiSet#Equal_9339| a@@15 b@@13) (= a@@15 b@@13))
 :qid |stdinbpl.742:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_9339| a@@15 b@@13))
)))
(assert (forall ((a@@16 (Array Int Bool)) (x@@9 Int) (y@@2 Int) ) (!  (=> (select a@@16 y@@2) (select (|Set#UnionOne_8806| a@@16 x@@9) y@@2))
 :qid |stdinbpl.586:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_8806| a@@16 x@@9) (select a@@16 y@@2))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@14 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select a@@17 y@@3) (select (|Set#Union_8806| a@@17 b@@14) y@@3))
 :qid |stdinbpl.596:18|
 :skolemid |71|
 :pattern ( (|Set#Union_8806| a@@17 b@@14) (select a@@17 y@@3))
)))
(assert (forall ((a@@18 (Array Int Bool)) (b@@15 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@15 y@@4) (select (|Set#Union_8806| a@@18 b@@15) y@@4))
 :qid |stdinbpl.598:18|
 :skolemid |72|
 :pattern ( (|Set#Union_8806| a@@18 b@@15) (select b@@15 y@@4))
)))
(assert (forall ((ms T@MultiSet_9339) (x@@10 Int) ) (! (>= (|MultiSet#Select_9414| ms x@@10) 0)
 :qid |stdinbpl.673:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_9414| ms x@@10))
)))
(assert (forall ((a@@19 (Array Int Bool)) (x@@11 Int) (o@@4 Int) ) (! (= (select (|Set#UnionOne_8806| a@@19 x@@11) o@@4)  (or (= o@@4 x@@11) (select a@@19 o@@4)))
 :qid |stdinbpl.582:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_8806| a@@19 x@@11) o@@4))
)))
(assert (forall ((a@@20 (Array Int Bool)) (b@@16 (Array Int Bool)) (y@@5 Int) ) (!  (=> (select b@@16 y@@5) (not (select (|Set#Difference_8806| a@@20 b@@16) y@@5)))
 :qid |stdinbpl.623:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_8806| a@@20 b@@16) (select b@@16 y@@5))
)))
(assert (forall ((seq1@@1 T@Seq_8395) ) (!  (=> (>= (|Seq#Length_8470| seq1@@1) 0) (bounded_63300 seq1@@1))
 :qid |stdinbpl.816:19|
 :skolemid |123|
 :pattern ( (bounded_63300 seq1@@1))
)))
(assert (forall ((seq1@@2 T@Seq_2867) ) (!  (=> (>= (|Seq#Length_2867| seq1@@2) 0) (bounded_62338 seq1@@2))
 :qid |stdinbpl.816:19|
 :skolemid |123|
 :pattern ( (bounded_62338 seq1@@2))
)))
(assert (forall ((s@@17 T@Seq_8395) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8470| s@@17))) (|Seq#ContainsTrigger_8470| s@@17 (|Seq#Index_8470| s@@17 i@@3)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8470| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@4)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@4))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@17 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)) (|Set#Card_8806| (|Set#Difference_8806| b@@17 a@@21))) (|Set#Card_8806| (|Set#Intersection_8806| a@@21 b@@17))) (|Set#Card_8806| (|Set#Union_8806| a@@21 b@@17))) (= (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)) (- (|Set#Card_8806| a@@21) (|Set#Card_8806| (|Set#Intersection_8806| a@@21 b@@17)))))
 :qid |stdinbpl.625:18|
 :skolemid |81|
 :pattern ( (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)))
)))
(assert (forall ((s0@@3 T@Seq_8395) (s1@@3 T@Seq_8395) ) (!  (and (=> (= s0@@3 |Seq#Empty_8470|) (= (|Seq#Append_8395| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8470|) (= (|Seq#Append_8395| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_8395| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_8117| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_8117| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_8117| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 Bool) ) (! (= (|Seq#Index_8470| (|Seq#Singleton_8470| t@@3) 0) t@@3)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8470| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@4) 0) t@@4)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@4))
)))
(assert (forall ((s@@19 T@Seq_8395) ) (! (<= 0 (|Seq#Length_8470| s@@19))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8470| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_8806| s@@21))
 :qid |stdinbpl.568:18|
 :skolemid |58|
 :pattern ( (|Set#Card_8806| s@@21))
)))
(assert (forall ((s@@22 T@MultiSet_9339) ) (! (<= 0 (|MultiSet#Card_9414| s@@22))
 :qid |stdinbpl.676:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_9414| s@@22))
)))
(assert (forall ((o@@5 Int) ) (! (= (|MultiSet#Select_9414| |MultiSet#Empty_9414| o@@5) 0)
 :qid |stdinbpl.681:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_9414| |MultiSet#Empty_9414| o@@5))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_27251) (Mask@@47 T@PolymorphicMapType_27272) (s_1@@8 (Array Int Bool)) ) (!  (=> (and (state Heap@@68 Mask@@47) (< AssumeFunctionsAbove 12)) (= (sets_e Heap@@68 s_1@@8) (ite  (and (> (|Set#Card_8806| s_1@@8) 0) (select s_1@@8 (|Set#Card_8806| s_1@@8))) 1 (|sets_e'| Heap@@68 (|Set#Difference_8806| s_1@@8 (|Set#Singleton_2998| (|Set#Card_8806| s_1@@8)))))))
 :qid |stdinbpl.1820:15|
 :skolemid |189|
 :pattern ( (state Heap@@68 Mask@@47) (sets_e Heap@@68 s_1@@8))
)))
(assert (forall ((a@@22 (Array Int Bool)) (x@@12 Int) ) (! (select (|Set#UnionOne_8806| a@@22 x@@12) x@@12)
 :qid |stdinbpl.584:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_8806| a@@22 x@@12))
)))
(assert (forall ((s0@@5 T@Seq_8395) (s1@@5 T@Seq_8395) ) (!  (=> (|Seq#Equal_8395| s0@@5 s1@@5) (and (= (|Seq#Length_8470| s0@@5) (|Seq#Length_8470| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8470| s0@@5))) (= (|Seq#Index_8470| s0@@5 j@@6) (|Seq#Index_8470| s1@@5 j@@6)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8470| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8470| s1@@5 j@@6))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_8395| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_27251) (Mask@@48 T@PolymorphicMapType_27272) (xs@@9 T@Ref) ) (!  (=> (state Heap@@69 Mask@@48) (= (|predicates'| Heap@@69 xs@@9) (|predicates#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@69) null (list xs@@9)) xs@@9)))
 :qid |stdinbpl.2018:15|
 :skolemid |202|
 :pattern ( (state Heap@@69 Mask@@48) (|predicates'| Heap@@69 xs@@9))
 :pattern ( (state Heap@@69 Mask@@48) (|predicates#triggerStateless| xs@@9) (|list#trigger_16468| Heap@@69 (list xs@@9)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_27251) (Mask@@49 T@PolymorphicMapType_27272) (xs@@10 T@Ref) ) (!  (=> (state Heap@@70 Mask@@49) (= (|predicates_e'| Heap@@70 xs@@10) (|predicates_e#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@70) null (list xs@@10)) xs@@10)))
 :qid |stdinbpl.2143:15|
 :skolemid |207|
 :pattern ( (state Heap@@70 Mask@@49) (|predicates_e'| Heap@@70 xs@@10))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_27251) (Mask@@50 T@PolymorphicMapType_27272) (xs@@11 T@Ref) ) (!  (=> (state Heap@@71 Mask@@50) (= (|PI_list'| Heap@@71 xs@@11) (|PI_list#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@71) null (list xs@@11)) xs@@11)))
 :qid |stdinbpl.2260:15|
 :skolemid |211|
 :pattern ( (state Heap@@71 Mask@@50) (|PI_list'| Heap@@71 xs@@11))
)))
(assert (forall ((a@@23 (Array Int Bool)) (x@@13 Int) ) (!  (=> (select a@@23 x@@13) (= (|Set#Card_8806| (|Set#UnionOne_8806| a@@23 x@@13)) (|Set#Card_8806| a@@23)))
 :qid |stdinbpl.588:18|
 :skolemid |68|
 :pattern ( (|Set#Card_8806| (|Set#UnionOne_8806| a@@23 x@@13)))
)))
(assert (forall ((a@@24 T@MultiSet_9339) (x@@14 Int) ) (!  (and (> (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@24 x@@14) x@@14) 0) (> (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@24 x@@14)) 0))
 :qid |stdinbpl.700:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_3| a@@24 x@@14))
)))
(assert (forall ((xs@@12 T@Ref) ) (! (= (getPredWandId_16468_16469 (list xs@@12)) 0)
 :qid |stdinbpl.2308:15|
 :skolemid |214|
 :pattern ( (list xs@@12))
)))
(assert (forall ((t@@5 Bool) ) (! (= (|Seq#Length_8470| (|Seq#Singleton_8470| t@@5)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8470| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@6)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@6))
)))
(assert (forall ((r@@1 Int) ) (! (= (|Set#Card_8806| (|Set#Singleton_2998| r@@1)) 1)
 :qid |stdinbpl.579:18|
 :skolemid |64|
 :pattern ( (|Set#Card_8806| (|Set#Singleton_2998| r@@1)))
)))
(assert (forall ((r@@2 Int) ) (! (select (|Set#Singleton_2998| r@@2) r@@2)
 :qid |stdinbpl.577:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_2998| r@@2))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_27251) (Mask@@51 T@PolymorphicMapType_27272) (x@@15 Int) ) (!  (=> (state Heap@@72 Mask@@51) (= (|fact'| Heap@@72 x@@15) (|fact#frame| EmptyFrame x@@15)))
 :qid |stdinbpl.974:15|
 :skolemid |138|
 :pattern ( (state Heap@@72 Mask@@51) (|fact'| Heap@@72 x@@15))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_27251) (Mask@@52 T@PolymorphicMapType_27272) (x@@16 Int) ) (!  (=> (state Heap@@73 Mask@@52) (= (|fact_e'| Heap@@73 x@@16) (|fact_e#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.1049:15|
 :skolemid |142|
 :pattern ( (state Heap@@73 Mask@@52) (|fact_e'| Heap@@73 x@@16))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_27251) (Mask@@53 T@PolymorphicMapType_27272) (r_1@@11 T@Ref) ) (!  (=> (state Heap@@74 Mask@@53) (= (|references'| Heap@@74 r_1@@11) (|references#frame| EmptyFrame r_1@@11)))
 :qid |stdinbpl.1124:15|
 :skolemid |146|
 :pattern ( (state Heap@@74 Mask@@53) (|references'| Heap@@74 r_1@@11))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_27251) (Mask@@54 T@PolymorphicMapType_27272) (r_1@@12 T@Ref) ) (!  (=> (state Heap@@75 Mask@@54) (= (|references_e'| Heap@@75 r_1@@12) (|references_e#frame| EmptyFrame r_1@@12)))
 :qid |stdinbpl.1189:15|
 :skolemid |150|
 :pattern ( (state Heap@@75 Mask@@54) (|references_e'| Heap@@75 r_1@@12))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_27251) (Mask@@55 T@PolymorphicMapType_27272) (b_24@@7 Bool) ) (!  (=> (state Heap@@76 Mask@@55) (= (|booleans'| Heap@@76 b_24@@7) (|booleans#frame| EmptyFrame b_24@@7)))
 :qid |stdinbpl.1254:15|
 :skolemid |154|
 :pattern ( (state Heap@@76 Mask@@55) (|booleans'| Heap@@76 b_24@@7))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_27251) (Mask@@56 T@PolymorphicMapType_27272) (b_24@@8 Bool) ) (!  (=> (state Heap@@77 Mask@@56) (= (|booleans_e'| Heap@@77 b_24@@8) (|booleans_e#frame| EmptyFrame b_24@@8)))
 :qid |stdinbpl.1331:15|
 :skolemid |159|
 :pattern ( (state Heap@@77 Mask@@56) (|booleans_e'| Heap@@77 b_24@@8))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_27251) (Mask@@57 T@PolymorphicMapType_27272) (r_1@@13 Real) ) (!  (=> (state Heap@@78 Mask@@57) (= (|rationals'| Heap@@78 r_1@@13) (|rationals#frame| EmptyFrame r_1@@13)))
 :qid |stdinbpl.1408:15|
 :skolemid |164|
 :pattern ( (state Heap@@78 Mask@@57) (|rationals'| Heap@@78 r_1@@13))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_27251) (Mask@@58 T@PolymorphicMapType_27272) (r_1@@14 Real) ) (!  (=> (state Heap@@79 Mask@@58) (= (|rationals_e'| Heap@@79 r_1@@14) (|rationals_e#frame| EmptyFrame r_1@@14)))
 :qid |stdinbpl.1471:15|
 :skolemid |168|
 :pattern ( (state Heap@@79 Mask@@58) (|rationals_e'| Heap@@79 r_1@@14))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_27251) (Mask@@59 T@PolymorphicMapType_27272) (seq@@8 T@Seq_2867) ) (!  (=> (state Heap@@80 Mask@@59) (= (|sequences'| Heap@@80 seq@@8) (|sequences#frame| EmptyFrame seq@@8)))
 :qid |stdinbpl.1534:15|
 :skolemid |172|
 :pattern ( (state Heap@@80 Mask@@59) (|sequences'| Heap@@80 seq@@8))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_27251) (Mask@@60 T@PolymorphicMapType_27272) (seq@@9 T@Seq_2867) ) (!  (=> (state Heap@@81 Mask@@60) (= (|sequences_e'| Heap@@81 seq@@9) (|sequences_e#frame| EmptyFrame seq@@9)))
 :qid |stdinbpl.1611:15|
 :skolemid |177|
 :pattern ( (state Heap@@81 Mask@@60) (|sequences_e'| Heap@@81 seq@@9))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_27251) (Mask@@61 T@PolymorphicMapType_27272) (seq@@10 T@Seq_8395) ) (!  (=> (state Heap@@82 Mask@@61) (= (|numberOfUsers'| Heap@@82 seq@@10) (|numberOfUsers#frame| EmptyFrame seq@@10)))
 :qid |stdinbpl.1688:15|
 :skolemid |182|
 :pattern ( (state Heap@@82 Mask@@61) (|numberOfUsers'| Heap@@82 seq@@10))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_27251) (Mask@@62 T@PolymorphicMapType_27272) (s_1@@9 (Array Int Bool)) ) (!  (=> (state Heap@@83 Mask@@62) (= (|sets'| Heap@@83 s_1@@9) (|sets#frame| EmptyFrame s_1@@9)))
 :qid |stdinbpl.1764:15|
 :skolemid |186|
 :pattern ( (state Heap@@83 Mask@@62) (|sets'| Heap@@83 s_1@@9))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_27251) (Mask@@63 T@PolymorphicMapType_27272) (s_1@@10 (Array Int Bool)) ) (!  (=> (state Heap@@84 Mask@@63) (= (|sets_e'| Heap@@84 s_1@@10) (|sets_e#frame| EmptyFrame s_1@@10)))
 :qid |stdinbpl.1827:15|
 :skolemid |190|
 :pattern ( (state Heap@@84 Mask@@63) (|sets_e'| Heap@@84 s_1@@10))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_27251) (Mask@@64 T@PolymorphicMapType_27272) (s_1@@11 T@MultiSet_9339) ) (!  (=> (state Heap@@85 Mask@@64) (= (|multiSets'| Heap@@85 s_1@@11) (|multiSets#frame| EmptyFrame s_1@@11)))
 :qid |stdinbpl.1891:15|
 :skolemid |194|
 :pattern ( (state Heap@@85 Mask@@64) (|multiSets'| Heap@@85 s_1@@11))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_27251) (Mask@@65 T@PolymorphicMapType_27272) (s_1@@12 T@MultiSet_9339) ) (!  (=> (state Heap@@86 Mask@@65) (= (|multiSets_e'| Heap@@86 s_1@@12) (|multiSets_e#frame| EmptyFrame s_1@@12)))
 :qid |stdinbpl.1954:15|
 :skolemid |198|
 :pattern ( (state Heap@@86 Mask@@65) (|multiSets_e'| Heap@@86 s_1@@12))
)))
(assert (forall ((a@@25 (Array Int Bool)) (b@@18 (Array Int Bool)) ) (! (= (|Set#Union_8806| a@@25 (|Set#Union_8806| a@@25 b@@18)) (|Set#Union_8806| a@@25 b@@18))
 :qid |stdinbpl.611:18|
 :skolemid |75|
 :pattern ( (|Set#Union_8806| a@@25 (|Set#Union_8806| a@@25 b@@18)))
)))
(assert (forall ((a@@26 (Array Int Bool)) (b@@19 (Array Int Bool)) ) (! (= (|Set#Intersection_8806| a@@26 (|Set#Intersection_8806| a@@26 b@@19)) (|Set#Intersection_8806| a@@26 b@@19))
 :qid |stdinbpl.615:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_8806| a@@26 (|Set#Intersection_8806| a@@26 b@@19)))
)))
(assert (forall ((a@@27 T@MultiSet_9339) (b@@20 T@MultiSet_9339) ) (! (= (|MultiSet#Intersection_9414| a@@27 (|MultiSet#Intersection_9414| a@@27 b@@20)) (|MultiSet#Intersection_9414| a@@27 b@@20))
 :qid |stdinbpl.717:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_9414| a@@27 (|MultiSet#Intersection_9414| a@@27 b@@20)))
)))
(assert (forall ((s@@23 T@MultiSet_9339) ) (!  (and (= (= (|MultiSet#Card_9414| s@@23) 0) (= s@@23 |MultiSet#Empty_9414|)) (=> (not (= (|MultiSet#Card_9414| s@@23) 0)) (exists ((x@@17 Int) ) (! (< 0 (|MultiSet#Select_9414| s@@23 x@@17))
 :qid |stdinbpl.684:38|
 :skolemid |95|
))))
 :qid |stdinbpl.682:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_9414| s@@23))
)))
(assert (forall ((r@@3 Int) (o@@6 Int) ) (!  (and (= (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6) 1) (= r@@3 o@@6)) (= (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6) 0) (not (= r@@3 o@@6))))
 :qid |stdinbpl.687:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6))
)))
(assert (forall ((a@@28 T@MultiSet_9339) (b@@21 T@MultiSet_9339) (o@@7 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Union_9414| a@@28 b@@21) o@@7) (+ (|MultiSet#Select_9414| a@@28 o@@7) (|MultiSet#Select_9414| b@@21 o@@7)))
 :qid |stdinbpl.705:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Union_9414| a@@28 b@@21) o@@7))
 :pattern ( (|MultiSet#Union_9414| a@@28 b@@21) (|MultiSet#Select_9414| a@@28 o@@7) (|MultiSet#Select_9414| b@@21 o@@7))
)))
(assert (forall ((s@@24 T@Seq_8395) (t@@7 T@Seq_8395) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8470| s@@24))) (= (|Seq#Take_8470| (|Seq#Append_8395| s@@24 t@@7) n@@17) (|Seq#Take_8470| s@@24 n@@17)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8470| (|Seq#Append_8395| s@@24 t@@7) n@@17))
)))
(assert (forall ((s@@25 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@25))) (= (|Seq#Take_2867| (|Seq#Append_8117| s@@25 t@@8) n@@18) (|Seq#Take_2867| s@@25 n@@18)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_8117| s@@25 t@@8) n@@18))
)))
(assert (forall ((o@@8 Int) ) (!  (not (select |Set#Empty_8806| o@@8))
 :qid |stdinbpl.571:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_8806| o@@8))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_27251) (Mask@@66 T@PolymorphicMapType_27272) (s_1@@13 T@MultiSet_9339) ) (!  (=> (and (state Heap@@87 Mask@@66) (< AssumeFunctionsAbove 10)) (= (multiSets Heap@@87 s_1@@13) (ite  (and (> (|MultiSet#Card_9414| s_1@@13) 0) (> (|MultiSet#Select_9414| s_1@@13 (|MultiSet#Card_9414| s_1@@13)) 0)) (|multiSets'| Heap@@87 (|MultiSet#Difference_9414| s_1@@13 (|MultiSet#Singleton_4089| (|MultiSet#Card_9414| s_1@@13)))) 1)))
 :qid |stdinbpl.1884:15|
 :skolemid |193|
 :pattern ( (state Heap@@87 Mask@@66) (multiSets Heap@@87 s_1@@13))
)))
(assert (forall ((s@@26 T@Seq_8395) (i@@5 Int) (v@@2 Bool) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8470| s@@26))) (= (|Seq#Length_8470| (|Seq#Update_8470| s@@26 i@@5 v@@2)) (|Seq#Length_8470| s@@26)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8470| (|Seq#Update_8470| s@@26 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8470| s@@26) (|Seq#Update_8470| s@@26 i@@5 v@@2))
)))
(assert (forall ((s@@27 T@Seq_2867) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@27))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@27 i@@6 v@@3)) (|Seq#Length_2867| s@@27)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@27 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@27) (|Seq#Update_2867| s@@27 i@@6 v@@3))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_27251) (o_1 T@Ref) (f_51 T@Field_51165_51170) (v@@4 T@PolymorphicMapType_27800) ) (! (succHeap Heap@@88 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@88) (store (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@88) o_1 f_51 v@@4) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@88) (store (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@88) o_1 f_51 v@@4) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_27251) (o_1@@0 T@Ref) (f_51@@0 T@Field_48695_48696) (v@@5 T@FrameType) ) (! (succHeap Heap@@89 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@89) (store (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@89) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@89) (store (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@89) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_27251) (o_1@@1 T@Ref) (f_51@@1 T@Field_16468_16053) (v@@6 T@Ref) ) (! (succHeap Heap@@90 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@90) (store (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@90) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@90) (store (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@90) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_27251) (o_1@@2 T@Ref) (f_51@@2 T@Field_16468_53) (v@@7 Bool) ) (! (succHeap Heap@@91 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@91) (store (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@91) o_1@@2 f_51@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@91) (store (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@91) o_1@@2 f_51@@2 v@@7)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_27251) (o_1@@3 T@Ref) (f_51@@3 T@Field_16052_51170) (v@@8 T@PolymorphicMapType_27800) ) (! (succHeap Heap@@92 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@92) (store (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@92) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@92) (store (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@92) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_27251) (o_1@@4 T@Ref) (f_51@@4 T@Field_16052_16469) (v@@9 T@FrameType) ) (! (succHeap Heap@@93 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@93) (store (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@93) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@93) (store (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@93) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_27251) (o_1@@5 T@Ref) (f_51@@5 T@Field_27324_27325) (v@@10 T@Ref) ) (! (succHeap Heap@@94 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@94) (store (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@94) o_1@@5 f_51@@5 v@@10) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@94) (store (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@94) o_1@@5 f_51@@5 v@@10) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_27251) (o_1@@6 T@Ref) (f_51@@6 T@Field_27311_53) (v@@11 Bool) ) (! (succHeap Heap@@95 (PolymorphicMapType_27251 (store (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@95) o_1@@6 f_51@@6 v@@11) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (store (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@95) o_1@@6 f_51@@6 v@@11) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@95)))
)))
(assert (forall ((r@@4 Int) ) (! (= (|MultiSet#Singleton_4089| r@@4) (|MultiSet#UnionOne_3| |MultiSet#Empty_9414| r@@4))
 :qid |stdinbpl.690:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_4089| r@@4))
)))
(assert (forall ((xs@@13 T@Ref) ) (! (= (PredicateMaskField_16468 (list xs@@13)) (|list#sm| xs@@13))
 :qid |stdinbpl.2300:15|
 :skolemid |212|
 :pattern ( (PredicateMaskField_16468 (list xs@@13)))
)))
(assert (forall ((s@@28 T@Seq_8395) (t@@9 T@Seq_8395) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8470| s@@28))) (= (|Seq#Drop_8470| (|Seq#Append_8395| s@@28 t@@9) n@@19) (|Seq#Append_8395| (|Seq#Drop_8470| s@@28 n@@19) t@@9)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8470| (|Seq#Append_8395| s@@28 t@@9) n@@19))
)))
(assert (forall ((s@@29 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@29))) (= (|Seq#Drop_7775| (|Seq#Append_8117| s@@29 t@@10) n@@20) (|Seq#Append_8117| (|Seq#Drop_7775| s@@29 n@@20) t@@10)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7775| (|Seq#Append_8117| s@@29 t@@10) n@@20))
)))
(assert (forall ((a@@29 Int) (b@@22 Int) ) (! (= (<= a@@29 b@@22) (= (|Math#min| a@@29 b@@22) a@@29))
 :qid |stdinbpl.655:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@29 b@@22))
)))
(assert (forall ((a@@30 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@30) (= (|Math#min| a@@30 b@@23) b@@23))
 :qid |stdinbpl.656:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@30 b@@23))
)))
(assert (forall ((s@@30 T@Seq_8395) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8470| s@@30))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8470| (|Seq#Drop_8470| s@@30 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8470| s@@30 i@@7))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8470| s@@30 n@@21) (|Seq#Index_8470| s@@30 i@@7))
)))
(assert (forall ((s@@31 T@Seq_2867) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2867| s@@31))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_7775| s@@31 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2867| s@@31 i@@8))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7775| s@@31 n@@22) (|Seq#Index_2867| s@@31 i@@8))
)))
(assert (forall ((s@@32 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_8806| s@@32) 0) (= s@@32 |Set#Empty_8806|)) (=> (not (= (|Set#Card_8806| s@@32) 0)) (exists ((x@@18 Int) ) (! (select s@@32 x@@18)
 :qid |stdinbpl.574:33|
 :skolemid |60|
))))
 :qid |stdinbpl.572:18|
 :skolemid |61|
 :pattern ( (|Set#Card_8806| s@@32))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_27251) (Mask@@67 T@PolymorphicMapType_27272) (seq@@11 T@Seq_2867) ) (!  (=> (and (state Heap@@96 Mask@@67) (< AssumeFunctionsAbove 17)) (= (sequences Heap@@96 seq@@11) (ite (not (= (|Seq#Length_2867| seq@@11) 0)) (+ 1 (|sequences'| Heap@@96 (|Seq#Drop_7775| seq@@11 1))) 0)))
 :qid |stdinbpl.1527:15|
 :skolemid |171|
 :pattern ( (state Heap@@96 Mask@@67) (sequences Heap@@96 seq@@11))
)))
(assert (forall ((s0@@7 T@Seq_8395) (s1@@7 T@Seq_8395) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8470|)) (not (= s1@@7 |Seq#Empty_8470|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8470| s0@@7))) (= (|Seq#Index_8470| (|Seq#Append_8395| s0@@7 s1@@7) n@@23) (|Seq#Index_8470| s0@@7 n@@23)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8470| (|Seq#Append_8395| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8470| s0@@7 n@@23) (|Seq#Append_8395| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_8117| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_8117| s0@@8 s1@@8))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_27251) (Mask@@68 T@PolymorphicMapType_27272) (seq@@12 T@Seq_8395) ) (!  (=> (and (state Heap@@97 Mask@@68) (< AssumeFunctionsAbove 1)) (= (numberOfUsers Heap@@97 seq@@12) (ite (= (|Seq#Length_8470| seq@@12) 0) 0 (ite (|Seq#Index_8470| seq@@12 0) (+ 1 (|numberOfUsers'| Heap@@97 (|Seq#Drop_8470| seq@@12 1))) (|numberOfUsers'| Heap@@97 (|Seq#Drop_8470| seq@@12 1))))))
 :qid |stdinbpl.1681:15|
 :skolemid |181|
 :pattern ( (state Heap@@97 Mask@@68) (numberOfUsers Heap@@97 seq@@12))
)))
(assert (forall ((s0@@9 T@Seq_8395) (s1@@9 T@Seq_8395) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8470|)) (not (= s1@@9 |Seq#Empty_8470|))) (<= 0 m)) (< m (|Seq#Length_8470| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8470| s0@@9)) (|Seq#Length_8470| s0@@9)) m) (= (|Seq#Index_8470| (|Seq#Append_8395| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8470| s0@@9))) (|Seq#Index_8470| s1@@9 m))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8470| s1@@9 m) (|Seq#Append_8395| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_8117| s0@@10 s1@@10))
)))
(assert (forall ((a@@31 (Array Int Bool)) (x@@19 Int) ) (!  (=> (not (select a@@31 x@@19)) (= (|Set#Card_8806| (|Set#UnionOne_8806| a@@31 x@@19)) (+ (|Set#Card_8806| a@@31) 1)))
 :qid |stdinbpl.590:18|
 :skolemid |69|
 :pattern ( (|Set#Card_8806| (|Set#UnionOne_8806| a@@31 x@@19)))
)))
(assert (forall ((a@@32 T@MultiSet_9339) (b@@24 T@MultiSet_9339) (o@@9 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@32 b@@24) o@@9) (|Math#clip| (- (|MultiSet#Select_9414| a@@32 o@@9) (|MultiSet#Select_9414| b@@24 o@@9))))
 :qid |stdinbpl.722:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@32 b@@24) o@@9))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_27251) (Mask@@69 T@PolymorphicMapType_27272) (xs@@14 T@Ref) ) (!  (=> (and (state Heap@@98 Mask@@69) (< AssumeFunctionsAbove 14)) (= (predicates Heap@@98 xs@@14) (ite (not (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@98) xs@@14 next) null)) (|predicates'| Heap@@98 (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@98) xs@@14 next)) 0)))
 :qid |stdinbpl.2011:15|
 :skolemid |201|
 :pattern ( (state Heap@@98 Mask@@69) (predicates Heap@@98 xs@@14))
 :pattern ( (state Heap@@98 Mask@@69) (|predicates#triggerStateless| xs@@14) (|list#trigger_16468| Heap@@98 (list xs@@14)))
)))
(assert (forall ((o_1@@7 T@Ref) (f_2 T@Field_27324_27325) (Heap@@99 T@PolymorphicMapType_27251) ) (!  (=> (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@99) o_1@@7 $allocated) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@99) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@99) o_1@@7 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@99) o_1@@7 f_2))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_27251) (Mask@@70 T@PolymorphicMapType_27272) (x@@20 Int) ) (!  (=> (and (state Heap@@100 Mask@@70) (< AssumeFunctionsAbove 16)) (=> (>= x@@20 0) (= (fact Heap@@100 x@@20) (ite (= x@@20 0) 1 (* x@@20 (|fact'| Heap@@100 (- x@@20 1)))))))
 :qid |stdinbpl.967:15|
 :skolemid |137|
 :pattern ( (state Heap@@100 Mask@@70) (fact Heap@@100 x@@20))
)))
(assert (forall ((s@@33 T@Seq_8395) (x@@21 Bool) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8470| s@@33))) (= (|Seq#Index_8470| s@@33 i@@9) x@@21)) (|Seq#Contains_8395| s@@33 x@@21))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_8395| s@@33 x@@21) (|Seq#Index_8470| s@@33 i@@9))
)))
(assert (forall ((s@@34 T@Seq_2867) (x@@22 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@34))) (= (|Seq#Index_2867| s@@34 i@@10) x@@22)) (|Seq#Contains_2867| s@@34 x@@22))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@34 x@@22) (|Seq#Index_2867| s@@34 i@@10))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_27251) (Mask@@71 T@PolymorphicMapType_27272) (s_1@@14 T@MultiSet_9339) ) (!  (=> (and (state Heap@@101 Mask@@71) (< AssumeFunctionsAbove 4)) (= (multiSets_e Heap@@101 s_1@@14) (ite  (and (> (|MultiSet#Card_9414| s_1@@14) 0) (> (|MultiSet#Select_9414| s_1@@14 (|MultiSet#Card_9414| s_1@@14)) 0)) 1 (|multiSets_e'| Heap@@101 (|MultiSet#Difference_9414| s_1@@14 (|MultiSet#Singleton_4089| (|MultiSet#Card_9414| s_1@@14)))))))
 :qid |stdinbpl.1947:15|
 :skolemid |197|
 :pattern ( (state Heap@@101 Mask@@71) (multiSets_e Heap@@101 s_1@@14))
)))
(assert (forall ((s0@@11 T@Seq_8395) (s1@@11 T@Seq_8395) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_8395| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_8395| s0@@11 s1@@11))) (not (= (|Seq#Length_8470| s0@@11) (|Seq#Length_8470| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_8395| s0@@11 s1@@11))) (= (|Seq#Length_8470| s0@@11) (|Seq#Length_8470| s1@@11))) (= (|Seq#SkolemDiff_8395| s0@@11 s1@@11) (|Seq#SkolemDiff_8395| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_8395| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_8395| s0@@11 s1@@11) (|Seq#Length_8470| s0@@11))) (not (= (|Seq#Index_8470| s0@@11 (|Seq#SkolemDiff_8395| s0@@11 s1@@11)) (|Seq#Index_8470| s1@@11 (|Seq#SkolemDiff_8395| s0@@11 s1@@11))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_8395| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_16052_16469) (v_1@@1 T@FrameType) (q T@Field_16052_16469) (w@@1 T@FrameType) (r@@5 T@Field_16052_16469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27311_27311 p@@2 v_1@@1 q w@@1) (InsidePredicate_27311_27311 q w@@1 r@@5 u)) (InsidePredicate_27311_27311 p@@2 v_1@@1 r@@5 u))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_27311 p@@2 v_1@@1 q w@@1) (InsidePredicate_27311_27311 q w@@1 r@@5 u))
)))
(assert (forall ((p@@3 T@Field_16052_16469) (v_1@@2 T@FrameType) (q@@0 T@Field_16052_16469) (w@@2 T@FrameType) (r@@6 T@Field_48695_48696) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_27311 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_27311_16468 q@@0 w@@2 r@@6 u@@0)) (InsidePredicate_27311_16468 p@@3 v_1@@2 r@@6 u@@0))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_27311 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_27311_16468 q@@0 w@@2 r@@6 u@@0))
)))
(assert (forall ((p@@4 T@Field_16052_16469) (v_1@@3 T@FrameType) (q@@1 T@Field_48695_48696) (w@@3 T@FrameType) (r@@7 T@Field_16052_16469) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_16468 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16468_27311 q@@1 w@@3 r@@7 u@@1)) (InsidePredicate_27311_27311 p@@4 v_1@@3 r@@7 u@@1))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_16468 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16468_27311 q@@1 w@@3 r@@7 u@@1))
)))
(assert (forall ((p@@5 T@Field_16052_16469) (v_1@@4 T@FrameType) (q@@2 T@Field_48695_48696) (w@@4 T@FrameType) (r@@8 T@Field_48695_48696) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_16468 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16468_16468 q@@2 w@@4 r@@8 u@@2)) (InsidePredicate_27311_16468 p@@5 v_1@@4 r@@8 u@@2))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_16468 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16468_16468 q@@2 w@@4 r@@8 u@@2))
)))
(assert (forall ((p@@6 T@Field_48695_48696) (v_1@@5 T@FrameType) (q@@3 T@Field_16052_16469) (w@@5 T@FrameType) (r@@9 T@Field_16052_16469) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_27311 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_27311_27311 q@@3 w@@5 r@@9 u@@3)) (InsidePredicate_16468_27311 p@@6 v_1@@5 r@@9 u@@3))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_27311 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_27311_27311 q@@3 w@@5 r@@9 u@@3))
)))
(assert (forall ((p@@7 T@Field_48695_48696) (v_1@@6 T@FrameType) (q@@4 T@Field_16052_16469) (w@@6 T@FrameType) (r@@10 T@Field_48695_48696) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_27311 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_27311_16468 q@@4 w@@6 r@@10 u@@4)) (InsidePredicate_16468_16468 p@@7 v_1@@6 r@@10 u@@4))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_27311 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_27311_16468 q@@4 w@@6 r@@10 u@@4))
)))
(assert (forall ((p@@8 T@Field_48695_48696) (v_1@@7 T@FrameType) (q@@5 T@Field_48695_48696) (w@@7 T@FrameType) (r@@11 T@Field_16052_16469) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_16468 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16468_27311 q@@5 w@@7 r@@11 u@@5)) (InsidePredicate_16468_27311 p@@8 v_1@@7 r@@11 u@@5))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_16468 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16468_27311 q@@5 w@@7 r@@11 u@@5))
)))
(assert (forall ((p@@9 T@Field_48695_48696) (v_1@@8 T@FrameType) (q@@6 T@Field_48695_48696) (w@@8 T@FrameType) (r@@12 T@Field_48695_48696) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_16468 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16468_16468 q@@6 w@@8 r@@12 u@@6)) (InsidePredicate_16468_16468 p@@9 v_1@@8 r@@12 u@@6))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_16468 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16468_16468 q@@6 w@@8 r@@12 u@@6))
)))
(assert (forall ((a@@33 Int) ) (!  (=> (< a@@33 0) (= (|Math#clip| a@@33) 0))
 :qid |stdinbpl.661:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@33))
)))
(assert (forall ((s@@35 T@Seq_8395) ) (!  (=> (= (|Seq#Length_8470| s@@35) 0) (= s@@35 |Seq#Empty_8470|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8470| s@@35))
)))
(assert (forall ((s@@36 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@36) 0) (= s@@36 |Seq#Empty_2867|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@36))
)))
(assert (forall ((s@@37 T@Seq_8395) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8470| s@@37 n@@25) |Seq#Empty_8470|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8470| s@@37 n@@25))
)))
(assert (forall ((s@@38 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@38 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@38 n@@26))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_27251) (Mask@@72 T@PolymorphicMapType_27272) (xs@@15 T@Ref) ) (!  (=> (and (state Heap@@102 Mask@@72) (< AssumeFunctionsAbove 15)) (= (predicates_e Heap@@102 xs@@15) (ite (not (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@102) xs@@15 next) null)) (|predicates_e'| Heap@@102 xs@@15) 0)))
 :qid |stdinbpl.2136:15|
 :skolemid |206|
 :pattern ( (state Heap@@102 Mask@@72) (predicates_e Heap@@102 xs@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@34 T@MultiSet_9339) (x@@23 Int) (o@@10 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@34 x@@23) o@@10) (ite (= x@@23 o@@10) (+ (|MultiSet#Select_9414| a@@34 o@@10) 1) (|MultiSet#Select_9414| a@@34 o@@10)))
 :qid |stdinbpl.694:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@34 x@@23) o@@10))
 :pattern ( (|MultiSet#UnionOne_3| a@@34 x@@23) (|MultiSet#Select_9414| a@@34 o@@10))
)))
(assert (forall ((a@@35 T@MultiSet_9339) (b@@25 T@MultiSet_9339) ) (! (= (|MultiSet#Equal_9339| a@@35 b@@25) (forall ((o@@11 Int) ) (! (= (|MultiSet#Select_9414| a@@35 o@@11) (|MultiSet#Select_9414| b@@25 o@@11))
 :qid |stdinbpl.740:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_9414| a@@35 o@@11))
 :pattern ( (|MultiSet#Select_9414| b@@25 o@@11))
)))
 :qid |stdinbpl.739:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_9339| a@@35 b@@25))
)))
(assert (forall ((a@@36 T@MultiSet_9339) (b@@26 T@MultiSet_9339) ) (! (= (|MultiSet#Subset_9339| a@@36 b@@26) (forall ((o@@12 Int) ) (! (<= (|MultiSet#Select_9414| a@@36 o@@12) (|MultiSet#Select_9414| b@@26 o@@12))
 :qid |stdinbpl.736:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_9414| a@@36 o@@12))
 :pattern ( (|MultiSet#Select_9414| b@@26 o@@12))
)))
 :qid |stdinbpl.735:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_9339| a@@36 b@@26))
)))
(assert (forall ((a@@37 (Array Int Bool)) (b@@27 (Array Int Bool)) (o@@13 Int) ) (! (= (select (|Set#Union_8806| a@@37 b@@27) o@@13)  (or (select a@@37 o@@13) (select b@@27 o@@13)))
 :qid |stdinbpl.594:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_8806| a@@37 b@@27) o@@13))
)))
(assert (forall ((int1@@2 Real) ) (!  (=> (<= (/ (to_real 0) (to_real 1)) int1@@2) (bounded_645 int1@@2))
 :qid |stdinbpl.918:15|
 :skolemid |132|
 :pattern ( (bounded_645 int1@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |fact#trigger| (T@FrameType Int) Bool)
(declare-fun x@@24 () Int)
(declare-fun Heap@@103 () T@PolymorphicMapType_27251)
(set-info :boogie-vc-id |fact#definedness|)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_correct true))
(let ((anon7_Else_correct  (=> (and (|fact#trigger| EmptyFrame (- x@@24 1)) (= (ControlFlow 0 5) 3)) anon5_correct)))
(let ((anon6_Then_correct  (=> (and (= x@@24 0) (= (ControlFlow 0 4) 3)) anon5_correct)))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= (- x@@24 1) 0))))
(let ((anon6_Else_correct  (=> (not (= x@@24 0)) (and (=> (= (ControlFlow 0 6) 2) anon7_Then_correct) (=> (= (ControlFlow 0 6) 5) anon7_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@103 ZeroMask) (=> (and (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 16)) (and (>= x@@24 0) (state Heap@@103 ZeroMask))) (and (=> (= (ControlFlow 0 7) 4) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
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
(declare-sort T@Field_27311_53 0)
(declare-sort T@Field_27324_27325 0)
(declare-sort T@Field_48695_48696 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_51165_51170 0)
(declare-sort T@Field_16052_16469 0)
(declare-sort T@Field_16052_51170 0)
(declare-sort T@Field_16468_16053 0)
(declare-sort T@Field_16468_53 0)
(declare-datatypes ((T@PolymorphicMapType_27272 0)) (((PolymorphicMapType_27272 (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| (Array T@Ref T@Field_48695_48696 Real)) (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| (Array T@Ref T@Field_27324_27325 Real)) (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| (Array T@Ref T@Field_16468_16053 Real)) (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| (Array T@Ref T@Field_16468_53 Real)) (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| (Array T@Ref T@Field_51165_51170 Real)) (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| (Array T@Ref T@Field_16052_16469 Real)) (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| (Array T@Ref T@Field_27311_53 Real)) (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| (Array T@Ref T@Field_16052_51170 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27800 0)) (((PolymorphicMapType_27800 (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (Array T@Ref T@Field_27324_27325 Bool)) (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (Array T@Ref T@Field_27311_53 Bool)) (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (Array T@Ref T@Field_16052_16469 Bool)) (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (Array T@Ref T@Field_16052_51170 Bool)) (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (Array T@Ref T@Field_16468_16053 Bool)) (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (Array T@Ref T@Field_16468_53 Bool)) (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (Array T@Ref T@Field_48695_48696 Bool)) (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (Array T@Ref T@Field_51165_51170 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27251 0)) (((PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| (Array T@Ref T@Field_27311_53 Bool)) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| (Array T@Ref T@Field_27324_27325 T@Ref)) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| (Array T@Ref T@Field_48695_48696 T@FrameType)) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| (Array T@Ref T@Field_51165_51170 T@PolymorphicMapType_27800)) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| (Array T@Ref T@Field_16052_16469 T@FrameType)) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| (Array T@Ref T@Field_16052_51170 T@PolymorphicMapType_27800)) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| (Array T@Ref T@Field_16468_16053 T@Ref)) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| (Array T@Ref T@Field_16468_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_27311_53)
(declare-fun next () T@Field_27324_27325)
(declare-sort T@Seq_8395 0)
(declare-fun |Seq#Length_8470| (T@Seq_8395) Int)
(declare-fun |Seq#Drop_8470| (T@Seq_8395 Int) T@Seq_8395)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_7775| (T@Seq_2867 Int) T@Seq_2867)
(declare-sort T@PredicateInstanceDomainType 0)
(declare-fun nestedPredicates (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun state (T@PolymorphicMapType_27251 T@PolymorphicMapType_27272) Bool)
(declare-fun booleans (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |booleans'| (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun succHeap (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251) Bool)
(declare-sort T@MultiSet_9339 0)
(declare-fun bounded_57397 (T@MultiSet_9339) Bool)
(declare-fun bounded_5179 (Bool) Bool)
(declare-fun bounded_16040 (T@PredicateInstanceDomainType) Bool)
(declare-fun bounded_16051 (T@Ref) Bool)
(declare-fun |MultiSet#Card_9414| (T@MultiSet_9339) Int)
(declare-fun |MultiSet#Difference_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun |MultiSet#Intersection_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun |MultiSet#Union_9414| (T@MultiSet_9339 T@MultiSet_9339) T@MultiSet_9339)
(declare-fun GoodMask (T@PolymorphicMapType_27272) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27251 T@PolymorphicMapType_27251 T@PolymorphicMapType_27272) Bool)
(declare-fun IsPredicateField_16468_16469 (T@Field_48695_48696) Bool)
(declare-fun HasDirectPerm_16468_16469 (T@PolymorphicMapType_27272 T@Ref T@Field_48695_48696) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16468 (T@Field_48695_48696) T@Field_51165_51170)
(declare-fun IsPredicateField_16052_78189 (T@Field_16052_16469) Bool)
(declare-fun HasDirectPerm_16052_16469 (T@PolymorphicMapType_27272 T@Ref T@Field_16052_16469) Bool)
(declare-fun PredicateMaskField_16052 (T@Field_16052_16469) T@Field_16052_51170)
(declare-fun IsWandField_16468_81475 (T@Field_48695_48696) Bool)
(declare-fun WandMaskField_16468 (T@Field_48695_48696) T@Field_51165_51170)
(declare-fun IsWandField_16052_81118 (T@Field_16052_16469) Bool)
(declare-fun WandMaskField_16052 (T@Field_16052_16469) T@Field_16052_51170)
(declare-fun ZeroPMask () T@PolymorphicMapType_27800)
(declare-fun sequences_e (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |sequences_e'| (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |Seq#Append_8117| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_8470| (T@Seq_8395 Int) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Empty_8470| () T@Seq_8395)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun decreasing_645 (Real Real) Bool)
(declare-fun references_e (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |references_e'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun references (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |references'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun list (T@Ref) T@Field_48695_48696)
(declare-fun |fact'| (T@PolymorphicMapType_27251 Int) Int)
(declare-fun dummyFunction_5652 (Int) Bool)
(declare-fun |fact#triggerStateless| (Int) Int)
(declare-fun |fact_e'| (T@PolymorphicMapType_27251 Int) Int)
(declare-fun |fact_e#triggerStateless| (Int) Int)
(declare-fun |references#triggerStateless| (T@Ref) Int)
(declare-fun |references_e#triggerStateless| (T@Ref) Int)
(declare-fun |booleans#triggerStateless| (Bool) Int)
(declare-fun |booleans_e'| (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun |booleans_e#triggerStateless| (Bool) Int)
(declare-fun |rationals'| (T@PolymorphicMapType_27251 Real) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |rationals#triggerStateless| (Real) Real)
(declare-fun |rationals_e'| (T@PolymorphicMapType_27251 Real) Real)
(declare-fun |rationals_e#triggerStateless| (Real) Real)
(declare-fun |sequences'| (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun |sequences#triggerStateless| (T@Seq_2867) Int)
(declare-fun |sequences_e#triggerStateless| (T@Seq_2867) Int)
(declare-fun |numberOfUsers'| (T@PolymorphicMapType_27251 T@Seq_8395) Int)
(declare-fun |numberOfUsers#triggerStateless| (T@Seq_8395) Int)
(declare-fun |sets'| (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun |sets#triggerStateless| ((Array Int Bool)) Int)
(declare-fun |sets_e'| (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun |sets_e#triggerStateless| ((Array Int Bool)) Int)
(declare-fun |multiSets'| (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun |multiSets#triggerStateless| (T@MultiSet_9339) Int)
(declare-fun |multiSets_e'| (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun |multiSets_e#triggerStateless| (T@MultiSet_9339) Int)
(declare-fun |predicates'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |predicates#triggerStateless| (T@Ref) Int)
(declare-fun |predicates_e'| (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun |predicates_e#triggerStateless| (T@Ref) Int)
(declare-fun |PI_list'| (T@PolymorphicMapType_27251 T@Ref) T@PredicateInstanceDomainType)
(declare-fun dummyFunction_16461 (T@PredicateInstanceDomainType) Bool)
(declare-fun |PI_list#triggerStateless| (T@Ref) T@PredicateInstanceDomainType)
(declare-fun |list#trigger_16468| (T@PolymorphicMapType_27251 T@Field_48695_48696) Bool)
(declare-fun |list#everUsed_16468| (T@Field_48695_48696) Bool)
(declare-fun |Seq#Update_8470| (T@Seq_8395 Int Bool) T@Seq_8395)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |MultiSet#Select_9414| (T@MultiSet_9339 Int) Int)
(declare-fun |Set#Union_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun rationals_e (T@PolymorphicMapType_27251 Real) Real)
(declare-fun |Set#Singleton_2998| (Int) (Array Int Bool))
(declare-fun |Seq#Take_8470| (T@Seq_8395 Int) T@Seq_8395)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Set#Card_8806| ((Array Int Bool)) Int)
(declare-fun |booleans#trigger| (T@FrameType Bool) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |booleans_e#trigger| (T@FrameType Bool) Bool)
(declare-fun |Seq#Contains_8395| (T@Seq_8395 Bool) Bool)
(declare-fun |Seq#Skolem_8395| (T@Seq_8395 Bool) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun fact (T@PolymorphicMapType_27251 Int) Int)
(declare-fun fact_e (T@PolymorphicMapType_27251 Int) Int)
(declare-fun booleans_e (T@PolymorphicMapType_27251 Bool) Int)
(declare-fun rationals (T@PolymorphicMapType_27251 Real) Real)
(declare-fun sequences (T@PolymorphicMapType_27251 T@Seq_2867) Int)
(declare-fun numberOfUsers (T@PolymorphicMapType_27251 T@Seq_8395) Int)
(declare-fun sets (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun sets_e (T@PolymorphicMapType_27251 (Array Int Bool)) Int)
(declare-fun multiSets (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun multiSets_e (T@PolymorphicMapType_27251 T@MultiSet_9339) Int)
(declare-fun predicates (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun predicates_e (T@PolymorphicMapType_27251 T@Ref) Int)
(declare-fun PI_list (T@PolymorphicMapType_27251 T@Ref) T@PredicateInstanceDomainType)
(declare-fun |Math#clip| (Int) Int)
(declare-fun decreasing_5318 (Int Int) Bool)
(declare-fun |Seq#Singleton_8470| (Bool) T@Seq_8395)
(declare-fun |list#sm| (T@Ref) T@Field_51165_51170)
(declare-fun |Seq#Append_8395| (T@Seq_8395 T@Seq_8395) T@Seq_8395)
(declare-fun |sequences_e#trigger| (T@FrameType T@Seq_2867) Bool)
(declare-fun |sequences#trigger| (T@FrameType T@Seq_2867) Bool)
(declare-fun decreasing_5 (Bool Bool) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_27251)
(declare-fun ZeroMask () T@PolymorphicMapType_27272)
(declare-fun |MultiSet#UnionOne_3| (T@MultiSet_9339 Int) T@MultiSet_9339)
(declare-fun |MultiSet#Disjoint_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun decreasing_57554 (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun decreasing_63949 ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun decreasing_63282 (T@Seq_8395 T@Seq_8395) Bool)
(declare-fun decreasing_62320 (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun InsidePredicate_27311_27311 (T@Field_16052_16469 T@FrameType T@Field_16052_16469 T@FrameType) Bool)
(declare-fun InsidePredicate_16468_16468 (T@Field_48695_48696 T@FrameType T@Field_48695_48696 T@FrameType) Bool)
(declare-fun |MultiSet#Singleton_4089| (Int) T@MultiSet_9339)
(declare-fun IsPredicateField_16052_16053 (T@Field_27324_27325) Bool)
(declare-fun IsWandField_16052_16053 (T@Field_27324_27325) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16052_87186 (T@Field_16052_51170) Bool)
(declare-fun IsWandField_16052_87202 (T@Field_16052_51170) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16052_53 (T@Field_27311_53) Bool)
(declare-fun IsWandField_16052_53 (T@Field_27311_53) Bool)
(declare-fun IsPredicateField_16468_86537 (T@Field_51165_51170) Bool)
(declare-fun IsWandField_16468_86553 (T@Field_51165_51170) Bool)
(declare-fun IsPredicateField_16468_53 (T@Field_16468_53) Bool)
(declare-fun IsWandField_16468_53 (T@Field_16468_53) Bool)
(declare-fun IsPredicateField_16468_16053 (T@Field_16468_16053) Bool)
(declare-fun IsWandField_16468_16053 (T@Field_16468_16053) Bool)
(declare-fun HasDirectPerm_16468_77944 (T@PolymorphicMapType_27272 T@Ref T@Field_51165_51170) Bool)
(declare-fun HasDirectPerm_16468_53 (T@PolymorphicMapType_27272 T@Ref T@Field_16468_53) Bool)
(declare-fun HasDirectPerm_16468_16053 (T@PolymorphicMapType_27272 T@Ref T@Field_16468_16053) Bool)
(declare-fun HasDirectPerm_16052_77024 (T@PolymorphicMapType_27272 T@Ref T@Field_16052_51170) Bool)
(declare-fun HasDirectPerm_16052_53 (T@PolymorphicMapType_27272 T@Ref T@Field_27311_53) Bool)
(declare-fun HasDirectPerm_16052_16053 (T@PolymorphicMapType_27272 T@Ref T@Field_27324_27325) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27272 T@PolymorphicMapType_27272 T@PolymorphicMapType_27272) Bool)
(declare-fun decreasing_15675 (T@Ref T@Ref) Bool)
(declare-fun |Set#Difference_8806| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun bounded_5343 (Int) Bool)
(declare-fun decreasing_16038 (T@PredicateInstanceDomainType T@PredicateInstanceDomainType) Bool)
(declare-fun |Seq#Equal_8395| (T@Seq_8395 T@Seq_8395) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |MultiSet#Equal_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun |Set#UnionOne_8806| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun bounded_63300 (T@Seq_8395) Bool)
(declare-fun bounded_62338 (T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_8470| (T@Seq_8395 Bool) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun |MultiSet#Empty_9414| () T@MultiSet_9339)
(declare-fun |predicates#frame| (T@FrameType T@Ref) Int)
(declare-fun |predicates_e#frame| (T@FrameType T@Ref) Int)
(declare-fun |PI_list#frame| (T@FrameType T@Ref) T@PredicateInstanceDomainType)
(declare-fun getPredWandId_16468_16469 (T@Field_48695_48696) Int)
(declare-fun |fact#frame| (T@FrameType Int) Int)
(declare-fun |fact_e#frame| (T@FrameType Int) Int)
(declare-fun |references#frame| (T@FrameType T@Ref) Int)
(declare-fun |references_e#frame| (T@FrameType T@Ref) Int)
(declare-fun |booleans#frame| (T@FrameType Bool) Int)
(declare-fun |booleans_e#frame| (T@FrameType Bool) Int)
(declare-fun |rationals#frame| (T@FrameType Real) Real)
(declare-fun |rationals_e#frame| (T@FrameType Real) Real)
(declare-fun |sequences#frame| (T@FrameType T@Seq_2867) Int)
(declare-fun |sequences_e#frame| (T@FrameType T@Seq_2867) Int)
(declare-fun |numberOfUsers#frame| (T@FrameType T@Seq_8395) Int)
(declare-fun |sets#frame| (T@FrameType (Array Int Bool)) Int)
(declare-fun |sets_e#frame| (T@FrameType (Array Int Bool)) Int)
(declare-fun |multiSets#frame| (T@FrameType T@MultiSet_9339) Int)
(declare-fun |multiSets_e#frame| (T@FrameType T@MultiSet_9339) Int)
(declare-fun |Set#Empty_8806| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_8395| (T@Seq_8395 T@Seq_8395) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_27311_16468 (T@Field_16052_16469 T@FrameType T@Field_48695_48696 T@FrameType) Bool)
(declare-fun InsidePredicate_16468_27311 (T@Field_48695_48696 T@FrameType T@Field_16052_16469 T@FrameType) Bool)
(declare-fun |MultiSet#Subset_9339| (T@MultiSet_9339 T@MultiSet_9339) Bool)
(declare-fun bounded_645 (Real) Bool)
(assert (forall ((s T@Seq_8395) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8470| s)) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) (- (|Seq#Length_8470| s) n))) (=> (< (|Seq#Length_8470| s) n) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8470| (|Seq#Drop_8470| s n)) (|Seq#Length_8470| s))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8470| (|Seq#Drop_8470| s n)))
 :pattern ( (|Seq#Length_8470| s) (|Seq#Drop_8470| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.293:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_7775| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_7775| s@@0 n@@0))
)))
(assert (forall ((l1_1 T@PredicateInstanceDomainType) ) (!  (not (nestedPredicates l1_1 l1_1))
 :qid |stdinbpl.873:15|
 :skolemid |128|
 :pattern ( (nestedPredicates l1_1 l1_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27251) (Mask T@PolymorphicMapType_27272) (b_24 Bool) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 2)) (= (booleans Heap b_24) (ite b_24 (|booleans'| Heap  (not b_24)) 1)))
 :qid |stdinbpl.1247:15|
 :skolemid |153|
 :pattern ( (state Heap Mask) (booleans Heap b_24))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_27251) (Heap1 T@PolymorphicMapType_27251) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((mSet1 T@MultiSet_9339) ) (! (bounded_57397 mSet1)
 :qid |stdinbpl.765:19|
 :skolemid |119|
 :pattern ( (bounded_57397 mSet1))
)))
(assert (forall ((bool1 Bool) ) (! (bounded_5179 bool1)
 :qid |stdinbpl.832:15|
 :skolemid |124|
 :pattern ( (bounded_5179 bool1))
)))
(assert (forall ((l1_1@@0 T@PredicateInstanceDomainType) ) (! (bounded_16040 l1_1@@0)
 :qid |stdinbpl.851:15|
 :skolemid |126|
 :pattern ( (bounded_16040 l1_1@@0))
)))
(assert (forall ((ref1 T@Ref) ) (! (bounded_16051 ref1)
 :qid |stdinbpl.937:15|
 :skolemid |134|
 :pattern ( (bounded_16051 ref1))
)))
(assert (forall ((a T@MultiSet_9339) (b T@MultiSet_9339) ) (!  (and (= (+ (+ (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)) (|MultiSet#Card_9414| (|MultiSet#Difference_9414| b a))) (* 2 (|MultiSet#Card_9414| (|MultiSet#Intersection_9414| a b)))) (|MultiSet#Card_9414| (|MultiSet#Union_9414| a b))) (= (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)) (- (|MultiSet#Card_9414| a) (|MultiSet#Card_9414| (|MultiSet#Intersection_9414| a b)))))
 :qid |stdinbpl.726:18|
 :skolemid |110|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#Difference_9414| a b)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27251) (Mask@@0 T@PolymorphicMapType_27272) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27251) (ExhaleHeap T@PolymorphicMapType_27251) (Mask@@1 T@PolymorphicMapType_27272) (pm_f_19 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_16468_16469 Mask@@1 null pm_f_19) (IsPredicateField_16468_16469 pm_f_19)) (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19 f_19) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@1) o2_19 f_19) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@1) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@1) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@1) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@1) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap) o2_19@@3 f_19@@3))
))) (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@1) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap) o2_19@@4 f_19@@4))
))) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@1) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) null (PredicateMaskField_16468 pm_f_19))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@1) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap) o2_19@@6 f_19@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@1) (IsPredicateField_16468_16469 pm_f_19))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27251) (ExhaleHeap@@0 T@PolymorphicMapType_27251) (Mask@@2 T@PolymorphicMapType_27272) (pm_f_19@@0 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_16052_16469 Mask@@2 null pm_f_19@@0) (IsPredicateField_16052_78189 pm_f_19@@0)) (and (and (and (and (and (and (and (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@2) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@7 f_19@@7))
)) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@2) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@8 f_19@@8))
))) (forall ((o2_19@@9 T@Ref) (f_19@@9 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@9 f_19@@9) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@2) o2_19@@9 f_19@@9) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@9 f_19@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@9 f_19@@9))
))) (forall ((o2_19@@10 T@Ref) (f_19@@10 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@10 f_19@@10) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) o2_19@@10 f_19@@10) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@10 f_19@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@10 f_19@@10))
))) (forall ((o2_19@@11 T@Ref) (f_19@@11 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@11 f_19@@11) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@2) o2_19@@11 f_19@@11) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@11 f_19@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@11 f_19@@11))
))) (forall ((o2_19@@12 T@Ref) (f_19@@12 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@12 f_19@@12) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@2) o2_19@@12 f_19@@12) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@12 f_19@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@12 f_19@@12))
))) (forall ((o2_19@@13 T@Ref) (f_19@@13 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@13 f_19@@13) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@2) o2_19@@13 f_19@@13) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@13 f_19@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@13 f_19@@13))
))) (forall ((o2_19@@14 T@Ref) (f_19@@14 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@2) null (PredicateMaskField_16052 pm_f_19@@0))) o2_19@@14 f_19@@14) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@2) o2_19@@14 f_19@@14) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@14 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@0) o2_19@@14 f_19@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@2) (IsPredicateField_16052_78189 pm_f_19@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27251) (ExhaleHeap@@1 T@PolymorphicMapType_27251) (Mask@@3 T@PolymorphicMapType_27272) (pm_f_19@@1 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_16468_16469 Mask@@3 null pm_f_19@@1) (IsWandField_16468_81475 pm_f_19@@1)) (and (and (and (and (and (and (and (forall ((o2_19@@15 T@Ref) (f_19@@15 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@15 f_19@@15) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@3) o2_19@@15 f_19@@15) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@15 f_19@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@15 f_19@@15))
)) (forall ((o2_19@@16 T@Ref) (f_19@@16 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@16 f_19@@16) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@3) o2_19@@16 f_19@@16) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@16 f_19@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@16 f_19@@16))
))) (forall ((o2_19@@17 T@Ref) (f_19@@17 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@17 f_19@@17) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@3) o2_19@@17 f_19@@17) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@17 f_19@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@17 f_19@@17))
))) (forall ((o2_19@@18 T@Ref) (f_19@@18 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@18 f_19@@18) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@3) o2_19@@18 f_19@@18) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@18 f_19@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@18 f_19@@18))
))) (forall ((o2_19@@19 T@Ref) (f_19@@19 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@19 f_19@@19) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@3) o2_19@@19 f_19@@19) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@19 f_19@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@19 f_19@@19))
))) (forall ((o2_19@@20 T@Ref) (f_19@@20 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@20 f_19@@20) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@3) o2_19@@20 f_19@@20) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@20 f_19@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@20 f_19@@20))
))) (forall ((o2_19@@21 T@Ref) (f_19@@21 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@21 f_19@@21) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@3) o2_19@@21 f_19@@21) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@21 f_19@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@21 f_19@@21))
))) (forall ((o2_19@@22 T@Ref) (f_19@@22 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) null (WandMaskField_16468 pm_f_19@@1))) o2_19@@22 f_19@@22) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@3) o2_19@@22 f_19@@22) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@22 f_19@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@1) o2_19@@22 f_19@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@3) (IsWandField_16468_81475 pm_f_19@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27251) (ExhaleHeap@@2 T@PolymorphicMapType_27251) (Mask@@4 T@PolymorphicMapType_27272) (pm_f_19@@2 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_16052_16469 Mask@@4 null pm_f_19@@2) (IsWandField_16052_81118 pm_f_19@@2)) (and (and (and (and (and (and (and (forall ((o2_19@@23 T@Ref) (f_19@@23 T@Field_27324_27325) ) (!  (=> (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@23 f_19@@23) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@4) o2_19@@23 f_19@@23) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@23 f_19@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@23 f_19@@23))
)) (forall ((o2_19@@24 T@Ref) (f_19@@24 T@Field_27311_53) ) (!  (=> (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@24 f_19@@24) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@4) o2_19@@24 f_19@@24) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@24 f_19@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@24 f_19@@24))
))) (forall ((o2_19@@25 T@Ref) (f_19@@25 T@Field_16052_16469) ) (!  (=> (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@25 f_19@@25) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@4) o2_19@@25 f_19@@25) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@25 f_19@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@25 f_19@@25))
))) (forall ((o2_19@@26 T@Ref) (f_19@@26 T@Field_16052_51170) ) (!  (=> (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@26 f_19@@26) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) o2_19@@26 f_19@@26) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@26 f_19@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@26 f_19@@26))
))) (forall ((o2_19@@27 T@Ref) (f_19@@27 T@Field_16468_16053) ) (!  (=> (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@27 f_19@@27) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@4) o2_19@@27 f_19@@27) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@27 f_19@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@27 f_19@@27))
))) (forall ((o2_19@@28 T@Ref) (f_19@@28 T@Field_16468_53) ) (!  (=> (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@28 f_19@@28) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@4) o2_19@@28 f_19@@28) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@28 f_19@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@28 f_19@@28))
))) (forall ((o2_19@@29 T@Ref) (f_19@@29 T@Field_48695_48696) ) (!  (=> (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@29 f_19@@29) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@4) o2_19@@29 f_19@@29) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@29 f_19@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@29 f_19@@29))
))) (forall ((o2_19@@30 T@Ref) (f_19@@30 T@Field_51165_51170) ) (!  (=> (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@4) null (WandMaskField_16052 pm_f_19@@2))) o2_19@@30 f_19@@30) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@4) o2_19@@30 f_19@@30) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@30 f_19@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@2) o2_19@@30 f_19@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@4) (IsWandField_16052_81118 pm_f_19@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27251) (Heap1@@0 T@PolymorphicMapType_27251) (Heap2 T@PolymorphicMapType_27251) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((l1_1@@1 T@PredicateInstanceDomainType) (l2 T@PredicateInstanceDomainType) (l3 T@PredicateInstanceDomainType) ) (!  (=> (and (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3)) (nestedPredicates l1_1@@1 l3))
 :qid |stdinbpl.867:15|
 :skolemid |127|
 :pattern ( (nestedPredicates l1_1@@1 l2) (nestedPredicates l2 l3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_51165_51170) ) (!  (not (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_80310#PolymorphicMapType_27800| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_48695_48696) ) (!  (not (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_16468_53) ) (!  (not (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_53#PolymorphicMapType_27800| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16468_16053) ) (!  (not (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_48695_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16052_51170) ) (!  (not (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_79460#PolymorphicMapType_27800| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_16052_16469) ) (!  (not (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_48696#PolymorphicMapType_27800| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_27311_53) ) (!  (not (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_53#PolymorphicMapType_27800| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_27324_27325) ) (!  (not (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27800_16052_16053#PolymorphicMapType_27800| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27251) (Mask@@5 T@PolymorphicMapType_27272) (seq T@Seq_2867) ) (!  (=> (and (state Heap@@5 Mask@@5) (< AssumeFunctionsAbove 0)) (= (sequences_e Heap@@5 seq) (ite (not (= (|Seq#Length_2867| seq) 0)) (|sequences_e'| Heap@@5 (|Seq#Append_8117| (|Seq#Drop_7775| seq 1) (|Seq#Singleton_3| 1))) 0)))
 :qid |stdinbpl.1604:15|
 :skolemid |176|
 :pattern ( (state Heap@@5 Mask@@5) (sequences_e Heap@@5 seq))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |stdinbpl.657:15|
 :skolemid |89|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (forall ((s@@1 T@Seq_8395) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8470| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8470| (|Seq#Drop_8470| s@@1 n@@1) j) (|Seq#Index_8470| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8470| (|Seq#Drop_8470| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_7775| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.314:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_7775| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8470| |Seq#Empty_8470|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((int1 Real) (int2 Real) ) (!  (=> (<= int1 (- int2 (/ (to_real 1) (to_real 1)))) (decreasing_645 int1 int2))
 :qid |stdinbpl.912:15|
 :skolemid |131|
 :pattern ( (decreasing_645 int1 int2))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27251) (Mask@@6 T@PolymorphicMapType_27272) (r_1 T@Ref) ) (!  (=> (and (state Heap@@6 Mask@@6) (< AssumeFunctionsAbove 6)) (= (references_e Heap@@6 r_1) (ite (= r_1 null) 1 (|references_e'| Heap@@6 r_1))))
 :qid |stdinbpl.1182:15|
 :skolemid |149|
 :pattern ( (state Heap@@6 Mask@@6) (references_e Heap@@6 r_1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27251) (Mask@@7 T@PolymorphicMapType_27272) (r_1@@0 T@Ref) ) (!  (=> (and (state Heap@@7 Mask@@7) (< AssumeFunctionsAbove 9)) (= (references Heap@@7 r_1@@0) (ite (= r_1@@0 null) 1 (|references'| Heap@@7 null))))
 :qid |stdinbpl.1117:15|
 :skolemid |145|
 :pattern ( (state Heap@@7 Mask@@7) (references Heap@@7 r_1@@0))
)))
(assert (forall ((xs T@Ref) ) (! (IsPredicateField_16468_16469 (list xs))
 :qid |stdinbpl.2304:15|
 :skolemid |213|
 :pattern ( (list xs))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27251) (x Int) ) (! (dummyFunction_5652 (|fact#triggerStateless| x))
 :qid |stdinbpl.961:15|
 :skolemid |136|
 :pattern ( (|fact'| Heap@@8 x))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27251) (x@@0 Int) ) (! (dummyFunction_5652 (|fact_e#triggerStateless| x@@0))
 :qid |stdinbpl.1036:15|
 :skolemid |140|
 :pattern ( (|fact_e'| Heap@@9 x@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27251) (r_1@@1 T@Ref) ) (! (dummyFunction_5652 (|references#triggerStateless| r_1@@1))
 :qid |stdinbpl.1111:15|
 :skolemid |144|
 :pattern ( (|references'| Heap@@10 r_1@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27251) (r_1@@2 T@Ref) ) (! (dummyFunction_5652 (|references_e#triggerStateless| r_1@@2))
 :qid |stdinbpl.1176:15|
 :skolemid |148|
 :pattern ( (|references_e'| Heap@@11 r_1@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27251) (b_24@@0 Bool) ) (! (dummyFunction_5652 (|booleans#triggerStateless| b_24@@0))
 :qid |stdinbpl.1241:15|
 :skolemid |152|
 :pattern ( (|booleans'| Heap@@12 b_24@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27251) (b_24@@1 Bool) ) (! (dummyFunction_5652 (|booleans_e#triggerStateless| b_24@@1))
 :qid |stdinbpl.1318:15|
 :skolemid |157|
 :pattern ( (|booleans_e'| Heap@@13 b_24@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_27251) (r_1@@3 Real) ) (! (dummyFunction_645 (|rationals#triggerStateless| r_1@@3))
 :qid |stdinbpl.1395:15|
 :skolemid |162|
 :pattern ( (|rationals'| Heap@@14 r_1@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_27251) (r_1@@4 Real) ) (! (dummyFunction_645 (|rationals_e#triggerStateless| r_1@@4))
 :qid |stdinbpl.1458:15|
 :skolemid |166|
 :pattern ( (|rationals_e'| Heap@@15 r_1@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_27251) (seq@@0 T@Seq_2867) ) (! (dummyFunction_5652 (|sequences#triggerStateless| seq@@0))
 :qid |stdinbpl.1521:15|
 :skolemid |170|
 :pattern ( (|sequences'| Heap@@16 seq@@0))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_27251) (seq@@1 T@Seq_2867) ) (! (dummyFunction_5652 (|sequences_e#triggerStateless| seq@@1))
 :qid |stdinbpl.1598:15|
 :skolemid |175|
 :pattern ( (|sequences_e'| Heap@@17 seq@@1))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_27251) (seq@@2 T@Seq_8395) ) (! (dummyFunction_5652 (|numberOfUsers#triggerStateless| seq@@2))
 :qid |stdinbpl.1675:15|
 :skolemid |180|
 :pattern ( (|numberOfUsers'| Heap@@18 seq@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_27251) (s_1 (Array Int Bool)) ) (! (dummyFunction_5652 (|sets#triggerStateless| s_1))
 :qid |stdinbpl.1751:15|
 :skolemid |184|
 :pattern ( (|sets'| Heap@@19 s_1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_27251) (s_1@@0 (Array Int Bool)) ) (! (dummyFunction_5652 (|sets_e#triggerStateless| s_1@@0))
 :qid |stdinbpl.1814:15|
 :skolemid |188|
 :pattern ( (|sets_e'| Heap@@20 s_1@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_27251) (s_1@@1 T@MultiSet_9339) ) (! (dummyFunction_5652 (|multiSets#triggerStateless| s_1@@1))
 :qid |stdinbpl.1878:15|
 :skolemid |192|
 :pattern ( (|multiSets'| Heap@@21 s_1@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_27251) (s_1@@2 T@MultiSet_9339) ) (! (dummyFunction_5652 (|multiSets_e#triggerStateless| s_1@@2))
 :qid |stdinbpl.1941:15|
 :skolemid |196|
 :pattern ( (|multiSets_e'| Heap@@22 s_1@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_27251) (xs@@0 T@Ref) ) (! (dummyFunction_5652 (|predicates#triggerStateless| xs@@0))
 :qid |stdinbpl.2005:15|
 :skolemid |200|
 :pattern ( (|predicates'| Heap@@23 xs@@0))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_27251) (xs@@1 T@Ref) ) (! (dummyFunction_5652 (|predicates_e#triggerStateless| xs@@1))
 :qid |stdinbpl.2130:15|
 :skolemid |205|
 :pattern ( (|predicates_e'| Heap@@24 xs@@1))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_27251) (xs@@2 T@Ref) ) (! (dummyFunction_16461 (|PI_list#triggerStateless| xs@@2))
 :qid |stdinbpl.2253:15|
 :skolemid |210|
 :pattern ( (|PI_list'| Heap@@25 xs@@2))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_27251) (xs@@3 T@Ref) ) (! (|list#everUsed_16468| (list xs@@3))
 :qid |stdinbpl.2323:15|
 :skolemid |217|
 :pattern ( (|list#trigger_16468| Heap@@26 (list xs@@3)))
)))
(assert (forall ((s@@3 T@Seq_8395) (i Int) (v Bool) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8470| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3) (|Seq#Index_8470| s@@3 n@@3)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8470| (|Seq#Update_8470| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8470| s@@3 n@@3) (|Seq#Update_8470| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.269:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@1 T@MultiSet_9339) (b@@1 T@MultiSet_9339) (y Int) ) (!  (=> (<= (|MultiSet#Select_9414| a@@1 y) (|MultiSet#Select_9414| b@@1 y)) (= (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@1 b@@1) y) 0))
 :qid |stdinbpl.724:18|
 :skolemid |109|
 :pattern ( (|MultiSet#Difference_9414| a@@1 b@@1) (|MultiSet#Select_9414| b@@1 y) (|MultiSet#Select_9414| a@@1 y))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Union_8806| (|Set#Union_8806| a@@2 b@@2) b@@2) (|Set#Union_8806| a@@2 b@@2))
 :qid |stdinbpl.609:18|
 :skolemid |74|
 :pattern ( (|Set#Union_8806| (|Set#Union_8806| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Intersection_8806| (|Set#Intersection_8806| a@@3 b@@3) b@@3) (|Set#Intersection_8806| a@@3 b@@3))
 :qid |stdinbpl.613:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_8806| (|Set#Intersection_8806| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@MultiSet_9339) (b@@4 T@MultiSet_9339) ) (! (= (|MultiSet#Intersection_9414| (|MultiSet#Intersection_9414| a@@4 b@@4) b@@4) (|MultiSet#Intersection_9414| a@@4 b@@4))
 :qid |stdinbpl.715:18|
 :skolemid |106|
 :pattern ( (|MultiSet#Intersection_9414| (|MultiSet#Intersection_9414| a@@4 b@@4) b@@4))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_27251) (Mask@@8 T@PolymorphicMapType_27272) (r_1@@5 Real) ) (!  (=> (and (state Heap@@27 Mask@@8) (< AssumeFunctionsAbove 13)) (= (rationals_e Heap@@27 r_1@@5) (ite (<= (/ (to_real 0) (to_real 1)) r_1@@5) (|rationals_e'| Heap@@27 (/ r_1@@5 (to_real 2))) r_1@@5)))
 :qid |stdinbpl.1464:15|
 :skolemid |167|
 :pattern ( (state Heap@@27 Mask@@8) (rationals_e Heap@@27 r_1@@5))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_2998| r) o) (= r o))
 :qid |stdinbpl.578:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_2998| r) o))
)))
(assert (forall ((s@@5 T@Seq_8395) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8470| s@@5)) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8470| s@@5) n@@5) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) (|Seq#Length_8470| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8470| (|Seq#Take_8470| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8470| s@@5 n@@5) (|Seq#Length_8470| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.280:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.554:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@5 (Array Int Bool)) ) (! (= (+ (|Set#Card_8806| (|Set#Union_8806| a@@5 b@@5)) (|Set#Card_8806| (|Set#Intersection_8806| a@@5 b@@5))) (+ (|Set#Card_8806| a@@5) (|Set#Card_8806| b@@5)))
 :qid |stdinbpl.617:18|
 :skolemid |78|
 :pattern ( (|Set#Card_8806| (|Set#Union_8806| a@@5 b@@5)))
 :pattern ( (|Set#Card_8806| (|Set#Intersection_8806| a@@5 b@@5)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_27251) (Mask@@9 T@PolymorphicMapType_27272) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@28 Mask@@9) (or (< AssumeFunctionsAbove 2) (|booleans#trigger| EmptyFrame b_24@@2))) (= (|booleans'| Heap@@28 b_24@@2) 1))
 :qid |stdinbpl.1260:15|
 :skolemid |155|
 :pattern ( (state Heap@@28 Mask@@9) (|booleans'| Heap@@28 b_24@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_27251) (Mask@@10 T@PolymorphicMapType_27272) (b_24@@3 Bool) ) (!  (=> (and (state Heap@@29 Mask@@10) (or (< AssumeFunctionsAbove 8) (|booleans_e#trigger| EmptyFrame b_24@@3))) (= (|booleans_e'| Heap@@29 b_24@@3) 1))
 :qid |stdinbpl.1337:15|
 :skolemid |160|
 :pattern ( (state Heap@@29 Mask@@10) (|booleans_e'| Heap@@29 b_24@@3))
)))
(assert (forall ((s@@7 T@Seq_8395) (x@@1 Bool) ) (!  (=> (|Seq#Contains_8395| s@@7 x@@1) (and (and (<= 0 (|Seq#Skolem_8395| s@@7 x@@1)) (< (|Seq#Skolem_8395| s@@7 x@@1) (|Seq#Length_8470| s@@7))) (= (|Seq#Index_8470| s@@7 (|Seq#Skolem_8395| s@@7 x@@1)) x@@1)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_8395| s@@7 x@@1))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@2 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@2) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@2)) (< (|Seq#Skolem_2867| s@@8 x@@2) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@2)) x@@2)))
 :qid |stdinbpl.412:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@2))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_27251) (x@@3 Int) ) (!  (and (= (fact Heap@@30 x@@3) (|fact'| Heap@@30 x@@3)) (dummyFunction_5652 (|fact#triggerStateless| x@@3)))
 :qid |stdinbpl.957:15|
 :skolemid |135|
 :pattern ( (fact Heap@@30 x@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_27251) (x@@4 Int) ) (!  (and (= (fact_e Heap@@31 x@@4) (|fact_e'| Heap@@31 x@@4)) (dummyFunction_5652 (|fact_e#triggerStateless| x@@4)))
 :qid |stdinbpl.1032:15|
 :skolemid |139|
 :pattern ( (fact_e Heap@@31 x@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_27251) (r_1@@6 T@Ref) ) (!  (and (= (references Heap@@32 r_1@@6) (|references'| Heap@@32 r_1@@6)) (dummyFunction_5652 (|references#triggerStateless| r_1@@6)))
 :qid |stdinbpl.1107:15|
 :skolemid |143|
 :pattern ( (references Heap@@32 r_1@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_27251) (r_1@@7 T@Ref) ) (!  (and (= (references_e Heap@@33 r_1@@7) (|references_e'| Heap@@33 r_1@@7)) (dummyFunction_5652 (|references_e#triggerStateless| r_1@@7)))
 :qid |stdinbpl.1172:15|
 :skolemid |147|
 :pattern ( (references_e Heap@@33 r_1@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_27251) (b_24@@4 Bool) ) (!  (and (= (booleans Heap@@34 b_24@@4) (|booleans'| Heap@@34 b_24@@4)) (dummyFunction_5652 (|booleans#triggerStateless| b_24@@4)))
 :qid |stdinbpl.1237:15|
 :skolemid |151|
 :pattern ( (booleans Heap@@34 b_24@@4))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_27251) (b_24@@5 Bool) ) (!  (and (= (booleans_e Heap@@35 b_24@@5) (|booleans_e'| Heap@@35 b_24@@5)) (dummyFunction_5652 (|booleans_e#triggerStateless| b_24@@5)))
 :qid |stdinbpl.1314:15|
 :skolemid |156|
 :pattern ( (booleans_e Heap@@35 b_24@@5))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_27251) (r_1@@8 Real) ) (!  (and (= (rationals Heap@@36 r_1@@8) (|rationals'| Heap@@36 r_1@@8)) (dummyFunction_645 (|rationals#triggerStateless| r_1@@8)))
 :qid |stdinbpl.1391:15|
 :skolemid |161|
 :pattern ( (rationals Heap@@36 r_1@@8))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_27251) (r_1@@9 Real) ) (!  (and (= (rationals_e Heap@@37 r_1@@9) (|rationals_e'| Heap@@37 r_1@@9)) (dummyFunction_645 (|rationals_e#triggerStateless| r_1@@9)))
 :qid |stdinbpl.1454:15|
 :skolemid |165|
 :pattern ( (rationals_e Heap@@37 r_1@@9))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_27251) (seq@@3 T@Seq_2867) ) (!  (and (= (sequences Heap@@38 seq@@3) (|sequences'| Heap@@38 seq@@3)) (dummyFunction_5652 (|sequences#triggerStateless| seq@@3)))
 :qid |stdinbpl.1517:15|
 :skolemid |169|
 :pattern ( (sequences Heap@@38 seq@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_27251) (seq@@4 T@Seq_2867) ) (!  (and (= (sequences_e Heap@@39 seq@@4) (|sequences_e'| Heap@@39 seq@@4)) (dummyFunction_5652 (|sequences_e#triggerStateless| seq@@4)))
 :qid |stdinbpl.1594:15|
 :skolemid |174|
 :pattern ( (sequences_e Heap@@39 seq@@4))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_27251) (seq@@5 T@Seq_8395) ) (!  (and (= (numberOfUsers Heap@@40 seq@@5) (|numberOfUsers'| Heap@@40 seq@@5)) (dummyFunction_5652 (|numberOfUsers#triggerStateless| seq@@5)))
 :qid |stdinbpl.1671:15|
 :skolemid |179|
 :pattern ( (numberOfUsers Heap@@40 seq@@5))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_27251) (s_1@@3 (Array Int Bool)) ) (!  (and (= (sets Heap@@41 s_1@@3) (|sets'| Heap@@41 s_1@@3)) (dummyFunction_5652 (|sets#triggerStateless| s_1@@3)))
 :qid |stdinbpl.1747:15|
 :skolemid |183|
 :pattern ( (sets Heap@@41 s_1@@3))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_27251) (s_1@@4 (Array Int Bool)) ) (!  (and (= (sets_e Heap@@42 s_1@@4) (|sets_e'| Heap@@42 s_1@@4)) (dummyFunction_5652 (|sets_e#triggerStateless| s_1@@4)))
 :qid |stdinbpl.1810:15|
 :skolemid |187|
 :pattern ( (sets_e Heap@@42 s_1@@4))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_27251) (s_1@@5 T@MultiSet_9339) ) (!  (and (= (multiSets Heap@@43 s_1@@5) (|multiSets'| Heap@@43 s_1@@5)) (dummyFunction_5652 (|multiSets#triggerStateless| s_1@@5)))
 :qid |stdinbpl.1874:15|
 :skolemid |191|
 :pattern ( (multiSets Heap@@43 s_1@@5))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_27251) (s_1@@6 T@MultiSet_9339) ) (!  (and (= (multiSets_e Heap@@44 s_1@@6) (|multiSets_e'| Heap@@44 s_1@@6)) (dummyFunction_5652 (|multiSets_e#triggerStateless| s_1@@6)))
 :qid |stdinbpl.1937:15|
 :skolemid |195|
 :pattern ( (multiSets_e Heap@@44 s_1@@6))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_27251) (xs@@4 T@Ref) ) (!  (and (= (predicates Heap@@45 xs@@4) (|predicates'| Heap@@45 xs@@4)) (dummyFunction_5652 (|predicates#triggerStateless| xs@@4)))
 :qid |stdinbpl.2001:15|
 :skolemid |199|
 :pattern ( (predicates Heap@@45 xs@@4))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_27251) (xs@@5 T@Ref) ) (!  (and (= (predicates_e Heap@@46 xs@@5) (|predicates_e'| Heap@@46 xs@@5)) (dummyFunction_5652 (|predicates_e#triggerStateless| xs@@5)))
 :qid |stdinbpl.2126:15|
 :skolemid |204|
 :pattern ( (predicates_e Heap@@46 xs@@5))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_27251) (xs@@6 T@Ref) ) (!  (and (= (PI_list Heap@@47 xs@@6) (|PI_list'| Heap@@47 xs@@6)) (dummyFunction_16461 (|PI_list#triggerStateless| xs@@6)))
 :qid |stdinbpl.2249:15|
 :skolemid |209|
 :pattern ( (PI_list Heap@@47 xs@@6))
)))
(assert (forall ((s@@9 T@Seq_8395) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8470| s@@9 n@@7) s@@9))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8470| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_7775| s@@10 n@@8) s@@10))
 :qid |stdinbpl.396:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7775| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.249:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.247:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.660:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((a@@7 T@MultiSet_9339) (b@@6 T@MultiSet_9339) (o@@0 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Intersection_9414| a@@7 b@@6) o@@0) (|Math#min| (|MultiSet#Select_9414| a@@7 o@@0) (|MultiSet#Select_9414| b@@6 o@@0)))
 :qid |stdinbpl.711:18|
 :skolemid |105|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Intersection_9414| a@@7 b@@6) o@@0))
)))
(assert (forall ((int1@@0 Int) (int2@@0 Int) ) (!  (=> (< int1@@0 int2@@0) (decreasing_5318 int1@@0 int2@@0))
 :qid |stdinbpl.893:15|
 :skolemid |129|
 :pattern ( (decreasing_5318 int1@@0 int2@@0))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_27251) (ExhaleHeap@@3 T@PolymorphicMapType_27251) (Mask@@11 T@PolymorphicMapType_27272) (pm_f_19@@3 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@3 Mask@@11) (=> (and (HasDirectPerm_16468_16469 Mask@@11 null pm_f_19@@3) (IsPredicateField_16468_16469 pm_f_19@@3)) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@48) null (PredicateMaskField_16468 pm_f_19@@3)) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@3) null (PredicateMaskField_16468 pm_f_19@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@3 Mask@@11) (IsPredicateField_16468_16469 pm_f_19@@3) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@3) null (PredicateMaskField_16468 pm_f_19@@3)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_27251) (ExhaleHeap@@4 T@PolymorphicMapType_27251) (Mask@@12 T@PolymorphicMapType_27272) (pm_f_19@@4 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@4 Mask@@12) (=> (and (HasDirectPerm_16052_16469 Mask@@12 null pm_f_19@@4) (IsPredicateField_16052_78189 pm_f_19@@4)) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@49) null (PredicateMaskField_16052 pm_f_19@@4)) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@4) null (PredicateMaskField_16052 pm_f_19@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@4 Mask@@12) (IsPredicateField_16052_78189 pm_f_19@@4) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@4) null (PredicateMaskField_16052 pm_f_19@@4)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_27251) (ExhaleHeap@@5 T@PolymorphicMapType_27251) (Mask@@13 T@PolymorphicMapType_27272) (pm_f_19@@5 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@5 Mask@@13) (=> (and (HasDirectPerm_16468_16469 Mask@@13 null pm_f_19@@5) (IsWandField_16468_81475 pm_f_19@@5)) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@50) null (WandMaskField_16468 pm_f_19@@5)) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@5) null (WandMaskField_16468 pm_f_19@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@5 Mask@@13) (IsWandField_16468_81475 pm_f_19@@5) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@5) null (WandMaskField_16468 pm_f_19@@5)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_27251) (ExhaleHeap@@6 T@PolymorphicMapType_27251) (Mask@@14 T@PolymorphicMapType_27272) (pm_f_19@@6 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@6 Mask@@14) (=> (and (HasDirectPerm_16052_16469 Mask@@14 null pm_f_19@@6) (IsWandField_16052_81118 pm_f_19@@6)) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@51) null (WandMaskField_16052 pm_f_19@@6)) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@6) null (WandMaskField_16052 pm_f_19@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@6 Mask@@14) (IsWandField_16052_81118 pm_f_19@@6) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@6) null (WandMaskField_16052 pm_f_19@@6)))
)))
(assert (forall ((x@@5 Bool) (y@@0 Bool) ) (! (= (|Seq#Contains_8395| (|Seq#Singleton_8470| x@@5) y@@0) (= x@@5 y@@0))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_8395| (|Seq#Singleton_8470| x@@5) y@@0))
)))
(assert (forall ((x@@6 Int) (y@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@6) y@@1) (= x@@6 y@@1))
 :qid |stdinbpl.537:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@6) y@@1))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_27251) (Mask@@15 T@PolymorphicMapType_27272) (b_24@@6 Bool) ) (!  (=> (and (state Heap@@52 Mask@@15) (< AssumeFunctionsAbove 8)) (= (booleans_e Heap@@52 b_24@@6) (ite  (not b_24@@6) (|booleans_e'| Heap@@52  (not b_24@@6)) 1)))
 :qid |stdinbpl.1324:15|
 :skolemid |158|
 :pattern ( (state Heap@@52 Mask@@15) (booleans_e Heap@@52 b_24@@6))
)))
(assert (forall ((s@@11 T@Seq_8395) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8470| s@@11))) (= (|Seq#Index_8470| (|Seq#Take_8470| s@@11 n@@9) j@@3) (|Seq#Index_8470| s@@11 j@@3)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8470| (|Seq#Take_8470| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8470| s@@11 j@@3) (|Seq#Take_8470| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.288:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((xs@@7 T@Ref) (xs2 T@Ref) ) (!  (=> (= (list xs@@7) (list xs2)) (= xs@@7 xs2))
 :qid |stdinbpl.2314:15|
 :skolemid |215|
 :pattern ( (list xs@@7) (list xs2))
)))
(assert (forall ((xs@@8 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|list#sm| xs@@8) (|list#sm| xs2@@0)) (= xs@@8 xs2@@0))
 :qid |stdinbpl.2318:15|
 :skolemid |216|
 :pattern ( (|list#sm| xs@@8) (|list#sm| xs2@@0))
)))
(assert (forall ((s@@13 T@Seq_8395) (t T@Seq_8395) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8470| s@@13))) (< n@@11 (|Seq#Length_8470| (|Seq#Append_8395| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8470| s@@13)) (|Seq#Length_8470| s@@13)) n@@11) (= (|Seq#Take_8470| (|Seq#Append_8395| s@@13 t) n@@11) (|Seq#Append_8395| s@@13 (|Seq#Take_8470| t (|Seq#Sub| n@@11 (|Seq#Length_8470| s@@13)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8470| (|Seq#Append_8395| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_8117| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_8117| s@@14 t@@0) n@@12) (|Seq#Append_8117| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.373:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_8117| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_27251) (Mask@@16 T@PolymorphicMapType_27272) (x@@7 Int) ) (!  (=> (and (state Heap@@53 Mask@@16) (< AssumeFunctionsAbove 11)) (=> (>= x@@7 0) (= (fact_e Heap@@53 x@@7) (ite (= x@@7 0) 1 (* x@@7 (|fact_e'| Heap@@53 x@@7))))))
 :qid |stdinbpl.1042:15|
 :skolemid |141|
 :pattern ( (state Heap@@53 Mask@@16) (fact_e Heap@@53 x@@7))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_27251) (Mask@@17 T@PolymorphicMapType_27272) (seq@@6 T@Seq_2867) ) (!  (=> (and (state Heap@@54 Mask@@17) (or (< AssumeFunctionsAbove 0) (|sequences_e#trigger| EmptyFrame seq@@6))) (= (|sequences_e'| Heap@@54 seq@@6) (|Seq#Length_2867| seq@@6)))
 :qid |stdinbpl.1617:15|
 :skolemid |178|
 :pattern ( (state Heap@@54 Mask@@17) (|sequences_e'| Heap@@54 seq@@6))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_27251) (Mask@@18 T@PolymorphicMapType_27272) (seq@@7 T@Seq_2867) ) (!  (=> (and (state Heap@@55 Mask@@18) (or (< AssumeFunctionsAbove 17) (|sequences#trigger| EmptyFrame seq@@7))) (= (|sequences'| Heap@@55 seq@@7) (|Seq#Length_2867| seq@@7)))
 :qid |stdinbpl.1540:15|
 :skolemid |173|
 :pattern ( (state Heap@@55 Mask@@18) (|sequences'| Heap@@55 seq@@7))
)))
(assert (decreasing_5 false true))
(assert (state dummyHeap ZeroMask))
(assert (forall ((a@@8 T@MultiSet_9339) (x@@8 Int) ) (! (= (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@8 x@@8)) (+ (|MultiSet#Card_9414| a@@8) 1))
 :qid |stdinbpl.697:18|
 :skolemid |101|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@8 x@@8)))
 :pattern ( (|MultiSet#UnionOne_3| a@@8 x@@8) (|MultiSet#Card_9414| a@@8))
)))
(assert (forall ((a@@9 T@MultiSet_9339) (b@@7 T@MultiSet_9339) ) (! (= (|MultiSet#Disjoint_9339| a@@9 b@@7) (forall ((o@@1 Int) ) (!  (or (= (|MultiSet#Select_9414| a@@9 o@@1) 0) (= (|MultiSet#Select_9414| b@@7 o@@1) 0))
 :qid |stdinbpl.747:39|
 :skolemid |116|
 :pattern ( (|MultiSet#Select_9414| a@@9 o@@1))
 :pattern ( (|MultiSet#Select_9414| b@@7 o@@1))
)))
 :qid |stdinbpl.746:18|
 :skolemid |117|
 :pattern ( (|MultiSet#Disjoint_9339| a@@9 b@@7))
)))
(assert (forall ((mSet1@@0 T@MultiSet_9339) (mSet2 T@MultiSet_9339) ) (!  (=> (< (|MultiSet#Card_9414| mSet1@@0) (|MultiSet#Card_9414| mSet2)) (decreasing_57554 mSet1@@0 mSet2))
 :qid |stdinbpl.759:19|
 :skolemid |118|
 :pattern ( (decreasing_57554 mSet1@@0 mSet2))
)))
(assert (forall ((set1 (Array Int Bool)) (set2 (Array Int Bool)) ) (!  (=> (< (|Set#Card_8806| set1) (|Set#Card_8806| set2)) (decreasing_63949 set1 set2))
 :qid |stdinbpl.778:19|
 :skolemid |120|
 :pattern ( (decreasing_63949 set1 set2))
)))
(assert (forall ((seq1 T@Seq_8395) (seq2 T@Seq_8395) ) (!  (=> (< (|Seq#Length_8470| seq1) (|Seq#Length_8470| seq2)) (decreasing_63282 seq1 seq2))
 :qid |stdinbpl.810:19|
 :skolemid |122|
 :pattern ( (decreasing_63282 seq1 seq2))
)))
(assert (forall ((seq1@@0 T@Seq_2867) (seq2@@0 T@Seq_2867) ) (!  (=> (< (|Seq#Length_2867| seq1@@0) (|Seq#Length_2867| seq2@@0)) (decreasing_62320 seq1@@0 seq2@@0))
 :qid |stdinbpl.810:19|
 :skolemid |122|
 :pattern ( (decreasing_62320 seq1@@0 seq2@@0))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_27251) (ExhaleHeap@@7 T@PolymorphicMapType_27251) (Mask@@19 T@PolymorphicMapType_27272) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@7 Mask@@19) (=> (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@56) o_12 $allocated) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_16052_16469) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27311_27311 p v_1 p w))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27311_27311 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_48695_48696) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16468_16468 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.191:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16468_16468 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_8395) (s1 T@Seq_8395) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8470|)) (not (= s1 |Seq#Empty_8470|))) (<= (|Seq#Length_8470| s0) n@@13)) (< n@@13 (|Seq#Length_8470| (|Seq#Append_8395| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8470| s0)) (|Seq#Length_8470| s0)) n@@13) (= (|Seq#Index_8470| (|Seq#Append_8395| s0 s1) n@@13) (|Seq#Index_8470| s1 (|Seq#Sub| n@@13 (|Seq#Length_8470| s0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8470| (|Seq#Append_8395| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_8117| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.260:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_8117| s0@@0 s1@@0) n@@14))
)))
(assert (forall ((r@@0 Int) ) (!  (and (= (|MultiSet#Card_9414| (|MultiSet#Singleton_4089| r@@0)) 1) (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@0) r@@0) 1))
 :qid |stdinbpl.689:18|
 :skolemid |98|
 :pattern ( (|MultiSet#Singleton_4089| r@@0))
)))
(assert  (not (IsPredicateField_16052_16053 next)))
(assert  (not (IsWandField_16052_16053 next)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_27251) (ExhaleHeap@@8 T@PolymorphicMapType_27251) (Mask@@20 T@PolymorphicMapType_27272) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@8 Mask@@20) (succHeap Heap@@57 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@8 Mask@@20))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_27251) (Mask@@21 T@PolymorphicMapType_27272) (r_1@@10 Real) ) (!  (=> (and (state Heap@@58 Mask@@21) (< AssumeFunctionsAbove 5)) (= (rationals Heap@@58 r_1@@10) (ite (<= (/ (to_real 0) (to_real 1)) r_1@@10) (|rationals'| Heap@@58 (- r_1@@10 (/ (to_real 1) (to_real 1)))) r_1@@10)))
 :qid |stdinbpl.1401:15|
 :skolemid |163|
 :pattern ( (state Heap@@58 Mask@@21) (rationals Heap@@58 r_1@@10))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_27272) (o_2@@7 T@Ref) (f_4@@7 T@Field_16052_51170) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_16052_87186 f_4@@7))) (not (IsWandField_16052_87202 f_4@@7))) (<= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@22) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_27272) (o_2@@8 T@Ref) (f_4@@8 T@Field_27311_53) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_16052_53 f_4@@8))) (not (IsWandField_16052_53 f_4@@8))) (<= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@23) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_27272) (o_2@@9 T@Ref) (f_4@@9 T@Field_27324_27325) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_16052_16053 f_4@@9))) (not (IsWandField_16052_16053 f_4@@9))) (<= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@24) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_27272) (o_2@@10 T@Ref) (f_4@@10 T@Field_16052_16469) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_16052_78189 f_4@@10))) (not (IsWandField_16052_81118 f_4@@10))) (<= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@25) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_27272) (o_2@@11 T@Ref) (f_4@@11 T@Field_51165_51170) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_16468_86537 f_4@@11))) (not (IsWandField_16468_86553 f_4@@11))) (<= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@26) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_27272) (o_2@@12 T@Ref) (f_4@@12 T@Field_16468_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_16468_53 f_4@@12))) (not (IsWandField_16468_53 f_4@@12))) (<= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@27) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_27272) (o_2@@13 T@Ref) (f_4@@13 T@Field_16468_16053) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_16468_16053 f_4@@13))) (not (IsWandField_16468_16053 f_4@@13))) (<= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@28) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_27272) (o_2@@14 T@Ref) (f_4@@14 T@Field_48695_48696) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_16468_16469 f_4@@14))) (not (IsWandField_16468_81475 f_4@@14))) (<= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@29) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_27272) (o_2@@15 T@Ref) (f_4@@15 T@Field_51165_51170) ) (! (= (HasDirectPerm_16468_77944 Mask@@30 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| Mask@@30) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_77944 Mask@@30 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_27272) (o_2@@16 T@Ref) (f_4@@16 T@Field_16468_53) ) (! (= (HasDirectPerm_16468_53 Mask@@31 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| Mask@@31) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_53 Mask@@31 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_27272) (o_2@@17 T@Ref) (f_4@@17 T@Field_48695_48696) ) (! (= (HasDirectPerm_16468_16469 Mask@@32 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| Mask@@32) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_16469 Mask@@32 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_27272) (o_2@@18 T@Ref) (f_4@@18 T@Field_16468_16053) ) (! (= (HasDirectPerm_16468_16053 Mask@@33 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| Mask@@33) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16468_16053 Mask@@33 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_27272) (o_2@@19 T@Ref) (f_4@@19 T@Field_16052_51170) ) (! (= (HasDirectPerm_16052_77024 Mask@@34 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| Mask@@34) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_77024 Mask@@34 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_27272) (o_2@@20 T@Ref) (f_4@@20 T@Field_27311_53) ) (! (= (HasDirectPerm_16052_53 Mask@@35 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| Mask@@35) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_53 Mask@@35 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_27272) (o_2@@21 T@Ref) (f_4@@21 T@Field_16052_16469) ) (! (= (HasDirectPerm_16052_16469 Mask@@36 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| Mask@@36) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_16469 Mask@@36 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_27272) (o_2@@22 T@Ref) (f_4@@22 T@Field_27324_27325) ) (! (= (HasDirectPerm_16052_16053 Mask@@37 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| Mask@@37) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16052_16053 Mask@@37 o_2@@22 f_4@@22))
)))
(assert (forall ((a@@10 T@MultiSet_9339) (b@@8 T@MultiSet_9339) ) (! (= (|MultiSet#Card_9414| (|MultiSet#Union_9414| a@@10 b@@8)) (+ (|MultiSet#Card_9414| a@@10) (|MultiSet#Card_9414| b@@8)))
 :qid |stdinbpl.707:18|
 :skolemid |104|
 :pattern ( (|MultiSet#Card_9414| (|MultiSet#Union_9414| a@@10 b@@8)))
 :pattern ( (|MultiSet#Card_9414| a@@10) (|MultiSet#Union_9414| a@@10 b@@8))
 :pattern ( (|MultiSet#Card_9414| b@@8) (|MultiSet#Union_9414| a@@10 b@@8))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.179:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.552:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_27251) (ExhaleHeap@@9 T@PolymorphicMapType_27251) (Mask@@38 T@PolymorphicMapType_27272) (o_12@@0 T@Ref) (f_19@@31 T@Field_51165_51170) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@9 Mask@@38) (=> (HasDirectPerm_16468_77944 Mask@@38 o_12@@0 f_19@@31) (= (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@59) o_12@@0 f_19@@31) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@9) o_12@@0 f_19@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@9 Mask@@38) (select (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| ExhaleHeap@@9) o_12@@0 f_19@@31))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_27251) (ExhaleHeap@@10 T@PolymorphicMapType_27251) (Mask@@39 T@PolymorphicMapType_27272) (o_12@@1 T@Ref) (f_19@@32 T@Field_16468_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@10 Mask@@39) (=> (HasDirectPerm_16468_53 Mask@@39 o_12@@1 f_19@@32) (= (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@60) o_12@@1 f_19@@32) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@10) o_12@@1 f_19@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@10 Mask@@39) (select (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| ExhaleHeap@@10) o_12@@1 f_19@@32))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_27251) (ExhaleHeap@@11 T@PolymorphicMapType_27251) (Mask@@40 T@PolymorphicMapType_27272) (o_12@@2 T@Ref) (f_19@@33 T@Field_48695_48696) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@11 Mask@@40) (=> (HasDirectPerm_16468_16469 Mask@@40 o_12@@2 f_19@@33) (= (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@61) o_12@@2 f_19@@33) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@11) o_12@@2 f_19@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@11 Mask@@40) (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| ExhaleHeap@@11) o_12@@2 f_19@@33))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_27251) (ExhaleHeap@@12 T@PolymorphicMapType_27251) (Mask@@41 T@PolymorphicMapType_27272) (o_12@@3 T@Ref) (f_19@@34 T@Field_16468_16053) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@12 Mask@@41) (=> (HasDirectPerm_16468_16053 Mask@@41 o_12@@3 f_19@@34) (= (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@62) o_12@@3 f_19@@34) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@12) o_12@@3 f_19@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@12 Mask@@41) (select (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| ExhaleHeap@@12) o_12@@3 f_19@@34))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_27251) (ExhaleHeap@@13 T@PolymorphicMapType_27251) (Mask@@42 T@PolymorphicMapType_27272) (o_12@@4 T@Ref) (f_19@@35 T@Field_16052_51170) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@13 Mask@@42) (=> (HasDirectPerm_16052_77024 Mask@@42 o_12@@4 f_19@@35) (= (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@63) o_12@@4 f_19@@35) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@13) o_12@@4 f_19@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@13 Mask@@42) (select (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| ExhaleHeap@@13) o_12@@4 f_19@@35))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_27251) (ExhaleHeap@@14 T@PolymorphicMapType_27251) (Mask@@43 T@PolymorphicMapType_27272) (o_12@@5 T@Ref) (f_19@@36 T@Field_27311_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@14 Mask@@43) (=> (HasDirectPerm_16052_53 Mask@@43 o_12@@5 f_19@@36) (= (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@64) o_12@@5 f_19@@36) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@14) o_12@@5 f_19@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@14 Mask@@43) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| ExhaleHeap@@14) o_12@@5 f_19@@36))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_27251) (ExhaleHeap@@15 T@PolymorphicMapType_27251) (Mask@@44 T@PolymorphicMapType_27272) (o_12@@6 T@Ref) (f_19@@37 T@Field_16052_16469) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@15 Mask@@44) (=> (HasDirectPerm_16052_16469 Mask@@44 o_12@@6 f_19@@37) (= (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@65) o_12@@6 f_19@@37) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@15) o_12@@6 f_19@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@15 Mask@@44) (select (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| ExhaleHeap@@15) o_12@@6 f_19@@37))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_27251) (ExhaleHeap@@16 T@PolymorphicMapType_27251) (Mask@@45 T@PolymorphicMapType_27272) (o_12@@7 T@Ref) (f_19@@38 T@Field_27324_27325) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@16 Mask@@45) (=> (HasDirectPerm_16052_16053 Mask@@45 o_12@@7 f_19@@38) (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@66) o_12@@7 f_19@@38) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@16) o_12@@7 f_19@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@16 Mask@@45) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| ExhaleHeap@@16) o_12@@7 f_19@@38))
)))
(assert (forall ((s0@@1 T@Seq_8395) (s1@@1 T@Seq_8395) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8470|)) (not (= s1@@1 |Seq#Empty_8470|))) (= (|Seq#Length_8470| (|Seq#Append_8395| s0@@1 s1@@1)) (+ (|Seq#Length_8470| s0@@1) (|Seq#Length_8470| s1@@1))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8470| (|Seq#Append_8395| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_8117| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.229:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_8117| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_16052_51170) ) (! (= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_27311_53) ) (! (= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_27324_27325) ) (! (= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_16052_16469) ) (! (= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_51165_51170) ) (! (= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_16468_53) ) (! (= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_16468_16053) ) (! (= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_48695_48696) ) (! (= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@15 T@Seq_8395) (t@@1 T@Seq_8395) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8470| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8470| s@@15)) (|Seq#Length_8470| s@@15)) n@@15) (= (|Seq#Drop_8470| (|Seq#Append_8395| s@@15 t@@1) n@@15) (|Seq#Drop_8470| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8470| s@@15))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8470| (|Seq#Append_8395| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_7775| (|Seq#Append_8117| s@@16 t@@2) n@@16) (|Seq#Drop_7775| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.386:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7775| (|Seq#Append_8117| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27272) (SummandMask1 T@PolymorphicMapType_27272) (SummandMask2 T@PolymorphicMapType_27272) (o_2@@31 T@Ref) (f_4@@31 T@Field_16052_51170) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27272_16052_85362#PolymorphicMapType_27272| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27272) (SummandMask1@@0 T@PolymorphicMapType_27272) (SummandMask2@@0 T@PolymorphicMapType_27272) (o_2@@32 T@Ref) (f_4@@32 T@Field_27311_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27272_16052_53#PolymorphicMapType_27272| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27272) (SummandMask1@@1 T@PolymorphicMapType_27272) (SummandMask2@@1 T@PolymorphicMapType_27272) (o_2@@33 T@Ref) (f_4@@33 T@Field_27324_27325) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27272_16052_16053#PolymorphicMapType_27272| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27272) (SummandMask1@@2 T@PolymorphicMapType_27272) (SummandMask2@@2 T@PolymorphicMapType_27272) (o_2@@34 T@Ref) (f_4@@34 T@Field_16052_16469) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27272_16052_16469#PolymorphicMapType_27272| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_27272) (SummandMask1@@3 T@PolymorphicMapType_27272) (SummandMask2@@3 T@PolymorphicMapType_27272) (o_2@@35 T@Ref) (f_4@@35 T@Field_51165_51170) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_27272_16468_85031#PolymorphicMapType_27272| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_27272) (SummandMask1@@4 T@PolymorphicMapType_27272) (SummandMask2@@4 T@PolymorphicMapType_27272) (o_2@@36 T@Ref) (f_4@@36 T@Field_16468_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_27272_16468_53#PolymorphicMapType_27272| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_27272) (SummandMask1@@5 T@PolymorphicMapType_27272) (SummandMask2@@5 T@PolymorphicMapType_27272) (o_2@@37 T@Ref) (f_4@@37 T@Field_16468_16053) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_27272_16468_16053#PolymorphicMapType_27272| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_27272) (SummandMask1@@6 T@PolymorphicMapType_27272) (SummandMask2@@6 T@PolymorphicMapType_27272) (o_2@@38 T@Ref) (f_4@@38 T@Field_48695_48696) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_27272_16468_16469#PolymorphicMapType_27272| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((a@@11 (Array Int Bool)) (b@@9 (Array Int Bool)) (o@@2 Int) ) (! (= (select (|Set#Intersection_8806| a@@11 b@@9) o@@2)  (and (select a@@11 o@@2) (select b@@9 o@@2)))
 :qid |stdinbpl.606:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_8806| a@@11 b@@9) o@@2))
 :pattern ( (|Set#Intersection_8806| a@@11 b@@9) (select a@@11 o@@2))
 :pattern ( (|Set#Intersection_8806| a@@11 b@@9) (select b@@9 o@@2))
)))
(assert (forall ((ref1@@0 T@Ref) ) (!  (=> (not (= ref1@@0 null)) (decreasing_15675 null ref1@@0))
 :qid |stdinbpl.931:15|
 :skolemid |133|
 :pattern ( (decreasing_15675 null ref1@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.551:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@10 (Array Int Bool)) (o@@3 Int) ) (! (= (select (|Set#Difference_8806| a@@12 b@@10) o@@3)  (and (select a@@12 o@@3) (not (select b@@10 o@@3))))
 :qid |stdinbpl.621:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_8806| a@@12 b@@10) o@@3))
 :pattern ( (|Set#Difference_8806| a@@12 b@@10) (select a@@12 o@@3))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_27251) (Mask@@46 T@PolymorphicMapType_27272) (s_1@@7 (Array Int Bool)) ) (!  (=> (and (state Heap@@67 Mask@@46) (< AssumeFunctionsAbove 3)) (= (sets Heap@@67 s_1@@7) (ite  (and (> (|Set#Card_8806| s_1@@7) 0) (select s_1@@7 (|Set#Card_8806| s_1@@7))) (|sets'| Heap@@67 (|Set#Difference_8806| s_1@@7 (|Set#Singleton_2998| (|Set#Card_8806| s_1@@7)))) 1)))
 :qid |stdinbpl.1757:15|
 :skolemid |185|
 :pattern ( (state Heap@@67 Mask@@46) (sets Heap@@67 s_1@@7))
)))
(assert (forall ((int1@@1 Int) ) (!  (=> (>= int1@@1 0) (bounded_5343 int1@@1))
 :qid |stdinbpl.899:15|
 :skolemid |130|
 :pattern ( (bounded_5343 int1@@1))
)))
(assert (forall ((l1_1@@2 T@PredicateInstanceDomainType) (l2@@0 T@PredicateInstanceDomainType) ) (! (= (decreasing_16038 l1_1@@2 l2@@0) (nestedPredicates l1_1@@2 l2@@0))
 :qid |stdinbpl.845:15|
 :skolemid |125|
 :pattern ( (nestedPredicates l1_1@@2 l2@@0))
)))
(assert (forall ((a@@13 T@Seq_8395) (b@@11 T@Seq_8395) ) (!  (=> (|Seq#Equal_8395| a@@13 b@@11) (= a@@13 b@@11))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_8395| a@@13 b@@11))
)))
(assert (forall ((a@@14 T@Seq_2867) (b@@12 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@14 b@@12) (= a@@14 b@@12))
 :qid |stdinbpl.524:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@14 b@@12))
)))
(assert (forall ((a@@15 T@MultiSet_9339) (b@@13 T@MultiSet_9339) ) (!  (=> (|MultiSet#Equal_9339| a@@15 b@@13) (= a@@15 b@@13))
 :qid |stdinbpl.742:17|
 :skolemid |115|
 :pattern ( (|MultiSet#Equal_9339| a@@15 b@@13))
)))
(assert (forall ((a@@16 (Array Int Bool)) (x@@9 Int) (y@@2 Int) ) (!  (=> (select a@@16 y@@2) (select (|Set#UnionOne_8806| a@@16 x@@9) y@@2))
 :qid |stdinbpl.586:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_8806| a@@16 x@@9) (select a@@16 y@@2))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@14 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select a@@17 y@@3) (select (|Set#Union_8806| a@@17 b@@14) y@@3))
 :qid |stdinbpl.596:18|
 :skolemid |71|
 :pattern ( (|Set#Union_8806| a@@17 b@@14) (select a@@17 y@@3))
)))
(assert (forall ((a@@18 (Array Int Bool)) (b@@15 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@15 y@@4) (select (|Set#Union_8806| a@@18 b@@15) y@@4))
 :qid |stdinbpl.598:18|
 :skolemid |72|
 :pattern ( (|Set#Union_8806| a@@18 b@@15) (select b@@15 y@@4))
)))
(assert (forall ((ms T@MultiSet_9339) (x@@10 Int) ) (! (>= (|MultiSet#Select_9414| ms x@@10) 0)
 :qid |stdinbpl.673:18|
 :skolemid |92|
 :pattern ( (|MultiSet#Select_9414| ms x@@10))
)))
(assert (forall ((a@@19 (Array Int Bool)) (x@@11 Int) (o@@4 Int) ) (! (= (select (|Set#UnionOne_8806| a@@19 x@@11) o@@4)  (or (= o@@4 x@@11) (select a@@19 o@@4)))
 :qid |stdinbpl.582:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_8806| a@@19 x@@11) o@@4))
)))
(assert (forall ((a@@20 (Array Int Bool)) (b@@16 (Array Int Bool)) (y@@5 Int) ) (!  (=> (select b@@16 y@@5) (not (select (|Set#Difference_8806| a@@20 b@@16) y@@5)))
 :qid |stdinbpl.623:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_8806| a@@20 b@@16) (select b@@16 y@@5))
)))
(assert (forall ((seq1@@1 T@Seq_8395) ) (!  (=> (>= (|Seq#Length_8470| seq1@@1) 0) (bounded_63300 seq1@@1))
 :qid |stdinbpl.816:19|
 :skolemid |123|
 :pattern ( (bounded_63300 seq1@@1))
)))
(assert (forall ((seq1@@2 T@Seq_2867) ) (!  (=> (>= (|Seq#Length_2867| seq1@@2) 0) (bounded_62338 seq1@@2))
 :qid |stdinbpl.816:19|
 :skolemid |123|
 :pattern ( (bounded_62338 seq1@@2))
)))
(assert (forall ((s@@17 T@Seq_8395) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8470| s@@17))) (|Seq#ContainsTrigger_8470| s@@17 (|Seq#Index_8470| s@@17 i@@3)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8470| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_2867| s@@18 (|Seq#Index_2867| s@@18 i@@4)))
 :qid |stdinbpl.417:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@4))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@17 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)) (|Set#Card_8806| (|Set#Difference_8806| b@@17 a@@21))) (|Set#Card_8806| (|Set#Intersection_8806| a@@21 b@@17))) (|Set#Card_8806| (|Set#Union_8806| a@@21 b@@17))) (= (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)) (- (|Set#Card_8806| a@@21) (|Set#Card_8806| (|Set#Intersection_8806| a@@21 b@@17)))))
 :qid |stdinbpl.625:18|
 :skolemid |81|
 :pattern ( (|Set#Card_8806| (|Set#Difference_8806| a@@21 b@@17)))
)))
(assert (forall ((s0@@3 T@Seq_8395) (s1@@3 T@Seq_8395) ) (!  (and (=> (= s0@@3 |Seq#Empty_8470|) (= (|Seq#Append_8395| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8470|) (= (|Seq#Append_8395| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_8395| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_8117| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_8117| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.235:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_8117| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 Bool) ) (! (= (|Seq#Index_8470| (|Seq#Singleton_8470| t@@3) 0) t@@3)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8470| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@4) 0) t@@4)
 :qid |stdinbpl.239:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@4))
)))
(assert (forall ((s@@19 T@Seq_8395) ) (! (<= 0 (|Seq#Length_8470| s@@19))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8470| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.218:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_8806| s@@21))
 :qid |stdinbpl.568:18|
 :skolemid |58|
 :pattern ( (|Set#Card_8806| s@@21))
)))
(assert (forall ((s@@22 T@MultiSet_9339) ) (! (<= 0 (|MultiSet#Card_9414| s@@22))
 :qid |stdinbpl.676:18|
 :skolemid |93|
 :pattern ( (|MultiSet#Card_9414| s@@22))
)))
(assert (forall ((o@@5 Int) ) (! (= (|MultiSet#Select_9414| |MultiSet#Empty_9414| o@@5) 0)
 :qid |stdinbpl.681:18|
 :skolemid |94|
 :pattern ( (|MultiSet#Select_9414| |MultiSet#Empty_9414| o@@5))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_27251) (Mask@@47 T@PolymorphicMapType_27272) (s_1@@8 (Array Int Bool)) ) (!  (=> (and (state Heap@@68 Mask@@47) (< AssumeFunctionsAbove 12)) (= (sets_e Heap@@68 s_1@@8) (ite  (and (> (|Set#Card_8806| s_1@@8) 0) (select s_1@@8 (|Set#Card_8806| s_1@@8))) 1 (|sets_e'| Heap@@68 (|Set#Difference_8806| s_1@@8 (|Set#Singleton_2998| (|Set#Card_8806| s_1@@8)))))))
 :qid |stdinbpl.1820:15|
 :skolemid |189|
 :pattern ( (state Heap@@68 Mask@@47) (sets_e Heap@@68 s_1@@8))
)))
(assert (forall ((a@@22 (Array Int Bool)) (x@@12 Int) ) (! (select (|Set#UnionOne_8806| a@@22 x@@12) x@@12)
 :qid |stdinbpl.584:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_8806| a@@22 x@@12))
)))
(assert (forall ((s0@@5 T@Seq_8395) (s1@@5 T@Seq_8395) ) (!  (=> (|Seq#Equal_8395| s0@@5 s1@@5) (and (= (|Seq#Length_8470| s0@@5) (|Seq#Length_8470| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8470| s0@@5))) (= (|Seq#Index_8470| s0@@5 j@@6) (|Seq#Index_8470| s1@@5 j@@6)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8470| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8470| s1@@5 j@@6))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_8395| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.514:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.511:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_27251) (Mask@@48 T@PolymorphicMapType_27272) (xs@@9 T@Ref) ) (!  (=> (state Heap@@69 Mask@@48) (= (|predicates'| Heap@@69 xs@@9) (|predicates#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@69) null (list xs@@9)) xs@@9)))
 :qid |stdinbpl.2018:15|
 :skolemid |202|
 :pattern ( (state Heap@@69 Mask@@48) (|predicates'| Heap@@69 xs@@9))
 :pattern ( (state Heap@@69 Mask@@48) (|predicates#triggerStateless| xs@@9) (|list#trigger_16468| Heap@@69 (list xs@@9)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_27251) (Mask@@49 T@PolymorphicMapType_27272) (xs@@10 T@Ref) ) (!  (=> (state Heap@@70 Mask@@49) (= (|predicates_e'| Heap@@70 xs@@10) (|predicates_e#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@70) null (list xs@@10)) xs@@10)))
 :qid |stdinbpl.2143:15|
 :skolemid |207|
 :pattern ( (state Heap@@70 Mask@@49) (|predicates_e'| Heap@@70 xs@@10))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_27251) (Mask@@50 T@PolymorphicMapType_27272) (xs@@11 T@Ref) ) (!  (=> (state Heap@@71 Mask@@50) (= (|PI_list'| Heap@@71 xs@@11) (|PI_list#frame| (select (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@71) null (list xs@@11)) xs@@11)))
 :qid |stdinbpl.2260:15|
 :skolemid |211|
 :pattern ( (state Heap@@71 Mask@@50) (|PI_list'| Heap@@71 xs@@11))
)))
(assert (forall ((a@@23 (Array Int Bool)) (x@@13 Int) ) (!  (=> (select a@@23 x@@13) (= (|Set#Card_8806| (|Set#UnionOne_8806| a@@23 x@@13)) (|Set#Card_8806| a@@23)))
 :qid |stdinbpl.588:18|
 :skolemid |68|
 :pattern ( (|Set#Card_8806| (|Set#UnionOne_8806| a@@23 x@@13)))
)))
(assert (forall ((a@@24 T@MultiSet_9339) (x@@14 Int) ) (!  (and (> (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@24 x@@14) x@@14) 0) (> (|MultiSet#Card_9414| (|MultiSet#UnionOne_3| a@@24 x@@14)) 0))
 :qid |stdinbpl.700:18|
 :skolemid |102|
 :pattern ( (|MultiSet#UnionOne_3| a@@24 x@@14))
)))
(assert (forall ((xs@@12 T@Ref) ) (! (= (getPredWandId_16468_16469 (list xs@@12)) 0)
 :qid |stdinbpl.2308:15|
 :skolemid |214|
 :pattern ( (list xs@@12))
)))
(assert (forall ((t@@5 Bool) ) (! (= (|Seq#Length_8470| (|Seq#Singleton_8470| t@@5)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8470| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@6)) 1)
 :qid |stdinbpl.226:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@6))
)))
(assert (forall ((r@@1 Int) ) (! (= (|Set#Card_8806| (|Set#Singleton_2998| r@@1)) 1)
 :qid |stdinbpl.579:18|
 :skolemid |64|
 :pattern ( (|Set#Card_8806| (|Set#Singleton_2998| r@@1)))
)))
(assert (forall ((r@@2 Int) ) (! (select (|Set#Singleton_2998| r@@2) r@@2)
 :qid |stdinbpl.577:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_2998| r@@2))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_27251) (Mask@@51 T@PolymorphicMapType_27272) (x@@15 Int) ) (!  (=> (state Heap@@72 Mask@@51) (= (|fact'| Heap@@72 x@@15) (|fact#frame| EmptyFrame x@@15)))
 :qid |stdinbpl.974:15|
 :skolemid |138|
 :pattern ( (state Heap@@72 Mask@@51) (|fact'| Heap@@72 x@@15))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_27251) (Mask@@52 T@PolymorphicMapType_27272) (x@@16 Int) ) (!  (=> (state Heap@@73 Mask@@52) (= (|fact_e'| Heap@@73 x@@16) (|fact_e#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.1049:15|
 :skolemid |142|
 :pattern ( (state Heap@@73 Mask@@52) (|fact_e'| Heap@@73 x@@16))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_27251) (Mask@@53 T@PolymorphicMapType_27272) (r_1@@11 T@Ref) ) (!  (=> (state Heap@@74 Mask@@53) (= (|references'| Heap@@74 r_1@@11) (|references#frame| EmptyFrame r_1@@11)))
 :qid |stdinbpl.1124:15|
 :skolemid |146|
 :pattern ( (state Heap@@74 Mask@@53) (|references'| Heap@@74 r_1@@11))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_27251) (Mask@@54 T@PolymorphicMapType_27272) (r_1@@12 T@Ref) ) (!  (=> (state Heap@@75 Mask@@54) (= (|references_e'| Heap@@75 r_1@@12) (|references_e#frame| EmptyFrame r_1@@12)))
 :qid |stdinbpl.1189:15|
 :skolemid |150|
 :pattern ( (state Heap@@75 Mask@@54) (|references_e'| Heap@@75 r_1@@12))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_27251) (Mask@@55 T@PolymorphicMapType_27272) (b_24@@7 Bool) ) (!  (=> (state Heap@@76 Mask@@55) (= (|booleans'| Heap@@76 b_24@@7) (|booleans#frame| EmptyFrame b_24@@7)))
 :qid |stdinbpl.1254:15|
 :skolemid |154|
 :pattern ( (state Heap@@76 Mask@@55) (|booleans'| Heap@@76 b_24@@7))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_27251) (Mask@@56 T@PolymorphicMapType_27272) (b_24@@8 Bool) ) (!  (=> (state Heap@@77 Mask@@56) (= (|booleans_e'| Heap@@77 b_24@@8) (|booleans_e#frame| EmptyFrame b_24@@8)))
 :qid |stdinbpl.1331:15|
 :skolemid |159|
 :pattern ( (state Heap@@77 Mask@@56) (|booleans_e'| Heap@@77 b_24@@8))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_27251) (Mask@@57 T@PolymorphicMapType_27272) (r_1@@13 Real) ) (!  (=> (state Heap@@78 Mask@@57) (= (|rationals'| Heap@@78 r_1@@13) (|rationals#frame| EmptyFrame r_1@@13)))
 :qid |stdinbpl.1408:15|
 :skolemid |164|
 :pattern ( (state Heap@@78 Mask@@57) (|rationals'| Heap@@78 r_1@@13))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_27251) (Mask@@58 T@PolymorphicMapType_27272) (r_1@@14 Real) ) (!  (=> (state Heap@@79 Mask@@58) (= (|rationals_e'| Heap@@79 r_1@@14) (|rationals_e#frame| EmptyFrame r_1@@14)))
 :qid |stdinbpl.1471:15|
 :skolemid |168|
 :pattern ( (state Heap@@79 Mask@@58) (|rationals_e'| Heap@@79 r_1@@14))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_27251) (Mask@@59 T@PolymorphicMapType_27272) (seq@@8 T@Seq_2867) ) (!  (=> (state Heap@@80 Mask@@59) (= (|sequences'| Heap@@80 seq@@8) (|sequences#frame| EmptyFrame seq@@8)))
 :qid |stdinbpl.1534:15|
 :skolemid |172|
 :pattern ( (state Heap@@80 Mask@@59) (|sequences'| Heap@@80 seq@@8))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_27251) (Mask@@60 T@PolymorphicMapType_27272) (seq@@9 T@Seq_2867) ) (!  (=> (state Heap@@81 Mask@@60) (= (|sequences_e'| Heap@@81 seq@@9) (|sequences_e#frame| EmptyFrame seq@@9)))
 :qid |stdinbpl.1611:15|
 :skolemid |177|
 :pattern ( (state Heap@@81 Mask@@60) (|sequences_e'| Heap@@81 seq@@9))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_27251) (Mask@@61 T@PolymorphicMapType_27272) (seq@@10 T@Seq_8395) ) (!  (=> (state Heap@@82 Mask@@61) (= (|numberOfUsers'| Heap@@82 seq@@10) (|numberOfUsers#frame| EmptyFrame seq@@10)))
 :qid |stdinbpl.1688:15|
 :skolemid |182|
 :pattern ( (state Heap@@82 Mask@@61) (|numberOfUsers'| Heap@@82 seq@@10))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_27251) (Mask@@62 T@PolymorphicMapType_27272) (s_1@@9 (Array Int Bool)) ) (!  (=> (state Heap@@83 Mask@@62) (= (|sets'| Heap@@83 s_1@@9) (|sets#frame| EmptyFrame s_1@@9)))
 :qid |stdinbpl.1764:15|
 :skolemid |186|
 :pattern ( (state Heap@@83 Mask@@62) (|sets'| Heap@@83 s_1@@9))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_27251) (Mask@@63 T@PolymorphicMapType_27272) (s_1@@10 (Array Int Bool)) ) (!  (=> (state Heap@@84 Mask@@63) (= (|sets_e'| Heap@@84 s_1@@10) (|sets_e#frame| EmptyFrame s_1@@10)))
 :qid |stdinbpl.1827:15|
 :skolemid |190|
 :pattern ( (state Heap@@84 Mask@@63) (|sets_e'| Heap@@84 s_1@@10))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_27251) (Mask@@64 T@PolymorphicMapType_27272) (s_1@@11 T@MultiSet_9339) ) (!  (=> (state Heap@@85 Mask@@64) (= (|multiSets'| Heap@@85 s_1@@11) (|multiSets#frame| EmptyFrame s_1@@11)))
 :qid |stdinbpl.1891:15|
 :skolemid |194|
 :pattern ( (state Heap@@85 Mask@@64) (|multiSets'| Heap@@85 s_1@@11))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_27251) (Mask@@65 T@PolymorphicMapType_27272) (s_1@@12 T@MultiSet_9339) ) (!  (=> (state Heap@@86 Mask@@65) (= (|multiSets_e'| Heap@@86 s_1@@12) (|multiSets_e#frame| EmptyFrame s_1@@12)))
 :qid |stdinbpl.1954:15|
 :skolemid |198|
 :pattern ( (state Heap@@86 Mask@@65) (|multiSets_e'| Heap@@86 s_1@@12))
)))
(assert (forall ((a@@25 (Array Int Bool)) (b@@18 (Array Int Bool)) ) (! (= (|Set#Union_8806| a@@25 (|Set#Union_8806| a@@25 b@@18)) (|Set#Union_8806| a@@25 b@@18))
 :qid |stdinbpl.611:18|
 :skolemid |75|
 :pattern ( (|Set#Union_8806| a@@25 (|Set#Union_8806| a@@25 b@@18)))
)))
(assert (forall ((a@@26 (Array Int Bool)) (b@@19 (Array Int Bool)) ) (! (= (|Set#Intersection_8806| a@@26 (|Set#Intersection_8806| a@@26 b@@19)) (|Set#Intersection_8806| a@@26 b@@19))
 :qid |stdinbpl.615:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_8806| a@@26 (|Set#Intersection_8806| a@@26 b@@19)))
)))
(assert (forall ((a@@27 T@MultiSet_9339) (b@@20 T@MultiSet_9339) ) (! (= (|MultiSet#Intersection_9414| a@@27 (|MultiSet#Intersection_9414| a@@27 b@@20)) (|MultiSet#Intersection_9414| a@@27 b@@20))
 :qid |stdinbpl.717:18|
 :skolemid |107|
 :pattern ( (|MultiSet#Intersection_9414| a@@27 (|MultiSet#Intersection_9414| a@@27 b@@20)))
)))
(assert (forall ((s@@23 T@MultiSet_9339) ) (!  (and (= (= (|MultiSet#Card_9414| s@@23) 0) (= s@@23 |MultiSet#Empty_9414|)) (=> (not (= (|MultiSet#Card_9414| s@@23) 0)) (exists ((x@@17 Int) ) (! (< 0 (|MultiSet#Select_9414| s@@23 x@@17))
 :qid |stdinbpl.684:38|
 :skolemid |95|
))))
 :qid |stdinbpl.682:18|
 :skolemid |96|
 :pattern ( (|MultiSet#Card_9414| s@@23))
)))
(assert (forall ((r@@3 Int) (o@@6 Int) ) (!  (and (= (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6) 1) (= r@@3 o@@6)) (= (= (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6) 0) (not (= r@@3 o@@6))))
 :qid |stdinbpl.687:18|
 :skolemid |97|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Singleton_4089| r@@3) o@@6))
)))
(assert (forall ((a@@28 T@MultiSet_9339) (b@@21 T@MultiSet_9339) (o@@7 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Union_9414| a@@28 b@@21) o@@7) (+ (|MultiSet#Select_9414| a@@28 o@@7) (|MultiSet#Select_9414| b@@21 o@@7)))
 :qid |stdinbpl.705:18|
 :skolemid |103|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Union_9414| a@@28 b@@21) o@@7))
 :pattern ( (|MultiSet#Union_9414| a@@28 b@@21) (|MultiSet#Select_9414| a@@28 o@@7) (|MultiSet#Select_9414| b@@21 o@@7))
)))
(assert (forall ((s@@24 T@Seq_8395) (t@@7 T@Seq_8395) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8470| s@@24))) (= (|Seq#Take_8470| (|Seq#Append_8395| s@@24 t@@7) n@@17) (|Seq#Take_8470| s@@24 n@@17)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8470| (|Seq#Append_8395| s@@24 t@@7) n@@17))
)))
(assert (forall ((s@@25 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@25))) (= (|Seq#Take_2867| (|Seq#Append_8117| s@@25 t@@8) n@@18) (|Seq#Take_2867| s@@25 n@@18)))
 :qid |stdinbpl.368:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_8117| s@@25 t@@8) n@@18))
)))
(assert (forall ((o@@8 Int) ) (!  (not (select |Set#Empty_8806| o@@8))
 :qid |stdinbpl.571:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_8806| o@@8))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_27251) (Mask@@66 T@PolymorphicMapType_27272) (s_1@@13 T@MultiSet_9339) ) (!  (=> (and (state Heap@@87 Mask@@66) (< AssumeFunctionsAbove 10)) (= (multiSets Heap@@87 s_1@@13) (ite  (and (> (|MultiSet#Card_9414| s_1@@13) 0) (> (|MultiSet#Select_9414| s_1@@13 (|MultiSet#Card_9414| s_1@@13)) 0)) (|multiSets'| Heap@@87 (|MultiSet#Difference_9414| s_1@@13 (|MultiSet#Singleton_4089| (|MultiSet#Card_9414| s_1@@13)))) 1)))
 :qid |stdinbpl.1884:15|
 :skolemid |193|
 :pattern ( (state Heap@@87 Mask@@66) (multiSets Heap@@87 s_1@@13))
)))
(assert (forall ((s@@26 T@Seq_8395) (i@@5 Int) (v@@2 Bool) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8470| s@@26))) (= (|Seq#Length_8470| (|Seq#Update_8470| s@@26 i@@5 v@@2)) (|Seq#Length_8470| s@@26)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8470| (|Seq#Update_8470| s@@26 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8470| s@@26) (|Seq#Update_8470| s@@26 i@@5 v@@2))
)))
(assert (forall ((s@@27 T@Seq_2867) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2867| s@@27))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@27 i@@6 v@@3)) (|Seq#Length_2867| s@@27)))
 :qid |stdinbpl.267:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@27 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@27) (|Seq#Update_2867| s@@27 i@@6 v@@3))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_27251) (o_1 T@Ref) (f_51 T@Field_51165_51170) (v@@4 T@PolymorphicMapType_27800) ) (! (succHeap Heap@@88 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@88) (store (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@88) o_1 f_51 v@@4) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@88) (store (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@88) o_1 f_51 v@@4) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@88) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_27251) (o_1@@0 T@Ref) (f_51@@0 T@Field_48695_48696) (v@@5 T@FrameType) ) (! (succHeap Heap@@89 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@89) (store (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@89) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@89) (store (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@89) o_1@@0 f_51@@0 v@@5) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@89) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_27251) (o_1@@1 T@Ref) (f_51@@1 T@Field_16468_16053) (v@@6 T@Ref) ) (! (succHeap Heap@@90 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@90) (store (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@90) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@90) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@90) (store (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@90) o_1@@1 f_51@@1 v@@6) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_27251) (o_1@@2 T@Ref) (f_51@@2 T@Field_16468_53) (v@@7 Bool) ) (! (succHeap Heap@@91 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@91) (store (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@91) o_1@@2 f_51@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@91) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@91) (store (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@91) o_1@@2 f_51@@2 v@@7)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_27251) (o_1@@3 T@Ref) (f_51@@3 T@Field_16052_51170) (v@@8 T@PolymorphicMapType_27800) ) (! (succHeap Heap@@92 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@92) (store (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@92) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@92) (store (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@92) o_1@@3 f_51@@3 v@@8) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@92) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_27251) (o_1@@4 T@Ref) (f_51@@4 T@Field_16052_16469) (v@@9 T@FrameType) ) (! (succHeap Heap@@93 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@93) (store (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@93) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@93) (store (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@93) o_1@@4 f_51@@4 v@@9) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@93) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_27251) (o_1@@5 T@Ref) (f_51@@5 T@Field_27324_27325) (v@@10 T@Ref) ) (! (succHeap Heap@@94 (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@94) (store (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@94) o_1@@5 f_51@@5 v@@10) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@94) (store (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@94) o_1@@5 f_51@@5 v@@10) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@94) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_27251) (o_1@@6 T@Ref) (f_51@@6 T@Field_27311_53) (v@@11 Bool) ) (! (succHeap Heap@@95 (PolymorphicMapType_27251 (store (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@95) o_1@@6 f_51@@6 v@@11) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27251 (store (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@95) o_1@@6 f_51@@6 v@@11) (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16472_51257#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_16469#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16052_77066#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_16053#PolymorphicMapType_27251| Heap@@95) (|PolymorphicMapType_27251_16468_53#PolymorphicMapType_27251| Heap@@95)))
)))
(assert (forall ((r@@4 Int) ) (! (= (|MultiSet#Singleton_4089| r@@4) (|MultiSet#UnionOne_3| |MultiSet#Empty_9414| r@@4))
 :qid |stdinbpl.690:18|
 :skolemid |99|
 :pattern ( (|MultiSet#Singleton_4089| r@@4))
)))
(assert (forall ((xs@@13 T@Ref) ) (! (= (PredicateMaskField_16468 (list xs@@13)) (|list#sm| xs@@13))
 :qid |stdinbpl.2300:15|
 :skolemid |212|
 :pattern ( (PredicateMaskField_16468 (list xs@@13)))
)))
(assert (forall ((s@@28 T@Seq_8395) (t@@9 T@Seq_8395) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8470| s@@28))) (= (|Seq#Drop_8470| (|Seq#Append_8395| s@@28 t@@9) n@@19) (|Seq#Append_8395| (|Seq#Drop_8470| s@@28 n@@19) t@@9)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8470| (|Seq#Append_8395| s@@28 t@@9) n@@19))
)))
(assert (forall ((s@@29 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@29))) (= (|Seq#Drop_7775| (|Seq#Append_8117| s@@29 t@@10) n@@20) (|Seq#Append_8117| (|Seq#Drop_7775| s@@29 n@@20) t@@10)))
 :qid |stdinbpl.382:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7775| (|Seq#Append_8117| s@@29 t@@10) n@@20))
)))
(assert (forall ((a@@29 Int) (b@@22 Int) ) (! (= (<= a@@29 b@@22) (= (|Math#min| a@@29 b@@22) a@@29))
 :qid |stdinbpl.655:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@29 b@@22))
)))
(assert (forall ((a@@30 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@30) (= (|Math#min| a@@30 b@@23) b@@23))
 :qid |stdinbpl.656:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@30 b@@23))
)))
(assert (forall ((s@@30 T@Seq_8395) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8470| s@@30))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8470| (|Seq#Drop_8470| s@@30 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8470| s@@30 i@@7))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8470| s@@30 n@@21) (|Seq#Index_8470| s@@30 i@@7))
)))
(assert (forall ((s@@31 T@Seq_2867) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2867| s@@31))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2867| (|Seq#Drop_7775| s@@31 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2867| s@@31 i@@8))))
 :qid |stdinbpl.318:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7775| s@@31 n@@22) (|Seq#Index_2867| s@@31 i@@8))
)))
(assert (forall ((s@@32 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_8806| s@@32) 0) (= s@@32 |Set#Empty_8806|)) (=> (not (= (|Set#Card_8806| s@@32) 0)) (exists ((x@@18 Int) ) (! (select s@@32 x@@18)
 :qid |stdinbpl.574:33|
 :skolemid |60|
))))
 :qid |stdinbpl.572:18|
 :skolemid |61|
 :pattern ( (|Set#Card_8806| s@@32))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_27251) (Mask@@67 T@PolymorphicMapType_27272) (seq@@11 T@Seq_2867) ) (!  (=> (and (state Heap@@96 Mask@@67) (< AssumeFunctionsAbove 17)) (= (sequences Heap@@96 seq@@11) (ite (not (= (|Seq#Length_2867| seq@@11) 0)) (+ 1 (|sequences'| Heap@@96 (|Seq#Drop_7775| seq@@11 1))) 0)))
 :qid |stdinbpl.1527:15|
 :skolemid |171|
 :pattern ( (state Heap@@96 Mask@@67) (sequences Heap@@96 seq@@11))
)))
(assert (forall ((s0@@7 T@Seq_8395) (s1@@7 T@Seq_8395) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8470|)) (not (= s1@@7 |Seq#Empty_8470|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8470| s0@@7))) (= (|Seq#Index_8470| (|Seq#Append_8395| s0@@7 s1@@7) n@@23) (|Seq#Index_8470| s0@@7 n@@23)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8470| (|Seq#Append_8395| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8470| s0@@7 n@@23) (|Seq#Append_8395| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.258:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_8117| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_8117| s0@@8 s1@@8))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_27251) (Mask@@68 T@PolymorphicMapType_27272) (seq@@12 T@Seq_8395) ) (!  (=> (and (state Heap@@97 Mask@@68) (< AssumeFunctionsAbove 1)) (= (numberOfUsers Heap@@97 seq@@12) (ite (= (|Seq#Length_8470| seq@@12) 0) 0 (ite (|Seq#Index_8470| seq@@12 0) (+ 1 (|numberOfUsers'| Heap@@97 (|Seq#Drop_8470| seq@@12 1))) (|numberOfUsers'| Heap@@97 (|Seq#Drop_8470| seq@@12 1))))))
 :qid |stdinbpl.1681:15|
 :skolemid |181|
 :pattern ( (state Heap@@97 Mask@@68) (numberOfUsers Heap@@97 seq@@12))
)))
(assert (forall ((s0@@9 T@Seq_8395) (s1@@9 T@Seq_8395) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8470|)) (not (= s1@@9 |Seq#Empty_8470|))) (<= 0 m)) (< m (|Seq#Length_8470| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8470| s0@@9)) (|Seq#Length_8470| s0@@9)) m) (= (|Seq#Index_8470| (|Seq#Append_8395| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8470| s0@@9))) (|Seq#Index_8470| s1@@9 m))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8470| s1@@9 m) (|Seq#Append_8395| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_8117| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.263:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_8117| s0@@10 s1@@10))
)))
(assert (forall ((a@@31 (Array Int Bool)) (x@@19 Int) ) (!  (=> (not (select a@@31 x@@19)) (= (|Set#Card_8806| (|Set#UnionOne_8806| a@@31 x@@19)) (+ (|Set#Card_8806| a@@31) 1)))
 :qid |stdinbpl.590:18|
 :skolemid |69|
 :pattern ( (|Set#Card_8806| (|Set#UnionOne_8806| a@@31 x@@19)))
)))
(assert (forall ((a@@32 T@MultiSet_9339) (b@@24 T@MultiSet_9339) (o@@9 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@32 b@@24) o@@9) (|Math#clip| (- (|MultiSet#Select_9414| a@@32 o@@9) (|MultiSet#Select_9414| b@@24 o@@9))))
 :qid |stdinbpl.722:18|
 :skolemid |108|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#Difference_9414| a@@32 b@@24) o@@9))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_27251) (Mask@@69 T@PolymorphicMapType_27272) (xs@@14 T@Ref) ) (!  (=> (and (state Heap@@98 Mask@@69) (< AssumeFunctionsAbove 14)) (= (predicates Heap@@98 xs@@14) (ite (not (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@98) xs@@14 next) null)) (|predicates'| Heap@@98 (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@98) xs@@14 next)) 0)))
 :qid |stdinbpl.2011:15|
 :skolemid |201|
 :pattern ( (state Heap@@98 Mask@@69) (predicates Heap@@98 xs@@14))
 :pattern ( (state Heap@@98 Mask@@69) (|predicates#triggerStateless| xs@@14) (|list#trigger_16468| Heap@@98 (list xs@@14)))
)))
(assert (forall ((o_1@@7 T@Ref) (f_2 T@Field_27324_27325) (Heap@@99 T@PolymorphicMapType_27251) ) (!  (=> (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@99) o_1@@7 $allocated) (select (|PolymorphicMapType_27251_15677_53#PolymorphicMapType_27251| Heap@@99) (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@99) o_1@@7 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@99) o_1@@7 f_2))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_27251) (Mask@@70 T@PolymorphicMapType_27272) (x@@20 Int) ) (!  (=> (and (state Heap@@100 Mask@@70) (< AssumeFunctionsAbove 16)) (=> (>= x@@20 0) (= (fact Heap@@100 x@@20) (ite (= x@@20 0) 1 (* x@@20 (|fact'| Heap@@100 (- x@@20 1)))))))
 :qid |stdinbpl.967:15|
 :skolemid |137|
 :pattern ( (state Heap@@100 Mask@@70) (fact Heap@@100 x@@20))
)))
(assert (forall ((s@@33 T@Seq_8395) (x@@21 Bool) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8470| s@@33))) (= (|Seq#Index_8470| s@@33 i@@9) x@@21)) (|Seq#Contains_8395| s@@33 x@@21))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_8395| s@@33 x@@21) (|Seq#Index_8470| s@@33 i@@9))
)))
(assert (forall ((s@@34 T@Seq_2867) (x@@22 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2867| s@@34))) (= (|Seq#Index_2867| s@@34 i@@10) x@@22)) (|Seq#Contains_2867| s@@34 x@@22))
 :qid |stdinbpl.415:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@34 x@@22) (|Seq#Index_2867| s@@34 i@@10))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_27251) (Mask@@71 T@PolymorphicMapType_27272) (s_1@@14 T@MultiSet_9339) ) (!  (=> (and (state Heap@@101 Mask@@71) (< AssumeFunctionsAbove 4)) (= (multiSets_e Heap@@101 s_1@@14) (ite  (and (> (|MultiSet#Card_9414| s_1@@14) 0) (> (|MultiSet#Select_9414| s_1@@14 (|MultiSet#Card_9414| s_1@@14)) 0)) 1 (|multiSets_e'| Heap@@101 (|MultiSet#Difference_9414| s_1@@14 (|MultiSet#Singleton_4089| (|MultiSet#Card_9414| s_1@@14)))))))
 :qid |stdinbpl.1947:15|
 :skolemid |197|
 :pattern ( (state Heap@@101 Mask@@71) (multiSets_e Heap@@101 s_1@@14))
)))
(assert (forall ((s0@@11 T@Seq_8395) (s1@@11 T@Seq_8395) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_8395| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_8395| s0@@11 s1@@11))) (not (= (|Seq#Length_8470| s0@@11) (|Seq#Length_8470| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_8395| s0@@11 s1@@11))) (= (|Seq#Length_8470| s0@@11) (|Seq#Length_8470| s1@@11))) (= (|Seq#SkolemDiff_8395| s0@@11 s1@@11) (|Seq#SkolemDiff_8395| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_8395| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_8395| s0@@11 s1@@11) (|Seq#Length_8470| s0@@11))) (not (= (|Seq#Index_8470| s0@@11 (|Seq#SkolemDiff_8395| s0@@11 s1@@11)) (|Seq#Index_8470| s1@@11 (|Seq#SkolemDiff_8395| s0@@11 s1@@11))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_8395| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.519:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_16052_16469) (v_1@@1 T@FrameType) (q T@Field_16052_16469) (w@@1 T@FrameType) (r@@5 T@Field_16052_16469) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27311_27311 p@@2 v_1@@1 q w@@1) (InsidePredicate_27311_27311 q w@@1 r@@5 u)) (InsidePredicate_27311_27311 p@@2 v_1@@1 r@@5 u))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_27311 p@@2 v_1@@1 q w@@1) (InsidePredicate_27311_27311 q w@@1 r@@5 u))
)))
(assert (forall ((p@@3 T@Field_16052_16469) (v_1@@2 T@FrameType) (q@@0 T@Field_16052_16469) (w@@2 T@FrameType) (r@@6 T@Field_48695_48696) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_27311 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_27311_16468 q@@0 w@@2 r@@6 u@@0)) (InsidePredicate_27311_16468 p@@3 v_1@@2 r@@6 u@@0))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_27311 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_27311_16468 q@@0 w@@2 r@@6 u@@0))
)))
(assert (forall ((p@@4 T@Field_16052_16469) (v_1@@3 T@FrameType) (q@@1 T@Field_48695_48696) (w@@3 T@FrameType) (r@@7 T@Field_16052_16469) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_16468 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16468_27311 q@@1 w@@3 r@@7 u@@1)) (InsidePredicate_27311_27311 p@@4 v_1@@3 r@@7 u@@1))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_16468 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_16468_27311 q@@1 w@@3 r@@7 u@@1))
)))
(assert (forall ((p@@5 T@Field_16052_16469) (v_1@@4 T@FrameType) (q@@2 T@Field_48695_48696) (w@@4 T@FrameType) (r@@8 T@Field_48695_48696) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_27311_16468 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16468_16468 q@@2 w@@4 r@@8 u@@2)) (InsidePredicate_27311_16468 p@@5 v_1@@4 r@@8 u@@2))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27311_16468 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_16468_16468 q@@2 w@@4 r@@8 u@@2))
)))
(assert (forall ((p@@6 T@Field_48695_48696) (v_1@@5 T@FrameType) (q@@3 T@Field_16052_16469) (w@@5 T@FrameType) (r@@9 T@Field_16052_16469) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_27311 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_27311_27311 q@@3 w@@5 r@@9 u@@3)) (InsidePredicate_16468_27311 p@@6 v_1@@5 r@@9 u@@3))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_27311 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_27311_27311 q@@3 w@@5 r@@9 u@@3))
)))
(assert (forall ((p@@7 T@Field_48695_48696) (v_1@@6 T@FrameType) (q@@4 T@Field_16052_16469) (w@@6 T@FrameType) (r@@10 T@Field_48695_48696) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_27311 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_27311_16468 q@@4 w@@6 r@@10 u@@4)) (InsidePredicate_16468_16468 p@@7 v_1@@6 r@@10 u@@4))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_27311 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_27311_16468 q@@4 w@@6 r@@10 u@@4))
)))
(assert (forall ((p@@8 T@Field_48695_48696) (v_1@@7 T@FrameType) (q@@5 T@Field_48695_48696) (w@@7 T@FrameType) (r@@11 T@Field_16052_16469) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_16468 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16468_27311 q@@5 w@@7 r@@11 u@@5)) (InsidePredicate_16468_27311 p@@8 v_1@@7 r@@11 u@@5))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_16468 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_16468_27311 q@@5 w@@7 r@@11 u@@5))
)))
(assert (forall ((p@@9 T@Field_48695_48696) (v_1@@8 T@FrameType) (q@@6 T@Field_48695_48696) (w@@8 T@FrameType) (r@@12 T@Field_48695_48696) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_16468_16468 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16468_16468 q@@6 w@@8 r@@12 u@@6)) (InsidePredicate_16468_16468 p@@9 v_1@@8 r@@12 u@@6))
 :qid |stdinbpl.186:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16468_16468 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_16468_16468 q@@6 w@@8 r@@12 u@@6))
)))
(assert (forall ((a@@33 Int) ) (!  (=> (< a@@33 0) (= (|Math#clip| a@@33) 0))
 :qid |stdinbpl.661:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@33))
)))
(assert (forall ((s@@35 T@Seq_8395) ) (!  (=> (= (|Seq#Length_8470| s@@35) 0) (= s@@35 |Seq#Empty_8470|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8470| s@@35))
)))
(assert (forall ((s@@36 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@36) 0) (= s@@36 |Seq#Empty_2867|))
 :qid |stdinbpl.222:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@36))
)))
(assert (forall ((s@@37 T@Seq_8395) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8470| s@@37 n@@25) |Seq#Empty_8470|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8470| s@@37 n@@25))
)))
(assert (forall ((s@@38 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@38 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.398:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@38 n@@26))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_27251) (Mask@@72 T@PolymorphicMapType_27272) (xs@@15 T@Ref) ) (!  (=> (and (state Heap@@102 Mask@@72) (< AssumeFunctionsAbove 15)) (= (predicates_e Heap@@102 xs@@15) (ite (not (= (select (|PolymorphicMapType_27251_15680_15681#PolymorphicMapType_27251| Heap@@102) xs@@15 next) null)) (|predicates_e'| Heap@@102 xs@@15) 0)))
 :qid |stdinbpl.2136:15|
 :skolemid |206|
 :pattern ( (state Heap@@102 Mask@@72) (predicates_e Heap@@102 xs@@15))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@34 T@MultiSet_9339) (x@@23 Int) (o@@10 Int) ) (! (= (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@34 x@@23) o@@10) (ite (= x@@23 o@@10) (+ (|MultiSet#Select_9414| a@@34 o@@10) 1) (|MultiSet#Select_9414| a@@34 o@@10)))
 :qid |stdinbpl.694:18|
 :skolemid |100|
 :pattern ( (|MultiSet#Select_9414| (|MultiSet#UnionOne_3| a@@34 x@@23) o@@10))
 :pattern ( (|MultiSet#UnionOne_3| a@@34 x@@23) (|MultiSet#Select_9414| a@@34 o@@10))
)))
(assert (forall ((a@@35 T@MultiSet_9339) (b@@25 T@MultiSet_9339) ) (! (= (|MultiSet#Equal_9339| a@@35 b@@25) (forall ((o@@11 Int) ) (! (= (|MultiSet#Select_9414| a@@35 o@@11) (|MultiSet#Select_9414| b@@25 o@@11))
 :qid |stdinbpl.740:36|
 :skolemid |113|
 :pattern ( (|MultiSet#Select_9414| a@@35 o@@11))
 :pattern ( (|MultiSet#Select_9414| b@@25 o@@11))
)))
 :qid |stdinbpl.739:17|
 :skolemid |114|
 :pattern ( (|MultiSet#Equal_9339| a@@35 b@@25))
)))
(assert (forall ((a@@36 T@MultiSet_9339) (b@@26 T@MultiSet_9339) ) (! (= (|MultiSet#Subset_9339| a@@36 b@@26) (forall ((o@@12 Int) ) (! (<= (|MultiSet#Select_9414| a@@36 o@@12) (|MultiSet#Select_9414| b@@26 o@@12))
 :qid |stdinbpl.736:37|
 :skolemid |111|
 :pattern ( (|MultiSet#Select_9414| a@@36 o@@12))
 :pattern ( (|MultiSet#Select_9414| b@@26 o@@12))
)))
 :qid |stdinbpl.735:17|
 :skolemid |112|
 :pattern ( (|MultiSet#Subset_9339| a@@36 b@@26))
)))
(assert (forall ((a@@37 (Array Int Bool)) (b@@27 (Array Int Bool)) (o@@13 Int) ) (! (= (select (|Set#Union_8806| a@@37 b@@27) o@@13)  (or (select a@@37 o@@13) (select b@@27 o@@13)))
 :qid |stdinbpl.594:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_8806| a@@37 b@@27) o@@13))
)))
(assert (forall ((int1@@2 Real) ) (!  (=> (<= (/ (to_real 0) (to_real 1)) int1@@2) (bounded_645 int1@@2))
 :qid |stdinbpl.918:15|
 :skolemid |132|
 :pattern ( (bounded_645 int1@@2))
)))
; Valid

