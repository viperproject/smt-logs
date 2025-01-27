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
(declare-sort T@Field_12317_53 0)
(declare-sort T@Field_12330_12331 0)
(declare-sort T@Field_12317_30843 0)
(declare-sort T@Field_12317_30710 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12278 0)) (((PolymorphicMapType_12278 (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| (Array T@Ref T@Field_12317_53 Real)) (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| (Array T@Ref T@Field_12330_12331 Real)) (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| (Array T@Ref T@Field_12317_30710 Real)) (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| (Array T@Ref T@Field_12317_30843 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12806 0)) (((PolymorphicMapType_12806 (|PolymorphicMapType_12806_12317_53#PolymorphicMapType_12806| (Array T@Ref T@Field_12317_53 Bool)) (|PolymorphicMapType_12806_12317_12331#PolymorphicMapType_12806| (Array T@Ref T@Field_12330_12331 Bool)) (|PolymorphicMapType_12806_12317_30710#PolymorphicMapType_12806| (Array T@Ref T@Field_12317_30710 Bool)) (|PolymorphicMapType_12806_12317_31823#PolymorphicMapType_12806| (Array T@Ref T@Field_12317_30843 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12257 0)) (((PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| (Array T@Ref T@Field_12317_53 Bool)) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| (Array T@Ref T@Field_12330_12331 T@Ref)) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| (Array T@Ref T@Field_12317_30843 T@PolymorphicMapType_12806)) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| (Array T@Ref T@Field_12317_30710 T@FrameType)) ) ) ))
(declare-sort T@Map_4311_4311 0)
(declare-fun |Map#Values_4311_4311| (T@Map_4311_4311) (Array Bool Bool))
(declare-fun |Map#Domain_4311_4311| (T@Map_4311_4311) (Array Bool Bool))
(declare-fun |Map#Elements_4311_4311| (T@Map_4311_4311) (Array Bool Bool))
(declare-sort T@Map_4311_3966 0)
(declare-fun |Map#Values_4311_6660| (T@Map_4311_3966) (Array Int Bool))
(declare-fun |Map#Domain_4311_3966| (T@Map_4311_3966) (Array Bool Bool))
(declare-fun |Map#Elements_4311_6660| (T@Map_4311_3966) (Array Bool Int))
(declare-sort T@Map_4310_4311 0)
(declare-fun |Map#Values_6659_4311| (T@Map_4310_4311) (Array Bool Bool))
(declare-fun |Map#Domain_4310_4311| (T@Map_4310_4311) (Array Int Bool))
(declare-fun |Map#Elements_4310_4311| (T@Map_4310_4311) (Array Int Bool))
(declare-sort T@Map_3965_3966 0)
(declare-fun |Map#Values_6659_6660| (T@Map_3965_3966) (Array Int Bool))
(declare-fun |Map#Domain_3965_3966| (T@Map_3965_3966) (Array Int Bool))
(declare-fun |Map#Elements_3965_3966| (T@Map_3965_3966) (Array Int Int))
(declare-fun succHeap (T@PolymorphicMapType_12257 T@PolymorphicMapType_12257) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12257 T@PolymorphicMapType_12257) Bool)
(declare-fun state (T@PolymorphicMapType_12257 T@PolymorphicMapType_12278) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12278) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12806)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4311| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Set#Union_3965| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_4311| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Set#Intersection_3965| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Map#Card_4311_4311| (T@Map_4311_4311) Int)
(declare-fun |Map#Build_4311_4311| (T@Map_4311_4311 Bool Bool) T@Map_4311_4311)
(declare-fun |Map#Card_4311_3966| (T@Map_4311_3966) Int)
(declare-fun |Map#Build_4311_3966| (T@Map_4311_3966 Bool Int) T@Map_4311_3966)
(declare-fun |Map#Card_3965_4311| (T@Map_4310_4311) Int)
(declare-fun |Map#Build_3965_4311| (T@Map_4310_4311 Int Bool) T@Map_4310_4311)
(declare-fun |Map#Card_3965_3966| (T@Map_3965_3966) Int)
(declare-fun |Map#Build_4000_4001| (T@Map_3965_3966 Int Int) T@Map_3965_3966)
(declare-fun |Set#Singleton_4311| (Bool) (Array Bool Bool))
(declare-fun |Set#Singleton_3965| (Int) (Array Int Bool))
(declare-fun |Set#Card_4311| ((Array Bool Bool)) Int)
(declare-fun |Set#Card_3965| ((Array Int Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12257 T@PolymorphicMapType_12257 T@PolymorphicMapType_12278) Bool)
(declare-fun IsPredicateField_12317_30801 (T@Field_12317_30710) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12317 (T@Field_12317_30710) T@Field_12317_30843)
(declare-fun HasDirectPerm_12317_30774 (T@PolymorphicMapType_12278 T@Ref T@Field_12317_30710) Bool)
(declare-fun IsWandField_12317_32350 (T@Field_12317_30710) Bool)
(declare-fun WandMaskField_12317 (T@Field_12317_30710) T@Field_12317_30843)
(declare-fun dummyHeap () T@PolymorphicMapType_12257)
(declare-fun ZeroMask () T@PolymorphicMapType_12278)
(declare-fun $allocated () T@Field_12317_53)
(declare-fun InsidePredicate_12317_12317 (T@Field_12317_30710 T@FrameType T@Field_12317_30710 T@FrameType) Bool)
(declare-fun |Map#Disjoint_4311_4311| (T@Map_4311_4311 T@Map_4311_4311) Bool)
(declare-fun |Map#Disjoint_4311_3966| (T@Map_4311_3966 T@Map_4311_3966) Bool)
(declare-fun |Map#Disjoint_3965_4311| (T@Map_4310_4311 T@Map_4310_4311) Bool)
(declare-fun |Map#Disjoint_3965_3966| (T@Map_3965_3966 T@Map_3965_3966) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12317_35313 (T@Field_12317_30843) Bool)
(declare-fun IsWandField_12317_35329 (T@Field_12317_30843) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12317_12331 (T@Field_12330_12331) Bool)
(declare-fun IsWandField_12317_12331 (T@Field_12330_12331) Bool)
(declare-fun IsPredicateField_12317_53 (T@Field_12317_53) Bool)
(declare-fun IsWandField_12317_53 (T@Field_12317_53) Bool)
(declare-fun HasDirectPerm_12317_35684 (T@PolymorphicMapType_12278 T@Ref T@Field_12317_30843) Bool)
(declare-fun HasDirectPerm_12317_12331 (T@PolymorphicMapType_12278 T@Ref T@Field_12330_12331) Bool)
(declare-fun HasDirectPerm_12317_53 (T@PolymorphicMapType_12278 T@Ref T@Field_12317_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12278 T@PolymorphicMapType_12278 T@PolymorphicMapType_12278) Bool)
(declare-fun |Set#Difference_4311| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Set#Difference_3965| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Map#Equal_4311_4311| (T@Map_4311_4311 T@Map_4311_4311) Bool)
(declare-fun |Map#Equal_4311_3966| (T@Map_4311_3966 T@Map_4311_3966) Bool)
(declare-fun |Map#Equal_3965_4311| (T@Map_4310_4311 T@Map_4310_4311) Bool)
(declare-fun |Map#Equal_3965_3966| (T@Map_3965_3966 T@Map_3965_3966) Bool)
(declare-fun |Set#UnionOne_4311| ((Array Bool Bool) Bool) (Array Bool Bool))
(declare-fun |Set#UnionOne_3965| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Map#Empty_4311_4311| () T@Map_4311_4311)
(declare-fun |Map#Empty_4311_3966| () T@Map_4311_3966)
(declare-fun |Map#Empty_3965_4311| () T@Map_4310_4311)
(declare-fun |Map#Empty_4000_4001| () T@Map_3965_3966)
(declare-fun |Set#Empty_4311| () (Array Bool Bool))
(declare-fun |Set#Empty_3965| () (Array Int Bool))
(assert (forall ((m T@Map_4311_4311) (v Bool) ) (!  (=> (select (|Map#Values_4311_4311| m) v) (exists ((u Bool) ) (!  (and (select (|Map#Domain_4311_4311| m) u) (= v (select (|Map#Elements_4311_4311| m) u)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4311_4311| m) u))
 :pattern ( (select (|Map#Elements_4311_4311| m) u))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4311_4311| m) v))
)))
(assert (forall ((m@@0 T@Map_4311_3966) (v@@0 Int) ) (!  (=> (select (|Map#Values_4311_6660| m@@0) v@@0) (exists ((u@@0 Bool) ) (!  (and (select (|Map#Domain_4311_3966| m@@0) u@@0) (= v@@0 (select (|Map#Elements_4311_6660| m@@0) u@@0)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4311_3966| m@@0) u@@0))
 :pattern ( (select (|Map#Elements_4311_6660| m@@0) u@@0))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4311_6660| m@@0) v@@0))
)))
(assert (forall ((m@@1 T@Map_4310_4311) (v@@1 Bool) ) (!  (=> (select (|Map#Values_6659_4311| m@@1) v@@1) (exists ((u@@1 Int) ) (!  (and (select (|Map#Domain_4310_4311| m@@1) u@@1) (= v@@1 (select (|Map#Elements_4310_4311| m@@1) u@@1)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4310_4311| m@@1) u@@1))
 :pattern ( (select (|Map#Elements_4310_4311| m@@1) u@@1))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6659_4311| m@@1) v@@1))
)))
(assert (forall ((m@@2 T@Map_3965_3966) (v@@2 Int) ) (!  (=> (select (|Map#Values_6659_6660| m@@2) v@@2) (exists ((u@@2 Int) ) (!  (and (select (|Map#Domain_3965_3966| m@@2) u@@2) (= v@@2 (select (|Map#Elements_3965_3966| m@@2) u@@2)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_3965_3966| m@@2) u@@2))
 :pattern ( (select (|Map#Elements_3965_3966| m@@2) u@@2))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6659_6660| m@@2) v@@2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12257) (Heap1 T@PolymorphicMapType_12257) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12257) (Mask T@PolymorphicMapType_12278) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12257) (Heap1@@0 T@PolymorphicMapType_12257) (Heap2 T@PolymorphicMapType_12257) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12317_30843) ) (!  (not (select (|PolymorphicMapType_12806_12317_31823#PolymorphicMapType_12806| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12806_12317_31823#PolymorphicMapType_12806| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12317_30710) ) (!  (not (select (|PolymorphicMapType_12806_12317_30710#PolymorphicMapType_12806| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12806_12317_30710#PolymorphicMapType_12806| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12330_12331) ) (!  (not (select (|PolymorphicMapType_12806_12317_12331#PolymorphicMapType_12806| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12806_12317_12331#PolymorphicMapType_12806| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12317_53) ) (!  (not (select (|PolymorphicMapType_12806_12317_53#PolymorphicMapType_12806| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12806_12317_53#PolymorphicMapType_12806| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array Bool Bool)) (b@@0 (Array Bool Bool)) ) (! (= (|Set#Union_4311| (|Set#Union_4311| a@@0 b@@0) b@@0) (|Set#Union_4311| a@@0 b@@0))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4311| (|Set#Union_4311| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Union_3965| (|Set#Union_3965| a@@1 b@@1) b@@1) (|Set#Union_3965| a@@1 b@@1))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_3965| (|Set#Union_3965| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Bool Bool)) (b@@2 (Array Bool Bool)) ) (! (= (|Set#Intersection_4311| (|Set#Intersection_4311| a@@2 b@@2) b@@2) (|Set#Intersection_4311| a@@2 b@@2))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4311| (|Set#Intersection_4311| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Intersection_3965| (|Set#Intersection_3965| a@@3 b@@3) b@@3) (|Set#Intersection_3965| a@@3 b@@3))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_3965| (|Set#Intersection_3965| a@@3 b@@3) b@@3))
)))
(assert (forall ((m@@3 T@Map_4311_4311) (u@@3 Bool) (v@@3 Bool) ) (!  (=> (select (|Map#Domain_4311_4311| m@@3) u@@3) (= (|Map#Card_4311_4311| (|Map#Build_4311_4311| m@@3 u@@3 v@@3)) (|Map#Card_4311_4311| m@@3)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4311_4311| (|Map#Build_4311_4311| m@@3 u@@3 v@@3)))
 :pattern ( (|Map#Card_4311_4311| m@@3) (|Map#Build_4311_4311| m@@3 u@@3 v@@3))
)))
(assert (forall ((m@@4 T@Map_4311_3966) (u@@4 Bool) (v@@4 Int) ) (!  (=> (select (|Map#Domain_4311_3966| m@@4) u@@4) (= (|Map#Card_4311_3966| (|Map#Build_4311_3966| m@@4 u@@4 v@@4)) (|Map#Card_4311_3966| m@@4)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4311_3966| (|Map#Build_4311_3966| m@@4 u@@4 v@@4)))
 :pattern ( (|Map#Card_4311_3966| m@@4) (|Map#Build_4311_3966| m@@4 u@@4 v@@4))
)))
(assert (forall ((m@@5 T@Map_4310_4311) (u@@5 Int) (v@@5 Bool) ) (!  (=> (select (|Map#Domain_4310_4311| m@@5) u@@5) (= (|Map#Card_3965_4311| (|Map#Build_3965_4311| m@@5 u@@5 v@@5)) (|Map#Card_3965_4311| m@@5)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_3965_4311| (|Map#Build_3965_4311| m@@5 u@@5 v@@5)))
 :pattern ( (|Map#Card_3965_4311| m@@5) (|Map#Build_3965_4311| m@@5 u@@5 v@@5))
)))
(assert (forall ((m@@6 T@Map_3965_3966) (u@@6 Int) (v@@6 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m@@6) u@@6) (= (|Map#Card_3965_3966| (|Map#Build_4000_4001| m@@6 u@@6 v@@6)) (|Map#Card_3965_3966| m@@6)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_3965_3966| (|Map#Build_4000_4001| m@@6 u@@6 v@@6)))
 :pattern ( (|Map#Card_3965_3966| m@@6) (|Map#Build_4000_4001| m@@6 u@@6 v@@6))
)))
(assert (forall ((r Bool) (o Bool) ) (! (= (select (|Set#Singleton_4311| r) o) (= r o))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4311| r) o))
)))
(assert (forall ((r@@0 Int) (o@@0 Int) ) (! (= (select (|Set#Singleton_3965| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3965| r@@0) o@@0))
)))
(assert (forall ((a@@4 (Array Bool Bool)) (b@@4 (Array Bool Bool)) ) (! (= (+ (|Set#Card_4311| (|Set#Union_4311| a@@4 b@@4)) (|Set#Card_4311| (|Set#Intersection_4311| a@@4 b@@4))) (+ (|Set#Card_4311| a@@4) (|Set#Card_4311| b@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4311| (|Set#Union_4311| a@@4 b@@4)))
 :pattern ( (|Set#Card_4311| (|Set#Intersection_4311| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@5 (Array Int Bool)) ) (! (= (+ (|Set#Card_3965| (|Set#Union_3965| a@@5 b@@5)) (|Set#Card_3965| (|Set#Intersection_3965| a@@5 b@@5))) (+ (|Set#Card_3965| a@@5) (|Set#Card_3965| b@@5)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_3965| (|Set#Union_3965| a@@5 b@@5)))
 :pattern ( (|Set#Card_3965| (|Set#Intersection_3965| a@@5 b@@5)))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12257) (ExhaleHeap T@PolymorphicMapType_12257) (Mask@@0 T@PolymorphicMapType_12278) (pm_f_4 T@Field_12317_30710) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12317_30774 Mask@@0 null pm_f_4) (IsPredicateField_12317_30801 pm_f_4)) (= (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@0) null (PredicateMaskField_12317 pm_f_4)) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap) null (PredicateMaskField_12317 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12317_30801 pm_f_4) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap) null (PredicateMaskField_12317 pm_f_4)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12257) (ExhaleHeap@@0 T@PolymorphicMapType_12257) (Mask@@1 T@PolymorphicMapType_12278) (pm_f_4@@0 T@Field_12317_30710) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12317_30774 Mask@@1 null pm_f_4@@0) (IsWandField_12317_32350 pm_f_4@@0)) (= (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@1) null (WandMaskField_12317 pm_f_4@@0)) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@0) null (WandMaskField_12317 pm_f_4@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12317_32350 pm_f_4@@0) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@0) null (WandMaskField_12317 pm_f_4@@0)))
)))
(assert (forall ((m@@7 T@Map_4311_4311) (u@@7 Bool) (v@@7 Bool) ) (!  (=> (not (select (|Map#Domain_4311_4311| m@@7) u@@7)) (= (|Map#Card_4311_4311| (|Map#Build_4311_4311| m@@7 u@@7 v@@7)) (+ (|Map#Card_4311_4311| m@@7) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4311_4311| (|Map#Build_4311_4311| m@@7 u@@7 v@@7)))
 :pattern ( (|Map#Card_4311_4311| m@@7) (|Map#Build_4311_4311| m@@7 u@@7 v@@7))
)))
(assert (forall ((m@@8 T@Map_4311_3966) (u@@8 Bool) (v@@8 Int) ) (!  (=> (not (select (|Map#Domain_4311_3966| m@@8) u@@8)) (= (|Map#Card_4311_3966| (|Map#Build_4311_3966| m@@8 u@@8 v@@8)) (+ (|Map#Card_4311_3966| m@@8) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4311_3966| (|Map#Build_4311_3966| m@@8 u@@8 v@@8)))
 :pattern ( (|Map#Card_4311_3966| m@@8) (|Map#Build_4311_3966| m@@8 u@@8 v@@8))
)))
(assert (forall ((m@@9 T@Map_4310_4311) (u@@9 Int) (v@@9 Bool) ) (!  (=> (not (select (|Map#Domain_4310_4311| m@@9) u@@9)) (= (|Map#Card_3965_4311| (|Map#Build_3965_4311| m@@9 u@@9 v@@9)) (+ (|Map#Card_3965_4311| m@@9) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_3965_4311| (|Map#Build_3965_4311| m@@9 u@@9 v@@9)))
 :pattern ( (|Map#Card_3965_4311| m@@9) (|Map#Build_3965_4311| m@@9 u@@9 v@@9))
)))
(assert (forall ((m@@10 T@Map_3965_3966) (u@@10 Int) (v@@10 Int) ) (!  (=> (not (select (|Map#Domain_3965_3966| m@@10) u@@10)) (= (|Map#Card_3965_3966| (|Map#Build_4000_4001| m@@10 u@@10 v@@10)) (+ (|Map#Card_3965_3966| m@@10) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_3965_3966| (|Map#Build_4000_4001| m@@10 u@@10 v@@10)))
 :pattern ( (|Map#Card_3965_3966| m@@10) (|Map#Build_4000_4001| m@@10 u@@10 v@@10))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12257) (ExhaleHeap@@1 T@PolymorphicMapType_12257) (Mask@@2 T@PolymorphicMapType_12278) (pm_f_4@@1 T@Field_12317_30710) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12317_30774 Mask@@2 null pm_f_4@@1) (IsPredicateField_12317_30801 pm_f_4@@1)) (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_12317_53) ) (!  (=> (select (|PolymorphicMapType_12806_12317_53#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@2) null (PredicateMaskField_12317 pm_f_4@@1))) o2_4 f_20) (= (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@2) o2_4 f_20) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4 f_20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_12330_12331) ) (!  (=> (select (|PolymorphicMapType_12806_12317_12331#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@2) null (PredicateMaskField_12317 pm_f_4@@1))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@2) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_12317_30710) ) (!  (=> (select (|PolymorphicMapType_12806_12317_30710#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@2) null (PredicateMaskField_12317 pm_f_4@@1))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@2) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_12317_30843) ) (!  (=> (select (|PolymorphicMapType_12806_12317_31823#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@2) null (PredicateMaskField_12317 pm_f_4@@1))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@2) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@1) o2_4@@2 f_20@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_12317_30801 pm_f_4@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12257) (ExhaleHeap@@2 T@PolymorphicMapType_12257) (Mask@@3 T@PolymorphicMapType_12278) (pm_f_4@@2 T@Field_12317_30710) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_12317_30774 Mask@@3 null pm_f_4@@2) (IsWandField_12317_32350 pm_f_4@@2)) (and (and (and (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_12317_53) ) (!  (=> (select (|PolymorphicMapType_12806_12317_53#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@3) null (WandMaskField_12317 pm_f_4@@2))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@3) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@3 f_20@@3))
)) (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_12330_12331) ) (!  (=> (select (|PolymorphicMapType_12806_12317_12331#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@3) null (WandMaskField_12317 pm_f_4@@2))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@3) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@4 f_20@@4))
))) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_12317_30710) ) (!  (=> (select (|PolymorphicMapType_12806_12317_30710#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@3) null (WandMaskField_12317 pm_f_4@@2))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@3) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_12317_30843) ) (!  (=> (select (|PolymorphicMapType_12806_12317_31823#PolymorphicMapType_12806| (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@3) null (WandMaskField_12317 pm_f_4@@2))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@3) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@2) o2_4@@6 f_20@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_12317_32350 pm_f_4@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12257) (ExhaleHeap@@3 T@PolymorphicMapType_12257) (Mask@@4 T@PolymorphicMapType_12278) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@4) o_13 $allocated) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@3) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@3) o_13 $allocated))
)))
(assert (forall ((p T@Field_12317_30710) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12317_12317 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12317_12317 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12257) (ExhaleHeap@@4 T@PolymorphicMapType_12257) (Mask@@5 T@PolymorphicMapType_12278) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((m@@11 T@Map_4311_4311) (|m'| T@Map_4311_4311) ) (!  (=> (|Map#Disjoint_4311_4311| m@@11 |m'|) (forall ((o@@1 Bool) ) (!  (or (not (select (|Map#Domain_4311_4311| m@@11) o@@1)) (not (select (|Map#Domain_4311_4311| |m'|) o@@1)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4311_4311| m@@11) o@@1))
 :pattern ( (select (|Map#Domain_4311_4311| |m'|) o@@1))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4311_4311| m@@11 |m'|))
)))
(assert (forall ((m@@12 T@Map_4311_3966) (|m'@@0| T@Map_4311_3966) ) (!  (=> (|Map#Disjoint_4311_3966| m@@12 |m'@@0|) (forall ((o@@2 Bool) ) (!  (or (not (select (|Map#Domain_4311_3966| m@@12) o@@2)) (not (select (|Map#Domain_4311_3966| |m'@@0|) o@@2)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4311_3966| m@@12) o@@2))
 :pattern ( (select (|Map#Domain_4311_3966| |m'@@0|) o@@2))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4311_3966| m@@12 |m'@@0|))
)))
(assert (forall ((m@@13 T@Map_4310_4311) (|m'@@1| T@Map_4310_4311) ) (!  (=> (|Map#Disjoint_3965_4311| m@@13 |m'@@1|) (forall ((o@@3 Int) ) (!  (or (not (select (|Map#Domain_4310_4311| m@@13) o@@3)) (not (select (|Map#Domain_4310_4311| |m'@@1|) o@@3)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4310_4311| m@@13) o@@3))
 :pattern ( (select (|Map#Domain_4310_4311| |m'@@1|) o@@3))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_3965_4311| m@@13 |m'@@1|))
)))
(assert (forall ((m@@14 T@Map_3965_3966) (|m'@@2| T@Map_3965_3966) ) (!  (=> (|Map#Disjoint_3965_3966| m@@14 |m'@@2|) (forall ((o@@4 Int) ) (!  (or (not (select (|Map#Domain_3965_3966| m@@14) o@@4)) (not (select (|Map#Domain_3965_3966| |m'@@2|) o@@4)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_3965_3966| m@@14) o@@4))
 :pattern ( (select (|Map#Domain_3965_3966| |m'@@2|) o@@4))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_3965_3966| m@@14 |m'@@2|))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12278) (o_2@@3 T@Ref) (f_4@@3 T@Field_12317_30843) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_12317_35313 f_4@@3))) (not (IsWandField_12317_35329 f_4@@3))) (<= (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12278) (o_2@@4 T@Ref) (f_4@@4 T@Field_12317_30710) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_12317_30801 f_4@@4))) (not (IsWandField_12317_32350 f_4@@4))) (<= (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12278) (o_2@@5 T@Ref) (f_4@@5 T@Field_12330_12331) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_12317_12331 f_4@@5))) (not (IsWandField_12317_12331 f_4@@5))) (<= (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12278) (o_2@@6 T@Ref) (f_4@@6 T@Field_12317_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12317_53 f_4@@6))) (not (IsWandField_12317_53 f_4@@6))) (<= (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12278) (o_2@@7 T@Ref) (f_4@@7 T@Field_12317_30843) ) (! (= (HasDirectPerm_12317_35684 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12317_35684 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12278) (o_2@@8 T@Ref) (f_4@@8 T@Field_12317_30710) ) (! (= (HasDirectPerm_12317_30774 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12317_30774 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12278) (o_2@@9 T@Ref) (f_4@@9 T@Field_12330_12331) ) (! (= (HasDirectPerm_12317_12331 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12317_12331 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12278) (o_2@@10 T@Ref) (f_4@@10 T@Field_12317_53) ) (! (= (HasDirectPerm_12317_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12317_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12257) (ExhaleHeap@@5 T@PolymorphicMapType_12257) (Mask@@14 T@PolymorphicMapType_12278) (o_13@@0 T@Ref) (f_20@@7 T@Field_12317_30843) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_12317_35684 Mask@@14 o_13@@0 f_20@@7) (= (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@6) o_13@@0 f_20@@7) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@5) o_13@@0 f_20@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| ExhaleHeap@@5) o_13@@0 f_20@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12257) (ExhaleHeap@@6 T@PolymorphicMapType_12257) (Mask@@15 T@PolymorphicMapType_12278) (o_13@@1 T@Ref) (f_20@@8 T@Field_12317_30710) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_12317_30774 Mask@@15 o_13@@1 f_20@@8) (= (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@7) o_13@@1 f_20@@8) (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@6) o_13@@1 f_20@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| ExhaleHeap@@6) o_13@@1 f_20@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12257) (ExhaleHeap@@7 T@PolymorphicMapType_12257) (Mask@@16 T@PolymorphicMapType_12278) (o_13@@2 T@Ref) (f_20@@9 T@Field_12330_12331) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_12317_12331 Mask@@16 o_13@@2 f_20@@9) (= (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@8) o_13@@2 f_20@@9) (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@7) o_13@@2 f_20@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| ExhaleHeap@@7) o_13@@2 f_20@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12257) (ExhaleHeap@@8 T@PolymorphicMapType_12257) (Mask@@17 T@PolymorphicMapType_12278) (o_13@@3 T@Ref) (f_20@@10 T@Field_12317_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_12317_53 Mask@@17 o_13@@3 f_20@@10) (= (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@9) o_13@@3 f_20@@10) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@8) o_13@@3 f_20@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| ExhaleHeap@@8) o_13@@3 f_20@@10))
)))
(assert (forall ((m@@15 T@Map_4311_4311) (u@@11 Bool) ) (!  (=> (select (|Map#Domain_4311_4311| m@@15) u@@11) (select (|Map#Values_4311_4311| m@@15) (select (|Map#Elements_4311_4311| m@@15) u@@11)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4311_4311| m@@15) u@@11))
)))
(assert (forall ((m@@16 T@Map_4311_3966) (u@@12 Bool) ) (!  (=> (select (|Map#Domain_4311_3966| m@@16) u@@12) (select (|Map#Values_4311_6660| m@@16) (select (|Map#Elements_4311_6660| m@@16) u@@12)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4311_6660| m@@16) u@@12))
)))
(assert (forall ((m@@17 T@Map_4310_4311) (u@@13 Int) ) (!  (=> (select (|Map#Domain_4310_4311| m@@17) u@@13) (select (|Map#Values_6659_4311| m@@17) (select (|Map#Elements_4310_4311| m@@17) u@@13)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4310_4311| m@@17) u@@13))
)))
(assert (forall ((m@@18 T@Map_3965_3966) (u@@14 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m@@18) u@@14) (select (|Map#Values_6659_6660| m@@18) (select (|Map#Elements_3965_3966| m@@18) u@@14)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_3965_3966| m@@18) u@@14))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_12317_30843) ) (! (= (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_12317_30710) ) (! (= (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_12330_12331) ) (! (= (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12317_53) ) (! (= (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12278) (SummandMask1 T@PolymorphicMapType_12278) (SummandMask2 T@PolymorphicMapType_12278) (o_2@@15 T@Ref) (f_4@@15 T@Field_12317_30843) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12278_12317_34404#PolymorphicMapType_12278| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12278) (SummandMask1@@0 T@PolymorphicMapType_12278) (SummandMask2@@0 T@PolymorphicMapType_12278) (o_2@@16 T@Ref) (f_4@@16 T@Field_12317_30710) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12278_12317_30710#PolymorphicMapType_12278| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12278) (SummandMask1@@1 T@PolymorphicMapType_12278) (SummandMask2@@1 T@PolymorphicMapType_12278) (o_2@@17 T@Ref) (f_4@@17 T@Field_12330_12331) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12278_12317_12331#PolymorphicMapType_12278| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12278) (SummandMask1@@2 T@PolymorphicMapType_12278) (SummandMask2@@2 T@PolymorphicMapType_12278) (o_2@@18 T@Ref) (f_4@@18 T@Field_12317_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12278_12317_53#PolymorphicMapType_12278| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@7 (Array Bool Bool)) (b@@6 (Array Bool Bool)) (o@@5 Bool) ) (! (= (select (|Set#Intersection_4311| a@@7 b@@6) o@@5)  (and (select a@@7 o@@5) (select b@@6 o@@5)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4311| a@@7 b@@6) o@@5))
 :pattern ( (|Set#Intersection_4311| a@@7 b@@6) (select a@@7 o@@5))
 :pattern ( (|Set#Intersection_4311| a@@7 b@@6) (select b@@6 o@@5))
)))
(assert (forall ((a@@8 (Array Int Bool)) (b@@7 (Array Int Bool)) (o@@6 Int) ) (! (= (select (|Set#Intersection_3965| a@@8 b@@7) o@@6)  (and (select a@@8 o@@6) (select b@@7 o@@6)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_3965| a@@8 b@@7) o@@6))
 :pattern ( (|Set#Intersection_3965| a@@8 b@@7) (select a@@8 o@@6))
 :pattern ( (|Set#Intersection_3965| a@@8 b@@7) (select b@@7 o@@6))
)))
(assert (forall ((a@@9 (Array Bool Bool)) (b@@8 (Array Bool Bool)) (o@@7 Bool) ) (! (= (select (|Set#Difference_4311| a@@9 b@@8) o@@7)  (and (select a@@9 o@@7) (not (select b@@8 o@@7))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4311| a@@9 b@@8) o@@7))
 :pattern ( (|Set#Difference_4311| a@@9 b@@8) (select a@@9 o@@7))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@9 (Array Int Bool)) (o@@8 Int) ) (! (= (select (|Set#Difference_3965| a@@10 b@@9) o@@8)  (and (select a@@10 o@@8) (not (select b@@9 o@@8))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_3965| a@@10 b@@9) o@@8))
 :pattern ( (|Set#Difference_3965| a@@10 b@@9) (select a@@10 o@@8))
)))
(assert (forall ((m@@19 T@Map_4311_4311) (u@@15 Bool) ) (!  (=> (select (|Map#Domain_4311_4311| m@@19) u@@15) (> (|Set#Card_4311| (|Map#Values_4311_4311| m@@19)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4311_4311| m@@19) u@@15))
 :pattern ( (select (|Map#Elements_4311_4311| m@@19) u@@15))
)))
(assert (forall ((m@@20 T@Map_4311_3966) (u@@16 Bool) ) (!  (=> (select (|Map#Domain_4311_3966| m@@20) u@@16) (> (|Set#Card_3965| (|Map#Values_4311_6660| m@@20)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4311_3966| m@@20) u@@16))
 :pattern ( (select (|Map#Elements_4311_6660| m@@20) u@@16))
)))
(assert (forall ((m@@21 T@Map_4310_4311) (u@@17 Int) ) (!  (=> (select (|Map#Domain_4310_4311| m@@21) u@@17) (> (|Set#Card_4311| (|Map#Values_6659_4311| m@@21)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4310_4311| m@@21) u@@17))
 :pattern ( (select (|Map#Elements_4310_4311| m@@21) u@@17))
)))
(assert (forall ((m@@22 T@Map_3965_3966) (u@@18 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m@@22) u@@18) (> (|Set#Card_3965| (|Map#Values_6659_6660| m@@22)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_3965_3966| m@@22) u@@18))
 :pattern ( (select (|Map#Elements_3965_3966| m@@22) u@@18))
)))
(assert (forall ((m@@23 T@Map_4311_4311) (|m'@@3| T@Map_4311_4311) ) (!  (=> (|Map#Equal_4311_4311| m@@23 |m'@@3|) (= m@@23 |m'@@3|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4311_4311| m@@23 |m'@@3|))
)))
(assert (forall ((m@@24 T@Map_4311_3966) (|m'@@4| T@Map_4311_3966) ) (!  (=> (|Map#Equal_4311_3966| m@@24 |m'@@4|) (= m@@24 |m'@@4|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4311_3966| m@@24 |m'@@4|))
)))
(assert (forall ((m@@25 T@Map_4310_4311) (|m'@@5| T@Map_4310_4311) ) (!  (=> (|Map#Equal_3965_4311| m@@25 |m'@@5|) (= m@@25 |m'@@5|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_3965_4311| m@@25 |m'@@5|))
)))
(assert (forall ((m@@26 T@Map_3965_3966) (|m'@@6| T@Map_3965_3966) ) (!  (=> (|Map#Equal_3965_3966| m@@26 |m'@@6|) (= m@@26 |m'@@6|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_3965_3966| m@@26 |m'@@6|))
)))
(assert (forall ((a@@11 (Array Bool Bool)) (x Bool) (y Bool) ) (!  (=> (select a@@11 y) (select (|Set#UnionOne_4311| a@@11 x) y))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4311| a@@11 x) (select a@@11 y))
)))
(assert (forall ((a@@12 (Array Int Bool)) (x@@0 Int) (y@@0 Int) ) (!  (=> (select a@@12 y@@0) (select (|Set#UnionOne_3965| a@@12 x@@0) y@@0))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3965| a@@12 x@@0) (select a@@12 y@@0))
)))
(assert (forall ((a@@13 (Array Bool Bool)) (b@@10 (Array Bool Bool)) (y@@1 Bool) ) (!  (=> (select a@@13 y@@1) (select (|Set#Union_4311| a@@13 b@@10) y@@1))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4311| a@@13 b@@10) (select a@@13 y@@1))
)))
(assert (forall ((a@@14 (Array Int Bool)) (b@@11 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@14 y@@2) (select (|Set#Union_3965| a@@14 b@@11) y@@2))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_3965| a@@14 b@@11) (select a@@14 y@@2))
)))
(assert (forall ((a@@15 (Array Bool Bool)) (b@@12 (Array Bool Bool)) (y@@3 Bool) ) (!  (=> (select b@@12 y@@3) (select (|Set#Union_4311| a@@15 b@@12) y@@3))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4311| a@@15 b@@12) (select b@@12 y@@3))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@13 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@13 y@@4) (select (|Set#Union_3965| a@@16 b@@13) y@@4))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_3965| a@@16 b@@13) (select b@@13 y@@4))
)))
(assert (forall ((a@@17 (Array Bool Bool)) (x@@1 Bool) (o@@9 Bool) ) (! (= (select (|Set#UnionOne_4311| a@@17 x@@1) o@@9)  (or (= o@@9 x@@1) (select a@@17 o@@9)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4311| a@@17 x@@1) o@@9))
)))
(assert (forall ((a@@18 (Array Int Bool)) (x@@2 Int) (o@@10 Int) ) (! (= (select (|Set#UnionOne_3965| a@@18 x@@2) o@@10)  (or (= o@@10 x@@2) (select a@@18 o@@10)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3965| a@@18 x@@2) o@@10))
)))
(assert (forall ((a@@19 (Array Bool Bool)) (b@@14 (Array Bool Bool)) (y@@5 Bool) ) (!  (=> (select b@@14 y@@5) (not (select (|Set#Difference_4311| a@@19 b@@14) y@@5)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4311| a@@19 b@@14) (select b@@14 y@@5))
)))
(assert (forall ((a@@20 (Array Int Bool)) (b@@15 (Array Int Bool)) (y@@6 Int) ) (!  (=> (select b@@15 y@@6) (not (select (|Set#Difference_3965| a@@20 b@@15) y@@6)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_3965| a@@20 b@@15) (select b@@15 y@@6))
)))
(assert (forall ((m@@27 T@Map_4311_4311) (|m'@@7| T@Map_4311_4311) ) (!  (=> (and (forall ((u@@19 Bool) ) (! (= (select (|Map#Domain_4311_4311| m@@27) u@@19) (select (|Map#Domain_4311_4311| |m'@@7|) u@@19))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@20 Bool) ) (!  (=> (select (|Map#Domain_4311_4311| m@@27) u@@20) (= (select (|Map#Elements_4311_4311| m@@27) u@@20) (select (|Map#Elements_4311_4311| |m'@@7|) u@@20)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_4311_4311| m@@27 |m'@@7|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4311_4311| m@@27 |m'@@7|))
)))
(assert (forall ((m@@28 T@Map_4311_3966) (|m'@@8| T@Map_4311_3966) ) (!  (=> (and (forall ((u@@21 Bool) ) (! (= (select (|Map#Domain_4311_3966| m@@28) u@@21) (select (|Map#Domain_4311_3966| |m'@@8|) u@@21))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@22 Bool) ) (!  (=> (select (|Map#Domain_4311_3966| m@@28) u@@22) (= (select (|Map#Elements_4311_6660| m@@28) u@@22) (select (|Map#Elements_4311_6660| |m'@@8|) u@@22)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_4311_3966| m@@28 |m'@@8|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4311_3966| m@@28 |m'@@8|))
)))
(assert (forall ((m@@29 T@Map_4310_4311) (|m'@@9| T@Map_4310_4311) ) (!  (=> (and (forall ((u@@23 Int) ) (! (= (select (|Map#Domain_4310_4311| m@@29) u@@23) (select (|Map#Domain_4310_4311| |m'@@9|) u@@23))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@24 Int) ) (!  (=> (select (|Map#Domain_4310_4311| m@@29) u@@24) (= (select (|Map#Elements_4310_4311| m@@29) u@@24) (select (|Map#Elements_4310_4311| |m'@@9|) u@@24)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_3965_4311| m@@29 |m'@@9|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_3965_4311| m@@29 |m'@@9|))
)))
(assert (forall ((m@@30 T@Map_3965_3966) (|m'@@10| T@Map_3965_3966) ) (!  (=> (and (forall ((u@@25 Int) ) (! (= (select (|Map#Domain_3965_3966| m@@30) u@@25) (select (|Map#Domain_3965_3966| |m'@@10|) u@@25))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@26 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m@@30) u@@26) (= (select (|Map#Elements_3965_3966| m@@30) u@@26) (select (|Map#Elements_3965_3966| |m'@@10|) u@@26)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_3965_3966| m@@30 |m'@@10|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_3965_3966| m@@30 |m'@@10|))
)))
(assert (forall ((a@@21 (Array Bool Bool)) (b@@16 (Array Bool Bool)) ) (!  (and (= (+ (+ (|Set#Card_4311| (|Set#Difference_4311| a@@21 b@@16)) (|Set#Card_4311| (|Set#Difference_4311| b@@16 a@@21))) (|Set#Card_4311| (|Set#Intersection_4311| a@@21 b@@16))) (|Set#Card_4311| (|Set#Union_4311| a@@21 b@@16))) (= (|Set#Card_4311| (|Set#Difference_4311| a@@21 b@@16)) (- (|Set#Card_4311| a@@21) (|Set#Card_4311| (|Set#Intersection_4311| a@@21 b@@16)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4311| (|Set#Difference_4311| a@@21 b@@16)))
)))
(assert (forall ((a@@22 (Array Int Bool)) (b@@17 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_3965| (|Set#Difference_3965| a@@22 b@@17)) (|Set#Card_3965| (|Set#Difference_3965| b@@17 a@@22))) (|Set#Card_3965| (|Set#Intersection_3965| a@@22 b@@17))) (|Set#Card_3965| (|Set#Union_3965| a@@22 b@@17))) (= (|Set#Card_3965| (|Set#Difference_3965| a@@22 b@@17)) (- (|Set#Card_3965| a@@22) (|Set#Card_3965| (|Set#Intersection_3965| a@@22 b@@17)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_3965| (|Set#Difference_3965| a@@22 b@@17)))
)))
(assert (forall ((s (Array Bool Bool)) ) (! (<= 0 (|Set#Card_4311| s))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4311| s))
)))
(assert (forall ((s@@0 (Array Int Bool)) ) (! (<= 0 (|Set#Card_3965| s@@0))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_3965| s@@0))
)))
(assert (forall ((m@@31 T@Map_4311_4311) ) (! (<= 0 (|Map#Card_4311_4311| m@@31))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4311_4311| m@@31))
)))
(assert (forall ((m@@32 T@Map_4311_3966) ) (! (<= 0 (|Map#Card_4311_3966| m@@32))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4311_3966| m@@32))
)))
(assert (forall ((m@@33 T@Map_4310_4311) ) (! (<= 0 (|Map#Card_3965_4311| m@@33))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_3965_4311| m@@33))
)))
(assert (forall ((m@@34 T@Map_3965_3966) ) (! (<= 0 (|Map#Card_3965_3966| m@@34))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_3965_3966| m@@34))
)))
(assert (forall ((a@@23 (Array Bool Bool)) (x@@3 Bool) ) (! (select (|Set#UnionOne_4311| a@@23 x@@3) x@@3)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4311| a@@23 x@@3))
)))
(assert (forall ((a@@24 (Array Int Bool)) (x@@4 Int) ) (! (select (|Set#UnionOne_3965| a@@24 x@@4) x@@4)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3965| a@@24 x@@4))
)))
(assert (forall ((a@@25 (Array Bool Bool)) (x@@5 Bool) ) (!  (=> (select a@@25 x@@5) (= (|Set#Card_4311| (|Set#UnionOne_4311| a@@25 x@@5)) (|Set#Card_4311| a@@25)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4311| (|Set#UnionOne_4311| a@@25 x@@5)))
)))
(assert (forall ((a@@26 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@26 x@@6) (= (|Set#Card_3965| (|Set#UnionOne_3965| a@@26 x@@6)) (|Set#Card_3965| a@@26)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_3965| (|Set#UnionOne_3965| a@@26 x@@6)))
)))
(assert (forall ((r@@1 Bool) ) (! (= (|Set#Card_4311| (|Set#Singleton_4311| r@@1)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4311| (|Set#Singleton_4311| r@@1)))
)))
(assert (forall ((r@@2 Int) ) (! (= (|Set#Card_3965| (|Set#Singleton_3965| r@@2)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_3965| (|Set#Singleton_3965| r@@2)))
)))
(assert (forall ((r@@3 Bool) ) (! (select (|Set#Singleton_4311| r@@3) r@@3)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4311| r@@3))
)))
(assert (forall ((r@@4 Int) ) (! (select (|Set#Singleton_3965| r@@4) r@@4)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3965| r@@4))
)))
(assert (forall ((m@@35 T@Map_4311_4311) ) (!  (and (and (= (= (|Map#Card_4311_4311| m@@35) 0) (= m@@35 |Map#Empty_4311_4311|)) (=> (not (= (|Map#Card_4311_4311| m@@35) 0)) (exists ((x@@7 Bool) ) (! (select (|Map#Domain_4311_4311| m@@35) x@@7)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@8 Bool) ) (!  (=> (select (|Map#Domain_4311_4311| m@@35) x@@8) (not (= (|Map#Card_4311_4311| m@@35) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4311_4311| m@@35) x@@8))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4311_4311| m@@35))
)))
(assert (forall ((m@@36 T@Map_4311_3966) ) (!  (and (and (= (= (|Map#Card_4311_3966| m@@36) 0) (= m@@36 |Map#Empty_4311_3966|)) (=> (not (= (|Map#Card_4311_3966| m@@36) 0)) (exists ((x@@9 Bool) ) (! (select (|Map#Domain_4311_3966| m@@36) x@@9)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@10 Bool) ) (!  (=> (select (|Map#Domain_4311_3966| m@@36) x@@10) (not (= (|Map#Card_4311_3966| m@@36) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4311_3966| m@@36) x@@10))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4311_3966| m@@36))
)))
(assert (forall ((m@@37 T@Map_4310_4311) ) (!  (and (and (= (= (|Map#Card_3965_4311| m@@37) 0) (= m@@37 |Map#Empty_3965_4311|)) (=> (not (= (|Map#Card_3965_4311| m@@37) 0)) (exists ((x@@11 Int) ) (! (select (|Map#Domain_4310_4311| m@@37) x@@11)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@12 Int) ) (!  (=> (select (|Map#Domain_4310_4311| m@@37) x@@12) (not (= (|Map#Card_3965_4311| m@@37) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4310_4311| m@@37) x@@12))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_3965_4311| m@@37))
)))
(assert (forall ((m@@38 T@Map_3965_3966) ) (!  (and (and (= (= (|Map#Card_3965_3966| m@@38) 0) (= m@@38 |Map#Empty_4000_4001|)) (=> (not (= (|Map#Card_3965_3966| m@@38) 0)) (exists ((x@@13 Int) ) (! (select (|Map#Domain_3965_3966| m@@38) x@@13)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@14 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m@@38) x@@14) (not (= (|Map#Card_3965_3966| m@@38) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_3965_3966| m@@38) x@@14))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_3965_3966| m@@38))
)))
(assert (forall ((a@@27 (Array Bool Bool)) (b@@18 (Array Bool Bool)) ) (! (= (|Set#Union_4311| a@@27 (|Set#Union_4311| a@@27 b@@18)) (|Set#Union_4311| a@@27 b@@18))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4311| a@@27 (|Set#Union_4311| a@@27 b@@18)))
)))
(assert (forall ((a@@28 (Array Int Bool)) (b@@19 (Array Int Bool)) ) (! (= (|Set#Union_3965| a@@28 (|Set#Union_3965| a@@28 b@@19)) (|Set#Union_3965| a@@28 b@@19))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_3965| a@@28 (|Set#Union_3965| a@@28 b@@19)))
)))
(assert (forall ((a@@29 (Array Bool Bool)) (b@@20 (Array Bool Bool)) ) (! (= (|Set#Intersection_4311| a@@29 (|Set#Intersection_4311| a@@29 b@@20)) (|Set#Intersection_4311| a@@29 b@@20))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4311| a@@29 (|Set#Intersection_4311| a@@29 b@@20)))
)))
(assert (forall ((a@@30 (Array Int Bool)) (b@@21 (Array Int Bool)) ) (! (= (|Set#Intersection_3965| a@@30 (|Set#Intersection_3965| a@@30 b@@21)) (|Set#Intersection_3965| a@@30 b@@21))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_3965| a@@30 (|Set#Intersection_3965| a@@30 b@@21)))
)))
(assert (forall ((m@@39 T@Map_4311_4311) (u@@27 Bool) (|u'| Bool) (v@@11 Bool) ) (!  (and (=> (= |u'| u@@27) (and (select (|Map#Domain_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|) (= (select (|Map#Elements_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|) v@@11))) (=> (not (= |u'| u@@27)) (and (= (select (|Map#Domain_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|) (select (|Map#Domain_4311_4311| m@@39) |u'|)) (= (select (|Map#Elements_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|) (select (|Map#Elements_4311_4311| m@@39) |u'|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|))
 :pattern ( (select (|Map#Domain_4311_4311| m@@39) |u'|) (|Map#Build_4311_4311| m@@39 u@@27 v@@11))
 :pattern ( (select (|Map#Elements_4311_4311| (|Map#Build_4311_4311| m@@39 u@@27 v@@11)) |u'|))
)))
(assert (forall ((m@@40 T@Map_4311_3966) (u@@28 Bool) (|u'@@0| Bool) (v@@12 Int) ) (!  (and (=> (= |u'@@0| u@@28) (and (select (|Map#Domain_4311_3966| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|) (= (select (|Map#Elements_4311_6660| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|) v@@12))) (=> (not (= |u'@@0| u@@28)) (and (= (select (|Map#Domain_4311_3966| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|) (select (|Map#Domain_4311_3966| m@@40) |u'@@0|)) (= (select (|Map#Elements_4311_6660| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|) (select (|Map#Elements_4311_6660| m@@40) |u'@@0|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4311_3966| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|))
 :pattern ( (select (|Map#Domain_4311_3966| m@@40) |u'@@0|) (|Map#Build_4311_3966| m@@40 u@@28 v@@12))
 :pattern ( (select (|Map#Elements_4311_6660| (|Map#Build_4311_3966| m@@40 u@@28 v@@12)) |u'@@0|))
)))
(assert (forall ((m@@41 T@Map_4310_4311) (u@@29 Int) (|u'@@1| Int) (v@@13 Bool) ) (!  (and (=> (= |u'@@1| u@@29) (and (select (|Map#Domain_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|) (= (select (|Map#Elements_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|) v@@13))) (=> (not (= |u'@@1| u@@29)) (and (= (select (|Map#Domain_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|) (select (|Map#Domain_4310_4311| m@@41) |u'@@1|)) (= (select (|Map#Elements_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|) (select (|Map#Elements_4310_4311| m@@41) |u'@@1|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|))
 :pattern ( (select (|Map#Domain_4310_4311| m@@41) |u'@@1|) (|Map#Build_3965_4311| m@@41 u@@29 v@@13))
 :pattern ( (select (|Map#Elements_4310_4311| (|Map#Build_3965_4311| m@@41 u@@29 v@@13)) |u'@@1|))
)))
(assert (forall ((m@@42 T@Map_3965_3966) (u@@30 Int) (|u'@@2| Int) (v@@14 Int) ) (!  (and (=> (= |u'@@2| u@@30) (and (select (|Map#Domain_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|) (= (select (|Map#Elements_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|) v@@14))) (=> (not (= |u'@@2| u@@30)) (and (= (select (|Map#Domain_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|) (select (|Map#Domain_3965_3966| m@@42) |u'@@2|)) (= (select (|Map#Elements_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|) (select (|Map#Elements_3965_3966| m@@42) |u'@@2|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|))
 :pattern ( (select (|Map#Domain_3965_3966| m@@42) |u'@@2|) (|Map#Build_4000_4001| m@@42 u@@30 v@@14))
 :pattern ( (select (|Map#Elements_3965_3966| (|Map#Build_4000_4001| m@@42 u@@30 v@@14)) |u'@@2|))
)))
(assert (forall ((o@@11 Bool) ) (!  (not (select |Set#Empty_4311| o@@11))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4311| o@@11))
)))
(assert (forall ((o@@12 Int) ) (!  (not (select |Set#Empty_3965| o@@12))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_3965| o@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12257) (o_12 T@Ref) (f_21 T@Field_12317_30710) (v@@15 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@10) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@10) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@10) (store (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@10) o_12 f_21 v@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@10) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@10) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@10) (store (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@10) o_12 f_21 v@@15)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12257) (o_12@@0 T@Ref) (f_21@@0 T@Field_12317_30843) (v@@16 T@PolymorphicMapType_12806) ) (! (succHeap Heap@@11 (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@11) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@11) (store (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@11) o_12@@0 f_21@@0 v@@16) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@11) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@11) (store (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@11) o_12@@0 f_21@@0 v@@16) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12257) (o_12@@1 T@Ref) (f_21@@1 T@Field_12330_12331) (v@@17 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@12) (store (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@12) o_12@@1 f_21@@1 v@@17) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@12) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12257 (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@12) (store (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@12) o_12@@1 f_21@@1 v@@17) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@12) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12257) (o_12@@2 T@Ref) (f_21@@2 T@Field_12317_53) (v@@18 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_12257 (store (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@13) o_12@@2 f_21@@2 v@@18) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@13) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@13) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12257 (store (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@13) o_12@@2 f_21@@2 v@@18) (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@13) (|PolymorphicMapType_12257_12317_30887#PolymorphicMapType_12257| Heap@@13) (|PolymorphicMapType_12257_12317_30710#PolymorphicMapType_12257| Heap@@13)))
)))
(assert (forall ((m@@43 T@Map_4311_4311) ) (! (= (|Set#Card_4311| (|Map#Domain_4311_4311| m@@43)) (|Map#Card_4311_4311| m@@43))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4311| (|Map#Domain_4311_4311| m@@43)))
 :pattern ( (|Map#Card_4311_4311| m@@43))
)))
(assert (forall ((m@@44 T@Map_4311_3966) ) (! (= (|Set#Card_4311| (|Map#Domain_4311_3966| m@@44)) (|Map#Card_4311_3966| m@@44))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4311| (|Map#Domain_4311_3966| m@@44)))
 :pattern ( (|Map#Card_4311_3966| m@@44))
)))
(assert (forall ((m@@45 T@Map_4310_4311) ) (! (= (|Set#Card_3965| (|Map#Domain_4310_4311| m@@45)) (|Map#Card_3965_4311| m@@45))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_3965| (|Map#Domain_4310_4311| m@@45)))
 :pattern ( (|Map#Card_3965_4311| m@@45))
)))
(assert (forall ((m@@46 T@Map_3965_3966) ) (! (= (|Set#Card_3965| (|Map#Domain_3965_3966| m@@46)) (|Map#Card_3965_3966| m@@46))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_3965| (|Map#Domain_3965_3966| m@@46)))
 :pattern ( (|Map#Card_3965_3966| m@@46))
)))
(assert (forall ((a@@31 Int) (b@@22 Int) ) (! (= (<= a@@31 b@@22) (= (|Math#min| a@@31 b@@22) a@@31))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@31 b@@22))
)))
(assert (forall ((a@@32 Int) (b@@23 Int) ) (! (= (<= b@@23 a@@32) (= (|Math#min| a@@32 b@@23) b@@23))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@32 b@@23))
)))
(assert (forall ((s@@1 (Array Bool Bool)) ) (!  (and (= (= (|Set#Card_4311| s@@1) 0) (= s@@1 |Set#Empty_4311|)) (=> (not (= (|Set#Card_4311| s@@1) 0)) (exists ((x@@15 Bool) ) (! (select s@@1 x@@15)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4311| s@@1))
)))
(assert (forall ((s@@2 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_3965| s@@2) 0) (= s@@2 |Set#Empty_3965|)) (=> (not (= (|Set#Card_3965| s@@2) 0)) (exists ((x@@16 Int) ) (! (select s@@2 x@@16)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_3965| s@@2))
)))
(assert (forall ((u@@31 Bool) ) (!  (not (select (|Map#Domain_4311_4311| |Map#Empty_4311_4311|) u@@31))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4311_4311| |Map#Empty_4311_4311|) u@@31))
)))
(assert (forall ((u@@32 Bool) ) (!  (not (select (|Map#Domain_4311_3966| |Map#Empty_4311_3966|) u@@32))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4311_3966| |Map#Empty_4311_3966|) u@@32))
)))
(assert (forall ((u@@33 Int) ) (!  (not (select (|Map#Domain_4310_4311| |Map#Empty_3965_4311|) u@@33))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4310_4311| |Map#Empty_3965_4311|) u@@33))
)))
(assert (forall ((u@@34 Int) ) (!  (not (select (|Map#Domain_3965_3966| |Map#Empty_4000_4001|) u@@34))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_3965_3966| |Map#Empty_4000_4001|) u@@34))
)))
(assert (forall ((a@@33 (Array Bool Bool)) (x@@17 Bool) ) (!  (=> (not (select a@@33 x@@17)) (= (|Set#Card_4311| (|Set#UnionOne_4311| a@@33 x@@17)) (+ (|Set#Card_4311| a@@33) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4311| (|Set#UnionOne_4311| a@@33 x@@17)))
)))
(assert (forall ((a@@34 (Array Int Bool)) (x@@18 Int) ) (!  (=> (not (select a@@34 x@@18)) (= (|Set#Card_3965| (|Set#UnionOne_3965| a@@34 x@@18)) (+ (|Set#Card_3965| a@@34) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_3965| (|Set#UnionOne_3965| a@@34 x@@18)))
)))
(assert (forall ((o_12@@3 T@Ref) (f_19 T@Field_12330_12331) (Heap@@14 T@PolymorphicMapType_12257) ) (!  (=> (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@14) o_12@@3 $allocated) (select (|PolymorphicMapType_12257_6912_53#PolymorphicMapType_12257| Heap@@14) (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@14) o_12@@3 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12257_6915_6916#PolymorphicMapType_12257| Heap@@14) o_12@@3 f_19))
)))
(assert (forall ((p@@1 T@Field_12317_30710) (v_1@@0 T@FrameType) (q T@Field_12317_30710) (w@@0 T@FrameType) (r@@5 T@Field_12317_30710) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_12317_12317 p@@1 v_1@@0 q w@@0) (InsidePredicate_12317_12317 q w@@0 r@@5 u@@35)) (InsidePredicate_12317_12317 p@@1 v_1@@0 r@@5 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12317_12317 p@@1 v_1@@0 q w@@0) (InsidePredicate_12317_12317 q w@@0 r@@5 u@@35))
)))
(assert (forall ((a@@35 Int) ) (!  (=> (< a@@35 0) (= (|Math#clip| a@@35) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@35))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@36 (Array Bool Bool)) (b@@24 (Array Bool Bool)) (o@@13 Bool) ) (! (= (select (|Set#Union_4311| a@@36 b@@24) o@@13)  (or (select a@@36 o@@13) (select b@@24 o@@13)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4311| a@@36 b@@24) o@@13))
)))
(assert (forall ((a@@37 (Array Int Bool)) (b@@25 (Array Int Bool)) (o@@14 Int) ) (! (= (select (|Set#Union_3965| a@@37 b@@25) o@@14)  (or (select a@@37 o@@14) (select b@@25 o@@14)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_3965| a@@37 b@@25) o@@14))
)))
(assert (forall ((m@@47 T@Map_4311_4311) (|m'@@11| T@Map_4311_4311) ) (!  (=> (not (|Map#Disjoint_4311_4311| m@@47 |m'@@11|)) (exists ((o@@15 Bool) ) (!  (and (select (|Map#Domain_4311_4311| m@@47) o@@15) (select (|Map#Domain_4311_4311| |m'@@11|) o@@15))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4311_4311| m@@47) o@@15))
 :pattern ( (select (|Map#Domain_4311_4311| |m'@@11|) o@@15))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4311_4311| m@@47 |m'@@11|))
)))
(assert (forall ((m@@48 T@Map_4311_3966) (|m'@@12| T@Map_4311_3966) ) (!  (=> (not (|Map#Disjoint_4311_3966| m@@48 |m'@@12|)) (exists ((o@@16 Bool) ) (!  (and (select (|Map#Domain_4311_3966| m@@48) o@@16) (select (|Map#Domain_4311_3966| |m'@@12|) o@@16))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4311_3966| m@@48) o@@16))
 :pattern ( (select (|Map#Domain_4311_3966| |m'@@12|) o@@16))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4311_3966| m@@48 |m'@@12|))
)))
(assert (forall ((m@@49 T@Map_4310_4311) (|m'@@13| T@Map_4310_4311) ) (!  (=> (not (|Map#Disjoint_3965_4311| m@@49 |m'@@13|)) (exists ((o@@17 Int) ) (!  (and (select (|Map#Domain_4310_4311| m@@49) o@@17) (select (|Map#Domain_4310_4311| |m'@@13|) o@@17))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4310_4311| m@@49) o@@17))
 :pattern ( (select (|Map#Domain_4310_4311| |m'@@13|) o@@17))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_3965_4311| m@@49 |m'@@13|))
)))
(assert (forall ((m@@50 T@Map_3965_3966) (|m'@@14| T@Map_3965_3966) ) (!  (=> (not (|Map#Disjoint_3965_3966| m@@50 |m'@@14|)) (exists ((o@@18 Int) ) (!  (and (select (|Map#Domain_3965_3966| m@@50) o@@18) (select (|Map#Domain_3965_3966| |m'@@14|) o@@18))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_3965_3966| m@@50) o@@18))
 :pattern ( (select (|Map#Domain_3965_3966| |m'@@14|) o@@18))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_3965_3966| m@@50 |m'@@14|))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun m_18@1 () T@Map_3965_3966)
(declare-fun k_2 () Int)
(declare-fun i@0 () Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_12257)
(declare-fun m_18@2 () T@Map_3965_3966)
(declare-fun k_15 () Int)
(declare-fun i@1 () Int)
(declare-fun k_13 () Int)
(declare-fun i$0 () Int)
(declare-fun m_18@0 () T@Map_3965_3966)
(declare-fun k_5 () Int)
(declare-fun k_3 () Int)
(declare-fun k_1 () Int)
(set-info :boogie-vc-id test9)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon16_correct true))
(let ((anon39_Else_correct  (=> (and (not (select (|Map#Domain_3965_3966| m_18@1) k_2)) (= (ControlFlow 0 34) 31)) anon16_correct)))
(let ((anon39_Then_correct  (=> (select (|Map#Domain_3965_3966| m_18@1) k_2) (and (=> (= (ControlFlow 0 32) (- 0 33)) (select (|Map#Domain_3965_3966| m_18@1) k_2)) (=> (select (|Map#Domain_3965_3966| m_18@1) k_2) (=> (= (ControlFlow 0 32) 31) anon16_correct))))))
(let ((anon38_Else_correct true))
(let ((anon37_Else_correct  (=> (and (forall ((k_8 Int) ) (! (=  (and (<= 0 k_8) (< k_8 i@0)) (select (|Map#Domain_3965_3966| m_18@1) k_8))
 :qid |stdinbpl.1069:24|
 :skolemid |111|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@1) k_8))
)) (state Heap@@15 ZeroMask)) (and (and (=> (= (ControlFlow 0 35) 30) anon38_Else_correct) (=> (= (ControlFlow 0 35) 32) anon39_Then_correct)) (=> (= (ControlFlow 0 35) 34) anon39_Else_correct)))))
(let ((anon37_Then_correct true))
(let ((anon36_Then_correct  (=> (and (and (<= 0 i@0) (<= i@0 100)) (and (= 100 100) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 36) 29) anon37_Then_correct) (=> (= (ControlFlow 0 36) 35) anon37_Else_correct)))))
(let ((anon24_correct true))
(let ((anon43_Else_correct  (=> (and (not (select (|Map#Domain_3965_3966| m_18@2) k_15)) (= (ControlFlow 0 23) 20)) anon24_correct)))
(let ((anon43_Then_correct  (=> (select (|Map#Domain_3965_3966| m_18@2) k_15) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= (select (|Map#Elements_3965_3966| m_18@2) k_15) (* k_15 k_15))) (=> (= (select (|Map#Elements_3965_3966| m_18@2) k_15) (* k_15 k_15)) (=> (= (ControlFlow 0 21) 20) anon24_correct))))))
(let ((anon42_Else_correct true))
(let ((anon41_Else_correct  (=> (forall ((k_14_1 Int) ) (! (=  (and (<= 0 k_14_1) (< k_14_1 i@1)) (select (|Map#Domain_3965_3966| m_18@2) k_14_1))
 :qid |stdinbpl.1138:24|
 :skolemid |115|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@2) k_14_1))
)) (and (and (=> (= (ControlFlow 0 24) 19) anon42_Else_correct) (=> (= (ControlFlow 0 24) 21) anon43_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon43_Else_correct)))))
(let ((anon41_Then_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (=  (and (<= 0 k_13) (< k_13 i@1)) (select (|Map#Domain_3965_3966| m_18@2) k_13)))))
(let ((anon40_Then_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and (<= 0 i@0) (<= i@0 100)) (and (= 100 100) (forall ((k_11 Int) ) (! (=  (and (<= 0 k_11) (< k_11 i@0)) (select (|Map#Domain_3965_3966| m_18@1) k_11))
 :qid |stdinbpl.1102:24|
 :skolemid |113|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@1) k_11))
)))) (=> (and (and (and (forall ((k_12 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m_18@1) k_12) (= (select (|Map#Elements_3965_3966| m_18@1) k_12) (* k_12 k_12)))
 :qid |stdinbpl.1106:24|
 :skolemid |114|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@1) k_12))
 :pattern ( (select (|Map#Elements_3965_3966| m_18@1) k_12))
)) (state Heap@@15 ZeroMask)) (and (< i@0 100) (state Heap@@15 ZeroMask))) (and (and (= m_18@2 (|Map#Build_4000_4001| m_18@1 i@0 (* i@0 i@0))) (state Heap@@15 ZeroMask)) (and (= i@1 (+ i@0 1)) (state Heap@@15 ZeroMask)))) (and (=> (= (ControlFlow 0 25) (- 0 28)) (<= 0 i@1)) (=> (<= 0 i@1) (and (=> (= (ControlFlow 0 25) (- 0 27)) (<= i@1 100)) (=> (<= i@1 100) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= 100 100)) (=> (= 100 100) (and (=> (= (ControlFlow 0 25) 18) anon41_Then_correct) (=> (= (ControlFlow 0 25) 24) anon41_Else_correct)))))))))))))
(let ((anon29_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (<= 0 i$0) (< i$0 100))) (= (ControlFlow 0 15) 11)) anon29_correct)))
(let ((anon45_Then_correct  (=> (and (<= 0 i$0) (< i$0 100)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (select (|Map#Domain_3965_3966| m_18@1) i$0)) (=> (select (|Map#Domain_3965_3966| m_18@1) i$0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (select (|Map#Elements_3965_3966| m_18@1) i$0) (* i$0 i$0))) (=> (= (select (|Map#Elements_3965_3966| m_18@1) i$0) (* i$0 i$0)) (=> (= (ControlFlow 0 12) 11) anon29_correct))))))))
(let ((anon44_Else_correct true))
(let ((anon40_Else_correct  (=> (not (< i@0 100)) (=> (and (and (and (state Heap@@15 ZeroMask) (<= 0 i@0)) (and (<= i@0 100) (= 100 100))) (and (and (forall ((k_17 Int) ) (! (=  (and (<= 0 k_17) (< k_17 i@0)) (select (|Map#Domain_3965_3966| m_18@1) k_17))
 :qid |stdinbpl.1163:22|
 :skolemid |117|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@1) k_17))
)) (forall ((k_18 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m_18@1) k_18) (= (select (|Map#Elements_3965_3966| m_18@1) k_18) (* k_18 k_18)))
 :qid |stdinbpl.1167:22|
 :skolemid |118|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@1) k_18))
 :pattern ( (select (|Map#Elements_3965_3966| m_18@1) k_18))
))) (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask)))) (and (and (=> (= (ControlFlow 0 16) 10) anon44_Else_correct) (=> (= (ControlFlow 0 16) 12) anon45_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon45_Else_correct))))))
(let ((anon34_Else_correct  (=> (forall ((k_6_1 Int) ) (!  (=> (select (|Map#Domain_3965_3966| m_18@0) k_6_1) (= (select (|Map#Elements_3965_3966| m_18@0) k_6_1) (* k_6_1 k_6_1)))
 :qid |stdinbpl.1050:24|
 :skolemid |110|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@0) k_6_1))
 :pattern ( (select (|Map#Elements_3965_3966| m_18@0) k_6_1))
)) (and (and (=> (= (ControlFlow 0 37) 36) anon36_Then_correct) (=> (= (ControlFlow 0 37) 25) anon40_Then_correct)) (=> (= (ControlFlow 0 37) 16) anon40_Else_correct)))))
(let ((anon9_correct true))
(let ((anon35_Else_correct  (=> (and (not (select (|Map#Domain_3965_3966| m_18@0) k_5)) (= (ControlFlow 0 9) 6)) anon9_correct)))
(let ((anon35_Then_correct  (=> (select (|Map#Domain_3965_3966| m_18@0) k_5) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= (select (|Map#Elements_3965_3966| m_18@0) k_5) (* k_5 k_5))) (=> (= (select (|Map#Elements_3965_3966| m_18@0) k_5) (* k_5 k_5)) (=> (= (ControlFlow 0 7) 6) anon9_correct))))))
(let ((anon33_Else_correct  (=> (forall ((k_4_1 Int) ) (! (=  (and (<= 0 k_4_1) (< k_4_1 0)) (select (|Map#Domain_3965_3966| m_18@0) k_4_1))
 :qid |stdinbpl.1039:24|
 :skolemid |109|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@0) k_4_1))
)) (and (and (=> (= (ControlFlow 0 38) 37) anon34_Else_correct) (=> (= (ControlFlow 0 38) 7) anon35_Then_correct)) (=> (= (ControlFlow 0 38) 9) anon35_Else_correct)))))
(let ((anon33_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (=  (and (<= 0 k_3) (< k_3 0)) (select (|Map#Domain_3965_3966| m_18@0) k_3)))))
(let ((anon32_Else_correct  (=> (and (and (forall ((k_2_1 Int) ) (!  (not (select (|Map#Domain_3965_3966| m_18@0) k_2_1))
 :qid |stdinbpl.1007:20|
 :skolemid |108|
 :pattern ( (select (|Map#Domain_3965_3966| m_18@0) k_2_1))
)) (state Heap@@15 ZeroMask)) (and (state Heap@@15 ZeroMask) (state Heap@@15 ZeroMask))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 39) (- 0 41)) (<= 0 100)) (=> (<= 0 100) (and (=> (= (ControlFlow 0 39) (- 0 40)) (= 100 100)) (=> (= 100 100) (and (=> (= (ControlFlow 0 39) 5) anon33_Then_correct) (=> (= (ControlFlow 0 39) 38) anon33_Else_correct)))))))))))
(let ((anon32_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (not (select (|Map#Domain_3965_3966| m_18@0) k_1)))))
(let ((anon31_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (= m_18@0 |Map#Empty_4000_4001|) (state Heap@@15 ZeroMask))) (and (and (=> (= (ControlFlow 0 43) 1) anon31_Then_correct) (=> (= (ControlFlow 0 43) 3) anon32_Then_correct)) (=> (= (ControlFlow 0 43) 39) anon32_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44) 43) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
