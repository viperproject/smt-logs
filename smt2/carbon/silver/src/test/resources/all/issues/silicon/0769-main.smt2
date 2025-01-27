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
(declare-sort T@Field_7236_53 0)
(declare-sort T@Field_7249_7250 0)
(declare-sort T@Field_14479_14484 0)
(declare-sort T@Map_3958_14482 0)
(declare-sort T@Field_14543_3975 0)
(declare-sort T@Field_4520_16863 0)
(declare-sort T@Field_4520_16730 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7197 0)) (((PolymorphicMapType_7197 (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| (Array T@Ref T@Field_14479_14484 Real)) (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| (Array T@Ref T@Field_7236_53 Real)) (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| (Array T@Ref T@Field_7249_7250 Real)) (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| (Array T@Ref T@Field_14543_3975 Real)) (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| (Array T@Ref T@Field_4520_16730 Real)) (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| (Array T@Ref T@Field_4520_16863 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7725 0)) (((PolymorphicMapType_7725 (|PolymorphicMapType_7725_7236_53#PolymorphicMapType_7725| (Array T@Ref T@Field_7236_53 Bool)) (|PolymorphicMapType_7725_7236_7250#PolymorphicMapType_7725| (Array T@Ref T@Field_7249_7250 Bool)) (|PolymorphicMapType_7725_7236_14484#PolymorphicMapType_7725| (Array T@Ref T@Field_14479_14484 Bool)) (|PolymorphicMapType_7725_7236_3975#PolymorphicMapType_7725| (Array T@Ref T@Field_14543_3975 Bool)) (|PolymorphicMapType_7725_7236_16730#PolymorphicMapType_7725| (Array T@Ref T@Field_4520_16730 Bool)) (|PolymorphicMapType_7725_7236_18245#PolymorphicMapType_7725| (Array T@Ref T@Field_4520_16863 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7176 0)) (((PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| (Array T@Ref T@Field_7236_53 Bool)) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| (Array T@Ref T@Field_7249_7250 T@Ref)) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| (Array T@Ref T@Field_14479_14484 T@Map_3958_14482)) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| (Array T@Ref T@Field_14543_3975 Int)) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| (Array T@Ref T@Field_4520_16863 T@PolymorphicMapType_7725)) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| (Array T@Ref T@Field_4520_16730 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7236_53)
(declare-fun values_1 () T@Field_14479_14484)
(declare-fun value_1 () T@Field_14543_3975)
(declare-sort T@Map_4521_3958 0)
(declare-fun |Map#Values_4521_3958| (T@Map_4521_3958) (Array Int Bool))
(declare-fun |Map#Domain_4521_3958| (T@Map_4521_3958) (Array T@Ref Bool))
(declare-fun |Map#Elements_4521_3958| (T@Map_4521_3958) (Array T@Ref Int))
(declare-sort T@Map_4521_4521 0)
(declare-fun |Map#Values_4521_14482| (T@Map_4521_4521) (Array T@Ref Bool))
(declare-fun |Map#Domain_4521_4521| (T@Map_4521_4521) (Array T@Ref Bool))
(declare-fun |Map#Elements_4521_14482| (T@Map_4521_4521) (Array T@Ref T@Ref))
(declare-sort T@Map_3958_3958 0)
(declare-fun |Map#Values_3958_3958| (T@Map_3958_3958) (Array Int Bool))
(declare-fun |Map#Domain_3958_3958| (T@Map_3958_3958) (Array Int Bool))
(declare-fun |Map#Elements_3958_3958| (T@Map_3958_3958) (Array Int Int))
(declare-fun |Map#Values_3958_14482| (T@Map_3958_14482) (Array T@Ref Bool))
(declare-fun |Map#Domain_3958_4521| (T@Map_3958_14482) (Array Int Bool))
(declare-fun |Map#Elements_3958_4521| (T@Map_3958_14482) (Array Int T@Ref))
(declare-fun succHeap (T@PolymorphicMapType_7176 T@PolymorphicMapType_7176) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7176 T@PolymorphicMapType_7176) Bool)
(declare-fun state (T@PolymorphicMapType_7176 T@PolymorphicMapType_7197) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7197) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7725)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4521| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Union_3958| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_4521| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_3958| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Map#Card_4521_3958| (T@Map_4521_3958) Int)
(declare-fun |Map#Build_4521_3958| (T@Map_4521_3958 T@Ref Int) T@Map_4521_3958)
(declare-fun |Map#Card_4521_4521| (T@Map_4521_4521) Int)
(declare-fun |Map#Build_4521_4521| (T@Map_4521_4521 T@Ref T@Ref) T@Map_4521_4521)
(declare-fun |Map#Card_3958_3958| (T@Map_3958_3958) Int)
(declare-fun |Map#Build_3958_3958| (T@Map_3958_3958 Int Int) T@Map_3958_3958)
(declare-fun |Map#Card_3958_14482| (T@Map_3958_14482) Int)
(declare-fun |Map#Build_3958_4521| (T@Map_3958_14482 Int T@Ref) T@Map_3958_14482)
(declare-fun |Set#Singleton_4521| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Singleton_3958| (Int) (Array Int Bool))
(declare-fun |Set#Card_4521| ((Array T@Ref Bool)) Int)
(declare-fun |Set#Card_3958| ((Array Int Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7176 T@PolymorphicMapType_7176 T@PolymorphicMapType_7197) Bool)
(declare-fun IsPredicateField_4520_16821 (T@Field_4520_16730) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4520 (T@Field_4520_16730) T@Field_4520_16863)
(declare-fun HasDirectPerm_4520_16794 (T@PolymorphicMapType_7197 T@Ref T@Field_4520_16730) Bool)
(declare-fun IsWandField_4520_18772 (T@Field_4520_16730) Bool)
(declare-fun WandMaskField_4520 (T@Field_4520_16730) T@Field_4520_16863)
(declare-fun dummyHeap () T@PolymorphicMapType_7176)
(declare-fun ZeroMask () T@PolymorphicMapType_7197)
(declare-fun InsidePredicate_7236_7236 (T@Field_4520_16730 T@FrameType T@Field_4520_16730 T@FrameType) Bool)
(declare-fun IsPredicateField_4520_14506 (T@Field_14479_14484) Bool)
(declare-fun IsWandField_4520_14532 (T@Field_14479_14484) Bool)
(declare-fun IsPredicateField_4524_3975 (T@Field_14543_3975) Bool)
(declare-fun IsWandField_4524_3975 (T@Field_14543_3975) Bool)
(declare-fun |Map#Disjoint_4521_3958| (T@Map_4521_3958 T@Map_4521_3958) Bool)
(declare-fun |Map#Disjoint_4521_14482| (T@Map_4521_4521 T@Map_4521_4521) Bool)
(declare-fun |Map#Disjoint_3958_3958| (T@Map_3958_3958 T@Map_3958_3958) Bool)
(declare-fun |Map#Disjoint_3958_14482| (T@Map_3958_14482 T@Map_3958_14482) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4520_22918 (T@Field_4520_16863) Bool)
(declare-fun IsWandField_4520_22934 (T@Field_4520_16863) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4520_7250 (T@Field_7249_7250) Bool)
(declare-fun IsWandField_4520_7250 (T@Field_7249_7250) Bool)
(declare-fun IsPredicateField_4520_53 (T@Field_7236_53) Bool)
(declare-fun IsWandField_4520_53 (T@Field_7236_53) Bool)
(declare-fun HasDirectPerm_4520_23455 (T@PolymorphicMapType_7197 T@Ref T@Field_4520_16863) Bool)
(declare-fun HasDirectPerm_4520_7250 (T@PolymorphicMapType_7197 T@Ref T@Field_7249_7250) Bool)
(declare-fun HasDirectPerm_4520_53 (T@PolymorphicMapType_7197 T@Ref T@Field_7236_53) Bool)
(declare-fun HasDirectPerm_4524_3975 (T@PolymorphicMapType_7197 T@Ref T@Field_14543_3975) Bool)
(declare-fun HasDirectPerm_4520_15410 (T@PolymorphicMapType_7197 T@Ref T@Field_14479_14484) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7197 T@PolymorphicMapType_7197 T@PolymorphicMapType_7197) Bool)
(declare-fun |Set#Difference_4521| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Difference_3958| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Map#Equal_4521_3958| (T@Map_4521_3958 T@Map_4521_3958) Bool)
(declare-fun |Map#Equal_4521_4521| (T@Map_4521_4521 T@Map_4521_4521) Bool)
(declare-fun |Map#Equal_3958_3958| (T@Map_3958_3958 T@Map_3958_3958) Bool)
(declare-fun |Map#Equal_3958_4521| (T@Map_3958_14482 T@Map_3958_14482) Bool)
(declare-fun |Set#UnionOne_4521| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_3958| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Map#Empty_4521_3958| () T@Map_4521_3958)
(declare-fun |Map#Empty_4521_4521| () T@Map_4521_4521)
(declare-fun |Map#Empty_3958_3958| () T@Map_3958_3958)
(declare-fun |Map#Empty_4090_4532| () T@Map_3958_14482)
(declare-fun |Set#Empty_4521| () (Array T@Ref Bool))
(declare-fun |Set#Empty_3958| () (Array Int Bool))
(assert (forall ((m T@Map_4521_3958) (v Int) ) (!  (=> (select (|Map#Values_4521_3958| m) v) (exists ((u T@Ref) ) (!  (and (select (|Map#Domain_4521_3958| m) u) (= v (select (|Map#Elements_4521_3958| m) u)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4521_3958| m) u))
 :pattern ( (select (|Map#Elements_4521_3958| m) u))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4521_3958| m) v))
)))
(assert (forall ((m@@0 T@Map_4521_4521) (v@@0 T@Ref) ) (!  (=> (select (|Map#Values_4521_14482| m@@0) v@@0) (exists ((u@@0 T@Ref) ) (!  (and (select (|Map#Domain_4521_4521| m@@0) u@@0) (= v@@0 (select (|Map#Elements_4521_14482| m@@0) u@@0)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4521_4521| m@@0) u@@0))
 :pattern ( (select (|Map#Elements_4521_14482| m@@0) u@@0))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4521_14482| m@@0) v@@0))
)))
(assert (forall ((m@@1 T@Map_3958_3958) (v@@1 Int) ) (!  (=> (select (|Map#Values_3958_3958| m@@1) v@@1) (exists ((u@@1 Int) ) (!  (and (select (|Map#Domain_3958_3958| m@@1) u@@1) (= v@@1 (select (|Map#Elements_3958_3958| m@@1) u@@1)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_3958_3958| m@@1) u@@1))
 :pattern ( (select (|Map#Elements_3958_3958| m@@1) u@@1))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_3958_3958| m@@1) v@@1))
)))
(assert (forall ((m@@2 T@Map_3958_14482) (v@@2 T@Ref) ) (!  (=> (select (|Map#Values_3958_14482| m@@2) v@@2) (exists ((u@@2 Int) ) (!  (and (select (|Map#Domain_3958_4521| m@@2) u@@2) (= v@@2 (select (|Map#Elements_3958_4521| m@@2) u@@2)))
 :qid |stdinbpl.403:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_3958_4521| m@@2) u@@2))
 :pattern ( (select (|Map#Elements_3958_4521| m@@2) u@@2))
)))
 :qid |stdinbpl.401:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_3958_14482| m@@2) v@@2))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_7176) (Heap1 T@PolymorphicMapType_7176) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7176) (Mask T@PolymorphicMapType_7197) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7176) (Heap1@@0 T@PolymorphicMapType_7176) (Heap2 T@PolymorphicMapType_7176) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4520_16863) ) (!  (not (select (|PolymorphicMapType_7725_7236_18245#PolymorphicMapType_7725| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_18245#PolymorphicMapType_7725| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4520_16730) ) (!  (not (select (|PolymorphicMapType_7725_7236_16730#PolymorphicMapType_7725| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_16730#PolymorphicMapType_7725| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14543_3975) ) (!  (not (select (|PolymorphicMapType_7725_7236_3975#PolymorphicMapType_7725| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_3975#PolymorphicMapType_7725| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14479_14484) ) (!  (not (select (|PolymorphicMapType_7725_7236_14484#PolymorphicMapType_7725| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_14484#PolymorphicMapType_7725| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7249_7250) ) (!  (not (select (|PolymorphicMapType_7725_7236_7250#PolymorphicMapType_7725| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_7250#PolymorphicMapType_7725| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7236_53) ) (!  (not (select (|PolymorphicMapType_7725_7236_53#PolymorphicMapType_7725| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7725_7236_53#PolymorphicMapType_7725| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4521| (|Set#Union_4521| a@@0 b@@0) b@@0) (|Set#Union_4521| a@@0 b@@0))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4521| (|Set#Union_4521| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Union_3958| (|Set#Union_3958| a@@1 b@@1) b@@1) (|Set#Union_3958| a@@1 b@@1))
 :qid |stdinbpl.225:18|
 :skolemid |38|
 :pattern ( (|Set#Union_3958| (|Set#Union_3958| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4521| (|Set#Intersection_4521| a@@2 b@@2) b@@2) (|Set#Intersection_4521| a@@2 b@@2))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4521| (|Set#Intersection_4521| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@3 (Array Int Bool)) ) (! (= (|Set#Intersection_3958| (|Set#Intersection_3958| a@@3 b@@3) b@@3) (|Set#Intersection_3958| a@@3 b@@3))
 :qid |stdinbpl.229:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_3958| (|Set#Intersection_3958| a@@3 b@@3) b@@3))
)))
(assert (forall ((m@@3 T@Map_4521_3958) (u@@3 T@Ref) (v@@3 Int) ) (!  (=> (select (|Map#Domain_4521_3958| m@@3) u@@3) (= (|Map#Card_4521_3958| (|Map#Build_4521_3958| m@@3 u@@3 v@@3)) (|Map#Card_4521_3958| m@@3)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4521_3958| (|Map#Build_4521_3958| m@@3 u@@3 v@@3)))
 :pattern ( (|Map#Card_4521_3958| m@@3) (|Map#Build_4521_3958| m@@3 u@@3 v@@3))
)))
(assert (forall ((m@@4 T@Map_4521_4521) (u@@4 T@Ref) (v@@4 T@Ref) ) (!  (=> (select (|Map#Domain_4521_4521| m@@4) u@@4) (= (|Map#Card_4521_4521| (|Map#Build_4521_4521| m@@4 u@@4 v@@4)) (|Map#Card_4521_4521| m@@4)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4521_4521| (|Map#Build_4521_4521| m@@4 u@@4 v@@4)))
 :pattern ( (|Map#Card_4521_4521| m@@4) (|Map#Build_4521_4521| m@@4 u@@4 v@@4))
)))
(assert (forall ((m@@5 T@Map_3958_3958) (u@@5 Int) (v@@5 Int) ) (!  (=> (select (|Map#Domain_3958_3958| m@@5) u@@5) (= (|Map#Card_3958_3958| (|Map#Build_3958_3958| m@@5 u@@5 v@@5)) (|Map#Card_3958_3958| m@@5)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_3958_3958| (|Map#Build_3958_3958| m@@5 u@@5 v@@5)))
 :pattern ( (|Map#Card_3958_3958| m@@5) (|Map#Build_3958_3958| m@@5 u@@5 v@@5))
)))
(assert (forall ((m@@6 T@Map_3958_14482) (u@@6 Int) (v@@6 T@Ref) ) (!  (=> (select (|Map#Domain_3958_4521| m@@6) u@@6) (= (|Map#Card_3958_14482| (|Map#Build_3958_4521| m@@6 u@@6 v@@6)) (|Map#Card_3958_14482| m@@6)))
 :qid |stdinbpl.440:21|
 :skolemid |93|
 :pattern ( (|Map#Card_3958_14482| (|Map#Build_3958_4521| m@@6 u@@6 v@@6)))
 :pattern ( (|Map#Card_3958_14482| m@@6) (|Map#Build_3958_4521| m@@6 u@@6 v@@6))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4521| r) o) (= r o))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4521| r) o))
)))
(assert (forall ((r@@0 Int) (o@@0 Int) ) (! (= (select (|Set#Singleton_3958| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.194:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3958| r@@0) o@@0))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4521| (|Set#Union_4521| a@@4 b@@4)) (|Set#Card_4521| (|Set#Intersection_4521| a@@4 b@@4))) (+ (|Set#Card_4521| a@@4) (|Set#Card_4521| b@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4521| (|Set#Union_4521| a@@4 b@@4)))
 :pattern ( (|Set#Card_4521| (|Set#Intersection_4521| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@5 (Array Int Bool)) ) (! (= (+ (|Set#Card_3958| (|Set#Union_3958| a@@5 b@@5)) (|Set#Card_3958| (|Set#Intersection_3958| a@@5 b@@5))) (+ (|Set#Card_3958| a@@5) (|Set#Card_3958| b@@5)))
 :qid |stdinbpl.233:18|
 :skolemid |42|
 :pattern ( (|Set#Card_3958| (|Set#Union_3958| a@@5 b@@5)))
 :pattern ( (|Set#Card_3958| (|Set#Intersection_3958| a@@5 b@@5)))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7176) (ExhaleHeap T@PolymorphicMapType_7176) (Mask@@0 T@PolymorphicMapType_7197) (pm_f T@Field_4520_16730) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4520_16794 Mask@@0 null pm_f) (IsPredicateField_4520_16821 pm_f)) (= (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@0) null (PredicateMaskField_4520 pm_f)) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap) null (PredicateMaskField_4520 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4520_16821 pm_f) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap) null (PredicateMaskField_4520 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7176) (ExhaleHeap@@0 T@PolymorphicMapType_7176) (Mask@@1 T@PolymorphicMapType_7197) (pm_f@@0 T@Field_4520_16730) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4520_16794 Mask@@1 null pm_f@@0) (IsWandField_4520_18772 pm_f@@0)) (= (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@1) null (WandMaskField_4520 pm_f@@0)) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@0) null (WandMaskField_4520 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4520_18772 pm_f@@0) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@0) null (WandMaskField_4520 pm_f@@0)))
)))
(assert (forall ((m@@7 T@Map_4521_3958) (u@@7 T@Ref) (v@@7 Int) ) (!  (=> (not (select (|Map#Domain_4521_3958| m@@7) u@@7)) (= (|Map#Card_4521_3958| (|Map#Build_4521_3958| m@@7 u@@7 v@@7)) (+ (|Map#Card_4521_3958| m@@7) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4521_3958| (|Map#Build_4521_3958| m@@7 u@@7 v@@7)))
 :pattern ( (|Map#Card_4521_3958| m@@7) (|Map#Build_4521_3958| m@@7 u@@7 v@@7))
)))
(assert (forall ((m@@8 T@Map_4521_4521) (u@@8 T@Ref) (v@@8 T@Ref) ) (!  (=> (not (select (|Map#Domain_4521_4521| m@@8) u@@8)) (= (|Map#Card_4521_4521| (|Map#Build_4521_4521| m@@8 u@@8 v@@8)) (+ (|Map#Card_4521_4521| m@@8) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4521_4521| (|Map#Build_4521_4521| m@@8 u@@8 v@@8)))
 :pattern ( (|Map#Card_4521_4521| m@@8) (|Map#Build_4521_4521| m@@8 u@@8 v@@8))
)))
(assert (forall ((m@@9 T@Map_3958_3958) (u@@9 Int) (v@@9 Int) ) (!  (=> (not (select (|Map#Domain_3958_3958| m@@9) u@@9)) (= (|Map#Card_3958_3958| (|Map#Build_3958_3958| m@@9 u@@9 v@@9)) (+ (|Map#Card_3958_3958| m@@9) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_3958_3958| (|Map#Build_3958_3958| m@@9 u@@9 v@@9)))
 :pattern ( (|Map#Card_3958_3958| m@@9) (|Map#Build_3958_3958| m@@9 u@@9 v@@9))
)))
(assert (forall ((m@@10 T@Map_3958_14482) (u@@10 Int) (v@@10 T@Ref) ) (!  (=> (not (select (|Map#Domain_3958_4521| m@@10) u@@10)) (= (|Map#Card_3958_14482| (|Map#Build_3958_4521| m@@10 u@@10 v@@10)) (+ (|Map#Card_3958_14482| m@@10) 1)))
 :qid |stdinbpl.443:21|
 :skolemid |94|
 :pattern ( (|Map#Card_3958_14482| (|Map#Build_3958_4521| m@@10 u@@10 v@@10)))
 :pattern ( (|Map#Card_3958_14482| m@@10) (|Map#Build_3958_4521| m@@10 u@@10 v@@10))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7176) (ExhaleHeap@@1 T@PolymorphicMapType_7176) (Mask@@2 T@PolymorphicMapType_7197) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_4520_16730) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7236_7236 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7236_7236 p v_1 p w))
)))
(assert  (not (IsPredicateField_4520_14506 values_1)))
(assert  (not (IsWandField_4520_14532 values_1)))
(assert  (not (IsPredicateField_4524_3975 value_1)))
(assert  (not (IsWandField_4524_3975 value_1)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7176) (ExhaleHeap@@2 T@PolymorphicMapType_7176) (Mask@@3 T@PolymorphicMapType_7197) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((m@@11 T@Map_4521_3958) (|m'| T@Map_4521_3958) ) (!  (=> (|Map#Disjoint_4521_3958| m@@11 |m'|) (forall ((o@@1 T@Ref) ) (!  (or (not (select (|Map#Domain_4521_3958| m@@11) o@@1)) (not (select (|Map#Domain_4521_3958| |m'|) o@@1)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4521_3958| m@@11) o@@1))
 :pattern ( (select (|Map#Domain_4521_3958| |m'|) o@@1))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4521_3958| m@@11 |m'|))
)))
(assert (forall ((m@@12 T@Map_4521_4521) (|m'@@0| T@Map_4521_4521) ) (!  (=> (|Map#Disjoint_4521_14482| m@@12 |m'@@0|) (forall ((o@@2 T@Ref) ) (!  (or (not (select (|Map#Domain_4521_4521| m@@12) o@@2)) (not (select (|Map#Domain_4521_4521| |m'@@0|) o@@2)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4521_4521| m@@12) o@@2))
 :pattern ( (select (|Map#Domain_4521_4521| |m'@@0|) o@@2))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4521_14482| m@@12 |m'@@0|))
)))
(assert (forall ((m@@13 T@Map_3958_3958) (|m'@@1| T@Map_3958_3958) ) (!  (=> (|Map#Disjoint_3958_3958| m@@13 |m'@@1|) (forall ((o@@3 Int) ) (!  (or (not (select (|Map#Domain_3958_3958| m@@13) o@@3)) (not (select (|Map#Domain_3958_3958| |m'@@1|) o@@3)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_3958_3958| m@@13) o@@3))
 :pattern ( (select (|Map#Domain_3958_3958| |m'@@1|) o@@3))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_3958_3958| m@@13 |m'@@1|))
)))
(assert (forall ((m@@14 T@Map_3958_14482) (|m'@@2| T@Map_3958_14482) ) (!  (=> (|Map#Disjoint_3958_14482| m@@14 |m'@@2|) (forall ((o@@4 Int) ) (!  (or (not (select (|Map#Domain_3958_4521| m@@14) o@@4)) (not (select (|Map#Domain_3958_4521| |m'@@2|) o@@4)))
 :qid |stdinbpl.463:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_3958_4521| m@@14) o@@4))
 :pattern ( (select (|Map#Domain_3958_4521| |m'@@2|) o@@4))
)))
 :qid |stdinbpl.461:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_3958_14482| m@@14 |m'@@2|))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7197) (o_2@@5 T@Ref) (f_4@@5 T@Field_4520_16863) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4520_22918 f_4@@5))) (not (IsWandField_4520_22934 f_4@@5))) (<= (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7197) (o_2@@6 T@Ref) (f_4@@6 T@Field_4520_16730) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4520_16821 f_4@@6))) (not (IsWandField_4520_18772 f_4@@6))) (<= (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7197) (o_2@@7 T@Ref) (f_4@@7 T@Field_14543_3975) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4524_3975 f_4@@7))) (not (IsWandField_4524_3975 f_4@@7))) (<= (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7197) (o_2@@8 T@Ref) (f_4@@8 T@Field_7249_7250) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4520_7250 f_4@@8))) (not (IsWandField_4520_7250 f_4@@8))) (<= (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7197) (o_2@@9 T@Ref) (f_4@@9 T@Field_7236_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4520_53 f_4@@9))) (not (IsWandField_4520_53 f_4@@9))) (<= (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7197) (o_2@@10 T@Ref) (f_4@@10 T@Field_14479_14484) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4520_14506 f_4@@10))) (not (IsWandField_4520_14532 f_4@@10))) (<= (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7197) (o_2@@11 T@Ref) (f_4@@11 T@Field_4520_16863) ) (! (= (HasDirectPerm_4520_23455 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4520_23455 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7197) (o_2@@12 T@Ref) (f_4@@12 T@Field_4520_16730) ) (! (= (HasDirectPerm_4520_16794 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4520_16794 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7197) (o_2@@13 T@Ref) (f_4@@13 T@Field_7249_7250) ) (! (= (HasDirectPerm_4520_7250 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4520_7250 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7197) (o_2@@14 T@Ref) (f_4@@14 T@Field_7236_53) ) (! (= (HasDirectPerm_4520_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4520_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7197) (o_2@@15 T@Ref) (f_4@@15 T@Field_14543_3975) ) (! (= (HasDirectPerm_4524_3975 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4524_3975 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7197) (o_2@@16 T@Ref) (f_4@@16 T@Field_14479_14484) ) (! (= (HasDirectPerm_4520_15410 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4520_15410 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7176) (ExhaleHeap@@3 T@PolymorphicMapType_7176) (Mask@@16 T@PolymorphicMapType_7197) (o_1@@0 T@Ref) (f_2 T@Field_4520_16863) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_4520_23455 Mask@@16 o_1@@0 f_2) (= (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@4) o_1@@0 f_2) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@3) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@3) o_1@@0 f_2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7176) (ExhaleHeap@@4 T@PolymorphicMapType_7176) (Mask@@17 T@PolymorphicMapType_7197) (o_1@@1 T@Ref) (f_2@@0 T@Field_4520_16730) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_4520_16794 Mask@@17 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@5) o_1@@1 f_2@@0) (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@4) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@4) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7176) (ExhaleHeap@@5 T@PolymorphicMapType_7176) (Mask@@18 T@PolymorphicMapType_7197) (o_1@@2 T@Ref) (f_2@@1 T@Field_7249_7250) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4520_7250 Mask@@18 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@6) o_1@@2 f_2@@1) (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@5) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@5) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7176) (ExhaleHeap@@6 T@PolymorphicMapType_7176) (Mask@@19 T@PolymorphicMapType_7197) (o_1@@3 T@Ref) (f_2@@2 T@Field_7236_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4520_53 Mask@@19 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@7) o_1@@3 f_2@@2) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@6) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@6) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7176) (ExhaleHeap@@7 T@PolymorphicMapType_7176) (Mask@@20 T@PolymorphicMapType_7197) (o_1@@4 T@Ref) (f_2@@3 T@Field_14543_3975) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4524_3975 Mask@@20 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@8) o_1@@4 f_2@@3) (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@7) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@7) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7176) (ExhaleHeap@@8 T@PolymorphicMapType_7176) (Mask@@21 T@PolymorphicMapType_7197) (o_1@@5 T@Ref) (f_2@@4 T@Field_14479_14484) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4520_15410 Mask@@21 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@9) o_1@@5 f_2@@4) (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@8) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@8) o_1@@5 f_2@@4))
)))
(assert (forall ((m@@15 T@Map_4521_3958) (u@@11 T@Ref) ) (!  (=> (select (|Map#Domain_4521_3958| m@@15) u@@11) (select (|Map#Values_4521_3958| m@@15) (select (|Map#Elements_4521_3958| m@@15) u@@11)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4521_3958| m@@15) u@@11))
)))
(assert (forall ((m@@16 T@Map_4521_4521) (u@@12 T@Ref) ) (!  (=> (select (|Map#Domain_4521_4521| m@@16) u@@12) (select (|Map#Values_4521_14482| m@@16) (select (|Map#Elements_4521_14482| m@@16) u@@12)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4521_14482| m@@16) u@@12))
)))
(assert (forall ((m@@17 T@Map_3958_3958) (u@@13 Int) ) (!  (=> (select (|Map#Domain_3958_3958| m@@17) u@@13) (select (|Map#Values_3958_3958| m@@17) (select (|Map#Elements_3958_3958| m@@17) u@@13)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_3958_3958| m@@17) u@@13))
)))
(assert (forall ((m@@18 T@Map_3958_14482) (u@@14 Int) ) (!  (=> (select (|Map#Domain_3958_4521| m@@18) u@@14) (select (|Map#Values_3958_14482| m@@18) (select (|Map#Elements_3958_4521| m@@18) u@@14)))
 :qid |stdinbpl.407:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_3958_4521| m@@18) u@@14))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4520_16863) ) (! (= (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4520_16730) ) (! (= (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_14543_3975) ) (! (= (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_7249_7250) ) (! (= (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_7236_53) ) (! (= (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_14479_14484) ) (! (= (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7197) (SummandMask1 T@PolymorphicMapType_7197) (SummandMask2 T@PolymorphicMapType_7197) (o_2@@23 T@Ref) (f_4@@23 T@Field_4520_16863) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7197) (SummandMask1@@0 T@PolymorphicMapType_7197) (SummandMask2@@0 T@PolymorphicMapType_7197) (o_2@@24 T@Ref) (f_4@@24 T@Field_4520_16730) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7197) (SummandMask1@@1 T@PolymorphicMapType_7197) (SummandMask2@@1 T@PolymorphicMapType_7197) (o_2@@25 T@Ref) (f_4@@25 T@Field_14543_3975) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7197) (SummandMask1@@2 T@PolymorphicMapType_7197) (SummandMask2@@2 T@PolymorphicMapType_7197) (o_2@@26 T@Ref) (f_4@@26 T@Field_7249_7250) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7197) (SummandMask1@@3 T@PolymorphicMapType_7197) (SummandMask2@@3 T@PolymorphicMapType_7197) (o_2@@27 T@Ref) (f_4@@27 T@Field_7236_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7197) (SummandMask1@@4 T@PolymorphicMapType_7197) (SummandMask2@@4 T@PolymorphicMapType_7197) (o_2@@28 T@Ref) (f_4@@28 T@Field_14479_14484) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Intersection_4521| a@@7 b@@6) o@@5)  (and (select a@@7 o@@5) (select b@@6 o@@5)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4521| a@@7 b@@6) o@@5))
 :pattern ( (|Set#Intersection_4521| a@@7 b@@6) (select a@@7 o@@5))
 :pattern ( (|Set#Intersection_4521| a@@7 b@@6) (select b@@6 o@@5))
)))
(assert (forall ((a@@8 (Array Int Bool)) (b@@7 (Array Int Bool)) (o@@6 Int) ) (! (= (select (|Set#Intersection_3958| a@@8 b@@7) o@@6)  (and (select a@@8 o@@6) (select b@@7 o@@6)))
 :qid |stdinbpl.222:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_3958| a@@8 b@@7) o@@6))
 :pattern ( (|Set#Intersection_3958| a@@8 b@@7) (select a@@8 o@@6))
 :pattern ( (|Set#Intersection_3958| a@@8 b@@7) (select b@@7 o@@6))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) (o@@7 T@Ref) ) (! (= (select (|Set#Difference_4521| a@@9 b@@8) o@@7)  (and (select a@@9 o@@7) (not (select b@@8 o@@7))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4521| a@@9 b@@8) o@@7))
 :pattern ( (|Set#Difference_4521| a@@9 b@@8) (select a@@9 o@@7))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@9 (Array Int Bool)) (o@@8 Int) ) (! (= (select (|Set#Difference_3958| a@@10 b@@9) o@@8)  (and (select a@@10 o@@8) (not (select b@@9 o@@8))))
 :qid |stdinbpl.237:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_3958| a@@10 b@@9) o@@8))
 :pattern ( (|Set#Difference_3958| a@@10 b@@9) (select a@@10 o@@8))
)))
(assert (forall ((m@@19 T@Map_4521_3958) (u@@15 T@Ref) ) (!  (=> (select (|Map#Domain_4521_3958| m@@19) u@@15) (> (|Set#Card_3958| (|Map#Values_4521_3958| m@@19)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4521_3958| m@@19) u@@15))
 :pattern ( (select (|Map#Elements_4521_3958| m@@19) u@@15))
)))
(assert (forall ((m@@20 T@Map_4521_4521) (u@@16 T@Ref) ) (!  (=> (select (|Map#Domain_4521_4521| m@@20) u@@16) (> (|Set#Card_4521| (|Map#Values_4521_14482| m@@20)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4521_4521| m@@20) u@@16))
 :pattern ( (select (|Map#Elements_4521_14482| m@@20) u@@16))
)))
(assert (forall ((m@@21 T@Map_3958_3958) (u@@17 Int) ) (!  (=> (select (|Map#Domain_3958_3958| m@@21) u@@17) (> (|Set#Card_3958| (|Map#Values_3958_3958| m@@21)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_3958_3958| m@@21) u@@17))
 :pattern ( (select (|Map#Elements_3958_3958| m@@21) u@@17))
)))
(assert (forall ((m@@22 T@Map_3958_14482) (u@@18 Int) ) (!  (=> (select (|Map#Domain_3958_4521| m@@22) u@@18) (> (|Set#Card_4521| (|Map#Values_3958_14482| m@@22)) 0))
 :qid |stdinbpl.413:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_3958_4521| m@@22) u@@18))
 :pattern ( (select (|Map#Elements_3958_4521| m@@22) u@@18))
)))
(assert (forall ((m@@23 T@Map_4521_3958) (|m'@@3| T@Map_4521_3958) ) (!  (=> (|Map#Equal_4521_3958| m@@23 |m'@@3|) (= m@@23 |m'@@3|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4521_3958| m@@23 |m'@@3|))
)))
(assert (forall ((m@@24 T@Map_4521_4521) (|m'@@4| T@Map_4521_4521) ) (!  (=> (|Map#Equal_4521_4521| m@@24 |m'@@4|) (= m@@24 |m'@@4|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4521_4521| m@@24 |m'@@4|))
)))
(assert (forall ((m@@25 T@Map_3958_3958) (|m'@@5| T@Map_3958_3958) ) (!  (=> (|Map#Equal_3958_3958| m@@25 |m'@@5|) (= m@@25 |m'@@5|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_3958_3958| m@@25 |m'@@5|))
)))
(assert (forall ((m@@26 T@Map_3958_14482) (|m'@@6| T@Map_3958_14482) ) (!  (=> (|Map#Equal_3958_4521| m@@26 |m'@@6|) (= m@@26 |m'@@6|))
 :qid |stdinbpl.455:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_3958_4521| m@@26 |m'@@6|))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@11 y) (select (|Set#UnionOne_4521| a@@11 x) y))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4521| a@@11 x) (select a@@11 y))
)))
(assert (forall ((a@@12 (Array Int Bool)) (x@@0 Int) (y@@0 Int) ) (!  (=> (select a@@12 y@@0) (select (|Set#UnionOne_3958| a@@12 x@@0) y@@0))
 :qid |stdinbpl.202:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3958| a@@12 x@@0) (select a@@12 y@@0))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select a@@13 y@@1) (select (|Set#Union_4521| a@@13 b@@10) y@@1))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4521| a@@13 b@@10) (select a@@13 y@@1))
)))
(assert (forall ((a@@14 (Array Int Bool)) (b@@11 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@14 y@@2) (select (|Set#Union_3958| a@@14 b@@11) y@@2))
 :qid |stdinbpl.212:18|
 :skolemid |35|
 :pattern ( (|Set#Union_3958| a@@14 b@@11) (select a@@14 y@@2))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@12 y@@3) (select (|Set#Union_4521| a@@15 b@@12) y@@3))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4521| a@@15 b@@12) (select b@@12 y@@3))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@13 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@13 y@@4) (select (|Set#Union_3958| a@@16 b@@13) y@@4))
 :qid |stdinbpl.214:18|
 :skolemid |36|
 :pattern ( (|Set#Union_3958| a@@16 b@@13) (select b@@13 y@@4))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@1 T@Ref) (o@@9 T@Ref) ) (! (= (select (|Set#UnionOne_4521| a@@17 x@@1) o@@9)  (or (= o@@9 x@@1) (select a@@17 o@@9)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4521| a@@17 x@@1) o@@9))
)))
(assert (forall ((a@@18 (Array Int Bool)) (x@@2 Int) (o@@10 Int) ) (! (= (select (|Set#UnionOne_3958| a@@18 x@@2) o@@10)  (or (= o@@10 x@@2) (select a@@18 o@@10)))
 :qid |stdinbpl.198:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3958| a@@18 x@@2) o@@10))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (y@@5 T@Ref) ) (!  (=> (select b@@14 y@@5) (not (select (|Set#Difference_4521| a@@19 b@@14) y@@5)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4521| a@@19 b@@14) (select b@@14 y@@5))
)))
(assert (forall ((a@@20 (Array Int Bool)) (b@@15 (Array Int Bool)) (y@@6 Int) ) (!  (=> (select b@@15 y@@6) (not (select (|Set#Difference_3958| a@@20 b@@15) y@@6)))
 :qid |stdinbpl.239:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_3958| a@@20 b@@15) (select b@@15 y@@6))
)))
(assert (forall ((m@@27 T@Map_4521_3958) (|m'@@7| T@Map_4521_3958) ) (!  (=> (and (forall ((u@@19 T@Ref) ) (! (= (select (|Map#Domain_4521_3958| m@@27) u@@19) (select (|Map#Domain_4521_3958| |m'@@7|) u@@19))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@20 T@Ref) ) (!  (=> (select (|Map#Domain_4521_3958| m@@27) u@@20) (= (select (|Map#Elements_4521_3958| m@@27) u@@20) (select (|Map#Elements_4521_3958| |m'@@7|) u@@20)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_4521_3958| m@@27 |m'@@7|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4521_3958| m@@27 |m'@@7|))
)))
(assert (forall ((m@@28 T@Map_4521_4521) (|m'@@8| T@Map_4521_4521) ) (!  (=> (and (forall ((u@@21 T@Ref) ) (! (= (select (|Map#Domain_4521_4521| m@@28) u@@21) (select (|Map#Domain_4521_4521| |m'@@8|) u@@21))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@22 T@Ref) ) (!  (=> (select (|Map#Domain_4521_4521| m@@28) u@@22) (= (select (|Map#Elements_4521_14482| m@@28) u@@22) (select (|Map#Elements_4521_14482| |m'@@8|) u@@22)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_4521_4521| m@@28 |m'@@8|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4521_4521| m@@28 |m'@@8|))
)))
(assert (forall ((m@@29 T@Map_3958_3958) (|m'@@9| T@Map_3958_3958) ) (!  (=> (and (forall ((u@@23 Int) ) (! (= (select (|Map#Domain_3958_3958| m@@29) u@@23) (select (|Map#Domain_3958_3958| |m'@@9|) u@@23))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@24 Int) ) (!  (=> (select (|Map#Domain_3958_3958| m@@29) u@@24) (= (select (|Map#Elements_3958_3958| m@@29) u@@24) (select (|Map#Elements_3958_3958| |m'@@9|) u@@24)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_3958_3958| m@@29 |m'@@9|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_3958_3958| m@@29 |m'@@9|))
)))
(assert (forall ((m@@30 T@Map_3958_14482) (|m'@@10| T@Map_3958_14482) ) (!  (=> (and (forall ((u@@25 Int) ) (! (= (select (|Map#Domain_3958_4521| m@@30) u@@25) (select (|Map#Domain_3958_4521| |m'@@10|) u@@25))
 :qid |stdinbpl.452:12|
 :skolemid |95|
)) (forall ((u@@26 Int) ) (!  (=> (select (|Map#Domain_3958_4521| m@@30) u@@26) (= (select (|Map#Elements_3958_4521| m@@30) u@@26) (select (|Map#Elements_3958_4521| |m'@@10|) u@@26)))
 :qid |stdinbpl.453:14|
 :skolemid |96|
))) (|Map#Equal_3958_4521| m@@30 |m'@@10|))
 :qid |stdinbpl.450:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_3958_4521| m@@30 |m'@@10|))
)))
(assert (forall ((a@@21 (Array T@Ref Bool)) (b@@16 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4521| (|Set#Difference_4521| a@@21 b@@16)) (|Set#Card_4521| (|Set#Difference_4521| b@@16 a@@21))) (|Set#Card_4521| (|Set#Intersection_4521| a@@21 b@@16))) (|Set#Card_4521| (|Set#Union_4521| a@@21 b@@16))) (= (|Set#Card_4521| (|Set#Difference_4521| a@@21 b@@16)) (- (|Set#Card_4521| a@@21) (|Set#Card_4521| (|Set#Intersection_4521| a@@21 b@@16)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4521| (|Set#Difference_4521| a@@21 b@@16)))
)))
(assert (forall ((a@@22 (Array Int Bool)) (b@@17 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_3958| (|Set#Difference_3958| a@@22 b@@17)) (|Set#Card_3958| (|Set#Difference_3958| b@@17 a@@22))) (|Set#Card_3958| (|Set#Intersection_3958| a@@22 b@@17))) (|Set#Card_3958| (|Set#Union_3958| a@@22 b@@17))) (= (|Set#Card_3958| (|Set#Difference_3958| a@@22 b@@17)) (- (|Set#Card_3958| a@@22) (|Set#Card_3958| (|Set#Intersection_3958| a@@22 b@@17)))))
 :qid |stdinbpl.241:18|
 :skolemid |45|
 :pattern ( (|Set#Card_3958| (|Set#Difference_3958| a@@22 b@@17)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4521| s))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4521| s))
)))
(assert (forall ((s@@0 (Array Int Bool)) ) (! (<= 0 (|Set#Card_3958| s@@0))
 :qid |stdinbpl.184:18|
 :skolemid |22|
 :pattern ( (|Set#Card_3958| s@@0))
)))
(assert (forall ((m@@31 T@Map_4521_3958) ) (! (<= 0 (|Map#Card_4521_3958| m@@31))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4521_3958| m@@31))
)))
(assert (forall ((m@@32 T@Map_4521_4521) ) (! (<= 0 (|Map#Card_4521_4521| m@@32))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4521_4521| m@@32))
)))
(assert (forall ((m@@33 T@Map_3958_3958) ) (! (<= 0 (|Map#Card_3958_3958| m@@33))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_3958_3958| m@@33))
)))
(assert (forall ((m@@34 T@Map_3958_14482) ) (! (<= 0 (|Map#Card_3958_14482| m@@34))
 :qid |stdinbpl.382:20|
 :skolemid |82|
 :pattern ( (|Map#Card_3958_14482| m@@34))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7176) (ExhaleHeap@@9 T@PolymorphicMapType_7176) (Mask@@22 T@PolymorphicMapType_7197) (pm_f@@1 T@Field_4520_16730) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_4520_16794 Mask@@22 null pm_f@@1) (IsPredicateField_4520_16821 pm_f@@1)) (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@5 T@Field_7236_53) ) (!  (=> (select (|PolymorphicMapType_7725_7236_53#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2 f_2@@5) (= (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@10) o2 f_2@@5) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@9) o2 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@9) o2 f_2@@5))
)) (forall ((o2@@0 T@Ref) (f_2@@6 T@Field_7249_7250) ) (!  (=> (select (|PolymorphicMapType_7725_7236_7250#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2@@0 f_2@@6) (= (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@10) o2@@0 f_2@@6) (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@0 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@0 f_2@@6))
))) (forall ((o2@@1 T@Ref) (f_2@@7 T@Field_14479_14484) ) (!  (=> (select (|PolymorphicMapType_7725_7236_14484#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2@@1 f_2@@7) (= (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@10) o2@@1 f_2@@7) (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@1 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@1 f_2@@7))
))) (forall ((o2@@2 T@Ref) (f_2@@8 T@Field_14543_3975) ) (!  (=> (select (|PolymorphicMapType_7725_7236_3975#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2@@2 f_2@@8) (= (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@10) o2@@2 f_2@@8) (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@2 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@2 f_2@@8))
))) (forall ((o2@@3 T@Ref) (f_2@@9 T@Field_4520_16730) ) (!  (=> (select (|PolymorphicMapType_7725_7236_16730#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2@@3 f_2@@9) (= (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@10) o2@@3 f_2@@9) (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@3 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@3 f_2@@9))
))) (forall ((o2@@4 T@Ref) (f_2@@10 T@Field_4520_16863) ) (!  (=> (select (|PolymorphicMapType_7725_7236_18245#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) null (PredicateMaskField_4520 pm_f@@1))) o2@@4 f_2@@10) (= (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@10) o2@@4 f_2@@10) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@4 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@9) o2@@4 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_4520_16821 pm_f@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7176) (ExhaleHeap@@10 T@PolymorphicMapType_7176) (Mask@@23 T@PolymorphicMapType_7197) (pm_f@@2 T@Field_4520_16730) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_4520_16794 Mask@@23 null pm_f@@2) (IsWandField_4520_18772 pm_f@@2)) (and (and (and (and (and (forall ((o2@@5 T@Ref) (f_2@@11 T@Field_7236_53) ) (!  (=> (select (|PolymorphicMapType_7725_7236_53#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@5 f_2@@11) (= (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@11) o2@@5 f_2@@11) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@5 f_2@@11)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@5 f_2@@11))
)) (forall ((o2@@6 T@Ref) (f_2@@12 T@Field_7249_7250) ) (!  (=> (select (|PolymorphicMapType_7725_7236_7250#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@6 f_2@@12) (= (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@11) o2@@6 f_2@@12) (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@6 f_2@@12)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@6 f_2@@12))
))) (forall ((o2@@7 T@Ref) (f_2@@13 T@Field_14479_14484) ) (!  (=> (select (|PolymorphicMapType_7725_7236_14484#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@7 f_2@@13) (= (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@11) o2@@7 f_2@@13) (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@7 f_2@@13)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@7 f_2@@13))
))) (forall ((o2@@8 T@Ref) (f_2@@14 T@Field_14543_3975) ) (!  (=> (select (|PolymorphicMapType_7725_7236_3975#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@8 f_2@@14) (= (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@11) o2@@8 f_2@@14) (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@8 f_2@@14)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@8 f_2@@14))
))) (forall ((o2@@9 T@Ref) (f_2@@15 T@Field_4520_16730) ) (!  (=> (select (|PolymorphicMapType_7725_7236_16730#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@9 f_2@@15) (= (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@11) o2@@9 f_2@@15) (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@9 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@9 f_2@@15))
))) (forall ((o2@@10 T@Ref) (f_2@@16 T@Field_4520_16863) ) (!  (=> (select (|PolymorphicMapType_7725_7236_18245#PolymorphicMapType_7725| (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) null (WandMaskField_4520 pm_f@@2))) o2@@10 f_2@@16) (= (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@11) o2@@10 f_2@@16) (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@10 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| ExhaleHeap@@10) o2@@10 f_2@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_4520_18772 pm_f@@2))
)))
(assert (forall ((a@@23 (Array T@Ref Bool)) (x@@3 T@Ref) ) (! (select (|Set#UnionOne_4521| a@@23 x@@3) x@@3)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4521| a@@23 x@@3))
)))
(assert (forall ((a@@24 (Array Int Bool)) (x@@4 Int) ) (! (select (|Set#UnionOne_3958| a@@24 x@@4) x@@4)
 :qid |stdinbpl.200:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3958| a@@24 x@@4))
)))
(assert (forall ((a@@25 (Array T@Ref Bool)) (x@@5 T@Ref) ) (!  (=> (select a@@25 x@@5) (= (|Set#Card_4521| (|Set#UnionOne_4521| a@@25 x@@5)) (|Set#Card_4521| a@@25)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4521| (|Set#UnionOne_4521| a@@25 x@@5)))
)))
(assert (forall ((a@@26 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@26 x@@6) (= (|Set#Card_3958| (|Set#UnionOne_3958| a@@26 x@@6)) (|Set#Card_3958| a@@26)))
 :qid |stdinbpl.204:18|
 :skolemid |32|
 :pattern ( (|Set#Card_3958| (|Set#UnionOne_3958| a@@26 x@@6)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (= (|Set#Card_4521| (|Set#Singleton_4521| r@@1)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4521| (|Set#Singleton_4521| r@@1)))
)))
(assert (forall ((r@@2 Int) ) (! (= (|Set#Card_3958| (|Set#Singleton_3958| r@@2)) 1)
 :qid |stdinbpl.195:18|
 :skolemid |28|
 :pattern ( (|Set#Card_3958| (|Set#Singleton_3958| r@@2)))
)))
(assert (forall ((r@@3 T@Ref) ) (! (select (|Set#Singleton_4521| r@@3) r@@3)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4521| r@@3))
)))
(assert (forall ((r@@4 Int) ) (! (select (|Set#Singleton_3958| r@@4) r@@4)
 :qid |stdinbpl.193:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3958| r@@4))
)))
(assert (forall ((m@@35 T@Map_4521_3958) ) (!  (and (and (= (= (|Map#Card_4521_3958| m@@35) 0) (= m@@35 |Map#Empty_4521_3958|)) (=> (not (= (|Map#Card_4521_3958| m@@35) 0)) (exists ((x@@7 T@Ref) ) (! (select (|Map#Domain_4521_3958| m@@35) x@@7)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@8 T@Ref) ) (!  (=> (select (|Map#Domain_4521_3958| m@@35) x@@8) (not (= (|Map#Card_4521_3958| m@@35) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4521_3958| m@@35) x@@8))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4521_3958| m@@35))
)))
(assert (forall ((m@@36 T@Map_4521_4521) ) (!  (and (and (= (= (|Map#Card_4521_4521| m@@36) 0) (= m@@36 |Map#Empty_4521_4521|)) (=> (not (= (|Map#Card_4521_4521| m@@36) 0)) (exists ((x@@9 T@Ref) ) (! (select (|Map#Domain_4521_4521| m@@36) x@@9)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@10 T@Ref) ) (!  (=> (select (|Map#Domain_4521_4521| m@@36) x@@10) (not (= (|Map#Card_4521_4521| m@@36) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4521_4521| m@@36) x@@10))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4521_4521| m@@36))
)))
(assert (forall ((m@@37 T@Map_3958_3958) ) (!  (and (and (= (= (|Map#Card_3958_3958| m@@37) 0) (= m@@37 |Map#Empty_3958_3958|)) (=> (not (= (|Map#Card_3958_3958| m@@37) 0)) (exists ((x@@11 Int) ) (! (select (|Map#Domain_3958_3958| m@@37) x@@11)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@12 Int) ) (!  (=> (select (|Map#Domain_3958_3958| m@@37) x@@12) (not (= (|Map#Card_3958_3958| m@@37) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_3958_3958| m@@37) x@@12))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_3958_3958| m@@37))
)))
(assert (forall ((m@@38 T@Map_3958_14482) ) (!  (and (and (= (= (|Map#Card_3958_14482| m@@38) 0) (= m@@38 |Map#Empty_4090_4532|)) (=> (not (= (|Map#Card_3958_14482| m@@38) 0)) (exists ((x@@13 Int) ) (! (select (|Map#Domain_3958_4521| m@@38) x@@13)
 :qid |stdinbpl.426:32|
 :skolemid |89|
)))) (forall ((x@@14 Int) ) (!  (=> (select (|Map#Domain_3958_4521| m@@38) x@@14) (not (= (|Map#Card_3958_14482| m@@38) 0)))
 :qid |stdinbpl.427:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_3958_4521| m@@38) x@@14))
)))
 :qid |stdinbpl.424:21|
 :skolemid |91|
 :pattern ( (|Map#Card_3958_14482| m@@38))
)))
(assert (forall ((a@@27 (Array T@Ref Bool)) (b@@18 (Array T@Ref Bool)) ) (! (= (|Set#Union_4521| a@@27 (|Set#Union_4521| a@@27 b@@18)) (|Set#Union_4521| a@@27 b@@18))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4521| a@@27 (|Set#Union_4521| a@@27 b@@18)))
)))
(assert (forall ((a@@28 (Array Int Bool)) (b@@19 (Array Int Bool)) ) (! (= (|Set#Union_3958| a@@28 (|Set#Union_3958| a@@28 b@@19)) (|Set#Union_3958| a@@28 b@@19))
 :qid |stdinbpl.227:18|
 :skolemid |39|
 :pattern ( (|Set#Union_3958| a@@28 (|Set#Union_3958| a@@28 b@@19)))
)))
(assert (forall ((a@@29 (Array T@Ref Bool)) (b@@20 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4521| a@@29 (|Set#Intersection_4521| a@@29 b@@20)) (|Set#Intersection_4521| a@@29 b@@20))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4521| a@@29 (|Set#Intersection_4521| a@@29 b@@20)))
)))
(assert (forall ((a@@30 (Array Int Bool)) (b@@21 (Array Int Bool)) ) (! (= (|Set#Intersection_3958| a@@30 (|Set#Intersection_3958| a@@30 b@@21)) (|Set#Intersection_3958| a@@30 b@@21))
 :qid |stdinbpl.231:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_3958| a@@30 (|Set#Intersection_3958| a@@30 b@@21)))
)))
(assert (forall ((m@@39 T@Map_4521_3958) (u@@27 T@Ref) (|u'| T@Ref) (v@@11 Int) ) (!  (and (=> (= |u'| u@@27) (and (select (|Map#Domain_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|) (= (select (|Map#Elements_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|) v@@11))) (=> (not (= |u'| u@@27)) (and (= (select (|Map#Domain_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|) (select (|Map#Domain_4521_3958| m@@39) |u'|)) (= (select (|Map#Elements_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|) (select (|Map#Elements_4521_3958| m@@39) |u'|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|))
 :pattern ( (select (|Map#Domain_4521_3958| m@@39) |u'|) (|Map#Build_4521_3958| m@@39 u@@27 v@@11))
 :pattern ( (select (|Map#Elements_4521_3958| (|Map#Build_4521_3958| m@@39 u@@27 v@@11)) |u'|))
)))
(assert (forall ((m@@40 T@Map_4521_4521) (u@@28 T@Ref) (|u'@@0| T@Ref) (v@@12 T@Ref) ) (!  (and (=> (= |u'@@0| u@@28) (and (select (|Map#Domain_4521_4521| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|) (= (select (|Map#Elements_4521_14482| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|) v@@12))) (=> (not (= |u'@@0| u@@28)) (and (= (select (|Map#Domain_4521_4521| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|) (select (|Map#Domain_4521_4521| m@@40) |u'@@0|)) (= (select (|Map#Elements_4521_14482| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|) (select (|Map#Elements_4521_14482| m@@40) |u'@@0|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4521_4521| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|))
 :pattern ( (select (|Map#Domain_4521_4521| m@@40) |u'@@0|) (|Map#Build_4521_4521| m@@40 u@@28 v@@12))
 :pattern ( (select (|Map#Elements_4521_14482| (|Map#Build_4521_4521| m@@40 u@@28 v@@12)) |u'@@0|))
)))
(assert (forall ((m@@41 T@Map_3958_3958) (u@@29 Int) (|u'@@1| Int) (v@@13 Int) ) (!  (and (=> (= |u'@@1| u@@29) (and (select (|Map#Domain_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|) (= (select (|Map#Elements_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|) v@@13))) (=> (not (= |u'@@1| u@@29)) (and (= (select (|Map#Domain_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|) (select (|Map#Domain_3958_3958| m@@41) |u'@@1|)) (= (select (|Map#Elements_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|) (select (|Map#Elements_3958_3958| m@@41) |u'@@1|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|))
 :pattern ( (select (|Map#Domain_3958_3958| m@@41) |u'@@1|) (|Map#Build_3958_3958| m@@41 u@@29 v@@13))
 :pattern ( (select (|Map#Elements_3958_3958| (|Map#Build_3958_3958| m@@41 u@@29 v@@13)) |u'@@1|))
)))
(assert (forall ((m@@42 T@Map_3958_14482) (u@@30 Int) (|u'@@2| Int) (v@@14 T@Ref) ) (!  (and (=> (= |u'@@2| u@@30) (and (select (|Map#Domain_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|) (= (select (|Map#Elements_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|) v@@14))) (=> (not (= |u'@@2| u@@30)) (and (= (select (|Map#Domain_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|) (select (|Map#Domain_3958_4521| m@@42) |u'@@2|)) (= (select (|Map#Elements_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|) (select (|Map#Elements_3958_4521| m@@42) |u'@@2|)))))
 :qid |stdinbpl.433:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|))
 :pattern ( (select (|Map#Domain_3958_4521| m@@42) |u'@@2|) (|Map#Build_3958_4521| m@@42 u@@30 v@@14))
 :pattern ( (select (|Map#Elements_3958_4521| (|Map#Build_3958_4521| m@@42 u@@30 v@@14)) |u'@@2|))
)))
(assert (forall ((o@@11 T@Ref) ) (!  (not (select |Set#Empty_4521| o@@11))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4521| o@@11))
)))
(assert (forall ((o@@12 Int) ) (!  (not (select |Set#Empty_3958| o@@12))
 :qid |stdinbpl.187:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_3958| o@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7176) (o@@13 T@Ref) (f_3 T@Field_4520_16730) (v@@15 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@12) (store (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@12) o@@13 f_3 v@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@12) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@12) (store (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@12) o@@13 f_3 v@@15)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7176) (o@@14 T@Ref) (f_3@@0 T@Field_4520_16863) (v@@16 T@PolymorphicMapType_7725) ) (! (succHeap Heap@@13 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@13) (store (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@13) o@@14 f_3@@0 v@@16) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@13) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@13) (store (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@13) o@@14 f_3@@0 v@@16) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7176) (o@@15 T@Ref) (f_3@@1 T@Field_14543_3975) (v@@17 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@14) (store (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@14) o@@15 f_3@@1 v@@17) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@14) (store (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@14) o@@15 f_3@@1 v@@17) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@14) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7176) (o@@16 T@Ref) (f_3@@2 T@Field_14479_14484) (v@@18 T@Map_3958_14482) ) (! (succHeap Heap@@15 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@15) (store (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@15) o@@16 f_3@@2 v@@18) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@15) (store (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@15) o@@16 f_3@@2 v@@18) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@15) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7176) (o@@17 T@Ref) (f_3@@3 T@Field_7249_7250) (v@@19 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@16) (store (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@16) o@@17 f_3@@3 v@@19) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@16) (store (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@16) o@@17 f_3@@3 v@@19) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@16) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7176) (o@@18 T@Ref) (f_3@@4 T@Field_7236_53) (v@@20 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_7176 (store (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@17) o@@18 f_3@@4 v@@20) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7176 (store (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@17) o@@18 f_3@@4 v@@20) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@17) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@17)))
)))
(assert (forall ((m@@43 T@Map_4521_3958) ) (! (= (|Set#Card_4521| (|Map#Domain_4521_3958| m@@43)) (|Map#Card_4521_3958| m@@43))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4521| (|Map#Domain_4521_3958| m@@43)))
 :pattern ( (|Map#Card_4521_3958| m@@43))
)))
(assert (forall ((m@@44 T@Map_4521_4521) ) (! (= (|Set#Card_4521| (|Map#Domain_4521_4521| m@@44)) (|Map#Card_4521_4521| m@@44))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4521| (|Map#Domain_4521_4521| m@@44)))
 :pattern ( (|Map#Card_4521_4521| m@@44))
)))
(assert (forall ((m@@45 T@Map_3958_3958) ) (! (= (|Set#Card_3958| (|Map#Domain_3958_3958| m@@45)) (|Map#Card_3958_3958| m@@45))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_3958| (|Map#Domain_3958_3958| m@@45)))
 :pattern ( (|Map#Card_3958_3958| m@@45))
)))
(assert (forall ((m@@46 T@Map_3958_14482) ) (! (= (|Set#Card_3958| (|Map#Domain_3958_4521| m@@46)) (|Map#Card_3958_14482| m@@46))
 :qid |stdinbpl.389:20|
 :skolemid |83|
 :pattern ( (|Set#Card_3958| (|Map#Domain_3958_4521| m@@46)))
 :pattern ( (|Map#Card_3958_14482| m@@46))
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
(assert (forall ((s@@1 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4521| s@@1) 0) (= s@@1 |Set#Empty_4521|)) (=> (not (= (|Set#Card_4521| s@@1) 0)) (exists ((x@@15 T@Ref) ) (! (select s@@1 x@@15)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4521| s@@1))
)))
(assert (forall ((s@@2 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_3958| s@@2) 0) (= s@@2 |Set#Empty_3958|)) (=> (not (= (|Set#Card_3958| s@@2) 0)) (exists ((x@@16 Int) ) (! (select s@@2 x@@16)
 :qid |stdinbpl.190:33|
 :skolemid |24|
))))
 :qid |stdinbpl.188:18|
 :skolemid |25|
 :pattern ( (|Set#Card_3958| s@@2))
)))
(assert (forall ((u@@31 T@Ref) ) (!  (not (select (|Map#Domain_4521_3958| |Map#Empty_4521_3958|) u@@31))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4521_3958| |Map#Empty_4521_3958|) u@@31))
)))
(assert (forall ((u@@32 T@Ref) ) (!  (not (select (|Map#Domain_4521_4521| |Map#Empty_4521_4521|) u@@32))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4521_4521| |Map#Empty_4521_4521|) u@@32))
)))
(assert (forall ((u@@33 Int) ) (!  (not (select (|Map#Domain_3958_3958| |Map#Empty_3958_3958|) u@@33))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_3958_3958| |Map#Empty_3958_3958|) u@@33))
)))
(assert (forall ((u@@34 Int) ) (!  (not (select (|Map#Domain_3958_4521| |Map#Empty_4090_4532|) u@@34))
 :qid |stdinbpl.420:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_3958_4521| |Map#Empty_4090_4532|) u@@34))
)))
(assert (forall ((a@@33 (Array T@Ref Bool)) (x@@17 T@Ref) ) (!  (=> (not (select a@@33 x@@17)) (= (|Set#Card_4521| (|Set#UnionOne_4521| a@@33 x@@17)) (+ (|Set#Card_4521| a@@33) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4521| (|Set#UnionOne_4521| a@@33 x@@17)))
)))
(assert (forall ((a@@34 (Array Int Bool)) (x@@18 Int) ) (!  (=> (not (select a@@34 x@@18)) (= (|Set#Card_3958| (|Set#UnionOne_3958| a@@34 x@@18)) (+ (|Set#Card_3958| a@@34) 1)))
 :qid |stdinbpl.206:18|
 :skolemid |33|
 :pattern ( (|Set#Card_3958| (|Set#UnionOne_3958| a@@34 x@@18)))
)))
(assert (forall ((o@@19 T@Ref) (f T@Field_7249_7250) (Heap@@18 T@PolymorphicMapType_7176) ) (!  (=> (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@18) o@@19 $allocated) (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@18) (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@18) o@@19 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@18) o@@19 f))
)))
(assert (forall ((p@@1 T@Field_4520_16730) (v_1@@0 T@FrameType) (q T@Field_4520_16730) (w@@0 T@FrameType) (r@@5 T@Field_4520_16730) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_7236_7236 p@@1 v_1@@0 q w@@0) (InsidePredicate_7236_7236 q w@@0 r@@5 u@@35)) (InsidePredicate_7236_7236 p@@1 v_1@@0 r@@5 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7236_7236 p@@1 v_1@@0 q w@@0) (InsidePredicate_7236_7236 q w@@0 r@@5 u@@35))
)))
(assert (forall ((a@@35 Int) ) (!  (=> (< a@@35 0) (= (|Math#clip| a@@35) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@35))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@36 (Array T@Ref Bool)) (b@@24 (Array T@Ref Bool)) (o@@20 T@Ref) ) (! (= (select (|Set#Union_4521| a@@36 b@@24) o@@20)  (or (select a@@36 o@@20) (select b@@24 o@@20)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4521| a@@36 b@@24) o@@20))
)))
(assert (forall ((a@@37 (Array Int Bool)) (b@@25 (Array Int Bool)) (o@@21 Int) ) (! (= (select (|Set#Union_3958| a@@37 b@@25) o@@21)  (or (select a@@37 o@@21) (select b@@25 o@@21)))
 :qid |stdinbpl.210:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_3958| a@@37 b@@25) o@@21))
)))
(assert (forall ((m@@47 T@Map_4521_3958) (|m'@@11| T@Map_4521_3958) ) (!  (=> (not (|Map#Disjoint_4521_3958| m@@47 |m'@@11|)) (exists ((o@@22 T@Ref) ) (!  (and (select (|Map#Domain_4521_3958| m@@47) o@@22) (select (|Map#Domain_4521_3958| |m'@@11|) o@@22))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4521_3958| m@@47) o@@22))
 :pattern ( (select (|Map#Domain_4521_3958| |m'@@11|) o@@22))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4521_3958| m@@47 |m'@@11|))
)))
(assert (forall ((m@@48 T@Map_4521_4521) (|m'@@12| T@Map_4521_4521) ) (!  (=> (not (|Map#Disjoint_4521_14482| m@@48 |m'@@12|)) (exists ((o@@23 T@Ref) ) (!  (and (select (|Map#Domain_4521_4521| m@@48) o@@23) (select (|Map#Domain_4521_4521| |m'@@12|) o@@23))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4521_4521| m@@48) o@@23))
 :pattern ( (select (|Map#Domain_4521_4521| |m'@@12|) o@@23))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4521_14482| m@@48 |m'@@12|))
)))
(assert (forall ((m@@49 T@Map_3958_3958) (|m'@@13| T@Map_3958_3958) ) (!  (=> (not (|Map#Disjoint_3958_3958| m@@49 |m'@@13|)) (exists ((o@@24 Int) ) (!  (and (select (|Map#Domain_3958_3958| m@@49) o@@24) (select (|Map#Domain_3958_3958| |m'@@13|) o@@24))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_3958_3958| m@@49) o@@24))
 :pattern ( (select (|Map#Domain_3958_3958| |m'@@13|) o@@24))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_3958_3958| m@@49 |m'@@13|))
)))
(assert (forall ((m@@50 T@Map_3958_14482) (|m'@@14| T@Map_3958_14482) ) (!  (=> (not (|Map#Disjoint_3958_14482| m@@50 |m'@@14|)) (exists ((o@@25 Int) ) (!  (and (select (|Map#Domain_3958_4521| m@@50) o@@25) (select (|Map#Domain_3958_4521| |m'@@14|) o@@25))
 :qid |stdinbpl.466:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_3958_4521| m@@50) o@@25))
 :pattern ( (select (|Map#Domain_3958_4521| |m'@@14|) o@@25))
)))
 :qid |stdinbpl.464:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_3958_14482| m@@50 |m'@@14|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_7176)
(declare-fun x@@19 () T@Ref)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_7176)
(declare-fun Mask@0 () T@PolymorphicMapType_7197)
(declare-fun Heap@1 () T@PolymorphicMapType_7176)
(set-info :boogie-vc-id main)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@19) x@@19 $allocated)) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@19) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_7176 (store (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@@19) freshObj@0 $allocated true) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@@19) (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@@19) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@@19) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@@19) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@@19)))) (and (= Mask@0 (PolymorphicMapType_7197 (store (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ZeroMask) freshObj@0 values_1 (+ (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| ZeroMask) freshObj@0 values_1) FullPerm)) (|PolymorphicMapType_7197_4520_53#PolymorphicMapType_7197| ZeroMask) (|PolymorphicMapType_7197_4520_7250#PolymorphicMapType_7197| ZeroMask) (|PolymorphicMapType_7197_4520_3975#PolymorphicMapType_7197| ZeroMask) (|PolymorphicMapType_7197_4520_16730#PolymorphicMapType_7197| ZeroMask) (|PolymorphicMapType_7197_4520_21569#PolymorphicMapType_7197| ZeroMask))) (state Heap@0 Mask@0))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= FullPerm (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@0) freshObj@0 values_1))) (=> (= FullPerm (select (|PolymorphicMapType_7197_4520_15033#PolymorphicMapType_7197| Mask@0) freshObj@0 values_1)) (=> (and (= Heap@1 (PolymorphicMapType_7176 (|PolymorphicMapType_7176_4196_53#PolymorphicMapType_7176| Heap@0) (|PolymorphicMapType_7176_4199_4200#PolymorphicMapType_7176| Heap@0) (store (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@0) freshObj@0 values_1 |Map#Empty_4090_4532|) (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@0) (|PolymorphicMapType_7176_4520_16907#PolymorphicMapType_7176| Heap@0) (|PolymorphicMapType_7176_7236_16730#PolymorphicMapType_7176| Heap@0))) (state Heap@1 Mask@0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (HasDirectPerm_4520_15410 Mask@0 freshObj@0 values_1)) (=> (HasDirectPerm_4520_15410 Mask@0 freshObj@0 values_1) (and (=> (= (ControlFlow 0 2) (- 0 5)) (select (|Map#Domain_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1)) (=> (select (|Map#Domain_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_4524_3975 Mask@0 (select (|Map#Elements_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1) value_1)) (=> (HasDirectPerm_4524_3975 Mask@0 (select (|Map#Elements_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1) value_1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (> (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@1) (select (|Map#Elements_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1) value_1) 0)) (=> (> (select (|PolymorphicMapType_7176_4524_3975#PolymorphicMapType_7176| Heap@1) (select (|Map#Elements_3958_4521| (select (|PolymorphicMapType_7176_4520_15235#PolymorphicMapType_7176| Heap@1) freshObj@0 values_1)) 1) value_1) 0) (=> (and (state Heap@1 Mask@0) (= (ControlFlow 0 2) (- 0 1))) false)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
