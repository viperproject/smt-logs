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
(declare-sort T@Field_10076_53 0)
(declare-sort T@Field_10089_10090 0)
(declare-sort T@Field_10076_22189 0)
(declare-sort T@Field_10076_22056 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10037 0)) (((PolymorphicMapType_10037 (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| (Array T@Ref T@Field_10076_53 Real)) (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| (Array T@Ref T@Field_10089_10090 Real)) (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| (Array T@Ref T@Field_10076_22056 Real)) (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| (Array T@Ref T@Field_10076_22189 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10565 0)) (((PolymorphicMapType_10565 (|PolymorphicMapType_10565_10076_53#PolymorphicMapType_10565| (Array T@Ref T@Field_10076_53 Bool)) (|PolymorphicMapType_10565_10076_10090#PolymorphicMapType_10565| (Array T@Ref T@Field_10089_10090 Bool)) (|PolymorphicMapType_10565_10076_22056#PolymorphicMapType_10565| (Array T@Ref T@Field_10076_22056 Bool)) (|PolymorphicMapType_10565_10076_23169#PolymorphicMapType_10565| (Array T@Ref T@Field_10076_22189 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10016 0)) (((PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| (Array T@Ref T@Field_10076_53 Bool)) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| (Array T@Ref T@Field_10089_10090 T@Ref)) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| (Array T@Ref T@Field_10076_22189 T@PolymorphicMapType_10565)) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| (Array T@Ref T@Field_10076_22056 T@FrameType)) ) ) ))
(declare-sort T@Map_20315_5 0)
(declare-fun |Map#Values_20315_5| (T@Map_20315_5) (Array Bool Bool))
(declare-sort T@ListDomainType_5978 0)
(declare-fun |Map#Domain_20315_5| (T@Map_20315_5) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Elements_20315_5| (T@Map_20315_5) (Array T@ListDomainType_5978 Bool))
(declare-sort T@Map_20315_20315 0)
(declare-fun |Map#Values_20315_20315| (T@Map_20315_20315) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Domain_20315_20315| (T@Map_20315_20315) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Elements_20315_20315| (T@Map_20315_20315) (Array T@ListDomainType_5978 T@ListDomainType_5978))
(declare-sort T@Map_20315_5998 0)
(declare-fun |Map#Values_20315_5998| (T@Map_20315_5998) (Array Int Bool))
(declare-fun |Map#Domain_20315_5998| (T@Map_20315_5998) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Elements_20315_5998| (T@Map_20315_5998) (Array T@ListDomainType_5978 Int))
(declare-sort T@Map_5_5 0)
(declare-fun |Map#Values_5_5| (T@Map_5_5) (Array Bool Bool))
(declare-fun |Map#Domain_5_5| (T@Map_5_5) (Array Bool Bool))
(declare-fun |Map#Elements_5_5| (T@Map_5_5) (Array Bool Bool))
(declare-sort T@Map_5997_5 0)
(declare-fun |Map#Values_5997_5| (T@Map_5997_5) (Array Bool Bool))
(declare-fun |Map#Domain_5997_5| (T@Map_5997_5) (Array Int Bool))
(declare-fun |Map#Elements_5997_5| (T@Map_5997_5) (Array Int Bool))
(declare-sort T@Map_5_20315 0)
(declare-fun |Map#Values_5_20315| (T@Map_5_20315) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Domain_5_20315| (T@Map_5_20315) (Array Bool Bool))
(declare-fun |Map#Elements_5_20315| (T@Map_5_20315) (Array Bool T@ListDomainType_5978))
(declare-sort T@Map_5_5998 0)
(declare-fun |Map#Values_5_5998| (T@Map_5_5998) (Array Int Bool))
(declare-fun |Map#Domain_5_5998| (T@Map_5_5998) (Array Bool Bool))
(declare-fun |Map#Elements_5_5998| (T@Map_5_5998) (Array Bool Int))
(declare-sort T@Map_6008_20315 0)
(declare-fun |Map#Values_5997_20315| (T@Map_6008_20315) (Array T@ListDomainType_5978 Bool))
(declare-fun |Map#Domain_5997_20315| (T@Map_6008_20315) (Array Int Bool))
(declare-fun |Map#Elements_5997_20315| (T@Map_6008_20315) (Array Int T@ListDomainType_5978))
(declare-sort T@Map_5997_5998 0)
(declare-fun |Map#Values_5997_5998| (T@Map_5997_5998) (Array Int Bool))
(declare-fun |Map#Domain_5997_5998| (T@Map_5997_5998) (Array Int Bool))
(declare-fun |Map#Elements_5997_5998| (T@Map_5997_5998) (Array Int Int))
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_10016 T@PolymorphicMapType_10016) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10016 T@PolymorphicMapType_10016) Bool)
(declare-fun state (T@PolymorphicMapType_10016 T@PolymorphicMapType_10037) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10037) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10565)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-sort T@ListDomainType_20325 0)
(declare-fun List_tag_21454 (T@ListDomainType_20325) Int)
(declare-fun Nil_21454 () T@ListDomainType_20325)
(declare-sort T@ListDomainType_20309 0)
(declare-fun List_tag_21209 (T@ListDomainType_20309) Int)
(declare-fun Nil_21209 () T@ListDomainType_20309)
(declare-sort T@ListDomainType_20300 0)
(declare-fun List_tag_39708 (T@ListDomainType_20300) Int)
(declare-fun Nil_21034 () T@ListDomainType_20300)
(declare-sort T@ListDomainType_20294 0)
(declare-fun List_tag_20907 (T@ListDomainType_20294) Int)
(declare-fun Nil_20907 () T@ListDomainType_20294)
(declare-sort T@ListDomainType_20288 0)
(declare-fun List_tag_20752 (T@ListDomainType_20288) Int)
(declare-fun Nil_20752 () T@ListDomainType_20288)
(declare-sort T@ListDomainType_5982 0)
(declare-fun List_tag_6106 (T@ListDomainType_5982) Int)
(declare-fun Nil_6106 () T@ListDomainType_5982)
(declare-fun List_tag_6056 (T@ListDomainType_5978) Int)
(declare-fun Nil_6056 () T@ListDomainType_5978)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Set#Union_20315| ((Array T@ListDomainType_5978 Bool) (Array T@ListDomainType_5978 Bool)) (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#Union_5997| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Union_5| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Set#Intersection_20315| ((Array T@ListDomainType_5978 Bool) (Array T@ListDomainType_5978 Bool)) (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#Intersection_5997| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_5| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Map#Card_20315_5| (T@Map_20315_5) Int)
(declare-fun |Map#Build_20315_5| (T@Map_20315_5 T@ListDomainType_5978 Bool) T@Map_20315_5)
(declare-fun |Map#Card_20315_20315| (T@Map_20315_20315) Int)
(declare-fun |Map#Build_20315_20315| (T@Map_20315_20315 T@ListDomainType_5978 T@ListDomainType_5978) T@Map_20315_20315)
(declare-fun |Map#Card_20315_5998| (T@Map_20315_5998) Int)
(declare-fun |Map#Build_20315_5998| (T@Map_20315_5998 T@ListDomainType_5978 Int) T@Map_20315_5998)
(declare-fun |Map#Card_5997_5| (T@Map_5997_5) Int)
(declare-fun |Map#Build_5997_5| (T@Map_5997_5 Int Bool) T@Map_5997_5)
(declare-fun |Map#Card_5997_20315| (T@Map_6008_20315) Int)
(declare-fun |Map#Build_6008_21349| (T@Map_6008_20315 Int T@ListDomainType_5978) T@Map_6008_20315)
(declare-fun |Map#Card_5997_5998| (T@Map_5997_5998) Int)
(declare-fun |Map#Build_5997_5998| (T@Map_5997_5998 Int Int) T@Map_5997_5998)
(declare-fun |Map#Card_5_5| (T@Map_5_5) Int)
(declare-fun |Map#Build_5_5| (T@Map_5_5 Bool Bool) T@Map_5_5)
(declare-fun |Map#Card_5_20315| (T@Map_5_20315) Int)
(declare-fun |Map#Build_5_20315| (T@Map_5_20315 Bool T@ListDomainType_5978) T@Map_5_20315)
(declare-fun |Map#Card_5_5998| (T@Map_5_5998) Int)
(declare-fun |Map#Build_5_5998| (T@Map_5_5998 Bool Int) T@Map_5_5998)
(declare-fun |Set#Singleton_20315| (T@ListDomainType_5978) (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#Singleton_5997| (Int) (Array Int Bool))
(declare-fun |Set#Singleton_5| (Bool) (Array Bool Bool))
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Set#Card_20315| ((Array T@ListDomainType_5978 Bool)) Int)
(declare-fun |Set#Card_5997| ((Array Int Bool)) Int)
(declare-fun |Set#Card_5| ((Array Bool Bool)) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10016 T@PolymorphicMapType_10016 T@PolymorphicMapType_10037) Bool)
(declare-fun IsPredicateField_10076_22147 (T@Field_10076_22056) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10076 (T@Field_10076_22056) T@Field_10076_22189)
(declare-fun HasDirectPerm_10076_22120 (T@PolymorphicMapType_10037 T@Ref T@Field_10076_22056) Bool)
(declare-fun IsWandField_10076_23696 (T@Field_10076_22056) Bool)
(declare-fun WandMaskField_10076 (T@Field_10076_22056) T@Field_10076_22189)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2864)
(declare-fun |Seq#Append_3| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_10016)
(declare-fun ZeroMask () T@PolymorphicMapType_10037)
(declare-fun $allocated () T@Field_10076_53)
(declare-fun InsidePredicate_10076_10076 (T@Field_10076_22056 T@FrameType T@Field_10076_22056 T@FrameType) Bool)
(declare-fun |Map#Disjoint_20315_5| (T@Map_20315_5 T@Map_20315_5) Bool)
(declare-fun |Map#Disjoint_20315_20315| (T@Map_20315_20315 T@Map_20315_20315) Bool)
(declare-fun |Map#Disjoint_20315_5998| (T@Map_20315_5998 T@Map_20315_5998) Bool)
(declare-fun |Map#Disjoint_5_5| (T@Map_5_5 T@Map_5_5) Bool)
(declare-fun |Map#Disjoint_5_20315| (T@Map_5_20315 T@Map_5_20315) Bool)
(declare-fun |Map#Disjoint_5_5998| (T@Map_5_5998 T@Map_5_5998) Bool)
(declare-fun |Map#Disjoint_5997_5| (T@Map_5997_5 T@Map_5997_5) Bool)
(declare-fun |Map#Disjoint_5997_20315| (T@Map_6008_20315 T@Map_6008_20315) Bool)
(declare-fun |Map#Disjoint_5997_5998| (T@Map_5997_5998 T@Map_5997_5998) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10076_26659 (T@Field_10076_22189) Bool)
(declare-fun IsWandField_10076_26675 (T@Field_10076_22189) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10076_10090 (T@Field_10089_10090) Bool)
(declare-fun IsWandField_10076_10090 (T@Field_10089_10090) Bool)
(declare-fun IsPredicateField_10076_53 (T@Field_10076_53) Bool)
(declare-fun IsWandField_10076_53 (T@Field_10076_53) Bool)
(declare-fun HasDirectPerm_10076_27030 (T@PolymorphicMapType_10037 T@Ref T@Field_10076_22189) Bool)
(declare-fun HasDirectPerm_10076_10090 (T@PolymorphicMapType_10037 T@Ref T@Field_10089_10090) Bool)
(declare-fun HasDirectPerm_10076_53 (T@PolymorphicMapType_10037 T@Ref T@Field_10076_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10037 T@PolymorphicMapType_10037 T@PolymorphicMapType_10037) Bool)
(declare-fun |Set#Difference_20315| ((Array T@ListDomainType_5978 Bool) (Array T@ListDomainType_5978 Bool)) (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#Difference_5997| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Difference_5| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Map#Equal_20315_5| (T@Map_20315_5 T@Map_20315_5) Bool)
(declare-fun |Map#Equal_20315_20315| (T@Map_20315_20315 T@Map_20315_20315) Bool)
(declare-fun |Map#Equal_20315_5998| (T@Map_20315_5998 T@Map_20315_5998) Bool)
(declare-fun |Map#Equal_5997_5| (T@Map_5997_5 T@Map_5997_5) Bool)
(declare-fun |Map#Equal_5997_20315| (T@Map_6008_20315 T@Map_6008_20315) Bool)
(declare-fun |Map#Equal_5997_5998| (T@Map_5997_5998 T@Map_5997_5998) Bool)
(declare-fun |Map#Equal_5_5| (T@Map_5_5 T@Map_5_5) Bool)
(declare-fun |Map#Equal_5_20315| (T@Map_5_20315 T@Map_5_20315) Bool)
(declare-fun |Map#Equal_5_5998| (T@Map_5_5998 T@Map_5_5998) Bool)
(declare-fun |Set#UnionOne_20315| ((Array T@ListDomainType_5978 Bool) T@ListDomainType_5978) (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#UnionOne_5997| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Set#UnionOne_5| ((Array Bool Bool) Bool) (Array Bool Bool))
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun Cons_21482 (T@Map_6008_20315 T@ListDomainType_20325) T@ListDomainType_20325)
(declare-fun Cons_21228 (T@Map_5997_5998 T@ListDomainType_20309) T@ListDomainType_20309)
(declare-fun Cons_21052 ((Array Bool Bool) T@ListDomainType_20300) T@ListDomainType_20300)
(declare-fun Cons_20926 (T@Seq_2864 T@ListDomainType_20294) T@ListDomainType_20294)
(declare-fun Cons_20771 (T@ListDomainType_5982 T@ListDomainType_20288) T@ListDomainType_20288)
(declare-fun Cons_5 (Bool T@ListDomainType_5982) T@ListDomainType_5982)
(declare-fun Cons_3 (Int T@ListDomainType_5978) T@ListDomainType_5978)
(declare-fun |Map#Empty_20315_5| () T@Map_20315_5)
(declare-fun |Map#Empty_20315_20315| () T@Map_20315_20315)
(declare-fun |Map#Empty_20315_5998| () T@Map_20315_5998)
(declare-fun |Map#Empty_5_5| () T@Map_5_5)
(declare-fun |Map#Empty_5_20315| () T@Map_5_20315)
(declare-fun |Map#Empty_5_5998| () T@Map_5_5998)
(declare-fun |Map#Empty_5997_5| () T@Map_5997_5)
(declare-fun |Map#Empty_5997_20315| () T@Map_6008_20315)
(declare-fun |Map#Empty_5997_5998| () T@Map_5997_5998)
(declare-fun get_List_value_21482 (T@ListDomainType_20325) T@Map_6008_20315)
(declare-fun get_List_value_21228 (T@ListDomainType_20309) T@Map_5997_5998)
(declare-fun get_List_value_39115 (T@ListDomainType_20300) (Array Bool Bool))
(declare-fun get_List_value_20926 (T@ListDomainType_20294) T@Seq_2864)
(declare-fun get_List_value_20771 (T@ListDomainType_20288) T@ListDomainType_5982)
(declare-fun get_List_value_5 (T@ListDomainType_5982) Bool)
(declare-fun get_List_value_3 (T@ListDomainType_5978) Int)
(declare-fun get_List_tail_20325 (T@ListDomainType_20325) T@ListDomainType_20325)
(declare-fun get_List_tail_20309 (T@ListDomainType_20309) T@ListDomainType_20309)
(declare-fun get_List_tail_39475 (T@ListDomainType_20300) T@ListDomainType_20300)
(declare-fun get_List_tail_20294 (T@ListDomainType_20294) T@ListDomainType_20294)
(declare-fun get_List_tail_20288 (T@ListDomainType_20288) T@ListDomainType_20288)
(declare-fun get_List_tail_5982 (T@ListDomainType_5982) T@ListDomainType_5982)
(declare-fun get_List_tail_5978 (T@ListDomainType_5978) T@ListDomainType_5978)
(declare-fun |Set#Empty_20315| () (Array T@ListDomainType_5978 Bool))
(declare-fun |Set#Empty_5997| () (Array Int Bool))
(declare-fun |Set#Empty_5| () (Array Bool Bool))
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (forall ((m T@Map_20315_5) (v Bool) ) (!  (=> (select (|Map#Values_20315_5| m) v) (exists ((u T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_5| m) u) (= v (select (|Map#Elements_20315_5| m) u)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_20315_5| m) u))
 :pattern ( (select (|Map#Elements_20315_5| m) u))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_20315_5| m) v))
)))
(assert (forall ((m@@0 T@Map_20315_20315) (v@@0 T@ListDomainType_5978) ) (!  (=> (select (|Map#Values_20315_20315| m@@0) v@@0) (exists ((u@@0 T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_20315| m@@0) u@@0) (= v@@0 (select (|Map#Elements_20315_20315| m@@0) u@@0)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_20315_20315| m@@0) u@@0))
 :pattern ( (select (|Map#Elements_20315_20315| m@@0) u@@0))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_20315_20315| m@@0) v@@0))
)))
(assert (forall ((m@@1 T@Map_20315_5998) (v@@1 Int) ) (!  (=> (select (|Map#Values_20315_5998| m@@1) v@@1) (exists ((u@@1 T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_5998| m@@1) u@@1) (= v@@1 (select (|Map#Elements_20315_5998| m@@1) u@@1)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_20315_5998| m@@1) u@@1))
 :pattern ( (select (|Map#Elements_20315_5998| m@@1) u@@1))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_20315_5998| m@@1) v@@1))
)))
(assert (forall ((m@@2 T@Map_5_5) (v@@2 Bool) ) (!  (=> (select (|Map#Values_5_5| m@@2) v@@2) (exists ((u@@2 Bool) ) (!  (and (select (|Map#Domain_5_5| m@@2) u@@2) (= v@@2 (select (|Map#Elements_5_5| m@@2) u@@2)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5_5| m@@2) u@@2))
 :pattern ( (select (|Map#Elements_5_5| m@@2) u@@2))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5_5| m@@2) v@@2))
)))
(assert (forall ((m@@3 T@Map_5997_5) (v@@3 Bool) ) (!  (=> (select (|Map#Values_5997_5| m@@3) v@@3) (exists ((u@@3 Int) ) (!  (and (select (|Map#Domain_5997_5| m@@3) u@@3) (= v@@3 (select (|Map#Elements_5997_5| m@@3) u@@3)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5997_5| m@@3) u@@3))
 :pattern ( (select (|Map#Elements_5997_5| m@@3) u@@3))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5997_5| m@@3) v@@3))
)))
(assert (forall ((m@@4 T@Map_5_20315) (v@@4 T@ListDomainType_5978) ) (!  (=> (select (|Map#Values_5_20315| m@@4) v@@4) (exists ((u@@4 Bool) ) (!  (and (select (|Map#Domain_5_20315| m@@4) u@@4) (= v@@4 (select (|Map#Elements_5_20315| m@@4) u@@4)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5_20315| m@@4) u@@4))
 :pattern ( (select (|Map#Elements_5_20315| m@@4) u@@4))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5_20315| m@@4) v@@4))
)))
(assert (forall ((m@@5 T@Map_5_5998) (v@@5 Int) ) (!  (=> (select (|Map#Values_5_5998| m@@5) v@@5) (exists ((u@@5 Bool) ) (!  (and (select (|Map#Domain_5_5998| m@@5) u@@5) (= v@@5 (select (|Map#Elements_5_5998| m@@5) u@@5)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5_5998| m@@5) u@@5))
 :pattern ( (select (|Map#Elements_5_5998| m@@5) u@@5))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5_5998| m@@5) v@@5))
)))
(assert (forall ((m@@6 T@Map_6008_20315) (v@@6 T@ListDomainType_5978) ) (!  (=> (select (|Map#Values_5997_20315| m@@6) v@@6) (exists ((u@@6 Int) ) (!  (and (select (|Map#Domain_5997_20315| m@@6) u@@6) (= v@@6 (select (|Map#Elements_5997_20315| m@@6) u@@6)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5997_20315| m@@6) u@@6))
 :pattern ( (select (|Map#Elements_5997_20315| m@@6) u@@6))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5997_20315| m@@6) v@@6))
)))
(assert (forall ((m@@7 T@Map_5997_5998) (v@@7 Int) ) (!  (=> (select (|Map#Values_5997_5998| m@@7) v@@7) (exists ((u@@7 Int) ) (!  (and (select (|Map#Domain_5997_5998| m@@7) u@@7) (= v@@7 (select (|Map#Elements_5997_5998| m@@7) u@@7)))
 :qid |stdinbpl.767:10|
 :skolemid |120|
 :pattern ( (select (|Map#Domain_5997_5998| m@@7) u@@7))
 :pattern ( (select (|Map#Elements_5997_5998| m@@7) u@@7))
)))
 :qid |stdinbpl.765:20|
 :skolemid |121|
 :pattern ( (select (|Map#Values_5997_5998| m@@7) v@@7))
)))
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_2864| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10016) (Heap1 T@PolymorphicMapType_10016) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10016) (Mask T@PolymorphicMapType_10037) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10016) (Heap1@@0 T@PolymorphicMapType_10016) (Heap2 T@PolymorphicMapType_10016) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10076_22189) ) (!  (not (select (|PolymorphicMapType_10565_10076_23169#PolymorphicMapType_10565| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10565_10076_23169#PolymorphicMapType_10565| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10076_22056) ) (!  (not (select (|PolymorphicMapType_10565_10076_22056#PolymorphicMapType_10565| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10565_10076_22056#PolymorphicMapType_10565| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10089_10090) ) (!  (not (select (|PolymorphicMapType_10565_10076_10090#PolymorphicMapType_10565| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10565_10076_10090#PolymorphicMapType_10565| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10076_53) ) (!  (not (select (|PolymorphicMapType_10565_10076_53#PolymorphicMapType_10565| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10565_10076_53#PolymorphicMapType_10565| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.637:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (= (List_tag_21454 Nil_21454) 1))
(assert (= (List_tag_21209 Nil_21209) 1))
(assert (= (List_tag_39708 Nil_21034) 1))
(assert (= (List_tag_20907 Nil_20907) 1))
(assert (= (List_tag_20752 Nil_20752) 1))
(assert (= (List_tag_6106 Nil_6106) 1))
(assert (= (List_tag_6056 Nil_6056) 1))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v@@8 Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v@@8) n@@1) v@@8)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v@@8) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v@@8) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v@@8))
)))
(assert (forall ((a@@0 (Array T@ListDomainType_5978 Bool)) (b@@0 (Array T@ListDomainType_5978 Bool)) ) (! (= (|Set#Union_20315| (|Set#Union_20315| a@@0 b@@0) b@@0) (|Set#Union_20315| a@@0 b@@0))
 :qid |stdinbpl.589:18|
 :skolemid |74|
 :pattern ( (|Set#Union_20315| (|Set#Union_20315| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Union_5997| (|Set#Union_5997| a@@1 b@@1) b@@1) (|Set#Union_5997| a@@1 b@@1))
 :qid |stdinbpl.589:18|
 :skolemid |74|
 :pattern ( (|Set#Union_5997| (|Set#Union_5997| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Bool Bool)) (b@@2 (Array Bool Bool)) ) (! (= (|Set#Union_5| (|Set#Union_5| a@@2 b@@2) b@@2) (|Set#Union_5| a@@2 b@@2))
 :qid |stdinbpl.589:18|
 :skolemid |74|
 :pattern ( (|Set#Union_5| (|Set#Union_5| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@ListDomainType_5978 Bool)) (b@@3 (Array T@ListDomainType_5978 Bool)) ) (! (= (|Set#Intersection_20315| (|Set#Intersection_20315| a@@3 b@@3) b@@3) (|Set#Intersection_20315| a@@3 b@@3))
 :qid |stdinbpl.593:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_20315| (|Set#Intersection_20315| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@4 (Array Int Bool)) ) (! (= (|Set#Intersection_5997| (|Set#Intersection_5997| a@@4 b@@4) b@@4) (|Set#Intersection_5997| a@@4 b@@4))
 :qid |stdinbpl.593:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_5997| (|Set#Intersection_5997| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 (Array Bool Bool)) (b@@5 (Array Bool Bool)) ) (! (= (|Set#Intersection_5| (|Set#Intersection_5| a@@5 b@@5) b@@5) (|Set#Intersection_5| a@@5 b@@5))
 :qid |stdinbpl.593:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_5| (|Set#Intersection_5| a@@5 b@@5) b@@5))
)))
(assert (forall ((m@@8 T@Map_20315_5) (u@@8 T@ListDomainType_5978) (v@@9 Bool) ) (!  (=> (select (|Map#Domain_20315_5| m@@8) u@@8) (= (|Map#Card_20315_5| (|Map#Build_20315_5| m@@8 u@@8 v@@9)) (|Map#Card_20315_5| m@@8)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_20315_5| (|Map#Build_20315_5| m@@8 u@@8 v@@9)))
 :pattern ( (|Map#Card_20315_5| m@@8) (|Map#Build_20315_5| m@@8 u@@8 v@@9))
)))
(assert (forall ((m@@9 T@Map_20315_20315) (u@@9 T@ListDomainType_5978) (v@@10 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_20315| m@@9) u@@9) (= (|Map#Card_20315_20315| (|Map#Build_20315_20315| m@@9 u@@9 v@@10)) (|Map#Card_20315_20315| m@@9)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_20315_20315| (|Map#Build_20315_20315| m@@9 u@@9 v@@10)))
 :pattern ( (|Map#Card_20315_20315| m@@9) (|Map#Build_20315_20315| m@@9 u@@9 v@@10))
)))
(assert (forall ((m@@10 T@Map_20315_5998) (u@@10 T@ListDomainType_5978) (v@@11 Int) ) (!  (=> (select (|Map#Domain_20315_5998| m@@10) u@@10) (= (|Map#Card_20315_5998| (|Map#Build_20315_5998| m@@10 u@@10 v@@11)) (|Map#Card_20315_5998| m@@10)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_20315_5998| (|Map#Build_20315_5998| m@@10 u@@10 v@@11)))
 :pattern ( (|Map#Card_20315_5998| m@@10) (|Map#Build_20315_5998| m@@10 u@@10 v@@11))
)))
(assert (forall ((m@@11 T@Map_5997_5) (u@@11 Int) (v@@12 Bool) ) (!  (=> (select (|Map#Domain_5997_5| m@@11) u@@11) (= (|Map#Card_5997_5| (|Map#Build_5997_5| m@@11 u@@11 v@@12)) (|Map#Card_5997_5| m@@11)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5997_5| (|Map#Build_5997_5| m@@11 u@@11 v@@12)))
 :pattern ( (|Map#Card_5997_5| m@@11) (|Map#Build_5997_5| m@@11 u@@11 v@@12))
)))
(assert (forall ((m@@12 T@Map_6008_20315) (u@@12 Int) (v@@13 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_5997_20315| m@@12) u@@12) (= (|Map#Card_5997_20315| (|Map#Build_6008_21349| m@@12 u@@12 v@@13)) (|Map#Card_5997_20315| m@@12)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5997_20315| (|Map#Build_6008_21349| m@@12 u@@12 v@@13)))
 :pattern ( (|Map#Card_5997_20315| m@@12) (|Map#Build_6008_21349| m@@12 u@@12 v@@13))
)))
(assert (forall ((m@@13 T@Map_5997_5998) (u@@13 Int) (v@@14 Int) ) (!  (=> (select (|Map#Domain_5997_5998| m@@13) u@@13) (= (|Map#Card_5997_5998| (|Map#Build_5997_5998| m@@13 u@@13 v@@14)) (|Map#Card_5997_5998| m@@13)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5997_5998| (|Map#Build_5997_5998| m@@13 u@@13 v@@14)))
 :pattern ( (|Map#Card_5997_5998| m@@13) (|Map#Build_5997_5998| m@@13 u@@13 v@@14))
)))
(assert (forall ((m@@14 T@Map_5_5) (u@@14 Bool) (v@@15 Bool) ) (!  (=> (select (|Map#Domain_5_5| m@@14) u@@14) (= (|Map#Card_5_5| (|Map#Build_5_5| m@@14 u@@14 v@@15)) (|Map#Card_5_5| m@@14)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5_5| (|Map#Build_5_5| m@@14 u@@14 v@@15)))
 :pattern ( (|Map#Card_5_5| m@@14) (|Map#Build_5_5| m@@14 u@@14 v@@15))
)))
(assert (forall ((m@@15 T@Map_5_20315) (u@@15 Bool) (v@@16 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_5_20315| m@@15) u@@15) (= (|Map#Card_5_20315| (|Map#Build_5_20315| m@@15 u@@15 v@@16)) (|Map#Card_5_20315| m@@15)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5_20315| (|Map#Build_5_20315| m@@15 u@@15 v@@16)))
 :pattern ( (|Map#Card_5_20315| m@@15) (|Map#Build_5_20315| m@@15 u@@15 v@@16))
)))
(assert (forall ((m@@16 T@Map_5_5998) (u@@16 Bool) (v@@17 Int) ) (!  (=> (select (|Map#Domain_5_5998| m@@16) u@@16) (= (|Map#Card_5_5998| (|Map#Build_5_5998| m@@16 u@@16 v@@17)) (|Map#Card_5_5998| m@@16)))
 :qid |stdinbpl.804:21|
 :skolemid |129|
 :pattern ( (|Map#Card_5_5998| (|Map#Build_5_5998| m@@16 u@@16 v@@17)))
 :pattern ( (|Map#Card_5_5998| m@@16) (|Map#Build_5_5998| m@@16 u@@16 v@@17))
)))
(assert (forall ((r T@ListDomainType_5978) (o T@ListDomainType_5978) ) (! (= (select (|Set#Singleton_20315| r) o) (= r o))
 :qid |stdinbpl.558:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_20315| r) o))
)))
(assert (forall ((r@@0 Int) (o@@0 Int) ) (! (= (select (|Set#Singleton_5997| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.558:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_5997| r@@0) o@@0))
)))
(assert (forall ((r@@1 Bool) (o@@1 Bool) ) (! (= (select (|Set#Singleton_5| r@@1) o@@1) (= r@@1 o@@1))
 :qid |stdinbpl.558:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_5| r@@1) o@@1))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2864| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@18 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@18)  (and (<= q@min v@@18) (< v@@18 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@18))
)))
(assert (forall ((a@@6 (Array T@ListDomainType_5978 Bool)) (b@@6 (Array T@ListDomainType_5978 Bool)) ) (! (= (+ (|Set#Card_20315| (|Set#Union_20315| a@@6 b@@6)) (|Set#Card_20315| (|Set#Intersection_20315| a@@6 b@@6))) (+ (|Set#Card_20315| a@@6) (|Set#Card_20315| b@@6)))
 :qid |stdinbpl.597:18|
 :skolemid |78|
 :pattern ( (|Set#Card_20315| (|Set#Union_20315| a@@6 b@@6)))
 :pattern ( (|Set#Card_20315| (|Set#Intersection_20315| a@@6 b@@6)))
)))
(assert (forall ((a@@7 (Array Int Bool)) (b@@7 (Array Int Bool)) ) (! (= (+ (|Set#Card_5997| (|Set#Union_5997| a@@7 b@@7)) (|Set#Card_5997| (|Set#Intersection_5997| a@@7 b@@7))) (+ (|Set#Card_5997| a@@7) (|Set#Card_5997| b@@7)))
 :qid |stdinbpl.597:18|
 :skolemid |78|
 :pattern ( (|Set#Card_5997| (|Set#Union_5997| a@@7 b@@7)))
 :pattern ( (|Set#Card_5997| (|Set#Intersection_5997| a@@7 b@@7)))
)))
(assert (forall ((a@@8 (Array Bool Bool)) (b@@8 (Array Bool Bool)) ) (! (= (+ (|Set#Card_5| (|Set#Union_5| a@@8 b@@8)) (|Set#Card_5| (|Set#Intersection_5| a@@8 b@@8))) (+ (|Set#Card_5| a@@8) (|Set#Card_5| b@@8)))
 :qid |stdinbpl.597:18|
 :skolemid |78|
 :pattern ( (|Set#Card_5| (|Set#Union_5| a@@8 b@@8)))
 :pattern ( (|Set#Card_5| (|Set#Intersection_5| a@@8 b@@8)))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2864| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((a@@9 Int) ) (!  (=> (<= 0 a@@9) (= (|Math#clip| a@@9) a@@9))
 :qid |stdinbpl.640:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@9))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10016) (ExhaleHeap T@PolymorphicMapType_10016) (Mask@@0 T@PolymorphicMapType_10037) (pm_f T@Field_10076_22056) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10076_22120 Mask@@0 null pm_f) (IsPredicateField_10076_22147 pm_f)) (= (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@0) null (PredicateMaskField_10076 pm_f)) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap) null (PredicateMaskField_10076 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10076_22147 pm_f) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap) null (PredicateMaskField_10076 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10016) (ExhaleHeap@@0 T@PolymorphicMapType_10016) (Mask@@1 T@PolymorphicMapType_10037) (pm_f@@0 T@Field_10076_22056) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10076_22120 Mask@@1 null pm_f@@0) (IsWandField_10076_23696 pm_f@@0)) (= (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@1) null (WandMaskField_10076 pm_f@@0)) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@0) null (WandMaskField_10076 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10076_23696 pm_f@@0) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@0) null (WandMaskField_10076 pm_f@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2864| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2864| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2864| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (forall ((m@@17 T@Map_20315_5) (u@@17 T@ListDomainType_5978) (v@@19 Bool) ) (!  (=> (not (select (|Map#Domain_20315_5| m@@17) u@@17)) (= (|Map#Card_20315_5| (|Map#Build_20315_5| m@@17 u@@17 v@@19)) (+ (|Map#Card_20315_5| m@@17) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_20315_5| (|Map#Build_20315_5| m@@17 u@@17 v@@19)))
 :pattern ( (|Map#Card_20315_5| m@@17) (|Map#Build_20315_5| m@@17 u@@17 v@@19))
)))
(assert (forall ((m@@18 T@Map_20315_20315) (u@@18 T@ListDomainType_5978) (v@@20 T@ListDomainType_5978) ) (!  (=> (not (select (|Map#Domain_20315_20315| m@@18) u@@18)) (= (|Map#Card_20315_20315| (|Map#Build_20315_20315| m@@18 u@@18 v@@20)) (+ (|Map#Card_20315_20315| m@@18) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_20315_20315| (|Map#Build_20315_20315| m@@18 u@@18 v@@20)))
 :pattern ( (|Map#Card_20315_20315| m@@18) (|Map#Build_20315_20315| m@@18 u@@18 v@@20))
)))
(assert (forall ((m@@19 T@Map_20315_5998) (u@@19 T@ListDomainType_5978) (v@@21 Int) ) (!  (=> (not (select (|Map#Domain_20315_5998| m@@19) u@@19)) (= (|Map#Card_20315_5998| (|Map#Build_20315_5998| m@@19 u@@19 v@@21)) (+ (|Map#Card_20315_5998| m@@19) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_20315_5998| (|Map#Build_20315_5998| m@@19 u@@19 v@@21)))
 :pattern ( (|Map#Card_20315_5998| m@@19) (|Map#Build_20315_5998| m@@19 u@@19 v@@21))
)))
(assert (forall ((m@@20 T@Map_5997_5) (u@@20 Int) (v@@22 Bool) ) (!  (=> (not (select (|Map#Domain_5997_5| m@@20) u@@20)) (= (|Map#Card_5997_5| (|Map#Build_5997_5| m@@20 u@@20 v@@22)) (+ (|Map#Card_5997_5| m@@20) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5997_5| (|Map#Build_5997_5| m@@20 u@@20 v@@22)))
 :pattern ( (|Map#Card_5997_5| m@@20) (|Map#Build_5997_5| m@@20 u@@20 v@@22))
)))
(assert (forall ((m@@21 T@Map_6008_20315) (u@@21 Int) (v@@23 T@ListDomainType_5978) ) (!  (=> (not (select (|Map#Domain_5997_20315| m@@21) u@@21)) (= (|Map#Card_5997_20315| (|Map#Build_6008_21349| m@@21 u@@21 v@@23)) (+ (|Map#Card_5997_20315| m@@21) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5997_20315| (|Map#Build_6008_21349| m@@21 u@@21 v@@23)))
 :pattern ( (|Map#Card_5997_20315| m@@21) (|Map#Build_6008_21349| m@@21 u@@21 v@@23))
)))
(assert (forall ((m@@22 T@Map_5997_5998) (u@@22 Int) (v@@24 Int) ) (!  (=> (not (select (|Map#Domain_5997_5998| m@@22) u@@22)) (= (|Map#Card_5997_5998| (|Map#Build_5997_5998| m@@22 u@@22 v@@24)) (+ (|Map#Card_5997_5998| m@@22) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5997_5998| (|Map#Build_5997_5998| m@@22 u@@22 v@@24)))
 :pattern ( (|Map#Card_5997_5998| m@@22) (|Map#Build_5997_5998| m@@22 u@@22 v@@24))
)))
(assert (forall ((m@@23 T@Map_5_5) (u@@23 Bool) (v@@25 Bool) ) (!  (=> (not (select (|Map#Domain_5_5| m@@23) u@@23)) (= (|Map#Card_5_5| (|Map#Build_5_5| m@@23 u@@23 v@@25)) (+ (|Map#Card_5_5| m@@23) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5_5| (|Map#Build_5_5| m@@23 u@@23 v@@25)))
 :pattern ( (|Map#Card_5_5| m@@23) (|Map#Build_5_5| m@@23 u@@23 v@@25))
)))
(assert (forall ((m@@24 T@Map_5_20315) (u@@24 Bool) (v@@26 T@ListDomainType_5978) ) (!  (=> (not (select (|Map#Domain_5_20315| m@@24) u@@24)) (= (|Map#Card_5_20315| (|Map#Build_5_20315| m@@24 u@@24 v@@26)) (+ (|Map#Card_5_20315| m@@24) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5_20315| (|Map#Build_5_20315| m@@24 u@@24 v@@26)))
 :pattern ( (|Map#Card_5_20315| m@@24) (|Map#Build_5_20315| m@@24 u@@24 v@@26))
)))
(assert (forall ((m@@25 T@Map_5_5998) (u@@25 Bool) (v@@27 Int) ) (!  (=> (not (select (|Map#Domain_5_5998| m@@25) u@@25)) (= (|Map#Card_5_5998| (|Map#Build_5_5998| m@@25 u@@25 v@@27)) (+ (|Map#Card_5_5998| m@@25) 1)))
 :qid |stdinbpl.807:21|
 :skolemid |130|
 :pattern ( (|Map#Card_5_5998| (|Map#Build_5_5998| m@@25 u@@25 v@@27)))
 :pattern ( (|Map#Card_5_5998| m@@25) (|Map#Build_5_5998| m@@25 u@@25 v@@27))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10016) (ExhaleHeap@@1 T@PolymorphicMapType_10016) (Mask@@2 T@PolymorphicMapType_10037) (pm_f@@1 T@Field_10076_22056) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10076_22120 Mask@@2 null pm_f@@1) (IsPredicateField_10076_22147 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_10076_53) ) (!  (=> (select (|PolymorphicMapType_10565_10076_53#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@2) null (PredicateMaskField_10076 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@2) o2 f_2) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_10089_10090) ) (!  (=> (select (|PolymorphicMapType_10565_10076_10090#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@2) null (PredicateMaskField_10076 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10076_22056) ) (!  (=> (select (|PolymorphicMapType_10565_10076_22056#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@2) null (PredicateMaskField_10076 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_10076_22189) ) (!  (=> (select (|PolymorphicMapType_10565_10076_23169#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@2) null (PredicateMaskField_10076 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10076_22147 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10016) (ExhaleHeap@@2 T@PolymorphicMapType_10016) (Mask@@3 T@PolymorphicMapType_10037) (pm_f@@2 T@Field_10076_22056) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10076_22120 Mask@@3 null pm_f@@2) (IsWandField_10076_23696 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_10076_53) ) (!  (=> (select (|PolymorphicMapType_10565_10076_53#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@3) null (WandMaskField_10076 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_10089_10090) ) (!  (=> (select (|PolymorphicMapType_10565_10076_10090#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@3) null (WandMaskField_10076 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_10076_22056) ) (!  (=> (select (|PolymorphicMapType_10565_10076_22056#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@3) null (WandMaskField_10076 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10076_22189) ) (!  (=> (select (|PolymorphicMapType_10565_10076_23169#PolymorphicMapType_10565| (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@3) null (WandMaskField_10076 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_10076_23696 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10016) (ExhaleHeap@@3 T@PolymorphicMapType_10016) (Mask@@4 T@PolymorphicMapType_10037) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_10076_22056) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10076_10076 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10076_10076 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10016) (ExhaleHeap@@4 T@PolymorphicMapType_10016) (Mask@@5 T@PolymorphicMapType_10037) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((m@@26 T@Map_20315_5) (|m'| T@Map_20315_5) ) (!  (=> (|Map#Disjoint_20315_5| m@@26 |m'|) (forall ((o@@2 T@ListDomainType_5978) ) (!  (or (not (select (|Map#Domain_20315_5| m@@26) o@@2)) (not (select (|Map#Domain_20315_5| |m'|) o@@2)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_20315_5| m@@26) o@@2))
 :pattern ( (select (|Map#Domain_20315_5| |m'|) o@@2))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_20315_5| m@@26 |m'|))
)))
(assert (forall ((m@@27 T@Map_20315_20315) (|m'@@0| T@Map_20315_20315) ) (!  (=> (|Map#Disjoint_20315_20315| m@@27 |m'@@0|) (forall ((o@@3 T@ListDomainType_5978) ) (!  (or (not (select (|Map#Domain_20315_20315| m@@27) o@@3)) (not (select (|Map#Domain_20315_20315| |m'@@0|) o@@3)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_20315_20315| m@@27) o@@3))
 :pattern ( (select (|Map#Domain_20315_20315| |m'@@0|) o@@3))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_20315_20315| m@@27 |m'@@0|))
)))
(assert (forall ((m@@28 T@Map_20315_5998) (|m'@@1| T@Map_20315_5998) ) (!  (=> (|Map#Disjoint_20315_5998| m@@28 |m'@@1|) (forall ((o@@4 T@ListDomainType_5978) ) (!  (or (not (select (|Map#Domain_20315_5998| m@@28) o@@4)) (not (select (|Map#Domain_20315_5998| |m'@@1|) o@@4)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_20315_5998| m@@28) o@@4))
 :pattern ( (select (|Map#Domain_20315_5998| |m'@@1|) o@@4))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_20315_5998| m@@28 |m'@@1|))
)))
(assert (forall ((m@@29 T@Map_5_5) (|m'@@2| T@Map_5_5) ) (!  (=> (|Map#Disjoint_5_5| m@@29 |m'@@2|) (forall ((o@@5 Bool) ) (!  (or (not (select (|Map#Domain_5_5| m@@29) o@@5)) (not (select (|Map#Domain_5_5| |m'@@2|) o@@5)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5_5| m@@29) o@@5))
 :pattern ( (select (|Map#Domain_5_5| |m'@@2|) o@@5))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5_5| m@@29 |m'@@2|))
)))
(assert (forall ((m@@30 T@Map_5_20315) (|m'@@3| T@Map_5_20315) ) (!  (=> (|Map#Disjoint_5_20315| m@@30 |m'@@3|) (forall ((o@@6 Bool) ) (!  (or (not (select (|Map#Domain_5_20315| m@@30) o@@6)) (not (select (|Map#Domain_5_20315| |m'@@3|) o@@6)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5_20315| m@@30) o@@6))
 :pattern ( (select (|Map#Domain_5_20315| |m'@@3|) o@@6))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5_20315| m@@30 |m'@@3|))
)))
(assert (forall ((m@@31 T@Map_5_5998) (|m'@@4| T@Map_5_5998) ) (!  (=> (|Map#Disjoint_5_5998| m@@31 |m'@@4|) (forall ((o@@7 Bool) ) (!  (or (not (select (|Map#Domain_5_5998| m@@31) o@@7)) (not (select (|Map#Domain_5_5998| |m'@@4|) o@@7)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5_5998| m@@31) o@@7))
 :pattern ( (select (|Map#Domain_5_5998| |m'@@4|) o@@7))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5_5998| m@@31 |m'@@4|))
)))
(assert (forall ((m@@32 T@Map_5997_5) (|m'@@5| T@Map_5997_5) ) (!  (=> (|Map#Disjoint_5997_5| m@@32 |m'@@5|) (forall ((o@@8 Int) ) (!  (or (not (select (|Map#Domain_5997_5| m@@32) o@@8)) (not (select (|Map#Domain_5997_5| |m'@@5|) o@@8)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5997_5| m@@32) o@@8))
 :pattern ( (select (|Map#Domain_5997_5| |m'@@5|) o@@8))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5997_5| m@@32 |m'@@5|))
)))
(assert (forall ((m@@33 T@Map_6008_20315) (|m'@@6| T@Map_6008_20315) ) (!  (=> (|Map#Disjoint_5997_20315| m@@33 |m'@@6|) (forall ((o@@9 Int) ) (!  (or (not (select (|Map#Domain_5997_20315| m@@33) o@@9)) (not (select (|Map#Domain_5997_20315| |m'@@6|) o@@9)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5997_20315| m@@33) o@@9))
 :pattern ( (select (|Map#Domain_5997_20315| |m'@@6|) o@@9))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5997_20315| m@@33 |m'@@6|))
)))
(assert (forall ((m@@34 T@Map_5997_5998) (|m'@@7| T@Map_5997_5998) ) (!  (=> (|Map#Disjoint_5997_5998| m@@34 |m'@@7|) (forall ((o@@10 Int) ) (!  (or (not (select (|Map#Domain_5997_5998| m@@34) o@@10)) (not (select (|Map#Domain_5997_5998| |m'@@7|) o@@10)))
 :qid |stdinbpl.827:37|
 :skolemid |135|
 :pattern ( (select (|Map#Domain_5997_5998| m@@34) o@@10))
 :pattern ( (select (|Map#Domain_5997_5998| |m'@@7|) o@@10))
)))
 :qid |stdinbpl.825:21|
 :skolemid |136|
 :pattern ( (|Map#Disjoint_5997_5998| m@@34 |m'@@7|))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10037) (o_2@@3 T@Ref) (f_4@@3 T@Field_10076_22189) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_10076_26659 f_4@@3))) (not (IsWandField_10076_26675 f_4@@3))) (<= (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10037) (o_2@@4 T@Ref) (f_4@@4 T@Field_10076_22056) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10076_22147 f_4@@4))) (not (IsWandField_10076_23696 f_4@@4))) (<= (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10037) (o_2@@5 T@Ref) (f_4@@5 T@Field_10089_10090) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10076_10090 f_4@@5))) (not (IsWandField_10076_10090 f_4@@5))) (<= (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10037) (o_2@@6 T@Ref) (f_4@@6 T@Field_10076_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_10076_53 f_4@@6))) (not (IsWandField_10076_53 f_4@@6))) (<= (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10037) (o_2@@7 T@Ref) (f_4@@7 T@Field_10076_22189) ) (! (= (HasDirectPerm_10076_27030 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10076_27030 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10037) (o_2@@8 T@Ref) (f_4@@8 T@Field_10076_22056) ) (! (= (HasDirectPerm_10076_22120 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10076_22120 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10037) (o_2@@9 T@Ref) (f_4@@9 T@Field_10089_10090) ) (! (= (HasDirectPerm_10076_10090 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10076_10090 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10037) (o_2@@10 T@Ref) (f_4@@10 T@Field_10076_53) ) (! (= (HasDirectPerm_10076_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10076_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10016) (ExhaleHeap@@5 T@PolymorphicMapType_10016) (Mask@@14 T@PolymorphicMapType_10037) (o_1@@0 T@Ref) (f_2@@7 T@Field_10076_22189) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_10076_27030 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10016) (ExhaleHeap@@6 T@PolymorphicMapType_10016) (Mask@@15 T@PolymorphicMapType_10037) (o_1@@1 T@Ref) (f_2@@8 T@Field_10076_22056) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_10076_22120 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10016) (ExhaleHeap@@7 T@PolymorphicMapType_10016) (Mask@@16 T@PolymorphicMapType_10037) (o_1@@2 T@Ref) (f_2@@9 T@Field_10089_10090) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_10076_10090 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10016) (ExhaleHeap@@8 T@PolymorphicMapType_10016) (Mask@@17 T@PolymorphicMapType_10037) (o_1@@3 T@Ref) (f_2@@10 T@Field_10076_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_10076_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((m@@35 T@Map_20315_5) (u@@26 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5| m@@35) u@@26) (select (|Map#Values_20315_5| m@@35) (select (|Map#Elements_20315_5| m@@35) u@@26)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_20315_5| m@@35) u@@26))
)))
(assert (forall ((m@@36 T@Map_20315_20315) (u@@27 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_20315| m@@36) u@@27) (select (|Map#Values_20315_20315| m@@36) (select (|Map#Elements_20315_20315| m@@36) u@@27)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_20315_20315| m@@36) u@@27))
)))
(assert (forall ((m@@37 T@Map_20315_5998) (u@@28 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5998| m@@37) u@@28) (select (|Map#Values_20315_5998| m@@37) (select (|Map#Elements_20315_5998| m@@37) u@@28)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_20315_5998| m@@37) u@@28))
)))
(assert (forall ((m@@38 T@Map_5997_5) (u@@29 Int) ) (!  (=> (select (|Map#Domain_5997_5| m@@38) u@@29) (select (|Map#Values_5997_5| m@@38) (select (|Map#Elements_5997_5| m@@38) u@@29)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5997_5| m@@38) u@@29))
)))
(assert (forall ((m@@39 T@Map_5_5) (u@@30 Bool) ) (!  (=> (select (|Map#Domain_5_5| m@@39) u@@30) (select (|Map#Values_5_5| m@@39) (select (|Map#Elements_5_5| m@@39) u@@30)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5_5| m@@39) u@@30))
)))
(assert (forall ((m@@40 T@Map_6008_20315) (u@@31 Int) ) (!  (=> (select (|Map#Domain_5997_20315| m@@40) u@@31) (select (|Map#Values_5997_20315| m@@40) (select (|Map#Elements_5997_20315| m@@40) u@@31)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5997_20315| m@@40) u@@31))
)))
(assert (forall ((m@@41 T@Map_5997_5998) (u@@32 Int) ) (!  (=> (select (|Map#Domain_5997_5998| m@@41) u@@32) (select (|Map#Values_5997_5998| m@@41) (select (|Map#Elements_5997_5998| m@@41) u@@32)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5997_5998| m@@41) u@@32))
)))
(assert (forall ((m@@42 T@Map_5_20315) (u@@33 Bool) ) (!  (=> (select (|Map#Domain_5_20315| m@@42) u@@33) (select (|Map#Values_5_20315| m@@42) (select (|Map#Elements_5_20315| m@@42) u@@33)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5_20315| m@@42) u@@33))
)))
(assert (forall ((m@@43 T@Map_5_5998) (u@@34 Bool) ) (!  (=> (select (|Map#Domain_5_5998| m@@43) u@@34) (select (|Map#Values_5_5998| m@@43) (select (|Map#Elements_5_5998| m@@43) u@@34)))
 :qid |stdinbpl.771:20|
 :skolemid |122|
 :pattern ( (select (|Map#Elements_5_5998| m@@43) u@@34))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10076_22189) ) (! (= (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10076_22056) ) (! (= (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10089_10090) ) (! (= (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10076_53) ) (! (= (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_2864| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_2864| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10037) (SummandMask1 T@PolymorphicMapType_10037) (SummandMask2 T@PolymorphicMapType_10037) (o_2@@15 T@Ref) (f_4@@15 T@Field_10076_22189) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10037_10076_25750#PolymorphicMapType_10037| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10037) (SummandMask1@@0 T@PolymorphicMapType_10037) (SummandMask2@@0 T@PolymorphicMapType_10037) (o_2@@16 T@Ref) (f_4@@16 T@Field_10076_22056) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10037_10076_22056#PolymorphicMapType_10037| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10037) (SummandMask1@@1 T@PolymorphicMapType_10037) (SummandMask2@@1 T@PolymorphicMapType_10037) (o_2@@17 T@Ref) (f_4@@17 T@Field_10089_10090) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10037_10076_10090#PolymorphicMapType_10037| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10037) (SummandMask1@@2 T@PolymorphicMapType_10037) (SummandMask2@@2 T@PolymorphicMapType_10037) (o_2@@18 T@Ref) (f_4@@18 T@Field_10076_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10037_10076_53#PolymorphicMapType_10037| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@10 (Array T@ListDomainType_5978 Bool)) (b@@9 (Array T@ListDomainType_5978 Bool)) (o@@11 T@ListDomainType_5978) ) (! (= (select (|Set#Intersection_20315| a@@10 b@@9) o@@11)  (and (select a@@10 o@@11) (select b@@9 o@@11)))
 :qid |stdinbpl.586:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_20315| a@@10 b@@9) o@@11))
 :pattern ( (|Set#Intersection_20315| a@@10 b@@9) (select a@@10 o@@11))
 :pattern ( (|Set#Intersection_20315| a@@10 b@@9) (select b@@9 o@@11))
)))
(assert (forall ((a@@11 (Array Int Bool)) (b@@10 (Array Int Bool)) (o@@12 Int) ) (! (= (select (|Set#Intersection_5997| a@@11 b@@10) o@@12)  (and (select a@@11 o@@12) (select b@@10 o@@12)))
 :qid |stdinbpl.586:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_5997| a@@11 b@@10) o@@12))
 :pattern ( (|Set#Intersection_5997| a@@11 b@@10) (select a@@11 o@@12))
 :pattern ( (|Set#Intersection_5997| a@@11 b@@10) (select b@@10 o@@12))
)))
(assert (forall ((a@@12 (Array Bool Bool)) (b@@11 (Array Bool Bool)) (o@@13 Bool) ) (! (= (select (|Set#Intersection_5| a@@12 b@@11) o@@13)  (and (select a@@12 o@@13) (select b@@11 o@@13)))
 :qid |stdinbpl.586:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_5| a@@12 b@@11) o@@13))
 :pattern ( (|Set#Intersection_5| a@@12 b@@11) (select a@@12 o@@13))
 :pattern ( (|Set#Intersection_5| a@@12 b@@11) (select b@@11 o@@13))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@13 (Array T@ListDomainType_5978 Bool)) (b@@12 (Array T@ListDomainType_5978 Bool)) (o@@14 T@ListDomainType_5978) ) (! (= (select (|Set#Difference_20315| a@@13 b@@12) o@@14)  (and (select a@@13 o@@14) (not (select b@@12 o@@14))))
 :qid |stdinbpl.601:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_20315| a@@13 b@@12) o@@14))
 :pattern ( (|Set#Difference_20315| a@@13 b@@12) (select a@@13 o@@14))
)))
(assert (forall ((a@@14 (Array Int Bool)) (b@@13 (Array Int Bool)) (o@@15 Int) ) (! (= (select (|Set#Difference_5997| a@@14 b@@13) o@@15)  (and (select a@@14 o@@15) (not (select b@@13 o@@15))))
 :qid |stdinbpl.601:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_5997| a@@14 b@@13) o@@15))
 :pattern ( (|Set#Difference_5997| a@@14 b@@13) (select a@@14 o@@15))
)))
(assert (forall ((a@@15 (Array Bool Bool)) (b@@14 (Array Bool Bool)) (o@@16 Bool) ) (! (= (select (|Set#Difference_5| a@@15 b@@14) o@@16)  (and (select a@@15 o@@16) (not (select b@@14 o@@16))))
 :qid |stdinbpl.601:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_5| a@@15 b@@14) o@@16))
 :pattern ( (|Set#Difference_5| a@@15 b@@14) (select a@@15 o@@16))
)))
(assert (forall ((m@@44 T@Map_20315_5) (u@@35 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5| m@@44) u@@35) (> (|Set#Card_5| (|Map#Values_20315_5| m@@44)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_20315_5| m@@44) u@@35))
 :pattern ( (select (|Map#Elements_20315_5| m@@44) u@@35))
)))
(assert (forall ((m@@45 T@Map_20315_20315) (u@@36 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_20315| m@@45) u@@36) (> (|Set#Card_20315| (|Map#Values_20315_20315| m@@45)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_20315_20315| m@@45) u@@36))
 :pattern ( (select (|Map#Elements_20315_20315| m@@45) u@@36))
)))
(assert (forall ((m@@46 T@Map_20315_5998) (u@@37 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5998| m@@46) u@@37) (> (|Set#Card_5997| (|Map#Values_20315_5998| m@@46)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_20315_5998| m@@46) u@@37))
 :pattern ( (select (|Map#Elements_20315_5998| m@@46) u@@37))
)))
(assert (forall ((m@@47 T@Map_5997_5) (u@@38 Int) ) (!  (=> (select (|Map#Domain_5997_5| m@@47) u@@38) (> (|Set#Card_5| (|Map#Values_5997_5| m@@47)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5997_5| m@@47) u@@38))
 :pattern ( (select (|Map#Elements_5997_5| m@@47) u@@38))
)))
(assert (forall ((m@@48 T@Map_6008_20315) (u@@39 Int) ) (!  (=> (select (|Map#Domain_5997_20315| m@@48) u@@39) (> (|Set#Card_20315| (|Map#Values_5997_20315| m@@48)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5997_20315| m@@48) u@@39))
 :pattern ( (select (|Map#Elements_5997_20315| m@@48) u@@39))
)))
(assert (forall ((m@@49 T@Map_5997_5998) (u@@40 Int) ) (!  (=> (select (|Map#Domain_5997_5998| m@@49) u@@40) (> (|Set#Card_5997| (|Map#Values_5997_5998| m@@49)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5997_5998| m@@49) u@@40))
 :pattern ( (select (|Map#Elements_5997_5998| m@@49) u@@40))
)))
(assert (forall ((m@@50 T@Map_5_5) (u@@41 Bool) ) (!  (=> (select (|Map#Domain_5_5| m@@50) u@@41) (> (|Set#Card_5| (|Map#Values_5_5| m@@50)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5_5| m@@50) u@@41))
 :pattern ( (select (|Map#Elements_5_5| m@@50) u@@41))
)))
(assert (forall ((m@@51 T@Map_5_20315) (u@@42 Bool) ) (!  (=> (select (|Map#Domain_5_20315| m@@51) u@@42) (> (|Set#Card_20315| (|Map#Values_5_20315| m@@51)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5_20315| m@@51) u@@42))
 :pattern ( (select (|Map#Elements_5_20315| m@@51) u@@42))
)))
(assert (forall ((m@@52 T@Map_5_5998) (u@@43 Bool) ) (!  (=> (select (|Map#Domain_5_5998| m@@52) u@@43) (> (|Set#Card_5997| (|Map#Values_5_5998| m@@52)) 0))
 :qid |stdinbpl.777:20|
 :skolemid |123|
 :pattern ( (select (|Map#Domain_5_5998| m@@52) u@@43))
 :pattern ( (select (|Map#Elements_5_5998| m@@52) u@@43))
)))
(assert (forall ((a@@16 T@Seq_2864) (b@@15 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a@@16 b@@15) (= a@@16 b@@15))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a@@16 b@@15))
)))
(assert (forall ((m@@53 T@Map_20315_5) (|m'@@8| T@Map_20315_5) ) (!  (=> (|Map#Equal_20315_5| m@@53 |m'@@8|) (= m@@53 |m'@@8|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_20315_5| m@@53 |m'@@8|))
)))
(assert (forall ((m@@54 T@Map_20315_20315) (|m'@@9| T@Map_20315_20315) ) (!  (=> (|Map#Equal_20315_20315| m@@54 |m'@@9|) (= m@@54 |m'@@9|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_20315_20315| m@@54 |m'@@9|))
)))
(assert (forall ((m@@55 T@Map_20315_5998) (|m'@@10| T@Map_20315_5998) ) (!  (=> (|Map#Equal_20315_5998| m@@55 |m'@@10|) (= m@@55 |m'@@10|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_20315_5998| m@@55 |m'@@10|))
)))
(assert (forall ((m@@56 T@Map_5997_5) (|m'@@11| T@Map_5997_5) ) (!  (=> (|Map#Equal_5997_5| m@@56 |m'@@11|) (= m@@56 |m'@@11|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5997_5| m@@56 |m'@@11|))
)))
(assert (forall ((m@@57 T@Map_6008_20315) (|m'@@12| T@Map_6008_20315) ) (!  (=> (|Map#Equal_5997_20315| m@@57 |m'@@12|) (= m@@57 |m'@@12|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5997_20315| m@@57 |m'@@12|))
)))
(assert (forall ((m@@58 T@Map_5997_5998) (|m'@@13| T@Map_5997_5998) ) (!  (=> (|Map#Equal_5997_5998| m@@58 |m'@@13|) (= m@@58 |m'@@13|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5997_5998| m@@58 |m'@@13|))
)))
(assert (forall ((m@@59 T@Map_5_5) (|m'@@14| T@Map_5_5) ) (!  (=> (|Map#Equal_5_5| m@@59 |m'@@14|) (= m@@59 |m'@@14|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5_5| m@@59 |m'@@14|))
)))
(assert (forall ((m@@60 T@Map_5_20315) (|m'@@15| T@Map_5_20315) ) (!  (=> (|Map#Equal_5_20315| m@@60 |m'@@15|) (= m@@60 |m'@@15|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5_20315| m@@60 |m'@@15|))
)))
(assert (forall ((m@@61 T@Map_5_5998) (|m'@@16| T@Map_5_5998) ) (!  (=> (|Map#Equal_5_5998| m@@61 |m'@@16|) (= m@@61 |m'@@16|))
 :qid |stdinbpl.819:21|
 :skolemid |134|
 :pattern ( (|Map#Equal_5_5998| m@@61 |m'@@16|))
)))
(assert (forall ((a@@17 (Array T@ListDomainType_5978 Bool)) (x@@1 T@ListDomainType_5978) (y@@0 T@ListDomainType_5978) ) (!  (=> (select a@@17 y@@0) (select (|Set#UnionOne_20315| a@@17 x@@1) y@@0))
 :qid |stdinbpl.566:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_20315| a@@17 x@@1) (select a@@17 y@@0))
)))
(assert (forall ((a@@18 (Array Int Bool)) (x@@2 Int) (y@@1 Int) ) (!  (=> (select a@@18 y@@1) (select (|Set#UnionOne_5997| a@@18 x@@2) y@@1))
 :qid |stdinbpl.566:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_5997| a@@18 x@@2) (select a@@18 y@@1))
)))
(assert (forall ((a@@19 (Array Bool Bool)) (x@@3 Bool) (y@@2 Bool) ) (!  (=> (select a@@19 y@@2) (select (|Set#UnionOne_5| a@@19 x@@3) y@@2))
 :qid |stdinbpl.566:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_5| a@@19 x@@3) (select a@@19 y@@2))
)))
(assert (forall ((a@@20 (Array T@ListDomainType_5978 Bool)) (b@@16 (Array T@ListDomainType_5978 Bool)) (y@@3 T@ListDomainType_5978) ) (!  (=> (select a@@20 y@@3) (select (|Set#Union_20315| a@@20 b@@16) y@@3))
 :qid |stdinbpl.576:18|
 :skolemid |71|
 :pattern ( (|Set#Union_20315| a@@20 b@@16) (select a@@20 y@@3))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@17 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select a@@21 y@@4) (select (|Set#Union_5997| a@@21 b@@17) y@@4))
 :qid |stdinbpl.576:18|
 :skolemid |71|
 :pattern ( (|Set#Union_5997| a@@21 b@@17) (select a@@21 y@@4))
)))
(assert (forall ((a@@22 (Array Bool Bool)) (b@@18 (Array Bool Bool)) (y@@5 Bool) ) (!  (=> (select a@@22 y@@5) (select (|Set#Union_5| a@@22 b@@18) y@@5))
 :qid |stdinbpl.576:18|
 :skolemid |71|
 :pattern ( (|Set#Union_5| a@@22 b@@18) (select a@@22 y@@5))
)))
(assert (forall ((a@@23 (Array T@ListDomainType_5978 Bool)) (b@@19 (Array T@ListDomainType_5978 Bool)) (y@@6 T@ListDomainType_5978) ) (!  (=> (select b@@19 y@@6) (select (|Set#Union_20315| a@@23 b@@19) y@@6))
 :qid |stdinbpl.578:18|
 :skolemid |72|
 :pattern ( (|Set#Union_20315| a@@23 b@@19) (select b@@19 y@@6))
)))
(assert (forall ((a@@24 (Array Int Bool)) (b@@20 (Array Int Bool)) (y@@7 Int) ) (!  (=> (select b@@20 y@@7) (select (|Set#Union_5997| a@@24 b@@20) y@@7))
 :qid |stdinbpl.578:18|
 :skolemid |72|
 :pattern ( (|Set#Union_5997| a@@24 b@@20) (select b@@20 y@@7))
)))
(assert (forall ((a@@25 (Array Bool Bool)) (b@@21 (Array Bool Bool)) (y@@8 Bool) ) (!  (=> (select b@@21 y@@8) (select (|Set#Union_5| a@@25 b@@21) y@@8))
 :qid |stdinbpl.578:18|
 :skolemid |72|
 :pattern ( (|Set#Union_5| a@@25 b@@21) (select b@@21 y@@8))
)))
(assert (forall ((a@@26 (Array T@ListDomainType_5978 Bool)) (x@@4 T@ListDomainType_5978) (o@@17 T@ListDomainType_5978) ) (! (= (select (|Set#UnionOne_20315| a@@26 x@@4) o@@17)  (or (= o@@17 x@@4) (select a@@26 o@@17)))
 :qid |stdinbpl.562:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_20315| a@@26 x@@4) o@@17))
)))
(assert (forall ((a@@27 (Array Int Bool)) (x@@5 Int) (o@@18 Int) ) (! (= (select (|Set#UnionOne_5997| a@@27 x@@5) o@@18)  (or (= o@@18 x@@5) (select a@@27 o@@18)))
 :qid |stdinbpl.562:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_5997| a@@27 x@@5) o@@18))
)))
(assert (forall ((a@@28 (Array Bool Bool)) (x@@6 Bool) (o@@19 Bool) ) (! (= (select (|Set#UnionOne_5| a@@28 x@@6) o@@19)  (or (= o@@19 x@@6) (select a@@28 o@@19)))
 :qid |stdinbpl.562:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_5| a@@28 x@@6) o@@19))
)))
(assert (forall ((a@@29 (Array T@ListDomainType_5978 Bool)) (b@@22 (Array T@ListDomainType_5978 Bool)) (y@@9 T@ListDomainType_5978) ) (!  (=> (select b@@22 y@@9) (not (select (|Set#Difference_20315| a@@29 b@@22) y@@9)))
 :qid |stdinbpl.603:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_20315| a@@29 b@@22) (select b@@22 y@@9))
)))
(assert (forall ((a@@30 (Array Int Bool)) (b@@23 (Array Int Bool)) (y@@10 Int) ) (!  (=> (select b@@23 y@@10) (not (select (|Set#Difference_5997| a@@30 b@@23) y@@10)))
 :qid |stdinbpl.603:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_5997| a@@30 b@@23) (select b@@23 y@@10))
)))
(assert (forall ((a@@31 (Array Bool Bool)) (b@@24 (Array Bool Bool)) (y@@11 Bool) ) (!  (=> (select b@@24 y@@11) (not (select (|Set#Difference_5| a@@31 b@@24) y@@11)))
 :qid |stdinbpl.603:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_5| a@@31 b@@24) (select b@@24 y@@11))
)))
(assert (forall ((m@@62 T@Map_20315_5) (|m'@@17| T@Map_20315_5) ) (!  (=> (and (forall ((u@@44 T@ListDomainType_5978) ) (! (= (select (|Map#Domain_20315_5| m@@62) u@@44) (select (|Map#Domain_20315_5| |m'@@17|) u@@44))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@45 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5| m@@62) u@@45) (= (select (|Map#Elements_20315_5| m@@62) u@@45) (select (|Map#Elements_20315_5| |m'@@17|) u@@45)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_20315_5| m@@62 |m'@@17|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_20315_5| m@@62 |m'@@17|))
)))
(assert (forall ((m@@63 T@Map_20315_20315) (|m'@@18| T@Map_20315_20315) ) (!  (=> (and (forall ((u@@46 T@ListDomainType_5978) ) (! (= (select (|Map#Domain_20315_20315| m@@63) u@@46) (select (|Map#Domain_20315_20315| |m'@@18|) u@@46))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@47 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_20315| m@@63) u@@47) (= (select (|Map#Elements_20315_20315| m@@63) u@@47) (select (|Map#Elements_20315_20315| |m'@@18|) u@@47)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_20315_20315| m@@63 |m'@@18|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_20315_20315| m@@63 |m'@@18|))
)))
(assert (forall ((m@@64 T@Map_20315_5998) (|m'@@19| T@Map_20315_5998) ) (!  (=> (and (forall ((u@@48 T@ListDomainType_5978) ) (! (= (select (|Map#Domain_20315_5998| m@@64) u@@48) (select (|Map#Domain_20315_5998| |m'@@19|) u@@48))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@49 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5998| m@@64) u@@49) (= (select (|Map#Elements_20315_5998| m@@64) u@@49) (select (|Map#Elements_20315_5998| |m'@@19|) u@@49)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_20315_5998| m@@64 |m'@@19|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_20315_5998| m@@64 |m'@@19|))
)))
(assert (forall ((m@@65 T@Map_5997_5) (|m'@@20| T@Map_5997_5) ) (!  (=> (and (forall ((u@@50 Int) ) (! (= (select (|Map#Domain_5997_5| m@@65) u@@50) (select (|Map#Domain_5997_5| |m'@@20|) u@@50))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@51 Int) ) (!  (=> (select (|Map#Domain_5997_5| m@@65) u@@51) (= (select (|Map#Elements_5997_5| m@@65) u@@51) (select (|Map#Elements_5997_5| |m'@@20|) u@@51)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5997_5| m@@65 |m'@@20|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5997_5| m@@65 |m'@@20|))
)))
(assert (forall ((m@@66 T@Map_6008_20315) (|m'@@21| T@Map_6008_20315) ) (!  (=> (and (forall ((u@@52 Int) ) (! (= (select (|Map#Domain_5997_20315| m@@66) u@@52) (select (|Map#Domain_5997_20315| |m'@@21|) u@@52))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@53 Int) ) (!  (=> (select (|Map#Domain_5997_20315| m@@66) u@@53) (= (select (|Map#Elements_5997_20315| m@@66) u@@53) (select (|Map#Elements_5997_20315| |m'@@21|) u@@53)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5997_20315| m@@66 |m'@@21|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5997_20315| m@@66 |m'@@21|))
)))
(assert (forall ((m@@67 T@Map_5997_5998) (|m'@@22| T@Map_5997_5998) ) (!  (=> (and (forall ((u@@54 Int) ) (! (= (select (|Map#Domain_5997_5998| m@@67) u@@54) (select (|Map#Domain_5997_5998| |m'@@22|) u@@54))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@55 Int) ) (!  (=> (select (|Map#Domain_5997_5998| m@@67) u@@55) (= (select (|Map#Elements_5997_5998| m@@67) u@@55) (select (|Map#Elements_5997_5998| |m'@@22|) u@@55)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5997_5998| m@@67 |m'@@22|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5997_5998| m@@67 |m'@@22|))
)))
(assert (forall ((m@@68 T@Map_5_5) (|m'@@23| T@Map_5_5) ) (!  (=> (and (forall ((u@@56 Bool) ) (! (= (select (|Map#Domain_5_5| m@@68) u@@56) (select (|Map#Domain_5_5| |m'@@23|) u@@56))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@57 Bool) ) (!  (=> (select (|Map#Domain_5_5| m@@68) u@@57) (= (select (|Map#Elements_5_5| m@@68) u@@57) (select (|Map#Elements_5_5| |m'@@23|) u@@57)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5_5| m@@68 |m'@@23|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5_5| m@@68 |m'@@23|))
)))
(assert (forall ((m@@69 T@Map_5_20315) (|m'@@24| T@Map_5_20315) ) (!  (=> (and (forall ((u@@58 Bool) ) (! (= (select (|Map#Domain_5_20315| m@@69) u@@58) (select (|Map#Domain_5_20315| |m'@@24|) u@@58))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@59 Bool) ) (!  (=> (select (|Map#Domain_5_20315| m@@69) u@@59) (= (select (|Map#Elements_5_20315| m@@69) u@@59) (select (|Map#Elements_5_20315| |m'@@24|) u@@59)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5_20315| m@@69 |m'@@24|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5_20315| m@@69 |m'@@24|))
)))
(assert (forall ((m@@70 T@Map_5_5998) (|m'@@25| T@Map_5_5998) ) (!  (=> (and (forall ((u@@60 Bool) ) (! (= (select (|Map#Domain_5_5998| m@@70) u@@60) (select (|Map#Domain_5_5998| |m'@@25|) u@@60))
 :qid |stdinbpl.816:12|
 :skolemid |131|
)) (forall ((u@@61 Bool) ) (!  (=> (select (|Map#Domain_5_5998| m@@70) u@@61) (= (select (|Map#Elements_5_5998| m@@70) u@@61) (select (|Map#Elements_5_5998| |m'@@25|) u@@61)))
 :qid |stdinbpl.817:14|
 :skolemid |132|
))) (|Map#Equal_5_5998| m@@70 |m'@@25|))
 :qid |stdinbpl.814:21|
 :skolemid |133|
 :pattern ( (|Map#Equal_5_5998| m@@70 |m'@@25|))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((a@@32 (Array T@ListDomainType_5978 Bool)) (b@@25 (Array T@ListDomainType_5978 Bool)) ) (!  (and (= (+ (+ (|Set#Card_20315| (|Set#Difference_20315| a@@32 b@@25)) (|Set#Card_20315| (|Set#Difference_20315| b@@25 a@@32))) (|Set#Card_20315| (|Set#Intersection_20315| a@@32 b@@25))) (|Set#Card_20315| (|Set#Union_20315| a@@32 b@@25))) (= (|Set#Card_20315| (|Set#Difference_20315| a@@32 b@@25)) (- (|Set#Card_20315| a@@32) (|Set#Card_20315| (|Set#Intersection_20315| a@@32 b@@25)))))
 :qid |stdinbpl.605:18|
 :skolemid |81|
 :pattern ( (|Set#Card_20315| (|Set#Difference_20315| a@@32 b@@25)))
)))
(assert (forall ((a@@33 (Array Int Bool)) (b@@26 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_5997| (|Set#Difference_5997| a@@33 b@@26)) (|Set#Card_5997| (|Set#Difference_5997| b@@26 a@@33))) (|Set#Card_5997| (|Set#Intersection_5997| a@@33 b@@26))) (|Set#Card_5997| (|Set#Union_5997| a@@33 b@@26))) (= (|Set#Card_5997| (|Set#Difference_5997| a@@33 b@@26)) (- (|Set#Card_5997| a@@33) (|Set#Card_5997| (|Set#Intersection_5997| a@@33 b@@26)))))
 :qid |stdinbpl.605:18|
 :skolemid |81|
 :pattern ( (|Set#Card_5997| (|Set#Difference_5997| a@@33 b@@26)))
)))
(assert (forall ((a@@34 (Array Bool Bool)) (b@@27 (Array Bool Bool)) ) (!  (and (= (+ (+ (|Set#Card_5| (|Set#Difference_5| a@@34 b@@27)) (|Set#Card_5| (|Set#Difference_5| b@@27 a@@34))) (|Set#Card_5| (|Set#Intersection_5| a@@34 b@@27))) (|Set#Card_5| (|Set#Union_5| a@@34 b@@27))) (= (|Set#Card_5| (|Set#Difference_5| a@@34 b@@27)) (- (|Set#Card_5| a@@34) (|Set#Card_5| (|Set#Intersection_5| a@@34 b@@27)))))
 :qid |stdinbpl.605:18|
 :skolemid |81|
 :pattern ( (|Set#Card_5| (|Set#Difference_5| a@@34 b@@27)))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_2864|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2864|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s@@10 (Array T@ListDomainType_5978 Bool)) ) (! (<= 0 (|Set#Card_20315| s@@10))
 :qid |stdinbpl.548:18|
 :skolemid |58|
 :pattern ( (|Set#Card_20315| s@@10))
)))
(assert (forall ((s@@11 (Array Int Bool)) ) (! (<= 0 (|Set#Card_5997| s@@11))
 :qid |stdinbpl.548:18|
 :skolemid |58|
 :pattern ( (|Set#Card_5997| s@@11))
)))
(assert (forall ((s@@12 (Array Bool Bool)) ) (! (<= 0 (|Set#Card_5| s@@12))
 :qid |stdinbpl.548:18|
 :skolemid |58|
 :pattern ( (|Set#Card_5| s@@12))
)))
(assert (forall ((m@@71 T@Map_20315_5) ) (! (<= 0 (|Map#Card_20315_5| m@@71))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_20315_5| m@@71))
)))
(assert (forall ((m@@72 T@Map_20315_20315) ) (! (<= 0 (|Map#Card_20315_20315| m@@72))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_20315_20315| m@@72))
)))
(assert (forall ((m@@73 T@Map_20315_5998) ) (! (<= 0 (|Map#Card_20315_5998| m@@73))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_20315_5998| m@@73))
)))
(assert (forall ((m@@74 T@Map_5_5) ) (! (<= 0 (|Map#Card_5_5| m@@74))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5_5| m@@74))
)))
(assert (forall ((m@@75 T@Map_5_20315) ) (! (<= 0 (|Map#Card_5_20315| m@@75))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5_20315| m@@75))
)))
(assert (forall ((m@@76 T@Map_5_5998) ) (! (<= 0 (|Map#Card_5_5998| m@@76))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5_5998| m@@76))
)))
(assert (forall ((m@@77 T@Map_5997_5) ) (! (<= 0 (|Map#Card_5997_5| m@@77))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5997_5| m@@77))
)))
(assert (forall ((m@@78 T@Map_6008_20315) ) (! (<= 0 (|Map#Card_5997_20315| m@@78))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5997_20315| m@@78))
)))
(assert (forall ((m@@79 T@Map_5997_5998) ) (! (<= 0 (|Map#Card_5997_5998| m@@79))
 :qid |stdinbpl.746:20|
 :skolemid |118|
 :pattern ( (|Map#Card_5997_5998| m@@79))
)))
(assert (forall ((value T@Map_6008_20315) (tail_1 T@ListDomainType_20325) ) (! (= (List_tag_21454 (Cons_21482 value tail_1)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_21482 value tail_1))
)))
(assert (forall ((value@@0 T@Map_5997_5998) (tail_1@@0 T@ListDomainType_20309) ) (! (= (List_tag_21209 (Cons_21228 value@@0 tail_1@@0)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_21228 value@@0 tail_1@@0))
)))
(assert (forall ((value@@1 (Array Bool Bool)) (tail_1@@1 T@ListDomainType_20300) ) (! (= (List_tag_39708 (Cons_21052 value@@1 tail_1@@1)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_21052 value@@1 tail_1@@1))
)))
(assert (forall ((value@@2 T@Seq_2864) (tail_1@@2 T@ListDomainType_20294) ) (! (= (List_tag_20907 (Cons_20926 value@@2 tail_1@@2)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_20926 value@@2 tail_1@@2))
)))
(assert (forall ((value@@3 T@ListDomainType_5982) (tail_1@@3 T@ListDomainType_20288) ) (! (= (List_tag_20752 (Cons_20771 value@@3 tail_1@@3)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_20771 value@@3 tail_1@@3))
)))
(assert (forall ((value@@4 Bool) (tail_1@@4 T@ListDomainType_5982) ) (! (= (List_tag_6106 (Cons_5 value@@4 tail_1@@4)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_5 value@@4 tail_1@@4))
)))
(assert (forall ((value@@5 Int) (tail_1@@5 T@ListDomainType_5978) ) (! (= (List_tag_6056 (Cons_3 value@@5 tail_1@@5)) 0)
 :qid |stdinbpl.875:19|
 :skolemid |142|
 :pattern ( (Cons_3 value@@5 tail_1@@5))
)))
(assert (forall ((a@@35 (Array T@ListDomainType_5978 Bool)) (x@@7 T@ListDomainType_5978) ) (! (select (|Set#UnionOne_20315| a@@35 x@@7) x@@7)
 :qid |stdinbpl.564:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_20315| a@@35 x@@7))
)))
(assert (forall ((a@@36 (Array Int Bool)) (x@@8 Int) ) (! (select (|Set#UnionOne_5997| a@@36 x@@8) x@@8)
 :qid |stdinbpl.564:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_5997| a@@36 x@@8))
)))
(assert (forall ((a@@37 (Array Bool Bool)) (x@@9 Bool) ) (! (select (|Set#UnionOne_5| a@@37 x@@9) x@@9)
 :qid |stdinbpl.564:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_5| a@@37 x@@9))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@2 s1@@2))
)))
(assert (forall ((a@@38 (Array T@ListDomainType_5978 Bool)) (x@@10 T@ListDomainType_5978) ) (!  (=> (select a@@38 x@@10) (= (|Set#Card_20315| (|Set#UnionOne_20315| a@@38 x@@10)) (|Set#Card_20315| a@@38)))
 :qid |stdinbpl.568:18|
 :skolemid |68|
 :pattern ( (|Set#Card_20315| (|Set#UnionOne_20315| a@@38 x@@10)))
)))
(assert (forall ((a@@39 (Array Int Bool)) (x@@11 Int) ) (!  (=> (select a@@39 x@@11) (= (|Set#Card_5997| (|Set#UnionOne_5997| a@@39 x@@11)) (|Set#Card_5997| a@@39)))
 :qid |stdinbpl.568:18|
 :skolemid |68|
 :pattern ( (|Set#Card_5997| (|Set#UnionOne_5997| a@@39 x@@11)))
)))
(assert (forall ((a@@40 (Array Bool Bool)) (x@@12 Bool) ) (!  (=> (select a@@40 x@@12) (= (|Set#Card_5| (|Set#UnionOne_5| a@@40 x@@12)) (|Set#Card_5| a@@40)))
 :qid |stdinbpl.568:18|
 :skolemid |68|
 :pattern ( (|Set#Card_5| (|Set#UnionOne_5| a@@40 x@@12)))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((r@@2 T@ListDomainType_5978) ) (! (= (|Set#Card_20315| (|Set#Singleton_20315| r@@2)) 1)
 :qid |stdinbpl.559:18|
 :skolemid |64|
 :pattern ( (|Set#Card_20315| (|Set#Singleton_20315| r@@2)))
)))
(assert (forall ((r@@3 Int) ) (! (= (|Set#Card_5997| (|Set#Singleton_5997| r@@3)) 1)
 :qid |stdinbpl.559:18|
 :skolemid |64|
 :pattern ( (|Set#Card_5997| (|Set#Singleton_5997| r@@3)))
)))
(assert (forall ((r@@4 Bool) ) (! (= (|Set#Card_5| (|Set#Singleton_5| r@@4)) 1)
 :qid |stdinbpl.559:18|
 :skolemid |64|
 :pattern ( (|Set#Card_5| (|Set#Singleton_5| r@@4)))
)))
(assert (forall ((r@@5 T@ListDomainType_5978) ) (! (select (|Set#Singleton_20315| r@@5) r@@5)
 :qid |stdinbpl.557:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_20315| r@@5))
)))
(assert (forall ((r@@6 Int) ) (! (select (|Set#Singleton_5997| r@@6) r@@6)
 :qid |stdinbpl.557:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_5997| r@@6))
)))
(assert (forall ((r@@7 Bool) ) (! (select (|Set#Singleton_5| r@@7) r@@7)
 :qid |stdinbpl.557:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_5| r@@7))
)))
(assert (forall ((m@@80 T@Map_20315_5) ) (!  (and (and (= (= (|Map#Card_20315_5| m@@80) 0) (= m@@80 |Map#Empty_20315_5|)) (=> (not (= (|Map#Card_20315_5| m@@80) 0)) (exists ((x@@13 T@ListDomainType_5978) ) (! (select (|Map#Domain_20315_5| m@@80) x@@13)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@14 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5| m@@80) x@@14) (not (= (|Map#Card_20315_5| m@@80) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_20315_5| m@@80) x@@14))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_20315_5| m@@80))
)))
(assert (forall ((m@@81 T@Map_20315_20315) ) (!  (and (and (= (= (|Map#Card_20315_20315| m@@81) 0) (= m@@81 |Map#Empty_20315_20315|)) (=> (not (= (|Map#Card_20315_20315| m@@81) 0)) (exists ((x@@15 T@ListDomainType_5978) ) (! (select (|Map#Domain_20315_20315| m@@81) x@@15)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@16 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_20315| m@@81) x@@16) (not (= (|Map#Card_20315_20315| m@@81) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_20315_20315| m@@81) x@@16))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_20315_20315| m@@81))
)))
(assert (forall ((m@@82 T@Map_20315_5998) ) (!  (and (and (= (= (|Map#Card_20315_5998| m@@82) 0) (= m@@82 |Map#Empty_20315_5998|)) (=> (not (= (|Map#Card_20315_5998| m@@82) 0)) (exists ((x@@17 T@ListDomainType_5978) ) (! (select (|Map#Domain_20315_5998| m@@82) x@@17)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@18 T@ListDomainType_5978) ) (!  (=> (select (|Map#Domain_20315_5998| m@@82) x@@18) (not (= (|Map#Card_20315_5998| m@@82) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_20315_5998| m@@82) x@@18))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_20315_5998| m@@82))
)))
(assert (forall ((m@@83 T@Map_5_5) ) (!  (and (and (= (= (|Map#Card_5_5| m@@83) 0) (= m@@83 |Map#Empty_5_5|)) (=> (not (= (|Map#Card_5_5| m@@83) 0)) (exists ((x@@19 Bool) ) (! (select (|Map#Domain_5_5| m@@83) x@@19)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@20 Bool) ) (!  (=> (select (|Map#Domain_5_5| m@@83) x@@20) (not (= (|Map#Card_5_5| m@@83) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5_5| m@@83) x@@20))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5_5| m@@83))
)))
(assert (forall ((m@@84 T@Map_5_20315) ) (!  (and (and (= (= (|Map#Card_5_20315| m@@84) 0) (= m@@84 |Map#Empty_5_20315|)) (=> (not (= (|Map#Card_5_20315| m@@84) 0)) (exists ((x@@21 Bool) ) (! (select (|Map#Domain_5_20315| m@@84) x@@21)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@22 Bool) ) (!  (=> (select (|Map#Domain_5_20315| m@@84) x@@22) (not (= (|Map#Card_5_20315| m@@84) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5_20315| m@@84) x@@22))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5_20315| m@@84))
)))
(assert (forall ((m@@85 T@Map_5_5998) ) (!  (and (and (= (= (|Map#Card_5_5998| m@@85) 0) (= m@@85 |Map#Empty_5_5998|)) (=> (not (= (|Map#Card_5_5998| m@@85) 0)) (exists ((x@@23 Bool) ) (! (select (|Map#Domain_5_5998| m@@85) x@@23)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@24 Bool) ) (!  (=> (select (|Map#Domain_5_5998| m@@85) x@@24) (not (= (|Map#Card_5_5998| m@@85) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5_5998| m@@85) x@@24))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5_5998| m@@85))
)))
(assert (forall ((m@@86 T@Map_5997_5) ) (!  (and (and (= (= (|Map#Card_5997_5| m@@86) 0) (= m@@86 |Map#Empty_5997_5|)) (=> (not (= (|Map#Card_5997_5| m@@86) 0)) (exists ((x@@25 Int) ) (! (select (|Map#Domain_5997_5| m@@86) x@@25)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@26 Int) ) (!  (=> (select (|Map#Domain_5997_5| m@@86) x@@26) (not (= (|Map#Card_5997_5| m@@86) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5997_5| m@@86) x@@26))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5997_5| m@@86))
)))
(assert (forall ((m@@87 T@Map_6008_20315) ) (!  (and (and (= (= (|Map#Card_5997_20315| m@@87) 0) (= m@@87 |Map#Empty_5997_20315|)) (=> (not (= (|Map#Card_5997_20315| m@@87) 0)) (exists ((x@@27 Int) ) (! (select (|Map#Domain_5997_20315| m@@87) x@@27)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@28 Int) ) (!  (=> (select (|Map#Domain_5997_20315| m@@87) x@@28) (not (= (|Map#Card_5997_20315| m@@87) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5997_20315| m@@87) x@@28))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5997_20315| m@@87))
)))
(assert (forall ((m@@88 T@Map_5997_5998) ) (!  (and (and (= (= (|Map#Card_5997_5998| m@@88) 0) (= m@@88 |Map#Empty_5997_5998|)) (=> (not (= (|Map#Card_5997_5998| m@@88) 0)) (exists ((x@@29 Int) ) (! (select (|Map#Domain_5997_5998| m@@88) x@@29)
 :qid |stdinbpl.790:32|
 :skolemid |125|
)))) (forall ((x@@30 Int) ) (!  (=> (select (|Map#Domain_5997_5998| m@@88) x@@30) (not (= (|Map#Card_5997_5998| m@@88) 0)))
 :qid |stdinbpl.791:11|
 :skolemid |126|
 :pattern ( (select (|Map#Domain_5997_5998| m@@88) x@@30))
)))
 :qid |stdinbpl.788:21|
 :skolemid |127|
 :pattern ( (|Map#Card_5997_5998| m@@88))
)))
(assert (forall ((a@@41 (Array T@ListDomainType_5978 Bool)) (b@@28 (Array T@ListDomainType_5978 Bool)) ) (! (= (|Set#Union_20315| a@@41 (|Set#Union_20315| a@@41 b@@28)) (|Set#Union_20315| a@@41 b@@28))
 :qid |stdinbpl.591:18|
 :skolemid |75|
 :pattern ( (|Set#Union_20315| a@@41 (|Set#Union_20315| a@@41 b@@28)))
)))
(assert (forall ((a@@42 (Array Int Bool)) (b@@29 (Array Int Bool)) ) (! (= (|Set#Union_5997| a@@42 (|Set#Union_5997| a@@42 b@@29)) (|Set#Union_5997| a@@42 b@@29))
 :qid |stdinbpl.591:18|
 :skolemid |75|
 :pattern ( (|Set#Union_5997| a@@42 (|Set#Union_5997| a@@42 b@@29)))
)))
(assert (forall ((a@@43 (Array Bool Bool)) (b@@30 (Array Bool Bool)) ) (! (= (|Set#Union_5| a@@43 (|Set#Union_5| a@@43 b@@30)) (|Set#Union_5| a@@43 b@@30))
 :qid |stdinbpl.591:18|
 :skolemid |75|
 :pattern ( (|Set#Union_5| a@@43 (|Set#Union_5| a@@43 b@@30)))
)))
(assert (forall ((a@@44 (Array T@ListDomainType_5978 Bool)) (b@@31 (Array T@ListDomainType_5978 Bool)) ) (! (= (|Set#Intersection_20315| a@@44 (|Set#Intersection_20315| a@@44 b@@31)) (|Set#Intersection_20315| a@@44 b@@31))
 :qid |stdinbpl.595:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_20315| a@@44 (|Set#Intersection_20315| a@@44 b@@31)))
)))
(assert (forall ((a@@45 (Array Int Bool)) (b@@32 (Array Int Bool)) ) (! (= (|Set#Intersection_5997| a@@45 (|Set#Intersection_5997| a@@45 b@@32)) (|Set#Intersection_5997| a@@45 b@@32))
 :qid |stdinbpl.595:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_5997| a@@45 (|Set#Intersection_5997| a@@45 b@@32)))
)))
(assert (forall ((a@@46 (Array Bool Bool)) (b@@33 (Array Bool Bool)) ) (! (= (|Set#Intersection_5| a@@46 (|Set#Intersection_5| a@@46 b@@33)) (|Set#Intersection_5| a@@46 b@@33))
 :qid |stdinbpl.595:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_5| a@@46 (|Set#Intersection_5| a@@46 b@@33)))
)))
(assert (forall ((value@@6 T@Map_6008_20315) (tail_1@@6 T@ListDomainType_20325) ) (! (= value@@6 (get_List_value_21482 (Cons_21482 value@@6 tail_1@@6)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_21482 value@@6 tail_1@@6))
)))
(assert (forall ((value@@7 T@Map_5997_5998) (tail_1@@7 T@ListDomainType_20309) ) (! (= value@@7 (get_List_value_21228 (Cons_21228 value@@7 tail_1@@7)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_21228 value@@7 tail_1@@7))
)))
(assert (forall ((value@@8 (Array Bool Bool)) (tail_1@@8 T@ListDomainType_20300) ) (! (= value@@8 (get_List_value_39115 (Cons_21052 value@@8 tail_1@@8)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_21052 value@@8 tail_1@@8))
)))
(assert (forall ((value@@9 T@Seq_2864) (tail_1@@9 T@ListDomainType_20294) ) (! (= value@@9 (get_List_value_20926 (Cons_20926 value@@9 tail_1@@9)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_20926 value@@9 tail_1@@9))
)))
(assert (forall ((value@@10 T@ListDomainType_5982) (tail_1@@10 T@ListDomainType_20288) ) (! (= value@@10 (get_List_value_20771 (Cons_20771 value@@10 tail_1@@10)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_20771 value@@10 tail_1@@10))
)))
(assert (forall ((value@@11 Bool) (tail_1@@11 T@ListDomainType_5982) ) (! (= value@@11 (get_List_value_5 (Cons_5 value@@11 tail_1@@11)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_5 value@@11 tail_1@@11))
)))
(assert (forall ((value@@12 Int) (tail_1@@12 T@ListDomainType_5978) ) (! (= value@@12 (get_List_value_3 (Cons_3 value@@12 tail_1@@12)))
 :qid |stdinbpl.857:19|
 :skolemid |139|
 :pattern ( (Cons_3 value@@12 tail_1@@12))
)))
(assert (forall ((value@@13 T@Map_6008_20315) (tail_1@@13 T@ListDomainType_20325) ) (! (= tail_1@@13 (get_List_tail_20325 (Cons_21482 value@@13 tail_1@@13)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_21482 value@@13 tail_1@@13))
)))
(assert (forall ((value@@14 T@Map_5997_5998) (tail_1@@14 T@ListDomainType_20309) ) (! (= tail_1@@14 (get_List_tail_20309 (Cons_21228 value@@14 tail_1@@14)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_21228 value@@14 tail_1@@14))
)))
(assert (forall ((value@@15 (Array Bool Bool)) (tail_1@@15 T@ListDomainType_20300) ) (! (= tail_1@@15 (get_List_tail_39475 (Cons_21052 value@@15 tail_1@@15)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_21052 value@@15 tail_1@@15))
)))
(assert (forall ((value@@16 T@Seq_2864) (tail_1@@16 T@ListDomainType_20294) ) (! (= tail_1@@16 (get_List_tail_20294 (Cons_20926 value@@16 tail_1@@16)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_20926 value@@16 tail_1@@16))
)))
(assert (forall ((value@@17 T@ListDomainType_5982) (tail_1@@17 T@ListDomainType_20288) ) (! (= tail_1@@17 (get_List_tail_20288 (Cons_20771 value@@17 tail_1@@17)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_20771 value@@17 tail_1@@17))
)))
(assert (forall ((value@@18 Bool) (tail_1@@18 T@ListDomainType_5982) ) (! (= tail_1@@18 (get_List_tail_5982 (Cons_5 value@@18 tail_1@@18)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_5 value@@18 tail_1@@18))
)))
(assert (forall ((value@@19 Int) (tail_1@@19 T@ListDomainType_5978) ) (! (= tail_1@@19 (get_List_tail_5978 (Cons_3 value@@19 tail_1@@19)))
 :qid |stdinbpl.863:19|
 :skolemid |140|
 :pattern ( (Cons_3 value@@19 tail_1@@19))
)))
(assert (forall ((m@@89 T@Map_20315_5) (u@@62 T@ListDomainType_5978) (|u'| T@ListDomainType_5978) (v@@28 Bool) ) (!  (and (=> (= |u'| u@@62) (and (select (|Map#Domain_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|) (= (select (|Map#Elements_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|) v@@28))) (=> (not (= |u'| u@@62)) (and (= (select (|Map#Domain_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|) (select (|Map#Domain_20315_5| m@@89) |u'|)) (= (select (|Map#Elements_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|) (select (|Map#Elements_20315_5| m@@89) |u'|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|))
 :pattern ( (select (|Map#Domain_20315_5| m@@89) |u'|) (|Map#Build_20315_5| m@@89 u@@62 v@@28))
 :pattern ( (select (|Map#Elements_20315_5| (|Map#Build_20315_5| m@@89 u@@62 v@@28)) |u'|))
)))
(assert (forall ((m@@90 T@Map_20315_20315) (u@@63 T@ListDomainType_5978) (|u'@@0| T@ListDomainType_5978) (v@@29 T@ListDomainType_5978) ) (!  (and (=> (= |u'@@0| u@@63) (and (select (|Map#Domain_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|) (= (select (|Map#Elements_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|) v@@29))) (=> (not (= |u'@@0| u@@63)) (and (= (select (|Map#Domain_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|) (select (|Map#Domain_20315_20315| m@@90) |u'@@0|)) (= (select (|Map#Elements_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|) (select (|Map#Elements_20315_20315| m@@90) |u'@@0|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|))
 :pattern ( (select (|Map#Domain_20315_20315| m@@90) |u'@@0|) (|Map#Build_20315_20315| m@@90 u@@63 v@@29))
 :pattern ( (select (|Map#Elements_20315_20315| (|Map#Build_20315_20315| m@@90 u@@63 v@@29)) |u'@@0|))
)))
(assert (forall ((m@@91 T@Map_20315_5998) (u@@64 T@ListDomainType_5978) (|u'@@1| T@ListDomainType_5978) (v@@30 Int) ) (!  (and (=> (= |u'@@1| u@@64) (and (select (|Map#Domain_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|) (= (select (|Map#Elements_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|) v@@30))) (=> (not (= |u'@@1| u@@64)) (and (= (select (|Map#Domain_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|) (select (|Map#Domain_20315_5998| m@@91) |u'@@1|)) (= (select (|Map#Elements_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|) (select (|Map#Elements_20315_5998| m@@91) |u'@@1|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|))
 :pattern ( (select (|Map#Domain_20315_5998| m@@91) |u'@@1|) (|Map#Build_20315_5998| m@@91 u@@64 v@@30))
 :pattern ( (select (|Map#Elements_20315_5998| (|Map#Build_20315_5998| m@@91 u@@64 v@@30)) |u'@@1|))
)))
(assert (forall ((m@@92 T@Map_5997_5) (u@@65 Int) (|u'@@2| Int) (v@@31 Bool) ) (!  (and (=> (= |u'@@2| u@@65) (and (select (|Map#Domain_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|) (= (select (|Map#Elements_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|) v@@31))) (=> (not (= |u'@@2| u@@65)) (and (= (select (|Map#Domain_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|) (select (|Map#Domain_5997_5| m@@92) |u'@@2|)) (= (select (|Map#Elements_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|) (select (|Map#Elements_5997_5| m@@92) |u'@@2|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|))
 :pattern ( (select (|Map#Domain_5997_5| m@@92) |u'@@2|) (|Map#Build_5997_5| m@@92 u@@65 v@@31))
 :pattern ( (select (|Map#Elements_5997_5| (|Map#Build_5997_5| m@@92 u@@65 v@@31)) |u'@@2|))
)))
(assert (forall ((m@@93 T@Map_6008_20315) (u@@66 Int) (|u'@@3| Int) (v@@32 T@ListDomainType_5978) ) (!  (and (=> (= |u'@@3| u@@66) (and (select (|Map#Domain_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|) (= (select (|Map#Elements_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|) v@@32))) (=> (not (= |u'@@3| u@@66)) (and (= (select (|Map#Domain_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|) (select (|Map#Domain_5997_20315| m@@93) |u'@@3|)) (= (select (|Map#Elements_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|) (select (|Map#Elements_5997_20315| m@@93) |u'@@3|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|))
 :pattern ( (select (|Map#Domain_5997_20315| m@@93) |u'@@3|) (|Map#Build_6008_21349| m@@93 u@@66 v@@32))
 :pattern ( (select (|Map#Elements_5997_20315| (|Map#Build_6008_21349| m@@93 u@@66 v@@32)) |u'@@3|))
)))
(assert (forall ((m@@94 T@Map_5997_5998) (u@@67 Int) (|u'@@4| Int) (v@@33 Int) ) (!  (and (=> (= |u'@@4| u@@67) (and (select (|Map#Domain_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|) (= (select (|Map#Elements_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|) v@@33))) (=> (not (= |u'@@4| u@@67)) (and (= (select (|Map#Domain_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|) (select (|Map#Domain_5997_5998| m@@94) |u'@@4|)) (= (select (|Map#Elements_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|) (select (|Map#Elements_5997_5998| m@@94) |u'@@4|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|))
 :pattern ( (select (|Map#Domain_5997_5998| m@@94) |u'@@4|) (|Map#Build_5997_5998| m@@94 u@@67 v@@33))
 :pattern ( (select (|Map#Elements_5997_5998| (|Map#Build_5997_5998| m@@94 u@@67 v@@33)) |u'@@4|))
)))
(assert (forall ((m@@95 T@Map_5_5) (u@@68 Bool) (|u'@@5| Bool) (v@@34 Bool) ) (!  (and (=> (= |u'@@5| u@@68) (and (select (|Map#Domain_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|) (= (select (|Map#Elements_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|) v@@34))) (=> (not (= |u'@@5| u@@68)) (and (= (select (|Map#Domain_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|) (select (|Map#Domain_5_5| m@@95) |u'@@5|)) (= (select (|Map#Elements_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|) (select (|Map#Elements_5_5| m@@95) |u'@@5|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|))
 :pattern ( (select (|Map#Domain_5_5| m@@95) |u'@@5|) (|Map#Build_5_5| m@@95 u@@68 v@@34))
 :pattern ( (select (|Map#Elements_5_5| (|Map#Build_5_5| m@@95 u@@68 v@@34)) |u'@@5|))
)))
(assert (forall ((m@@96 T@Map_5_20315) (u@@69 Bool) (|u'@@6| Bool) (v@@35 T@ListDomainType_5978) ) (!  (and (=> (= |u'@@6| u@@69) (and (select (|Map#Domain_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|) (= (select (|Map#Elements_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|) v@@35))) (=> (not (= |u'@@6| u@@69)) (and (= (select (|Map#Domain_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|) (select (|Map#Domain_5_20315| m@@96) |u'@@6|)) (= (select (|Map#Elements_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|) (select (|Map#Elements_5_20315| m@@96) |u'@@6|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|))
 :pattern ( (select (|Map#Domain_5_20315| m@@96) |u'@@6|) (|Map#Build_5_20315| m@@96 u@@69 v@@35))
 :pattern ( (select (|Map#Elements_5_20315| (|Map#Build_5_20315| m@@96 u@@69 v@@35)) |u'@@6|))
)))
(assert (forall ((m@@97 T@Map_5_5998) (u@@70 Bool) (|u'@@7| Bool) (v@@36 Int) ) (!  (and (=> (= |u'@@7| u@@70) (and (select (|Map#Domain_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|) (= (select (|Map#Elements_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|) v@@36))) (=> (not (= |u'@@7| u@@70)) (and (= (select (|Map#Domain_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|) (select (|Map#Domain_5_5998| m@@97) |u'@@7|)) (= (select (|Map#Elements_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|) (select (|Map#Elements_5_5998| m@@97) |u'@@7|)))))
 :qid |stdinbpl.797:21|
 :skolemid |128|
 :pattern ( (select (|Map#Domain_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|))
 :pattern ( (select (|Map#Domain_5_5998| m@@97) |u'@@7|) (|Map#Build_5_5998| m@@97 u@@70 v@@36))
 :pattern ( (select (|Map#Elements_5_5998| (|Map#Build_5_5998| m@@97 u@@70 v@@36)) |u'@@7|))
)))
(assert (forall ((s@@13 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@13))) (= (|Seq#Take_2864| (|Seq#Append_3| s@@13 t@@3) n@@8) (|Seq#Take_2864| s@@13 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_3| s@@13 t@@3) n@@8))
)))
(assert (forall ((o@@20 T@ListDomainType_5978) ) (!  (not (select |Set#Empty_20315| o@@20))
 :qid |stdinbpl.551:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_20315| o@@20))
)))
(assert (forall ((o@@21 Int) ) (!  (not (select |Set#Empty_5997| o@@21))
 :qid |stdinbpl.551:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_5997| o@@21))
)))
(assert (forall ((o@@22 Bool) ) (!  (not (select |Set#Empty_5| o@@22))
 :qid |stdinbpl.551:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_5| o@@22))
)))
(assert (forall ((s@@14 T@Seq_2864) (i@@3 Int) (v@@37 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@14))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@14 i@@3 v@@37)) (|Seq#Length_2864| s@@14)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@14 i@@3 v@@37)))
 :pattern ( (|Seq#Length_2864| s@@14) (|Seq#Update_2864| s@@14 i@@3 v@@37))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10016) (o@@23 T@Ref) (f_3 T@Field_10076_22056) (v@@38 T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@10) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@10) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@10) (store (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@10) o@@23 f_3 v@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@10) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@10) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@10) (store (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@10) o@@23 f_3 v@@38)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10016) (o@@24 T@Ref) (f_3@@0 T@Field_10076_22189) (v@@39 T@PolymorphicMapType_10565) ) (! (succHeap Heap@@11 (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@11) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@11) (store (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@11) o@@24 f_3@@0 v@@39) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@11) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@11) (store (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@11) o@@24 f_3@@0 v@@39) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10016) (o@@25 T@Ref) (f_3@@1 T@Field_10089_10090) (v@@40 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@12) (store (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@12) o@@25 f_3@@1 v@@40) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@12) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10016 (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@12) (store (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@12) o@@25 f_3@@1 v@@40) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@12) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10016) (o@@26 T@Ref) (f_3@@2 T@Field_10076_53) (v@@41 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_10016 (store (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@13) o@@26 f_3@@2 v@@41) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@13) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@13) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10016 (store (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@13) o@@26 f_3@@2 v@@41) (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@13) (|PolymorphicMapType_10016_10076_22233#PolymorphicMapType_10016| Heap@@13) (|PolymorphicMapType_10016_10076_22056#PolymorphicMapType_10016| Heap@@13)))
)))
(assert (forall ((m@@98 T@Map_20315_5) ) (! (= (|Set#Card_20315| (|Map#Domain_20315_5| m@@98)) (|Map#Card_20315_5| m@@98))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_20315| (|Map#Domain_20315_5| m@@98)))
 :pattern ( (|Map#Card_20315_5| m@@98))
)))
(assert (forall ((m@@99 T@Map_20315_20315) ) (! (= (|Set#Card_20315| (|Map#Domain_20315_20315| m@@99)) (|Map#Card_20315_20315| m@@99))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_20315| (|Map#Domain_20315_20315| m@@99)))
 :pattern ( (|Map#Card_20315_20315| m@@99))
)))
(assert (forall ((m@@100 T@Map_20315_5998) ) (! (= (|Set#Card_20315| (|Map#Domain_20315_5998| m@@100)) (|Map#Card_20315_5998| m@@100))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_20315| (|Map#Domain_20315_5998| m@@100)))
 :pattern ( (|Map#Card_20315_5998| m@@100))
)))
(assert (forall ((m@@101 T@Map_5997_5) ) (! (= (|Set#Card_5997| (|Map#Domain_5997_5| m@@101)) (|Map#Card_5997_5| m@@101))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5997| (|Map#Domain_5997_5| m@@101)))
 :pattern ( (|Map#Card_5997_5| m@@101))
)))
(assert (forall ((m@@102 T@Map_5_5) ) (! (= (|Set#Card_5| (|Map#Domain_5_5| m@@102)) (|Map#Card_5_5| m@@102))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5| (|Map#Domain_5_5| m@@102)))
 :pattern ( (|Map#Card_5_5| m@@102))
)))
(assert (forall ((m@@103 T@Map_6008_20315) ) (! (= (|Set#Card_5997| (|Map#Domain_5997_20315| m@@103)) (|Map#Card_5997_20315| m@@103))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5997| (|Map#Domain_5997_20315| m@@103)))
 :pattern ( (|Map#Card_5997_20315| m@@103))
)))
(assert (forall ((m@@104 T@Map_5997_5998) ) (! (= (|Set#Card_5997| (|Map#Domain_5997_5998| m@@104)) (|Map#Card_5997_5998| m@@104))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5997| (|Map#Domain_5997_5998| m@@104)))
 :pattern ( (|Map#Card_5997_5998| m@@104))
)))
(assert (forall ((m@@105 T@Map_5_20315) ) (! (= (|Set#Card_5| (|Map#Domain_5_20315| m@@105)) (|Map#Card_5_20315| m@@105))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5| (|Map#Domain_5_20315| m@@105)))
 :pattern ( (|Map#Card_5_20315| m@@105))
)))
(assert (forall ((m@@106 T@Map_5_5998) ) (! (= (|Set#Card_5| (|Map#Domain_5_5998| m@@106)) (|Map#Card_5_5998| m@@106))
 :qid |stdinbpl.753:20|
 :skolemid |119|
 :pattern ( (|Set#Card_5| (|Map#Domain_5_5998| m@@106)))
 :pattern ( (|Map#Card_5_5998| m@@106))
)))
(assert (forall ((s@@15 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@15))) (= (|Seq#Drop_2864| (|Seq#Append_3| s@@15 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_2864| s@@15 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_3| s@@15 t@@4) n@@9))
)))
(assert (forall ((a@@47 Int) (b@@34 Int) ) (! (= (<= a@@47 b@@34) (= (|Math#min| a@@47 b@@34) a@@47))
 :qid |stdinbpl.635:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@47 b@@34))
)))
(assert (forall ((a@@48 Int) (b@@35 Int) ) (! (= (<= b@@35 a@@48) (= (|Math#min| a@@48 b@@35) b@@35))
 :qid |stdinbpl.636:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@48 b@@35))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@16 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@16 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@16 n@@10) (|Seq#Index_2864| s@@16 i@@4))
)))
(assert (forall ((s@@17 (Array T@ListDomainType_5978 Bool)) ) (!  (and (= (= (|Set#Card_20315| s@@17) 0) (= s@@17 |Set#Empty_20315|)) (=> (not (= (|Set#Card_20315| s@@17) 0)) (exists ((x@@31 T@ListDomainType_5978) ) (! (select s@@17 x@@31)
 :qid |stdinbpl.554:33|
 :skolemid |60|
))))
 :qid |stdinbpl.552:18|
 :skolemid |61|
 :pattern ( (|Set#Card_20315| s@@17))
)))
(assert (forall ((s@@18 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_5997| s@@18) 0) (= s@@18 |Set#Empty_5997|)) (=> (not (= (|Set#Card_5997| s@@18) 0)) (exists ((x@@32 Int) ) (! (select s@@18 x@@32)
 :qid |stdinbpl.554:33|
 :skolemid |60|
))))
 :qid |stdinbpl.552:18|
 :skolemid |61|
 :pattern ( (|Set#Card_5997| s@@18))
)))
(assert (forall ((s@@19 (Array Bool Bool)) ) (!  (and (= (= (|Set#Card_5| s@@19) 0) (= s@@19 |Set#Empty_5|)) (=> (not (= (|Set#Card_5| s@@19) 0)) (exists ((x@@33 Bool) ) (! (select s@@19 x@@33)
 :qid |stdinbpl.554:33|
 :skolemid |60|
))))
 :qid |stdinbpl.552:18|
 :skolemid |61|
 :pattern ( (|Set#Card_5| s@@19))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2864|)) (not (= s1@@3 |Seq#Empty_2864|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((u@@71 T@ListDomainType_5978) ) (!  (not (select (|Map#Domain_20315_5| |Map#Empty_20315_5|) u@@71))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_20315_5| |Map#Empty_20315_5|) u@@71))
)))
(assert (forall ((u@@72 T@ListDomainType_5978) ) (!  (not (select (|Map#Domain_20315_20315| |Map#Empty_20315_20315|) u@@72))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_20315_20315| |Map#Empty_20315_20315|) u@@72))
)))
(assert (forall ((u@@73 T@ListDomainType_5978) ) (!  (not (select (|Map#Domain_20315_5998| |Map#Empty_20315_5998|) u@@73))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_20315_5998| |Map#Empty_20315_5998|) u@@73))
)))
(assert (forall ((u@@74 Int) ) (!  (not (select (|Map#Domain_5997_5| |Map#Empty_5997_5|) u@@74))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5997_5| |Map#Empty_5997_5|) u@@74))
)))
(assert (forall ((u@@75 Int) ) (!  (not (select (|Map#Domain_5997_20315| |Map#Empty_5997_20315|) u@@75))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5997_20315| |Map#Empty_5997_20315|) u@@75))
)))
(assert (forall ((u@@76 Int) ) (!  (not (select (|Map#Domain_5997_5998| |Map#Empty_5997_5998|) u@@76))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5997_5998| |Map#Empty_5997_5998|) u@@76))
)))
(assert (forall ((u@@77 Bool) ) (!  (not (select (|Map#Domain_5_5| |Map#Empty_5_5|) u@@77))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5_5| |Map#Empty_5_5|) u@@77))
)))
(assert (forall ((u@@78 Bool) ) (!  (not (select (|Map#Domain_5_20315| |Map#Empty_5_20315|) u@@78))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5_20315| |Map#Empty_5_20315|) u@@78))
)))
(assert (forall ((u@@79 Bool) ) (!  (not (select (|Map#Domain_5_5998| |Map#Empty_5_5998|) u@@79))
 :qid |stdinbpl.784:21|
 :skolemid |124|
 :pattern ( (select (|Map#Domain_5_5998| |Map#Empty_5_5998|) u@@79))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m@@107 Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (<= 0 m@@107)) (< m@@107 (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m@@107 (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m@@107) (= (|Seq#Index_2864| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m@@107 (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m@@107))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m@@107) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((a@@49 (Array T@ListDomainType_5978 Bool)) (x@@34 T@ListDomainType_5978) ) (!  (=> (not (select a@@49 x@@34)) (= (|Set#Card_20315| (|Set#UnionOne_20315| a@@49 x@@34)) (+ (|Set#Card_20315| a@@49) 1)))
 :qid |stdinbpl.570:18|
 :skolemid |69|
 :pattern ( (|Set#Card_20315| (|Set#UnionOne_20315| a@@49 x@@34)))
)))
(assert (forall ((a@@50 (Array Int Bool)) (x@@35 Int) ) (!  (=> (not (select a@@50 x@@35)) (= (|Set#Card_5997| (|Set#UnionOne_5997| a@@50 x@@35)) (+ (|Set#Card_5997| a@@50) 1)))
 :qid |stdinbpl.570:18|
 :skolemid |69|
 :pattern ( (|Set#Card_5997| (|Set#UnionOne_5997| a@@50 x@@35)))
)))
(assert (forall ((a@@51 (Array Bool Bool)) (x@@36 Bool) ) (!  (=> (not (select a@@51 x@@36)) (= (|Set#Card_5| (|Set#UnionOne_5| a@@51 x@@36)) (+ (|Set#Card_5| a@@51) 1)))
 :qid |stdinbpl.570:18|
 :skolemid |69|
 :pattern ( (|Set#Card_5| (|Set#UnionOne_5| a@@51 x@@36)))
)))
(assert (forall ((o@@27 T@Ref) (f T@Field_10089_10090) (Heap@@14 T@PolymorphicMapType_10016) ) (!  (=> (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@14) o@@27 $allocated) (select (|PolymorphicMapType_10016_6328_53#PolymorphicMapType_10016| Heap@@14) (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@14) o@@27 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10016_6331_6332#PolymorphicMapType_10016| Heap@@14) o@@27 f))
)))
(assert (forall ((s@@20 T@Seq_2864) (x@@37 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@20))) (= (|Seq#Index_2864| s@@20 i@@5) x@@37)) (|Seq#Contains_2864| s@@20 x@@37))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@20 x@@37) (|Seq#Index_2864| s@@20 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_2864| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_2864| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_10076_22056) (v_1@@0 T@FrameType) (q T@Field_10076_22056) (w@@0 T@FrameType) (r@@8 T@Field_10076_22056) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_10076_10076 p@@1 v_1@@0 q w@@0) (InsidePredicate_10076_10076 q w@@0 r@@8 u@@80)) (InsidePredicate_10076_10076 p@@1 v_1@@0 r@@8 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10076_10076 p@@1 v_1@@0 q w@@0) (InsidePredicate_10076_10076 q w@@0 r@@8 u@@80))
)))
(assert (forall ((a@@52 Int) ) (!  (=> (< a@@52 0) (= (|Math#clip| a@@52) 0))
 :qid |stdinbpl.641:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@52))
)))
(assert (forall ((s@@21 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@21) 0) (= s@@21 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@21))
)))
(assert (forall ((s@@22 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2864| s@@22 n@@12) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@22 n@@12))
)))
(assert (forall ((t_2 T@ListDomainType_20325) ) (!  (or (= t_2 Nil_21454) (= t_2 (Cons_21482 (get_List_value_21482 t_2) (get_List_tail_20325 t_2))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_21454 t_2))
 :pattern ( (get_List_value_21482 t_2))
 :pattern ( (get_List_tail_20325 t_2))
)))
(assert (forall ((t_2@@0 T@ListDomainType_20309) ) (!  (or (= t_2@@0 Nil_21209) (= t_2@@0 (Cons_21228 (get_List_value_21228 t_2@@0) (get_List_tail_20309 t_2@@0))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_21209 t_2@@0))
 :pattern ( (get_List_value_21228 t_2@@0))
 :pattern ( (get_List_tail_20309 t_2@@0))
)))
(assert (forall ((t_2@@1 T@ListDomainType_20300) ) (!  (or (= t_2@@1 Nil_21034) (= t_2@@1 (Cons_21052 (get_List_value_39115 t_2@@1) (get_List_tail_39475 t_2@@1))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_39708 t_2@@1))
 :pattern ( (get_List_value_39115 t_2@@1))
 :pattern ( (get_List_tail_39475 t_2@@1))
)))
(assert (forall ((t_2@@2 T@ListDomainType_20294) ) (!  (or (= t_2@@2 Nil_20907) (= t_2@@2 (Cons_20926 (get_List_value_20926 t_2@@2) (get_List_tail_20294 t_2@@2))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_20907 t_2@@2))
 :pattern ( (get_List_value_20926 t_2@@2))
 :pattern ( (get_List_tail_20294 t_2@@2))
)))
(assert (forall ((t_2@@3 T@ListDomainType_20288) ) (!  (or (= t_2@@3 Nil_20752) (= t_2@@3 (Cons_20771 (get_List_value_20771 t_2@@3) (get_List_tail_20288 t_2@@3))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_20752 t_2@@3))
 :pattern ( (get_List_value_20771 t_2@@3))
 :pattern ( (get_List_tail_20288 t_2@@3))
)))
(assert (forall ((t_2@@4 T@ListDomainType_5982) ) (!  (or (= t_2@@4 Nil_6106) (= t_2@@4 (Cons_5 (get_List_value_5 t_2@@4) (get_List_tail_5982 t_2@@4))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_6106 t_2@@4))
 :pattern ( (get_List_value_5 t_2@@4))
 :pattern ( (get_List_tail_5982 t_2@@4))
)))
(assert (forall ((t_2@@5 T@ListDomainType_5978) ) (!  (or (= t_2@@5 Nil_6056) (= t_2@@5 (Cons_3 (get_List_value_3 t_2@@5) (get_List_tail_5978 t_2@@5))))
 :qid |stdinbpl.881:19|
 :skolemid |143|
 :pattern ( (List_tag_6056 t_2@@5))
 :pattern ( (get_List_value_3 t_2@@5))
 :pattern ( (get_List_tail_5978 t_2@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@53 (Array T@ListDomainType_5978 Bool)) (b@@36 (Array T@ListDomainType_5978 Bool)) (o@@28 T@ListDomainType_5978) ) (! (= (select (|Set#Union_20315| a@@53 b@@36) o@@28)  (or (select a@@53 o@@28) (select b@@36 o@@28)))
 :qid |stdinbpl.574:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_20315| a@@53 b@@36) o@@28))
)))
(assert (forall ((a@@54 (Array Int Bool)) (b@@37 (Array Int Bool)) (o@@29 Int) ) (! (= (select (|Set#Union_5997| a@@54 b@@37) o@@29)  (or (select a@@54 o@@29) (select b@@37 o@@29)))
 :qid |stdinbpl.574:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_5997| a@@54 b@@37) o@@29))
)))
(assert (forall ((a@@55 (Array Bool Bool)) (b@@38 (Array Bool Bool)) (o@@30 Bool) ) (! (= (select (|Set#Union_5| a@@55 b@@38) o@@30)  (or (select a@@55 o@@30) (select b@@38 o@@30)))
 :qid |stdinbpl.574:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_5| a@@55 b@@38) o@@30))
)))
(assert (forall ((m@@108 T@Map_20315_5) (|m'@@26| T@Map_20315_5) ) (!  (=> (not (|Map#Disjoint_20315_5| m@@108 |m'@@26|)) (exists ((o@@31 T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_5| m@@108) o@@31) (select (|Map#Domain_20315_5| |m'@@26|) o@@31))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_20315_5| m@@108) o@@31))
 :pattern ( (select (|Map#Domain_20315_5| |m'@@26|) o@@31))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_20315_5| m@@108 |m'@@26|))
)))
(assert (forall ((m@@109 T@Map_20315_20315) (|m'@@27| T@Map_20315_20315) ) (!  (=> (not (|Map#Disjoint_20315_20315| m@@109 |m'@@27|)) (exists ((o@@32 T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_20315| m@@109) o@@32) (select (|Map#Domain_20315_20315| |m'@@27|) o@@32))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_20315_20315| m@@109) o@@32))
 :pattern ( (select (|Map#Domain_20315_20315| |m'@@27|) o@@32))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_20315_20315| m@@109 |m'@@27|))
)))
(assert (forall ((m@@110 T@Map_20315_5998) (|m'@@28| T@Map_20315_5998) ) (!  (=> (not (|Map#Disjoint_20315_5998| m@@110 |m'@@28|)) (exists ((o@@33 T@ListDomainType_5978) ) (!  (and (select (|Map#Domain_20315_5998| m@@110) o@@33) (select (|Map#Domain_20315_5998| |m'@@28|) o@@33))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_20315_5998| m@@110) o@@33))
 :pattern ( (select (|Map#Domain_20315_5998| |m'@@28|) o@@33))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_20315_5998| m@@110 |m'@@28|))
)))
(assert (forall ((m@@111 T@Map_5_5) (|m'@@29| T@Map_5_5) ) (!  (=> (not (|Map#Disjoint_5_5| m@@111 |m'@@29|)) (exists ((o@@34 Bool) ) (!  (and (select (|Map#Domain_5_5| m@@111) o@@34) (select (|Map#Domain_5_5| |m'@@29|) o@@34))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5_5| m@@111) o@@34))
 :pattern ( (select (|Map#Domain_5_5| |m'@@29|) o@@34))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5_5| m@@111 |m'@@29|))
)))
(assert (forall ((m@@112 T@Map_5_20315) (|m'@@30| T@Map_5_20315) ) (!  (=> (not (|Map#Disjoint_5_20315| m@@112 |m'@@30|)) (exists ((o@@35 Bool) ) (!  (and (select (|Map#Domain_5_20315| m@@112) o@@35) (select (|Map#Domain_5_20315| |m'@@30|) o@@35))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5_20315| m@@112) o@@35))
 :pattern ( (select (|Map#Domain_5_20315| |m'@@30|) o@@35))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5_20315| m@@112 |m'@@30|))
)))
(assert (forall ((m@@113 T@Map_5_5998) (|m'@@31| T@Map_5_5998) ) (!  (=> (not (|Map#Disjoint_5_5998| m@@113 |m'@@31|)) (exists ((o@@36 Bool) ) (!  (and (select (|Map#Domain_5_5998| m@@113) o@@36) (select (|Map#Domain_5_5998| |m'@@31|) o@@36))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5_5998| m@@113) o@@36))
 :pattern ( (select (|Map#Domain_5_5998| |m'@@31|) o@@36))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5_5998| m@@113 |m'@@31|))
)))
(assert (forall ((m@@114 T@Map_5997_5) (|m'@@32| T@Map_5997_5) ) (!  (=> (not (|Map#Disjoint_5997_5| m@@114 |m'@@32|)) (exists ((o@@37 Int) ) (!  (and (select (|Map#Domain_5997_5| m@@114) o@@37) (select (|Map#Domain_5997_5| |m'@@32|) o@@37))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5997_5| m@@114) o@@37))
 :pattern ( (select (|Map#Domain_5997_5| |m'@@32|) o@@37))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5997_5| m@@114 |m'@@32|))
)))
(assert (forall ((m@@115 T@Map_6008_20315) (|m'@@33| T@Map_6008_20315) ) (!  (=> (not (|Map#Disjoint_5997_20315| m@@115 |m'@@33|)) (exists ((o@@38 Int) ) (!  (and (select (|Map#Domain_5997_20315| m@@115) o@@38) (select (|Map#Domain_5997_20315| |m'@@33|) o@@38))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5997_20315| m@@115) o@@38))
 :pattern ( (select (|Map#Domain_5997_20315| |m'@@33|) o@@38))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5997_20315| m@@115 |m'@@33|))
)))
(assert (forall ((m@@116 T@Map_5997_5998) (|m'@@34| T@Map_5997_5998) ) (!  (=> (not (|Map#Disjoint_5997_5998| m@@116 |m'@@34|)) (exists ((o@@39 Int) ) (!  (and (select (|Map#Domain_5997_5998| m@@116) o@@39) (select (|Map#Domain_5997_5998| |m'@@34|) o@@39))
 :qid |stdinbpl.830:38|
 :skolemid |137|
 :pattern ( (select (|Map#Domain_5997_5998| m@@116) o@@39))
 :pattern ( (select (|Map#Domain_5997_5998| |m'@@34|) o@@39))
)))
 :qid |stdinbpl.828:21|
 :skolemid |138|
 :pattern ( (|Map#Disjoint_5997_5998| m@@116 |m'@@34|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id constructors_1)
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
