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
(declare-sort T@Field_10671_53 0)
(declare-sort T@Field_10684_10685 0)
(declare-sort T@Field_17914_3982 0)
(declare-sort T@Field_6194_26802 0)
(declare-sort T@Field_6194_26669 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10632 0)) (((PolymorphicMapType_10632 (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| (Array T@Ref T@Field_17914_3982 Real)) (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| (Array T@Ref T@Field_10671_53 Real)) (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| (Array T@Ref T@Field_10684_10685 Real)) (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| (Array T@Ref T@Field_6194_26669 Real)) (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| (Array T@Ref T@Field_6194_26802 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11160 0)) (((PolymorphicMapType_11160 (|PolymorphicMapType_11160_10671_53#PolymorphicMapType_11160| (Array T@Ref T@Field_10671_53 Bool)) (|PolymorphicMapType_11160_10671_10685#PolymorphicMapType_11160| (Array T@Ref T@Field_10684_10685 Bool)) (|PolymorphicMapType_11160_10671_3982#PolymorphicMapType_11160| (Array T@Ref T@Field_17914_3982 Bool)) (|PolymorphicMapType_11160_10671_26669#PolymorphicMapType_11160| (Array T@Ref T@Field_6194_26669 Bool)) (|PolymorphicMapType_11160_10671_27980#PolymorphicMapType_11160| (Array T@Ref T@Field_6194_26802 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10611 0)) (((PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| (Array T@Ref T@Field_10671_53 Bool)) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| (Array T@Ref T@Field_10684_10685 T@Ref)) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| (Array T@Ref T@Field_17914_3982 Int)) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| (Array T@Ref T@Field_6194_26802 T@PolymorphicMapType_11160)) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| (Array T@Ref T@Field_6194_26669 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10671_53)
(declare-fun val () T@Field_17914_3982)
(declare-sort T@Map_6241_6241 0)
(declare-fun |Map#Values_6241_24037| (T@Map_6241_6241) (Array T@Ref Bool))
(declare-fun |Map#Domain_6241_6241| (T@Map_6241_6241) (Array T@Ref Bool))
(declare-fun |Map#Elements_6241_24037| (T@Map_6241_6241) (Array T@Ref T@Ref))
(declare-sort T@Map_6241_22186 0)
(declare-sort T@Map_4004_4005 0)
(declare-fun |Map#Values_6241_23890| (T@Map_6241_22186) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Domain_6241_22186| (T@Map_6241_22186) (Array T@Ref Bool))
(declare-fun |Map#Elements_6241_23890| (T@Map_6241_22186) (Array T@Ref T@Map_4004_4005))
(declare-sort T@Map_6241_4323 0)
(declare-fun |Map#Values_6241_4323| (T@Map_6241_4323) (Array Int Bool))
(declare-fun |Map#Domain_6241_4323| (T@Map_6241_4323) (Array T@Ref Bool))
(declare-fun |Map#Elements_6241_4323| (T@Map_6241_4323) (Array T@Ref Int))
(declare-sort T@Map_6241_4005 0)
(declare-fun |Map#Values_6241_4005| (T@Map_6241_4005) (Array Bool Bool))
(declare-fun |Map#Domain_6241_4005| (T@Map_6241_4005) (Array T@Ref Bool))
(declare-fun |Map#Elements_6241_4005| (T@Map_6241_4005) (Array T@Ref Bool))
(declare-sort T@Map_22186_6241 0)
(declare-fun |Map#Values_22186_24037| (T@Map_22186_6241) (Array T@Ref Bool))
(declare-fun |Map#Domain_22186_6241| (T@Map_22186_6241) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Elements_22186_24037| (T@Map_22186_6241) (Array T@Map_4004_4005 T@Ref))
(declare-sort T@Map_22186_22186 0)
(declare-fun |Map#Values_22186_23890| (T@Map_22186_22186) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Domain_22186_22186| (T@Map_22186_22186) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Elements_22186_23890| (T@Map_22186_22186) (Array T@Map_4004_4005 T@Map_4004_4005))
(declare-sort T@Map_22186_4323 0)
(declare-fun |Map#Values_22186_4323| (T@Map_22186_4323) (Array Int Bool))
(declare-fun |Map#Domain_22186_4323| (T@Map_22186_4323) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Elements_22186_4323| (T@Map_22186_4323) (Array T@Map_4004_4005 Int))
(declare-sort T@Map_22186_4005 0)
(declare-fun |Map#Values_22186_4005| (T@Map_22186_4005) (Array Bool Bool))
(declare-fun |Map#Domain_22186_4005| (T@Map_22186_4005) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Elements_22186_4005| (T@Map_22186_4005) (Array T@Map_4004_4005 Bool))
(declare-sort T@Map_4005_6241 0)
(declare-fun |Map#Values_4005_24037| (T@Map_4005_6241) (Array T@Ref Bool))
(declare-fun |Map#Domain_4005_6241| (T@Map_4005_6241) (Array Bool Bool))
(declare-fun |Map#Elements_4005_24037| (T@Map_4005_6241) (Array Bool T@Ref))
(declare-sort T@Map_4005_22186 0)
(declare-fun |Map#Values_4005_23890| (T@Map_4005_22186) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Domain_4005_22186| (T@Map_4005_22186) (Array Bool Bool))
(declare-fun |Map#Elements_4005_23890| (T@Map_4005_22186) (Array Bool T@Map_4004_4005))
(declare-sort T@Map_4005_4323 0)
(declare-fun |Map#Values_4005_4323| (T@Map_4005_4323) (Array Int Bool))
(declare-fun |Map#Domain_4005_4323| (T@Map_4005_4323) (Array Bool Bool))
(declare-fun |Map#Elements_4005_4323| (T@Map_4005_4323) (Array Bool Int))
(declare-sort T@Map_4005_4005 0)
(declare-fun |Map#Values_4005_4005| (T@Map_4005_4005) (Array Bool Bool))
(declare-fun |Map#Domain_4005_4005| (T@Map_4005_4005) (Array Bool Bool))
(declare-fun |Map#Elements_4005_4005| (T@Map_4005_4005) (Array Bool Bool))
(declare-sort T@Map_5300_24037 0)
(declare-fun |Map#Values_4004_24037| (T@Map_5300_24037) (Array T@Ref Bool))
(declare-fun |Map#Domain_5300_6241| (T@Map_5300_24037) (Array Int Bool))
(declare-fun |Map#Elements_5300_6241| (T@Map_5300_24037) (Array Int T@Ref))
(declare-sort T@Map_4779_22026 0)
(declare-fun |Map#Values_4779_23890| (T@Map_4779_22026) (Array T@Map_4004_4005 Bool))
(declare-fun |Map#Domain_4779_22186| (T@Map_4779_22026) (Array Int Bool))
(declare-fun |Map#Elements_4779_22378| (T@Map_4779_22026) (Array Int T@Map_4004_4005))
(declare-sort T@Map_4322_4323 0)
(declare-fun |Map#Values_4322_4323| (T@Map_4322_4323) (Array Int Bool))
(declare-fun |Map#Domain_4322_4323| (T@Map_4322_4323) (Array Int Bool))
(declare-fun |Map#Elements_4322_4323| (T@Map_4322_4323) (Array Int Int))
(declare-fun |Map#Values_4004_4005| (T@Map_4004_4005) (Array Bool Bool))
(declare-fun |Map#Domain_4004_4005| (T@Map_4004_4005) (Array Int Bool))
(declare-fun |Map#Elements_4180_4181| (T@Map_4004_4005) (Array Int Bool))
(declare-fun succHeap (T@PolymorphicMapType_10611 T@PolymorphicMapType_10611) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10611 T@PolymorphicMapType_10611) Bool)
(declare-fun state (T@PolymorphicMapType_10611 T@PolymorphicMapType_10632) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10632) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11160)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_6241| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Union_22186| ((Array T@Map_4004_4005 Bool) (Array T@Map_4004_4005 Bool)) (Array T@Map_4004_4005 Bool))
(declare-fun |Set#Union_4125| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Union_4005| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Set#Intersection_6241| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_22186| ((Array T@Map_4004_4005 Bool) (Array T@Map_4004_4005 Bool)) (Array T@Map_4004_4005 Bool))
(declare-fun |Set#Intersection_4125| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_4005| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Map#Card_6241_6241| (T@Map_6241_6241) Int)
(declare-fun |Map#Build_6241_6241| (T@Map_6241_6241 T@Ref T@Ref) T@Map_6241_6241)
(declare-fun |Map#Card_6241_22186| (T@Map_6241_22186) Int)
(declare-fun |Map#Build_6241_22186| (T@Map_6241_22186 T@Ref T@Map_4004_4005) T@Map_6241_22186)
(declare-fun |Map#Card_6241_4323| (T@Map_6241_4323) Int)
(declare-fun |Map#Build_6241_4323| (T@Map_6241_4323 T@Ref Int) T@Map_6241_4323)
(declare-fun |Map#Card_6241_4005| (T@Map_6241_4005) Int)
(declare-fun |Map#Build_6241_4005| (T@Map_6241_4005 T@Ref Bool) T@Map_6241_4005)
(declare-fun |Map#Card_22186_6241| (T@Map_22186_6241) Int)
(declare-fun |Map#Build_22186_6241| (T@Map_22186_6241 T@Map_4004_4005 T@Ref) T@Map_22186_6241)
(declare-fun |Map#Card_22186_22186| (T@Map_22186_22186) Int)
(declare-fun |Map#Build_22186_22186| (T@Map_22186_22186 T@Map_4004_4005 T@Map_4004_4005) T@Map_22186_22186)
(declare-fun |Map#Card_22186_4323| (T@Map_22186_4323) Int)
(declare-fun |Map#Build_22186_4323| (T@Map_22186_4323 T@Map_4004_4005 Int) T@Map_22186_4323)
(declare-fun |Map#Card_22186_4005| (T@Map_22186_4005) Int)
(declare-fun |Map#Build_22186_4005| (T@Map_22186_4005 T@Map_4004_4005 Bool) T@Map_22186_4005)
(declare-fun |Map#Card_4005_6241| (T@Map_4005_6241) Int)
(declare-fun |Map#Build_4005_6241| (T@Map_4005_6241 Bool T@Ref) T@Map_4005_6241)
(declare-fun |Map#Card_4005_22186| (T@Map_4005_22186) Int)
(declare-fun |Map#Build_4005_22186| (T@Map_4005_22186 Bool T@Map_4004_4005) T@Map_4005_22186)
(declare-fun |Map#Card_4005_4323| (T@Map_4005_4323) Int)
(declare-fun |Map#Build_4005_4323| (T@Map_4005_4323 Bool Int) T@Map_4005_4323)
(declare-fun |Map#Card_4005_4005| (T@Map_4005_4005) Int)
(declare-fun |Map#Build_4005_4005| (T@Map_4005_4005 Bool Bool) T@Map_4005_4005)
(declare-fun |Map#Card_4068_24037| (T@Map_5300_24037) Int)
(declare-fun |Map#Build_4004_6241| (T@Map_5300_24037 Int T@Ref) T@Map_5300_24037)
(declare-fun |Map#Card_4068_22026| (T@Map_4779_22026) Int)
(declare-fun |Map#Build_4004_22186| (T@Map_4779_22026 Int T@Map_4004_4005) T@Map_4779_22026)
(declare-fun |Map#Card_4322_4323| (T@Map_4322_4323) Int)
(declare-fun |Map#Build_4359_4360| (T@Map_4322_4323 Int Int) T@Map_4322_4323)
(declare-fun |Map#Card_4068_4069| (T@Map_4004_4005) Int)
(declare-fun |Map#Build_4180_4181| (T@Map_4004_4005 Int Bool) T@Map_4004_4005)
(declare-fun |Set#Singleton_6241| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Singleton_22186| (T@Map_4004_4005) (Array T@Map_4004_4005 Bool))
(declare-fun |Set#Singleton_5| (Bool) (Array Bool Bool))
(declare-fun |Set#Singleton_3| (Int) (Array Int Bool))
(declare-fun |Set#Card_6241| ((Array T@Ref Bool)) Int)
(declare-fun |Set#Card_22186| ((Array T@Map_4004_4005 Bool)) Int)
(declare-fun |Set#Card_4125| ((Array Int Bool)) Int)
(declare-fun |Set#Card_4005| ((Array Bool Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10611 T@PolymorphicMapType_10611 T@PolymorphicMapType_10632) Bool)
(declare-fun IsPredicateField_6194_26760 (T@Field_6194_26669) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6194 (T@Field_6194_26669) T@Field_6194_26802)
(declare-fun HasDirectPerm_6194_26733 (T@PolymorphicMapType_10632 T@Ref T@Field_6194_26669) Bool)
(declare-fun IsWandField_6194_28507 (T@Field_6194_26669) Bool)
(declare-fun WandMaskField_6194 (T@Field_6194_26669) T@Field_6194_26802)
(declare-fun dummyHeap () T@PolymorphicMapType_10611)
(declare-fun ZeroMask () T@PolymorphicMapType_10632)
(declare-fun InsidePredicate_10671_10671 (T@Field_6194_26669 T@FrameType T@Field_6194_26669 T@FrameType) Bool)
(declare-fun IsPredicateField_6194_3982 (T@Field_17914_3982) Bool)
(declare-fun IsWandField_6194_3982 (T@Field_17914_3982) Bool)
(declare-fun |Map#Disjoint_6241_24037| (T@Map_6241_6241 T@Map_6241_6241) Bool)
(declare-fun |Map#Disjoint_6241_22026| (T@Map_6241_22186 T@Map_6241_22186) Bool)
(declare-fun |Map#Disjoint_6241_4323| (T@Map_6241_4323 T@Map_6241_4323) Bool)
(declare-fun |Map#Disjoint_6241_4005| (T@Map_6241_4005 T@Map_6241_4005) Bool)
(declare-fun |Map#Disjoint_22186_24037| (T@Map_22186_6241 T@Map_22186_6241) Bool)
(declare-fun |Map#Disjoint_22186_22026| (T@Map_22186_22186 T@Map_22186_22186) Bool)
(declare-fun |Map#Disjoint_22186_4323| (T@Map_22186_4323 T@Map_22186_4323) Bool)
(declare-fun |Map#Disjoint_22186_4005| (T@Map_22186_4005 T@Map_22186_4005) Bool)
(declare-fun |Map#Disjoint_4005_24037| (T@Map_4005_6241 T@Map_4005_6241) Bool)
(declare-fun |Map#Disjoint_4005_22026| (T@Map_4005_22186 T@Map_4005_22186) Bool)
(declare-fun |Map#Disjoint_4005_4323| (T@Map_4005_4323 T@Map_4005_4323) Bool)
(declare-fun |Map#Disjoint_4005_4005| (T@Map_4005_4005 T@Map_4005_4005) Bool)
(declare-fun |Map#Disjoint_4004_24037| (T@Map_5300_24037 T@Map_5300_24037) Bool)
(declare-fun |Map#Disjoint_4004_22026| (T@Map_4779_22026 T@Map_4779_22026) Bool)
(declare-fun |Map#Disjoint_4004_4323| (T@Map_4322_4323 T@Map_4322_4323) Bool)
(declare-fun |Map#Disjoint_4004_4005| (T@Map_4004_4005 T@Map_4004_4005) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6194_32053 (T@Field_6194_26802) Bool)
(declare-fun IsWandField_6194_32069 (T@Field_6194_26802) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6194_10685 (T@Field_10684_10685) Bool)
(declare-fun IsWandField_6194_10685 (T@Field_10684_10685) Bool)
(declare-fun IsPredicateField_6194_53 (T@Field_10671_53) Bool)
(declare-fun IsWandField_6194_53 (T@Field_10671_53) Bool)
(declare-fun |Set#Equal_4181| ((Array Bool Bool) (Array Bool Bool)) Bool)
(declare-fun |Set#Equal_4015| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_6194_32507 (T@PolymorphicMapType_10632 T@Ref T@Field_6194_26802) Bool)
(declare-fun HasDirectPerm_6194_10685 (T@PolymorphicMapType_10632 T@Ref T@Field_10684_10685) Bool)
(declare-fun HasDirectPerm_6194_53 (T@PolymorphicMapType_10632 T@Ref T@Field_10671_53) Bool)
(declare-fun HasDirectPerm_6194_3982 (T@PolymorphicMapType_10632 T@Ref T@Field_17914_3982) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10632 T@PolymorphicMapType_10632 T@PolymorphicMapType_10632) Bool)
(declare-fun |Set#Difference_6241| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Difference_22186| ((Array T@Map_4004_4005 Bool) (Array T@Map_4004_4005 Bool)) (Array T@Map_4004_4005 Bool))
(declare-fun |Set#Difference_4125| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Difference_4005| ((Array Bool Bool) (Array Bool Bool)) (Array Bool Bool))
(declare-fun |Map#Equal_6241_6241| (T@Map_6241_6241 T@Map_6241_6241) Bool)
(declare-fun |Map#Equal_6241_22186| (T@Map_6241_22186 T@Map_6241_22186) Bool)
(declare-fun |Map#Equal_6241_4323| (T@Map_6241_4323 T@Map_6241_4323) Bool)
(declare-fun |Map#Equal_6241_4005| (T@Map_6241_4005 T@Map_6241_4005) Bool)
(declare-fun |Map#Equal_22186_6241| (T@Map_22186_6241 T@Map_22186_6241) Bool)
(declare-fun |Map#Equal_22186_22186| (T@Map_22186_22186 T@Map_22186_22186) Bool)
(declare-fun |Map#Equal_22186_4323| (T@Map_22186_4323 T@Map_22186_4323) Bool)
(declare-fun |Map#Equal_22186_4005| (T@Map_22186_4005 T@Map_22186_4005) Bool)
(declare-fun |Map#Equal_4005_6241| (T@Map_4005_6241 T@Map_4005_6241) Bool)
(declare-fun |Map#Equal_4005_22186| (T@Map_4005_22186 T@Map_4005_22186) Bool)
(declare-fun |Map#Equal_4005_4323| (T@Map_4005_4323 T@Map_4005_4323) Bool)
(declare-fun |Map#Equal_4005_4005| (T@Map_4005_4005 T@Map_4005_4005) Bool)
(declare-fun |Map#Equal_4004_6241| (T@Map_5300_24037 T@Map_5300_24037) Bool)
(declare-fun |Map#Equal_4004_22186| (T@Map_4779_22026 T@Map_4779_22026) Bool)
(declare-fun |Map#Equal_4004_4323| (T@Map_4322_4323 T@Map_4322_4323) Bool)
(declare-fun |Map#Equal_4570_4571| (T@Map_4004_4005 T@Map_4004_4005) Bool)
(declare-fun |Set#UnionOne_6241| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_22186| ((Array T@Map_4004_4005 Bool) T@Map_4004_4005) (Array T@Map_4004_4005 Bool))
(declare-fun |Set#UnionOne_4005| ((Array Bool Bool) Bool) (Array Bool Bool))
(declare-fun |Set#UnionOne_3| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Map#Empty_6241_6241| () T@Map_6241_6241)
(declare-fun |Map#Empty_6241_22186| () T@Map_6241_22186)
(declare-fun |Map#Empty_6241_4323| () T@Map_6241_4323)
(declare-fun |Map#Empty_6241_4005| () T@Map_6241_4005)
(declare-fun |Map#Empty_22186_6241| () T@Map_22186_6241)
(declare-fun |Map#Empty_22186_22186| () T@Map_22186_22186)
(declare-fun |Map#Empty_22186_4323| () T@Map_22186_4323)
(declare-fun |Map#Empty_22186_4005| () T@Map_22186_4005)
(declare-fun |Map#Empty_4005_6241| () T@Map_4005_6241)
(declare-fun |Map#Empty_4005_22186| () T@Map_4005_22186)
(declare-fun |Map#Empty_4005_4323| () T@Map_4005_4323)
(declare-fun |Map#Empty_4005_4005| () T@Map_4005_4005)
(declare-fun |Map#Empty_4004_6241| () T@Map_5300_24037)
(declare-fun |Map#Empty_4004_22186| () T@Map_4779_22026)
(declare-fun |Map#Empty_4359_4360| () T@Map_4322_4323)
(declare-fun |Map#Empty_4046_4047| () T@Map_4004_4005)
(declare-fun |Set#Empty_6241| () (Array T@Ref Bool))
(declare-fun |Set#Empty_22186| () (Array T@Map_4004_4005 Bool))
(declare-fun |Set#Empty_4005| () (Array Bool Bool))
(declare-fun |Set#Empty_4125| () (Array Int Bool))
(assert (forall ((m T@Map_6241_6241) (v T@Ref) ) (!  (=> (select (|Map#Values_6241_24037| m) v) (exists ((u T@Ref) ) (!  (and (select (|Map#Domain_6241_6241| m) u) (= v (select (|Map#Elements_6241_24037| m) u)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_6241_6241| m) u))
 :pattern ( (select (|Map#Elements_6241_24037| m) u))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6241_24037| m) v))
)))
(assert (forall ((m@@0 T@Map_6241_22186) (v@@0 T@Map_4004_4005) ) (!  (=> (select (|Map#Values_6241_23890| m@@0) v@@0) (exists ((u@@0 T@Ref) ) (!  (and (select (|Map#Domain_6241_22186| m@@0) u@@0) (= v@@0 (select (|Map#Elements_6241_23890| m@@0) u@@0)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_6241_22186| m@@0) u@@0))
 :pattern ( (select (|Map#Elements_6241_23890| m@@0) u@@0))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6241_23890| m@@0) v@@0))
)))
(assert (forall ((m@@1 T@Map_6241_4323) (v@@1 Int) ) (!  (=> (select (|Map#Values_6241_4323| m@@1) v@@1) (exists ((u@@1 T@Ref) ) (!  (and (select (|Map#Domain_6241_4323| m@@1) u@@1) (= v@@1 (select (|Map#Elements_6241_4323| m@@1) u@@1)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_6241_4323| m@@1) u@@1))
 :pattern ( (select (|Map#Elements_6241_4323| m@@1) u@@1))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6241_4323| m@@1) v@@1))
)))
(assert (forall ((m@@2 T@Map_6241_4005) (v@@2 Bool) ) (!  (=> (select (|Map#Values_6241_4005| m@@2) v@@2) (exists ((u@@2 T@Ref) ) (!  (and (select (|Map#Domain_6241_4005| m@@2) u@@2) (= v@@2 (select (|Map#Elements_6241_4005| m@@2) u@@2)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_6241_4005| m@@2) u@@2))
 :pattern ( (select (|Map#Elements_6241_4005| m@@2) u@@2))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_6241_4005| m@@2) v@@2))
)))
(assert (forall ((m@@3 T@Map_22186_6241) (v@@3 T@Ref) ) (!  (=> (select (|Map#Values_22186_24037| m@@3) v@@3) (exists ((u@@3 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_6241| m@@3) u@@3) (= v@@3 (select (|Map#Elements_22186_24037| m@@3) u@@3)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_22186_6241| m@@3) u@@3))
 :pattern ( (select (|Map#Elements_22186_24037| m@@3) u@@3))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_22186_24037| m@@3) v@@3))
)))
(assert (forall ((m@@4 T@Map_22186_22186) (v@@4 T@Map_4004_4005) ) (!  (=> (select (|Map#Values_22186_23890| m@@4) v@@4) (exists ((u@@4 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_22186| m@@4) u@@4) (= v@@4 (select (|Map#Elements_22186_23890| m@@4) u@@4)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_22186_22186| m@@4) u@@4))
 :pattern ( (select (|Map#Elements_22186_23890| m@@4) u@@4))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_22186_23890| m@@4) v@@4))
)))
(assert (forall ((m@@5 T@Map_22186_4323) (v@@5 Int) ) (!  (=> (select (|Map#Values_22186_4323| m@@5) v@@5) (exists ((u@@5 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_4323| m@@5) u@@5) (= v@@5 (select (|Map#Elements_22186_4323| m@@5) u@@5)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_22186_4323| m@@5) u@@5))
 :pattern ( (select (|Map#Elements_22186_4323| m@@5) u@@5))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_22186_4323| m@@5) v@@5))
)))
(assert (forall ((m@@6 T@Map_22186_4005) (v@@6 Bool) ) (!  (=> (select (|Map#Values_22186_4005| m@@6) v@@6) (exists ((u@@6 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_4005| m@@6) u@@6) (= v@@6 (select (|Map#Elements_22186_4005| m@@6) u@@6)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_22186_4005| m@@6) u@@6))
 :pattern ( (select (|Map#Elements_22186_4005| m@@6) u@@6))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_22186_4005| m@@6) v@@6))
)))
(assert (forall ((m@@7 T@Map_4005_6241) (v@@7 T@Ref) ) (!  (=> (select (|Map#Values_4005_24037| m@@7) v@@7) (exists ((u@@7 Bool) ) (!  (and (select (|Map#Domain_4005_6241| m@@7) u@@7) (= v@@7 (select (|Map#Elements_4005_24037| m@@7) u@@7)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4005_6241| m@@7) u@@7))
 :pattern ( (select (|Map#Elements_4005_24037| m@@7) u@@7))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4005_24037| m@@7) v@@7))
)))
(assert (forall ((m@@8 T@Map_4005_22186) (v@@8 T@Map_4004_4005) ) (!  (=> (select (|Map#Values_4005_23890| m@@8) v@@8) (exists ((u@@8 Bool) ) (!  (and (select (|Map#Domain_4005_22186| m@@8) u@@8) (= v@@8 (select (|Map#Elements_4005_23890| m@@8) u@@8)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4005_22186| m@@8) u@@8))
 :pattern ( (select (|Map#Elements_4005_23890| m@@8) u@@8))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4005_23890| m@@8) v@@8))
)))
(assert (forall ((m@@9 T@Map_4005_4323) (v@@9 Int) ) (!  (=> (select (|Map#Values_4005_4323| m@@9) v@@9) (exists ((u@@9 Bool) ) (!  (and (select (|Map#Domain_4005_4323| m@@9) u@@9) (= v@@9 (select (|Map#Elements_4005_4323| m@@9) u@@9)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4005_4323| m@@9) u@@9))
 :pattern ( (select (|Map#Elements_4005_4323| m@@9) u@@9))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4005_4323| m@@9) v@@9))
)))
(assert (forall ((m@@10 T@Map_4005_4005) (v@@10 Bool) ) (!  (=> (select (|Map#Values_4005_4005| m@@10) v@@10) (exists ((u@@10 Bool) ) (!  (and (select (|Map#Domain_4005_4005| m@@10) u@@10) (= v@@10 (select (|Map#Elements_4005_4005| m@@10) u@@10)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4005_4005| m@@10) u@@10))
 :pattern ( (select (|Map#Elements_4005_4005| m@@10) u@@10))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4005_4005| m@@10) v@@10))
)))
(assert (forall ((m@@11 T@Map_5300_24037) (v@@11 T@Ref) ) (!  (=> (select (|Map#Values_4004_24037| m@@11) v@@11) (exists ((u@@11 Int) ) (!  (and (select (|Map#Domain_5300_6241| m@@11) u@@11) (= v@@11 (select (|Map#Elements_5300_6241| m@@11) u@@11)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_5300_6241| m@@11) u@@11))
 :pattern ( (select (|Map#Elements_5300_6241| m@@11) u@@11))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4004_24037| m@@11) v@@11))
)))
(assert (forall ((m@@12 T@Map_4779_22026) (v@@12 T@Map_4004_4005) ) (!  (=> (select (|Map#Values_4779_23890| m@@12) v@@12) (exists ((u@@12 Int) ) (!  (and (select (|Map#Domain_4779_22186| m@@12) u@@12) (= v@@12 (select (|Map#Elements_4779_22378| m@@12) u@@12)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4779_22186| m@@12) u@@12))
 :pattern ( (select (|Map#Elements_4779_22378| m@@12) u@@12))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4779_23890| m@@12) v@@12))
)))
(assert (forall ((m@@13 T@Map_4322_4323) (v@@13 Int) ) (!  (=> (select (|Map#Values_4322_4323| m@@13) v@@13) (exists ((u@@13 Int) ) (!  (and (select (|Map#Domain_4322_4323| m@@13) u@@13) (= v@@13 (select (|Map#Elements_4322_4323| m@@13) u@@13)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4322_4323| m@@13) u@@13))
 :pattern ( (select (|Map#Elements_4322_4323| m@@13) u@@13))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4322_4323| m@@13) v@@13))
)))
(assert (forall ((m@@14 T@Map_4004_4005) (v@@14 Bool) ) (!  (=> (select (|Map#Values_4004_4005| m@@14) v@@14) (exists ((u@@14 Int) ) (!  (and (select (|Map#Domain_4004_4005| m@@14) u@@14) (= v@@14 (select (|Map#Elements_4180_4181| m@@14) u@@14)))
 :qid |stdinbpl.418:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_4004_4005| m@@14) u@@14))
 :pattern ( (select (|Map#Elements_4180_4181| m@@14) u@@14))
)))
 :qid |stdinbpl.416:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4004_4005| m@@14) v@@14))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10611) (Heap1 T@PolymorphicMapType_10611) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10611) (Mask T@PolymorphicMapType_10632) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10611) (Heap1@@0 T@PolymorphicMapType_10611) (Heap2 T@PolymorphicMapType_10611) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6194_26802) ) (!  (not (select (|PolymorphicMapType_11160_10671_27980#PolymorphicMapType_11160| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11160_10671_27980#PolymorphicMapType_11160| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6194_26669) ) (!  (not (select (|PolymorphicMapType_11160_10671_26669#PolymorphicMapType_11160| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11160_10671_26669#PolymorphicMapType_11160| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17914_3982) ) (!  (not (select (|PolymorphicMapType_11160_10671_3982#PolymorphicMapType_11160| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11160_10671_3982#PolymorphicMapType_11160| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10684_10685) ) (!  (not (select (|PolymorphicMapType_11160_10671_10685#PolymorphicMapType_11160| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11160_10671_10685#PolymorphicMapType_11160| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10671_53) ) (!  (not (select (|PolymorphicMapType_11160_10671_53#PolymorphicMapType_11160| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11160_10671_53#PolymorphicMapType_11160| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6241| (|Set#Union_6241| a@@0 b@@0) b@@0) (|Set#Union_6241| a@@0 b@@0))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6241| (|Set#Union_6241| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Map_4004_4005 Bool)) (b@@1 (Array T@Map_4004_4005 Bool)) ) (! (= (|Set#Union_22186| (|Set#Union_22186| a@@1 b@@1) b@@1) (|Set#Union_22186| a@@1 b@@1))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_22186| (|Set#Union_22186| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Union_4125| (|Set#Union_4125| a@@2 b@@2) b@@2) (|Set#Union_4125| a@@2 b@@2))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4125| (|Set#Union_4125| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array Bool Bool)) (b@@3 (Array Bool Bool)) ) (! (= (|Set#Union_4005| (|Set#Union_4005| a@@3 b@@3) b@@3) (|Set#Union_4005| a@@3 b@@3))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4005| (|Set#Union_4005| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6241| (|Set#Intersection_6241| a@@4 b@@4) b@@4) (|Set#Intersection_6241| a@@4 b@@4))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6241| (|Set#Intersection_6241| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 (Array T@Map_4004_4005 Bool)) (b@@5 (Array T@Map_4004_4005 Bool)) ) (! (= (|Set#Intersection_22186| (|Set#Intersection_22186| a@@5 b@@5) b@@5) (|Set#Intersection_22186| a@@5 b@@5))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_22186| (|Set#Intersection_22186| a@@5 b@@5) b@@5))
)))
(assert (forall ((a@@6 (Array Int Bool)) (b@@6 (Array Int Bool)) ) (! (= (|Set#Intersection_4125| (|Set#Intersection_4125| a@@6 b@@6) b@@6) (|Set#Intersection_4125| a@@6 b@@6))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4125| (|Set#Intersection_4125| a@@6 b@@6) b@@6))
)))
(assert (forall ((a@@7 (Array Bool Bool)) (b@@7 (Array Bool Bool)) ) (! (= (|Set#Intersection_4005| (|Set#Intersection_4005| a@@7 b@@7) b@@7) (|Set#Intersection_4005| a@@7 b@@7))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4005| (|Set#Intersection_4005| a@@7 b@@7) b@@7))
)))
(assert (forall ((m@@15 T@Map_6241_6241) (u@@15 T@Ref) (v@@15 T@Ref) ) (!  (=> (select (|Map#Domain_6241_6241| m@@15) u@@15) (= (|Map#Card_6241_6241| (|Map#Build_6241_6241| m@@15 u@@15 v@@15)) (|Map#Card_6241_6241| m@@15)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_6241_6241| (|Map#Build_6241_6241| m@@15 u@@15 v@@15)))
 :pattern ( (|Map#Card_6241_6241| m@@15) (|Map#Build_6241_6241| m@@15 u@@15 v@@15))
)))
(assert (forall ((m@@16 T@Map_6241_22186) (u@@16 T@Ref) (v@@16 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_6241_22186| m@@16) u@@16) (= (|Map#Card_6241_22186| (|Map#Build_6241_22186| m@@16 u@@16 v@@16)) (|Map#Card_6241_22186| m@@16)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_6241_22186| (|Map#Build_6241_22186| m@@16 u@@16 v@@16)))
 :pattern ( (|Map#Card_6241_22186| m@@16) (|Map#Build_6241_22186| m@@16 u@@16 v@@16))
)))
(assert (forall ((m@@17 T@Map_6241_4323) (u@@17 T@Ref) (v@@17 Int) ) (!  (=> (select (|Map#Domain_6241_4323| m@@17) u@@17) (= (|Map#Card_6241_4323| (|Map#Build_6241_4323| m@@17 u@@17 v@@17)) (|Map#Card_6241_4323| m@@17)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_6241_4323| (|Map#Build_6241_4323| m@@17 u@@17 v@@17)))
 :pattern ( (|Map#Card_6241_4323| m@@17) (|Map#Build_6241_4323| m@@17 u@@17 v@@17))
)))
(assert (forall ((m@@18 T@Map_6241_4005) (u@@18 T@Ref) (v@@18 Bool) ) (!  (=> (select (|Map#Domain_6241_4005| m@@18) u@@18) (= (|Map#Card_6241_4005| (|Map#Build_6241_4005| m@@18 u@@18 v@@18)) (|Map#Card_6241_4005| m@@18)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_6241_4005| (|Map#Build_6241_4005| m@@18 u@@18 v@@18)))
 :pattern ( (|Map#Card_6241_4005| m@@18) (|Map#Build_6241_4005| m@@18 u@@18 v@@18))
)))
(assert (forall ((m@@19 T@Map_22186_6241) (u@@19 T@Map_4004_4005) (v@@19 T@Ref) ) (!  (=> (select (|Map#Domain_22186_6241| m@@19) u@@19) (= (|Map#Card_22186_6241| (|Map#Build_22186_6241| m@@19 u@@19 v@@19)) (|Map#Card_22186_6241| m@@19)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_22186_6241| (|Map#Build_22186_6241| m@@19 u@@19 v@@19)))
 :pattern ( (|Map#Card_22186_6241| m@@19) (|Map#Build_22186_6241| m@@19 u@@19 v@@19))
)))
(assert (forall ((m@@20 T@Map_22186_22186) (u@@20 T@Map_4004_4005) (v@@20 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_22186| m@@20) u@@20) (= (|Map#Card_22186_22186| (|Map#Build_22186_22186| m@@20 u@@20 v@@20)) (|Map#Card_22186_22186| m@@20)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_22186_22186| (|Map#Build_22186_22186| m@@20 u@@20 v@@20)))
 :pattern ( (|Map#Card_22186_22186| m@@20) (|Map#Build_22186_22186| m@@20 u@@20 v@@20))
)))
(assert (forall ((m@@21 T@Map_22186_4323) (u@@21 T@Map_4004_4005) (v@@21 Int) ) (!  (=> (select (|Map#Domain_22186_4323| m@@21) u@@21) (= (|Map#Card_22186_4323| (|Map#Build_22186_4323| m@@21 u@@21 v@@21)) (|Map#Card_22186_4323| m@@21)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_22186_4323| (|Map#Build_22186_4323| m@@21 u@@21 v@@21)))
 :pattern ( (|Map#Card_22186_4323| m@@21) (|Map#Build_22186_4323| m@@21 u@@21 v@@21))
)))
(assert (forall ((m@@22 T@Map_22186_4005) (u@@22 T@Map_4004_4005) (v@@22 Bool) ) (!  (=> (select (|Map#Domain_22186_4005| m@@22) u@@22) (= (|Map#Card_22186_4005| (|Map#Build_22186_4005| m@@22 u@@22 v@@22)) (|Map#Card_22186_4005| m@@22)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_22186_4005| (|Map#Build_22186_4005| m@@22 u@@22 v@@22)))
 :pattern ( (|Map#Card_22186_4005| m@@22) (|Map#Build_22186_4005| m@@22 u@@22 v@@22))
)))
(assert (forall ((m@@23 T@Map_4005_6241) (u@@23 Bool) (v@@23 T@Ref) ) (!  (=> (select (|Map#Domain_4005_6241| m@@23) u@@23) (= (|Map#Card_4005_6241| (|Map#Build_4005_6241| m@@23 u@@23 v@@23)) (|Map#Card_4005_6241| m@@23)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4005_6241| (|Map#Build_4005_6241| m@@23 u@@23 v@@23)))
 :pattern ( (|Map#Card_4005_6241| m@@23) (|Map#Build_4005_6241| m@@23 u@@23 v@@23))
)))
(assert (forall ((m@@24 T@Map_4005_22186) (u@@24 Bool) (v@@24 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_4005_22186| m@@24) u@@24) (= (|Map#Card_4005_22186| (|Map#Build_4005_22186| m@@24 u@@24 v@@24)) (|Map#Card_4005_22186| m@@24)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4005_22186| (|Map#Build_4005_22186| m@@24 u@@24 v@@24)))
 :pattern ( (|Map#Card_4005_22186| m@@24) (|Map#Build_4005_22186| m@@24 u@@24 v@@24))
)))
(assert (forall ((m@@25 T@Map_4005_4323) (u@@25 Bool) (v@@25 Int) ) (!  (=> (select (|Map#Domain_4005_4323| m@@25) u@@25) (= (|Map#Card_4005_4323| (|Map#Build_4005_4323| m@@25 u@@25 v@@25)) (|Map#Card_4005_4323| m@@25)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4005_4323| (|Map#Build_4005_4323| m@@25 u@@25 v@@25)))
 :pattern ( (|Map#Card_4005_4323| m@@25) (|Map#Build_4005_4323| m@@25 u@@25 v@@25))
)))
(assert (forall ((m@@26 T@Map_4005_4005) (u@@26 Bool) (v@@26 Bool) ) (!  (=> (select (|Map#Domain_4005_4005| m@@26) u@@26) (= (|Map#Card_4005_4005| (|Map#Build_4005_4005| m@@26 u@@26 v@@26)) (|Map#Card_4005_4005| m@@26)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4005_4005| (|Map#Build_4005_4005| m@@26 u@@26 v@@26)))
 :pattern ( (|Map#Card_4005_4005| m@@26) (|Map#Build_4005_4005| m@@26 u@@26 v@@26))
)))
(assert (forall ((m@@27 T@Map_5300_24037) (u@@27 Int) (v@@27 T@Ref) ) (!  (=> (select (|Map#Domain_5300_6241| m@@27) u@@27) (= (|Map#Card_4068_24037| (|Map#Build_4004_6241| m@@27 u@@27 v@@27)) (|Map#Card_4068_24037| m@@27)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4068_24037| (|Map#Build_4004_6241| m@@27 u@@27 v@@27)))
 :pattern ( (|Map#Card_4068_24037| m@@27) (|Map#Build_4004_6241| m@@27 u@@27 v@@27))
)))
(assert (forall ((m@@28 T@Map_4779_22026) (u@@28 Int) (v@@28 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_4779_22186| m@@28) u@@28) (= (|Map#Card_4068_22026| (|Map#Build_4004_22186| m@@28 u@@28 v@@28)) (|Map#Card_4068_22026| m@@28)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4068_22026| (|Map#Build_4004_22186| m@@28 u@@28 v@@28)))
 :pattern ( (|Map#Card_4068_22026| m@@28) (|Map#Build_4004_22186| m@@28 u@@28 v@@28))
)))
(assert (forall ((m@@29 T@Map_4322_4323) (u@@29 Int) (v@@29 Int) ) (!  (=> (select (|Map#Domain_4322_4323| m@@29) u@@29) (= (|Map#Card_4322_4323| (|Map#Build_4359_4360| m@@29 u@@29 v@@29)) (|Map#Card_4322_4323| m@@29)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4322_4323| (|Map#Build_4359_4360| m@@29 u@@29 v@@29)))
 :pattern ( (|Map#Card_4322_4323| m@@29) (|Map#Build_4359_4360| m@@29 u@@29 v@@29))
)))
(assert (forall ((m@@30 T@Map_4004_4005) (u@@30 Int) (v@@30 Bool) ) (!  (=> (select (|Map#Domain_4004_4005| m@@30) u@@30) (= (|Map#Card_4068_4069| (|Map#Build_4180_4181| m@@30 u@@30 v@@30)) (|Map#Card_4068_4069| m@@30)))
 :qid |stdinbpl.455:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4068_4069| (|Map#Build_4180_4181| m@@30 u@@30 v@@30)))
 :pattern ( (|Map#Card_4068_4069| m@@30) (|Map#Build_4180_4181| m@@30 u@@30 v@@30))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6241| r) o) (= r o))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6241| r) o))
)))
(assert (forall ((r@@0 T@Map_4004_4005) (o@@0 T@Map_4004_4005) ) (! (= (select (|Set#Singleton_22186| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_22186| r@@0) o@@0))
)))
(assert (forall ((r@@1 Bool) (o@@1 Bool) ) (! (= (select (|Set#Singleton_5| r@@1) o@@1) (= r@@1 o@@1))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5| r@@1) o@@1))
)))
(assert (forall ((r@@2 Int) (o@@2 Int) ) (! (= (select (|Set#Singleton_3| r@@2) o@@2) (= r@@2 o@@2))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_3| r@@2) o@@2))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6241| (|Set#Union_6241| a@@8 b@@8)) (|Set#Card_6241| (|Set#Intersection_6241| a@@8 b@@8))) (+ (|Set#Card_6241| a@@8) (|Set#Card_6241| b@@8)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6241| (|Set#Union_6241| a@@8 b@@8)))
 :pattern ( (|Set#Card_6241| (|Set#Intersection_6241| a@@8 b@@8)))
)))
(assert (forall ((a@@9 (Array T@Map_4004_4005 Bool)) (b@@9 (Array T@Map_4004_4005 Bool)) ) (! (= (+ (|Set#Card_22186| (|Set#Union_22186| a@@9 b@@9)) (|Set#Card_22186| (|Set#Intersection_22186| a@@9 b@@9))) (+ (|Set#Card_22186| a@@9) (|Set#Card_22186| b@@9)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_22186| (|Set#Union_22186| a@@9 b@@9)))
 :pattern ( (|Set#Card_22186| (|Set#Intersection_22186| a@@9 b@@9)))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (! (= (+ (|Set#Card_4125| (|Set#Union_4125| a@@10 b@@10)) (|Set#Card_4125| (|Set#Intersection_4125| a@@10 b@@10))) (+ (|Set#Card_4125| a@@10) (|Set#Card_4125| b@@10)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4125| (|Set#Union_4125| a@@10 b@@10)))
 :pattern ( (|Set#Card_4125| (|Set#Intersection_4125| a@@10 b@@10)))
)))
(assert (forall ((a@@11 (Array Bool Bool)) (b@@11 (Array Bool Bool)) ) (! (= (+ (|Set#Card_4005| (|Set#Union_4005| a@@11 b@@11)) (|Set#Card_4005| (|Set#Intersection_4005| a@@11 b@@11))) (+ (|Set#Card_4005| a@@11) (|Set#Card_4005| b@@11)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4005| (|Set#Union_4005| a@@11 b@@11)))
 :pattern ( (|Set#Card_4005| (|Set#Intersection_4005| a@@11 b@@11)))
)))
(assert (forall ((a@@12 Int) ) (!  (=> (<= 0 a@@12) (= (|Math#clip| a@@12) a@@12))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@12))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10611) (ExhaleHeap T@PolymorphicMapType_10611) (Mask@@0 T@PolymorphicMapType_10632) (pm_f_6 T@Field_6194_26669) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6194_26733 Mask@@0 null pm_f_6) (IsPredicateField_6194_26760 pm_f_6)) (= (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@0) null (PredicateMaskField_6194 pm_f_6)) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap) null (PredicateMaskField_6194 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6194_26760 pm_f_6) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap) null (PredicateMaskField_6194 pm_f_6)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10611) (ExhaleHeap@@0 T@PolymorphicMapType_10611) (Mask@@1 T@PolymorphicMapType_10632) (pm_f_6@@0 T@Field_6194_26669) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6194_26733 Mask@@1 null pm_f_6@@0) (IsWandField_6194_28507 pm_f_6@@0)) (= (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@1) null (WandMaskField_6194 pm_f_6@@0)) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@0) null (WandMaskField_6194 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6194_28507 pm_f_6@@0) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@0) null (WandMaskField_6194 pm_f_6@@0)))
)))
(assert (forall ((m@@31 T@Map_6241_6241) (u@@31 T@Ref) (v@@31 T@Ref) ) (!  (=> (not (select (|Map#Domain_6241_6241| m@@31) u@@31)) (= (|Map#Card_6241_6241| (|Map#Build_6241_6241| m@@31 u@@31 v@@31)) (+ (|Map#Card_6241_6241| m@@31) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_6241_6241| (|Map#Build_6241_6241| m@@31 u@@31 v@@31)))
 :pattern ( (|Map#Card_6241_6241| m@@31) (|Map#Build_6241_6241| m@@31 u@@31 v@@31))
)))
(assert (forall ((m@@32 T@Map_6241_22186) (u@@32 T@Ref) (v@@32 T@Map_4004_4005) ) (!  (=> (not (select (|Map#Domain_6241_22186| m@@32) u@@32)) (= (|Map#Card_6241_22186| (|Map#Build_6241_22186| m@@32 u@@32 v@@32)) (+ (|Map#Card_6241_22186| m@@32) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_6241_22186| (|Map#Build_6241_22186| m@@32 u@@32 v@@32)))
 :pattern ( (|Map#Card_6241_22186| m@@32) (|Map#Build_6241_22186| m@@32 u@@32 v@@32))
)))
(assert (forall ((m@@33 T@Map_6241_4323) (u@@33 T@Ref) (v@@33 Int) ) (!  (=> (not (select (|Map#Domain_6241_4323| m@@33) u@@33)) (= (|Map#Card_6241_4323| (|Map#Build_6241_4323| m@@33 u@@33 v@@33)) (+ (|Map#Card_6241_4323| m@@33) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_6241_4323| (|Map#Build_6241_4323| m@@33 u@@33 v@@33)))
 :pattern ( (|Map#Card_6241_4323| m@@33) (|Map#Build_6241_4323| m@@33 u@@33 v@@33))
)))
(assert (forall ((m@@34 T@Map_6241_4005) (u@@34 T@Ref) (v@@34 Bool) ) (!  (=> (not (select (|Map#Domain_6241_4005| m@@34) u@@34)) (= (|Map#Card_6241_4005| (|Map#Build_6241_4005| m@@34 u@@34 v@@34)) (+ (|Map#Card_6241_4005| m@@34) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_6241_4005| (|Map#Build_6241_4005| m@@34 u@@34 v@@34)))
 :pattern ( (|Map#Card_6241_4005| m@@34) (|Map#Build_6241_4005| m@@34 u@@34 v@@34))
)))
(assert (forall ((m@@35 T@Map_22186_6241) (u@@35 T@Map_4004_4005) (v@@35 T@Ref) ) (!  (=> (not (select (|Map#Domain_22186_6241| m@@35) u@@35)) (= (|Map#Card_22186_6241| (|Map#Build_22186_6241| m@@35 u@@35 v@@35)) (+ (|Map#Card_22186_6241| m@@35) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_22186_6241| (|Map#Build_22186_6241| m@@35 u@@35 v@@35)))
 :pattern ( (|Map#Card_22186_6241| m@@35) (|Map#Build_22186_6241| m@@35 u@@35 v@@35))
)))
(assert (forall ((m@@36 T@Map_22186_22186) (u@@36 T@Map_4004_4005) (v@@36 T@Map_4004_4005) ) (!  (=> (not (select (|Map#Domain_22186_22186| m@@36) u@@36)) (= (|Map#Card_22186_22186| (|Map#Build_22186_22186| m@@36 u@@36 v@@36)) (+ (|Map#Card_22186_22186| m@@36) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_22186_22186| (|Map#Build_22186_22186| m@@36 u@@36 v@@36)))
 :pattern ( (|Map#Card_22186_22186| m@@36) (|Map#Build_22186_22186| m@@36 u@@36 v@@36))
)))
(assert (forall ((m@@37 T@Map_22186_4323) (u@@37 T@Map_4004_4005) (v@@37 Int) ) (!  (=> (not (select (|Map#Domain_22186_4323| m@@37) u@@37)) (= (|Map#Card_22186_4323| (|Map#Build_22186_4323| m@@37 u@@37 v@@37)) (+ (|Map#Card_22186_4323| m@@37) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_22186_4323| (|Map#Build_22186_4323| m@@37 u@@37 v@@37)))
 :pattern ( (|Map#Card_22186_4323| m@@37) (|Map#Build_22186_4323| m@@37 u@@37 v@@37))
)))
(assert (forall ((m@@38 T@Map_22186_4005) (u@@38 T@Map_4004_4005) (v@@38 Bool) ) (!  (=> (not (select (|Map#Domain_22186_4005| m@@38) u@@38)) (= (|Map#Card_22186_4005| (|Map#Build_22186_4005| m@@38 u@@38 v@@38)) (+ (|Map#Card_22186_4005| m@@38) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_22186_4005| (|Map#Build_22186_4005| m@@38 u@@38 v@@38)))
 :pattern ( (|Map#Card_22186_4005| m@@38) (|Map#Build_22186_4005| m@@38 u@@38 v@@38))
)))
(assert (forall ((m@@39 T@Map_4005_6241) (u@@39 Bool) (v@@39 T@Ref) ) (!  (=> (not (select (|Map#Domain_4005_6241| m@@39) u@@39)) (= (|Map#Card_4005_6241| (|Map#Build_4005_6241| m@@39 u@@39 v@@39)) (+ (|Map#Card_4005_6241| m@@39) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4005_6241| (|Map#Build_4005_6241| m@@39 u@@39 v@@39)))
 :pattern ( (|Map#Card_4005_6241| m@@39) (|Map#Build_4005_6241| m@@39 u@@39 v@@39))
)))
(assert (forall ((m@@40 T@Map_4005_22186) (u@@40 Bool) (v@@40 T@Map_4004_4005) ) (!  (=> (not (select (|Map#Domain_4005_22186| m@@40) u@@40)) (= (|Map#Card_4005_22186| (|Map#Build_4005_22186| m@@40 u@@40 v@@40)) (+ (|Map#Card_4005_22186| m@@40) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4005_22186| (|Map#Build_4005_22186| m@@40 u@@40 v@@40)))
 :pattern ( (|Map#Card_4005_22186| m@@40) (|Map#Build_4005_22186| m@@40 u@@40 v@@40))
)))
(assert (forall ((m@@41 T@Map_4005_4323) (u@@41 Bool) (v@@41 Int) ) (!  (=> (not (select (|Map#Domain_4005_4323| m@@41) u@@41)) (= (|Map#Card_4005_4323| (|Map#Build_4005_4323| m@@41 u@@41 v@@41)) (+ (|Map#Card_4005_4323| m@@41) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4005_4323| (|Map#Build_4005_4323| m@@41 u@@41 v@@41)))
 :pattern ( (|Map#Card_4005_4323| m@@41) (|Map#Build_4005_4323| m@@41 u@@41 v@@41))
)))
(assert (forall ((m@@42 T@Map_4005_4005) (u@@42 Bool) (v@@42 Bool) ) (!  (=> (not (select (|Map#Domain_4005_4005| m@@42) u@@42)) (= (|Map#Card_4005_4005| (|Map#Build_4005_4005| m@@42 u@@42 v@@42)) (+ (|Map#Card_4005_4005| m@@42) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4005_4005| (|Map#Build_4005_4005| m@@42 u@@42 v@@42)))
 :pattern ( (|Map#Card_4005_4005| m@@42) (|Map#Build_4005_4005| m@@42 u@@42 v@@42))
)))
(assert (forall ((m@@43 T@Map_5300_24037) (u@@43 Int) (v@@43 T@Ref) ) (!  (=> (not (select (|Map#Domain_5300_6241| m@@43) u@@43)) (= (|Map#Card_4068_24037| (|Map#Build_4004_6241| m@@43 u@@43 v@@43)) (+ (|Map#Card_4068_24037| m@@43) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4068_24037| (|Map#Build_4004_6241| m@@43 u@@43 v@@43)))
 :pattern ( (|Map#Card_4068_24037| m@@43) (|Map#Build_4004_6241| m@@43 u@@43 v@@43))
)))
(assert (forall ((m@@44 T@Map_4779_22026) (u@@44 Int) (v@@44 T@Map_4004_4005) ) (!  (=> (not (select (|Map#Domain_4779_22186| m@@44) u@@44)) (= (|Map#Card_4068_22026| (|Map#Build_4004_22186| m@@44 u@@44 v@@44)) (+ (|Map#Card_4068_22026| m@@44) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4068_22026| (|Map#Build_4004_22186| m@@44 u@@44 v@@44)))
 :pattern ( (|Map#Card_4068_22026| m@@44) (|Map#Build_4004_22186| m@@44 u@@44 v@@44))
)))
(assert (forall ((m@@45 T@Map_4322_4323) (u@@45 Int) (v@@45 Int) ) (!  (=> (not (select (|Map#Domain_4322_4323| m@@45) u@@45)) (= (|Map#Card_4322_4323| (|Map#Build_4359_4360| m@@45 u@@45 v@@45)) (+ (|Map#Card_4322_4323| m@@45) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4322_4323| (|Map#Build_4359_4360| m@@45 u@@45 v@@45)))
 :pattern ( (|Map#Card_4322_4323| m@@45) (|Map#Build_4359_4360| m@@45 u@@45 v@@45))
)))
(assert (forall ((m@@46 T@Map_4004_4005) (u@@46 Int) (v@@46 Bool) ) (!  (=> (not (select (|Map#Domain_4004_4005| m@@46) u@@46)) (= (|Map#Card_4068_4069| (|Map#Build_4180_4181| m@@46 u@@46 v@@46)) (+ (|Map#Card_4068_4069| m@@46) 1)))
 :qid |stdinbpl.458:21|
 :skolemid |94|
 :pattern ( (|Map#Card_4068_4069| (|Map#Build_4180_4181| m@@46 u@@46 v@@46)))
 :pattern ( (|Map#Card_4068_4069| m@@46) (|Map#Build_4180_4181| m@@46 u@@46 v@@46))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10611) (ExhaleHeap@@1 T@PolymorphicMapType_10611) (Mask@@2 T@PolymorphicMapType_10632) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@2) o_17 $allocated) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@1) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@1) o_17 $allocated))
)))
(assert (forall ((p T@Field_6194_26669) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10671_10671 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10671_10671 p v_1 p w))
)))
(assert  (not (IsPredicateField_6194_3982 val)))
(assert  (not (IsWandField_6194_3982 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10611) (ExhaleHeap@@2 T@PolymorphicMapType_10611) (Mask@@3 T@PolymorphicMapType_10632) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((m@@47 T@Map_6241_6241) (|m'| T@Map_6241_6241) ) (!  (=> (|Map#Disjoint_6241_24037| m@@47 |m'|) (forall ((o@@3 T@Ref) ) (!  (or (not (select (|Map#Domain_6241_6241| m@@47) o@@3)) (not (select (|Map#Domain_6241_6241| |m'|) o@@3)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_6241_6241| m@@47) o@@3))
 :pattern ( (select (|Map#Domain_6241_6241| |m'|) o@@3))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_6241_24037| m@@47 |m'|))
)))
(assert (forall ((m@@48 T@Map_6241_22186) (|m'@@0| T@Map_6241_22186) ) (!  (=> (|Map#Disjoint_6241_22026| m@@48 |m'@@0|) (forall ((o@@4 T@Ref) ) (!  (or (not (select (|Map#Domain_6241_22186| m@@48) o@@4)) (not (select (|Map#Domain_6241_22186| |m'@@0|) o@@4)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_6241_22186| m@@48) o@@4))
 :pattern ( (select (|Map#Domain_6241_22186| |m'@@0|) o@@4))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_6241_22026| m@@48 |m'@@0|))
)))
(assert (forall ((m@@49 T@Map_6241_4323) (|m'@@1| T@Map_6241_4323) ) (!  (=> (|Map#Disjoint_6241_4323| m@@49 |m'@@1|) (forall ((o@@5 T@Ref) ) (!  (or (not (select (|Map#Domain_6241_4323| m@@49) o@@5)) (not (select (|Map#Domain_6241_4323| |m'@@1|) o@@5)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_6241_4323| m@@49) o@@5))
 :pattern ( (select (|Map#Domain_6241_4323| |m'@@1|) o@@5))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_6241_4323| m@@49 |m'@@1|))
)))
(assert (forall ((m@@50 T@Map_6241_4005) (|m'@@2| T@Map_6241_4005) ) (!  (=> (|Map#Disjoint_6241_4005| m@@50 |m'@@2|) (forall ((o@@6 T@Ref) ) (!  (or (not (select (|Map#Domain_6241_4005| m@@50) o@@6)) (not (select (|Map#Domain_6241_4005| |m'@@2|) o@@6)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_6241_4005| m@@50) o@@6))
 :pattern ( (select (|Map#Domain_6241_4005| |m'@@2|) o@@6))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_6241_4005| m@@50 |m'@@2|))
)))
(assert (forall ((m@@51 T@Map_22186_6241) (|m'@@3| T@Map_22186_6241) ) (!  (=> (|Map#Disjoint_22186_24037| m@@51 |m'@@3|) (forall ((o@@7 T@Map_4004_4005) ) (!  (or (not (select (|Map#Domain_22186_6241| m@@51) o@@7)) (not (select (|Map#Domain_22186_6241| |m'@@3|) o@@7)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_22186_6241| m@@51) o@@7))
 :pattern ( (select (|Map#Domain_22186_6241| |m'@@3|) o@@7))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_22186_24037| m@@51 |m'@@3|))
)))
(assert (forall ((m@@52 T@Map_22186_22186) (|m'@@4| T@Map_22186_22186) ) (!  (=> (|Map#Disjoint_22186_22026| m@@52 |m'@@4|) (forall ((o@@8 T@Map_4004_4005) ) (!  (or (not (select (|Map#Domain_22186_22186| m@@52) o@@8)) (not (select (|Map#Domain_22186_22186| |m'@@4|) o@@8)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_22186_22186| m@@52) o@@8))
 :pattern ( (select (|Map#Domain_22186_22186| |m'@@4|) o@@8))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_22186_22026| m@@52 |m'@@4|))
)))
(assert (forall ((m@@53 T@Map_22186_4323) (|m'@@5| T@Map_22186_4323) ) (!  (=> (|Map#Disjoint_22186_4323| m@@53 |m'@@5|) (forall ((o@@9 T@Map_4004_4005) ) (!  (or (not (select (|Map#Domain_22186_4323| m@@53) o@@9)) (not (select (|Map#Domain_22186_4323| |m'@@5|) o@@9)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_22186_4323| m@@53) o@@9))
 :pattern ( (select (|Map#Domain_22186_4323| |m'@@5|) o@@9))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_22186_4323| m@@53 |m'@@5|))
)))
(assert (forall ((m@@54 T@Map_22186_4005) (|m'@@6| T@Map_22186_4005) ) (!  (=> (|Map#Disjoint_22186_4005| m@@54 |m'@@6|) (forall ((o@@10 T@Map_4004_4005) ) (!  (or (not (select (|Map#Domain_22186_4005| m@@54) o@@10)) (not (select (|Map#Domain_22186_4005| |m'@@6|) o@@10)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_22186_4005| m@@54) o@@10))
 :pattern ( (select (|Map#Domain_22186_4005| |m'@@6|) o@@10))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_22186_4005| m@@54 |m'@@6|))
)))
(assert (forall ((m@@55 T@Map_4005_6241) (|m'@@7| T@Map_4005_6241) ) (!  (=> (|Map#Disjoint_4005_24037| m@@55 |m'@@7|) (forall ((o@@11 Bool) ) (!  (or (not (select (|Map#Domain_4005_6241| m@@55) o@@11)) (not (select (|Map#Domain_4005_6241| |m'@@7|) o@@11)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4005_6241| m@@55) o@@11))
 :pattern ( (select (|Map#Domain_4005_6241| |m'@@7|) o@@11))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4005_24037| m@@55 |m'@@7|))
)))
(assert (forall ((m@@56 T@Map_4005_22186) (|m'@@8| T@Map_4005_22186) ) (!  (=> (|Map#Disjoint_4005_22026| m@@56 |m'@@8|) (forall ((o@@12 Bool) ) (!  (or (not (select (|Map#Domain_4005_22186| m@@56) o@@12)) (not (select (|Map#Domain_4005_22186| |m'@@8|) o@@12)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4005_22186| m@@56) o@@12))
 :pattern ( (select (|Map#Domain_4005_22186| |m'@@8|) o@@12))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4005_22026| m@@56 |m'@@8|))
)))
(assert (forall ((m@@57 T@Map_4005_4323) (|m'@@9| T@Map_4005_4323) ) (!  (=> (|Map#Disjoint_4005_4323| m@@57 |m'@@9|) (forall ((o@@13 Bool) ) (!  (or (not (select (|Map#Domain_4005_4323| m@@57) o@@13)) (not (select (|Map#Domain_4005_4323| |m'@@9|) o@@13)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4005_4323| m@@57) o@@13))
 :pattern ( (select (|Map#Domain_4005_4323| |m'@@9|) o@@13))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4005_4323| m@@57 |m'@@9|))
)))
(assert (forall ((m@@58 T@Map_4005_4005) (|m'@@10| T@Map_4005_4005) ) (!  (=> (|Map#Disjoint_4005_4005| m@@58 |m'@@10|) (forall ((o@@14 Bool) ) (!  (or (not (select (|Map#Domain_4005_4005| m@@58) o@@14)) (not (select (|Map#Domain_4005_4005| |m'@@10|) o@@14)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4005_4005| m@@58) o@@14))
 :pattern ( (select (|Map#Domain_4005_4005| |m'@@10|) o@@14))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4005_4005| m@@58 |m'@@10|))
)))
(assert (forall ((m@@59 T@Map_5300_24037) (|m'@@11| T@Map_5300_24037) ) (!  (=> (|Map#Disjoint_4004_24037| m@@59 |m'@@11|) (forall ((o@@15 Int) ) (!  (or (not (select (|Map#Domain_5300_6241| m@@59) o@@15)) (not (select (|Map#Domain_5300_6241| |m'@@11|) o@@15)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_5300_6241| m@@59) o@@15))
 :pattern ( (select (|Map#Domain_5300_6241| |m'@@11|) o@@15))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4004_24037| m@@59 |m'@@11|))
)))
(assert (forall ((m@@60 T@Map_4779_22026) (|m'@@12| T@Map_4779_22026) ) (!  (=> (|Map#Disjoint_4004_22026| m@@60 |m'@@12|) (forall ((o@@16 Int) ) (!  (or (not (select (|Map#Domain_4779_22186| m@@60) o@@16)) (not (select (|Map#Domain_4779_22186| |m'@@12|) o@@16)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4779_22186| m@@60) o@@16))
 :pattern ( (select (|Map#Domain_4779_22186| |m'@@12|) o@@16))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4004_22026| m@@60 |m'@@12|))
)))
(assert (forall ((m@@61 T@Map_4322_4323) (|m'@@13| T@Map_4322_4323) ) (!  (=> (|Map#Disjoint_4004_4323| m@@61 |m'@@13|) (forall ((o@@17 Int) ) (!  (or (not (select (|Map#Domain_4322_4323| m@@61) o@@17)) (not (select (|Map#Domain_4322_4323| |m'@@13|) o@@17)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4322_4323| m@@61) o@@17))
 :pattern ( (select (|Map#Domain_4322_4323| |m'@@13|) o@@17))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4004_4323| m@@61 |m'@@13|))
)))
(assert (forall ((m@@62 T@Map_4004_4005) (|m'@@14| T@Map_4004_4005) ) (!  (=> (|Map#Disjoint_4004_4005| m@@62 |m'@@14|) (forall ((o@@18 Int) ) (!  (or (not (select (|Map#Domain_4004_4005| m@@62) o@@18)) (not (select (|Map#Domain_4004_4005| |m'@@14|) o@@18)))
 :qid |stdinbpl.478:37|
 :skolemid |99|
 :pattern ( (select (|Map#Domain_4004_4005| m@@62) o@@18))
 :pattern ( (select (|Map#Domain_4004_4005| |m'@@14|) o@@18))
)))
 :qid |stdinbpl.476:21|
 :skolemid |100|
 :pattern ( (|Map#Disjoint_4004_4005| m@@62 |m'@@14|))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_10632) (o_2@@4 T@Ref) (f_4@@4 T@Field_6194_26802) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6194_32053 f_4@@4))) (not (IsWandField_6194_32069 f_4@@4))) (<= (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_10632) (o_2@@5 T@Ref) (f_4@@5 T@Field_6194_26669) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6194_26760 f_4@@5))) (not (IsWandField_6194_28507 f_4@@5))) (<= (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10632) (o_2@@6 T@Ref) (f_4@@6 T@Field_10684_10685) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6194_10685 f_4@@6))) (not (IsWandField_6194_10685 f_4@@6))) (<= (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10632) (o_2@@7 T@Ref) (f_4@@7 T@Field_10671_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6194_53 f_4@@7))) (not (IsWandField_6194_53 f_4@@7))) (<= (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10632) (o_2@@8 T@Ref) (f_4@@8 T@Field_17914_3982) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6194_3982 f_4@@8))) (not (IsWandField_6194_3982 f_4@@8))) (<= (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@13 (Array Bool Bool)) (b@@12 (Array Bool Bool)) ) (! (= (|Set#Equal_4181| a@@13 b@@12) (forall ((o@@19 Bool) ) (! (= (select a@@13 o@@19) (select b@@12 o@@19))
 :qid |stdinbpl.273:31|
 :skolemid |48|
 :pattern ( (select a@@13 o@@19))
 :pattern ( (select b@@12 o@@19))
)))
 :qid |stdinbpl.272:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_4181| a@@13 b@@12))
)))
(assert (forall ((a@@14 (Array Int Bool)) (b@@13 (Array Int Bool)) ) (! (= (|Set#Equal_4015| a@@14 b@@13) (forall ((o@@20 Int) ) (! (= (select a@@14 o@@20) (select b@@13 o@@20))
 :qid |stdinbpl.273:31|
 :skolemid |48|
 :pattern ( (select a@@14 o@@20))
 :pattern ( (select b@@13 o@@20))
)))
 :qid |stdinbpl.272:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_4015| a@@14 b@@13))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10632) (o_2@@9 T@Ref) (f_4@@9 T@Field_6194_26802) ) (! (= (HasDirectPerm_6194_32507 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6194_32507 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10632) (o_2@@10 T@Ref) (f_4@@10 T@Field_6194_26669) ) (! (= (HasDirectPerm_6194_26733 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6194_26733 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10632) (o_2@@11 T@Ref) (f_4@@11 T@Field_10684_10685) ) (! (= (HasDirectPerm_6194_10685 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6194_10685 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10632) (o_2@@12 T@Ref) (f_4@@12 T@Field_10671_53) ) (! (= (HasDirectPerm_6194_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6194_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10632) (o_2@@13 T@Ref) (f_4@@13 T@Field_17914_3982) ) (! (= (HasDirectPerm_6194_3982 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6194_3982 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10611) (ExhaleHeap@@3 T@PolymorphicMapType_10611) (Mask@@14 T@PolymorphicMapType_10632) (pm_f_6@@1 T@Field_6194_26669) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6194_26733 Mask@@14 null pm_f_6@@1) (IsPredicateField_6194_26760 pm_f_6@@1)) (and (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_10671_53) ) (!  (=> (select (|PolymorphicMapType_11160_10671_53#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) null (PredicateMaskField_6194 pm_f_6@@1))) o2_6 f_25) (= (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@4) o2_6 f_25) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_10684_10685) ) (!  (=> (select (|PolymorphicMapType_11160_10671_10685#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) null (PredicateMaskField_6194 pm_f_6@@1))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@4) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_17914_3982) ) (!  (=> (select (|PolymorphicMapType_11160_10671_3982#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) null (PredicateMaskField_6194 pm_f_6@@1))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@4) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_6194_26669) ) (!  (=> (select (|PolymorphicMapType_11160_10671_26669#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) null (PredicateMaskField_6194 pm_f_6@@1))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@4) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@2 f_25@@2))
))) (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_6194_26802) ) (!  (=> (select (|PolymorphicMapType_11160_10671_27980#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) null (PredicateMaskField_6194 pm_f_6@@1))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@4) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@3) o2_6@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6194_26760 pm_f_6@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10611) (ExhaleHeap@@4 T@PolymorphicMapType_10611) (Mask@@15 T@PolymorphicMapType_10632) (pm_f_6@@2 T@Field_6194_26669) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6194_26733 Mask@@15 null pm_f_6@@2) (IsWandField_6194_28507 pm_f_6@@2)) (and (and (and (and (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_10671_53) ) (!  (=> (select (|PolymorphicMapType_11160_10671_53#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) null (WandMaskField_6194 pm_f_6@@2))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@5) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@4 f_25@@4))
)) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_10684_10685) ) (!  (=> (select (|PolymorphicMapType_11160_10671_10685#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) null (WandMaskField_6194 pm_f_6@@2))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@5) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_17914_3982) ) (!  (=> (select (|PolymorphicMapType_11160_10671_3982#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) null (WandMaskField_6194 pm_f_6@@2))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@5) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@6 f_25@@6))
))) (forall ((o2_6@@7 T@Ref) (f_25@@7 T@Field_6194_26669) ) (!  (=> (select (|PolymorphicMapType_11160_10671_26669#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) null (WandMaskField_6194 pm_f_6@@2))) o2_6@@7 f_25@@7) (= (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@5) o2_6@@7 f_25@@7) (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@7 f_25@@7))
))) (forall ((o2_6@@8 T@Ref) (f_25@@8 T@Field_6194_26802) ) (!  (=> (select (|PolymorphicMapType_11160_10671_27980#PolymorphicMapType_11160| (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) null (WandMaskField_6194 pm_f_6@@2))) o2_6@@8 f_25@@8) (= (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@5) o2_6@@8 f_25@@8) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@4) o2_6@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6194_28507 pm_f_6@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10611) (ExhaleHeap@@5 T@PolymorphicMapType_10611) (Mask@@16 T@PolymorphicMapType_10632) (o_17@@0 T@Ref) (f_25@@9 T@Field_6194_26802) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6194_32507 Mask@@16 o_17@@0 f_25@@9) (= (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@6) o_17@@0 f_25@@9) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@5) o_17@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| ExhaleHeap@@5) o_17@@0 f_25@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10611) (ExhaleHeap@@6 T@PolymorphicMapType_10611) (Mask@@17 T@PolymorphicMapType_10632) (o_17@@1 T@Ref) (f_25@@10 T@Field_6194_26669) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6194_26733 Mask@@17 o_17@@1 f_25@@10) (= (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@7) o_17@@1 f_25@@10) (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@6) o_17@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| ExhaleHeap@@6) o_17@@1 f_25@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10611) (ExhaleHeap@@7 T@PolymorphicMapType_10611) (Mask@@18 T@PolymorphicMapType_10632) (o_17@@2 T@Ref) (f_25@@11 T@Field_10684_10685) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6194_10685 Mask@@18 o_17@@2 f_25@@11) (= (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@8) o_17@@2 f_25@@11) (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@7) o_17@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| ExhaleHeap@@7) o_17@@2 f_25@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10611) (ExhaleHeap@@8 T@PolymorphicMapType_10611) (Mask@@19 T@PolymorphicMapType_10632) (o_17@@3 T@Ref) (f_25@@12 T@Field_10671_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6194_53 Mask@@19 o_17@@3 f_25@@12) (= (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@9) o_17@@3 f_25@@12) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@8) o_17@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| ExhaleHeap@@8) o_17@@3 f_25@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10611) (ExhaleHeap@@9 T@PolymorphicMapType_10611) (Mask@@20 T@PolymorphicMapType_10632) (o_17@@4 T@Ref) (f_25@@13 T@Field_17914_3982) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6194_3982 Mask@@20 o_17@@4 f_25@@13) (= (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@10) o_17@@4 f_25@@13) (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@9) o_17@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| ExhaleHeap@@9) o_17@@4 f_25@@13))
)))
(assert (forall ((m@@63 T@Map_6241_6241) (u@@47 T@Ref) ) (!  (=> (select (|Map#Domain_6241_6241| m@@63) u@@47) (select (|Map#Values_6241_24037| m@@63) (select (|Map#Elements_6241_24037| m@@63) u@@47)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_6241_24037| m@@63) u@@47))
)))
(assert (forall ((m@@64 T@Map_6241_22186) (u@@48 T@Ref) ) (!  (=> (select (|Map#Domain_6241_22186| m@@64) u@@48) (select (|Map#Values_6241_23890| m@@64) (select (|Map#Elements_6241_23890| m@@64) u@@48)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_6241_23890| m@@64) u@@48))
)))
(assert (forall ((m@@65 T@Map_6241_4323) (u@@49 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4323| m@@65) u@@49) (select (|Map#Values_6241_4323| m@@65) (select (|Map#Elements_6241_4323| m@@65) u@@49)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_6241_4323| m@@65) u@@49))
)))
(assert (forall ((m@@66 T@Map_6241_4005) (u@@50 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4005| m@@66) u@@50) (select (|Map#Values_6241_4005| m@@66) (select (|Map#Elements_6241_4005| m@@66) u@@50)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_6241_4005| m@@66) u@@50))
)))
(assert (forall ((m@@67 T@Map_22186_6241) (u@@51 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_6241| m@@67) u@@51) (select (|Map#Values_22186_24037| m@@67) (select (|Map#Elements_22186_24037| m@@67) u@@51)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_22186_24037| m@@67) u@@51))
)))
(assert (forall ((m@@68 T@Map_22186_22186) (u@@52 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_22186| m@@68) u@@52) (select (|Map#Values_22186_23890| m@@68) (select (|Map#Elements_22186_23890| m@@68) u@@52)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_22186_23890| m@@68) u@@52))
)))
(assert (forall ((m@@69 T@Map_22186_4323) (u@@53 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4323| m@@69) u@@53) (select (|Map#Values_22186_4323| m@@69) (select (|Map#Elements_22186_4323| m@@69) u@@53)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_22186_4323| m@@69) u@@53))
)))
(assert (forall ((m@@70 T@Map_22186_4005) (u@@54 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4005| m@@70) u@@54) (select (|Map#Values_22186_4005| m@@70) (select (|Map#Elements_22186_4005| m@@70) u@@54)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_22186_4005| m@@70) u@@54))
)))
(assert (forall ((m@@71 T@Map_4005_6241) (u@@55 Bool) ) (!  (=> (select (|Map#Domain_4005_6241| m@@71) u@@55) (select (|Map#Values_4005_24037| m@@71) (select (|Map#Elements_4005_24037| m@@71) u@@55)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4005_24037| m@@71) u@@55))
)))
(assert (forall ((m@@72 T@Map_4005_22186) (u@@56 Bool) ) (!  (=> (select (|Map#Domain_4005_22186| m@@72) u@@56) (select (|Map#Values_4005_23890| m@@72) (select (|Map#Elements_4005_23890| m@@72) u@@56)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4005_23890| m@@72) u@@56))
)))
(assert (forall ((m@@73 T@Map_4005_4323) (u@@57 Bool) ) (!  (=> (select (|Map#Domain_4005_4323| m@@73) u@@57) (select (|Map#Values_4005_4323| m@@73) (select (|Map#Elements_4005_4323| m@@73) u@@57)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4005_4323| m@@73) u@@57))
)))
(assert (forall ((m@@74 T@Map_4005_4005) (u@@58 Bool) ) (!  (=> (select (|Map#Domain_4005_4005| m@@74) u@@58) (select (|Map#Values_4005_4005| m@@74) (select (|Map#Elements_4005_4005| m@@74) u@@58)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4005_4005| m@@74) u@@58))
)))
(assert (forall ((m@@75 T@Map_5300_24037) (u@@59 Int) ) (!  (=> (select (|Map#Domain_5300_6241| m@@75) u@@59) (select (|Map#Values_4004_24037| m@@75) (select (|Map#Elements_5300_6241| m@@75) u@@59)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_5300_6241| m@@75) u@@59))
)))
(assert (forall ((m@@76 T@Map_4779_22026) (u@@60 Int) ) (!  (=> (select (|Map#Domain_4779_22186| m@@76) u@@60) (select (|Map#Values_4779_23890| m@@76) (select (|Map#Elements_4779_22378| m@@76) u@@60)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4779_22378| m@@76) u@@60))
)))
(assert (forall ((m@@77 T@Map_4322_4323) (u@@61 Int) ) (!  (=> (select (|Map#Domain_4322_4323| m@@77) u@@61) (select (|Map#Values_4322_4323| m@@77) (select (|Map#Elements_4322_4323| m@@77) u@@61)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4322_4323| m@@77) u@@61))
)))
(assert (forall ((m@@78 T@Map_4004_4005) (u@@62 Int) ) (!  (=> (select (|Map#Domain_4004_4005| m@@78) u@@62) (select (|Map#Values_4004_4005| m@@78) (select (|Map#Elements_4180_4181| m@@78) u@@62)))
 :qid |stdinbpl.422:20|
 :skolemid |86|
 :pattern ( (select (|Map#Elements_4180_4181| m@@78) u@@62))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6194_26802) ) (! (= (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6194_26669) ) (! (= (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10684_10685) ) (! (= (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10671_53) ) (! (= (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17914_3982) ) (! (= (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10632) (SummandMask1 T@PolymorphicMapType_10632) (SummandMask2 T@PolymorphicMapType_10632) (o_2@@19 T@Ref) (f_4@@19 T@Field_6194_26802) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10632_6194_30924#PolymorphicMapType_10632| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10632) (SummandMask1@@0 T@PolymorphicMapType_10632) (SummandMask2@@0 T@PolymorphicMapType_10632) (o_2@@20 T@Ref) (f_4@@20 T@Field_6194_26669) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10632_6194_26669#PolymorphicMapType_10632| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10632) (SummandMask1@@1 T@PolymorphicMapType_10632) (SummandMask2@@1 T@PolymorphicMapType_10632) (o_2@@21 T@Ref) (f_4@@21 T@Field_10684_10685) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10632_6194_10685#PolymorphicMapType_10632| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10632) (SummandMask1@@2 T@PolymorphicMapType_10632) (SummandMask2@@2 T@PolymorphicMapType_10632) (o_2@@22 T@Ref) (f_4@@22 T@Field_10671_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10632_6194_53#PolymorphicMapType_10632| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10632) (SummandMask1@@3 T@PolymorphicMapType_10632) (SummandMask2@@3 T@PolymorphicMapType_10632) (o_2@@23 T@Ref) (f_4@@23 T@Field_17914_3982) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10632_6194_3982#PolymorphicMapType_10632| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (o@@21 T@Ref) ) (! (= (select (|Set#Intersection_6241| a@@15 b@@14) o@@21)  (and (select a@@15 o@@21) (select b@@14 o@@21)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6241| a@@15 b@@14) o@@21))
 :pattern ( (|Set#Intersection_6241| a@@15 b@@14) (select a@@15 o@@21))
 :pattern ( (|Set#Intersection_6241| a@@15 b@@14) (select b@@14 o@@21))
)))
(assert (forall ((a@@16 (Array T@Map_4004_4005 Bool)) (b@@15 (Array T@Map_4004_4005 Bool)) (o@@22 T@Map_4004_4005) ) (! (= (select (|Set#Intersection_22186| a@@16 b@@15) o@@22)  (and (select a@@16 o@@22) (select b@@15 o@@22)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_22186| a@@16 b@@15) o@@22))
 :pattern ( (|Set#Intersection_22186| a@@16 b@@15) (select a@@16 o@@22))
 :pattern ( (|Set#Intersection_22186| a@@16 b@@15) (select b@@15 o@@22))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@16 (Array Int Bool)) (o@@23 Int) ) (! (= (select (|Set#Intersection_4125| a@@17 b@@16) o@@23)  (and (select a@@17 o@@23) (select b@@16 o@@23)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4125| a@@17 b@@16) o@@23))
 :pattern ( (|Set#Intersection_4125| a@@17 b@@16) (select a@@17 o@@23))
 :pattern ( (|Set#Intersection_4125| a@@17 b@@16) (select b@@16 o@@23))
)))
(assert (forall ((a@@18 (Array Bool Bool)) (b@@17 (Array Bool Bool)) (o@@24 Bool) ) (! (= (select (|Set#Intersection_4005| a@@18 b@@17) o@@24)  (and (select a@@18 o@@24) (select b@@17 o@@24)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4005| a@@18 b@@17) o@@24))
 :pattern ( (|Set#Intersection_4005| a@@18 b@@17) (select a@@18 o@@24))
 :pattern ( (|Set#Intersection_4005| a@@18 b@@17) (select b@@17 o@@24))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@18 (Array T@Ref Bool)) (o@@25 T@Ref) ) (! (= (select (|Set#Difference_6241| a@@19 b@@18) o@@25)  (and (select a@@19 o@@25) (not (select b@@18 o@@25))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6241| a@@19 b@@18) o@@25))
 :pattern ( (|Set#Difference_6241| a@@19 b@@18) (select a@@19 o@@25))
)))
(assert (forall ((a@@20 (Array T@Map_4004_4005 Bool)) (b@@19 (Array T@Map_4004_4005 Bool)) (o@@26 T@Map_4004_4005) ) (! (= (select (|Set#Difference_22186| a@@20 b@@19) o@@26)  (and (select a@@20 o@@26) (not (select b@@19 o@@26))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_22186| a@@20 b@@19) o@@26))
 :pattern ( (|Set#Difference_22186| a@@20 b@@19) (select a@@20 o@@26))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@20 (Array Int Bool)) (o@@27 Int) ) (! (= (select (|Set#Difference_4125| a@@21 b@@20) o@@27)  (and (select a@@21 o@@27) (not (select b@@20 o@@27))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4125| a@@21 b@@20) o@@27))
 :pattern ( (|Set#Difference_4125| a@@21 b@@20) (select a@@21 o@@27))
)))
(assert (forall ((a@@22 (Array Bool Bool)) (b@@21 (Array Bool Bool)) (o@@28 Bool) ) (! (= (select (|Set#Difference_4005| a@@22 b@@21) o@@28)  (and (select a@@22 o@@28) (not (select b@@21 o@@28))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4005| a@@22 b@@21) o@@28))
 :pattern ( (|Set#Difference_4005| a@@22 b@@21) (select a@@22 o@@28))
)))
(assert (forall ((m@@79 T@Map_6241_6241) (u@@63 T@Ref) ) (!  (=> (select (|Map#Domain_6241_6241| m@@79) u@@63) (> (|Set#Card_6241| (|Map#Values_6241_24037| m@@79)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_6241_6241| m@@79) u@@63))
 :pattern ( (select (|Map#Elements_6241_24037| m@@79) u@@63))
)))
(assert (forall ((m@@80 T@Map_6241_22186) (u@@64 T@Ref) ) (!  (=> (select (|Map#Domain_6241_22186| m@@80) u@@64) (> (|Set#Card_22186| (|Map#Values_6241_23890| m@@80)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_6241_22186| m@@80) u@@64))
 :pattern ( (select (|Map#Elements_6241_23890| m@@80) u@@64))
)))
(assert (forall ((m@@81 T@Map_6241_4323) (u@@65 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4323| m@@81) u@@65) (> (|Set#Card_4125| (|Map#Values_6241_4323| m@@81)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_6241_4323| m@@81) u@@65))
 :pattern ( (select (|Map#Elements_6241_4323| m@@81) u@@65))
)))
(assert (forall ((m@@82 T@Map_6241_4005) (u@@66 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4005| m@@82) u@@66) (> (|Set#Card_4005| (|Map#Values_6241_4005| m@@82)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_6241_4005| m@@82) u@@66))
 :pattern ( (select (|Map#Elements_6241_4005| m@@82) u@@66))
)))
(assert (forall ((m@@83 T@Map_22186_6241) (u@@67 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_6241| m@@83) u@@67) (> (|Set#Card_6241| (|Map#Values_22186_24037| m@@83)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_22186_6241| m@@83) u@@67))
 :pattern ( (select (|Map#Elements_22186_24037| m@@83) u@@67))
)))
(assert (forall ((m@@84 T@Map_22186_22186) (u@@68 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_22186| m@@84) u@@68) (> (|Set#Card_22186| (|Map#Values_22186_23890| m@@84)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_22186_22186| m@@84) u@@68))
 :pattern ( (select (|Map#Elements_22186_23890| m@@84) u@@68))
)))
(assert (forall ((m@@85 T@Map_22186_4323) (u@@69 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4323| m@@85) u@@69) (> (|Set#Card_4125| (|Map#Values_22186_4323| m@@85)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_22186_4323| m@@85) u@@69))
 :pattern ( (select (|Map#Elements_22186_4323| m@@85) u@@69))
)))
(assert (forall ((m@@86 T@Map_22186_4005) (u@@70 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4005| m@@86) u@@70) (> (|Set#Card_4005| (|Map#Values_22186_4005| m@@86)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_22186_4005| m@@86) u@@70))
 :pattern ( (select (|Map#Elements_22186_4005| m@@86) u@@70))
)))
(assert (forall ((m@@87 T@Map_4005_6241) (u@@71 Bool) ) (!  (=> (select (|Map#Domain_4005_6241| m@@87) u@@71) (> (|Set#Card_6241| (|Map#Values_4005_24037| m@@87)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4005_6241| m@@87) u@@71))
 :pattern ( (select (|Map#Elements_4005_24037| m@@87) u@@71))
)))
(assert (forall ((m@@88 T@Map_4005_22186) (u@@72 Bool) ) (!  (=> (select (|Map#Domain_4005_22186| m@@88) u@@72) (> (|Set#Card_22186| (|Map#Values_4005_23890| m@@88)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4005_22186| m@@88) u@@72))
 :pattern ( (select (|Map#Elements_4005_23890| m@@88) u@@72))
)))
(assert (forall ((m@@89 T@Map_4005_4323) (u@@73 Bool) ) (!  (=> (select (|Map#Domain_4005_4323| m@@89) u@@73) (> (|Set#Card_4125| (|Map#Values_4005_4323| m@@89)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4005_4323| m@@89) u@@73))
 :pattern ( (select (|Map#Elements_4005_4323| m@@89) u@@73))
)))
(assert (forall ((m@@90 T@Map_4005_4005) (u@@74 Bool) ) (!  (=> (select (|Map#Domain_4005_4005| m@@90) u@@74) (> (|Set#Card_4005| (|Map#Values_4005_4005| m@@90)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4005_4005| m@@90) u@@74))
 :pattern ( (select (|Map#Elements_4005_4005| m@@90) u@@74))
)))
(assert (forall ((m@@91 T@Map_5300_24037) (u@@75 Int) ) (!  (=> (select (|Map#Domain_5300_6241| m@@91) u@@75) (> (|Set#Card_6241| (|Map#Values_4004_24037| m@@91)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_5300_6241| m@@91) u@@75))
 :pattern ( (select (|Map#Elements_5300_6241| m@@91) u@@75))
)))
(assert (forall ((m@@92 T@Map_4779_22026) (u@@76 Int) ) (!  (=> (select (|Map#Domain_4779_22186| m@@92) u@@76) (> (|Set#Card_22186| (|Map#Values_4779_23890| m@@92)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4779_22186| m@@92) u@@76))
 :pattern ( (select (|Map#Elements_4779_22378| m@@92) u@@76))
)))
(assert (forall ((m@@93 T@Map_4322_4323) (u@@77 Int) ) (!  (=> (select (|Map#Domain_4322_4323| m@@93) u@@77) (> (|Set#Card_4125| (|Map#Values_4322_4323| m@@93)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4322_4323| m@@93) u@@77))
 :pattern ( (select (|Map#Elements_4322_4323| m@@93) u@@77))
)))
(assert (forall ((m@@94 T@Map_4004_4005) (u@@78 Int) ) (!  (=> (select (|Map#Domain_4004_4005| m@@94) u@@78) (> (|Set#Card_4005| (|Map#Values_4004_4005| m@@94)) 0))
 :qid |stdinbpl.428:20|
 :skolemid |87|
 :pattern ( (select (|Map#Domain_4004_4005| m@@94) u@@78))
 :pattern ( (select (|Map#Elements_4180_4181| m@@94) u@@78))
)))
(assert (forall ((a@@23 (Array Bool Bool)) (b@@22 (Array Bool Bool)) ) (!  (=> (|Set#Equal_4181| a@@23 b@@22) (= a@@23 b@@22))
 :qid |stdinbpl.274:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_4181| a@@23 b@@22))
)))
(assert (forall ((a@@24 (Array Int Bool)) (b@@23 (Array Int Bool)) ) (!  (=> (|Set#Equal_4015| a@@24 b@@23) (= a@@24 b@@23))
 :qid |stdinbpl.274:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_4015| a@@24 b@@23))
)))
(assert (forall ((m@@95 T@Map_6241_6241) (|m'@@15| T@Map_6241_6241) ) (!  (=> (|Map#Equal_6241_6241| m@@95 |m'@@15|) (= m@@95 |m'@@15|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_6241_6241| m@@95 |m'@@15|))
)))
(assert (forall ((m@@96 T@Map_6241_22186) (|m'@@16| T@Map_6241_22186) ) (!  (=> (|Map#Equal_6241_22186| m@@96 |m'@@16|) (= m@@96 |m'@@16|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_6241_22186| m@@96 |m'@@16|))
)))
(assert (forall ((m@@97 T@Map_6241_4323) (|m'@@17| T@Map_6241_4323) ) (!  (=> (|Map#Equal_6241_4323| m@@97 |m'@@17|) (= m@@97 |m'@@17|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_6241_4323| m@@97 |m'@@17|))
)))
(assert (forall ((m@@98 T@Map_6241_4005) (|m'@@18| T@Map_6241_4005) ) (!  (=> (|Map#Equal_6241_4005| m@@98 |m'@@18|) (= m@@98 |m'@@18|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_6241_4005| m@@98 |m'@@18|))
)))
(assert (forall ((m@@99 T@Map_22186_6241) (|m'@@19| T@Map_22186_6241) ) (!  (=> (|Map#Equal_22186_6241| m@@99 |m'@@19|) (= m@@99 |m'@@19|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_22186_6241| m@@99 |m'@@19|))
)))
(assert (forall ((m@@100 T@Map_22186_22186) (|m'@@20| T@Map_22186_22186) ) (!  (=> (|Map#Equal_22186_22186| m@@100 |m'@@20|) (= m@@100 |m'@@20|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_22186_22186| m@@100 |m'@@20|))
)))
(assert (forall ((m@@101 T@Map_22186_4323) (|m'@@21| T@Map_22186_4323) ) (!  (=> (|Map#Equal_22186_4323| m@@101 |m'@@21|) (= m@@101 |m'@@21|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_22186_4323| m@@101 |m'@@21|))
)))
(assert (forall ((m@@102 T@Map_22186_4005) (|m'@@22| T@Map_22186_4005) ) (!  (=> (|Map#Equal_22186_4005| m@@102 |m'@@22|) (= m@@102 |m'@@22|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_22186_4005| m@@102 |m'@@22|))
)))
(assert (forall ((m@@103 T@Map_4005_6241) (|m'@@23| T@Map_4005_6241) ) (!  (=> (|Map#Equal_4005_6241| m@@103 |m'@@23|) (= m@@103 |m'@@23|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4005_6241| m@@103 |m'@@23|))
)))
(assert (forall ((m@@104 T@Map_4005_22186) (|m'@@24| T@Map_4005_22186) ) (!  (=> (|Map#Equal_4005_22186| m@@104 |m'@@24|) (= m@@104 |m'@@24|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4005_22186| m@@104 |m'@@24|))
)))
(assert (forall ((m@@105 T@Map_4005_4323) (|m'@@25| T@Map_4005_4323) ) (!  (=> (|Map#Equal_4005_4323| m@@105 |m'@@25|) (= m@@105 |m'@@25|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4005_4323| m@@105 |m'@@25|))
)))
(assert (forall ((m@@106 T@Map_4005_4005) (|m'@@26| T@Map_4005_4005) ) (!  (=> (|Map#Equal_4005_4005| m@@106 |m'@@26|) (= m@@106 |m'@@26|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4005_4005| m@@106 |m'@@26|))
)))
(assert (forall ((m@@107 T@Map_5300_24037) (|m'@@27| T@Map_5300_24037) ) (!  (=> (|Map#Equal_4004_6241| m@@107 |m'@@27|) (= m@@107 |m'@@27|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4004_6241| m@@107 |m'@@27|))
)))
(assert (forall ((m@@108 T@Map_4779_22026) (|m'@@28| T@Map_4779_22026) ) (!  (=> (|Map#Equal_4004_22186| m@@108 |m'@@28|) (= m@@108 |m'@@28|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4004_22186| m@@108 |m'@@28|))
)))
(assert (forall ((m@@109 T@Map_4322_4323) (|m'@@29| T@Map_4322_4323) ) (!  (=> (|Map#Equal_4004_4323| m@@109 |m'@@29|) (= m@@109 |m'@@29|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4004_4323| m@@109 |m'@@29|))
)))
(assert (forall ((m@@110 T@Map_4004_4005) (|m'@@30| T@Map_4004_4005) ) (!  (=> (|Map#Equal_4570_4571| m@@110 |m'@@30|) (= m@@110 |m'@@30|))
 :qid |stdinbpl.470:21|
 :skolemid |98|
 :pattern ( (|Map#Equal_4570_4571| m@@110 |m'@@30|))
)))
(assert (forall ((a@@25 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@25 y) (select (|Set#UnionOne_6241| a@@25 x) y))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6241| a@@25 x) (select a@@25 y))
)))
(assert (forall ((a@@26 (Array T@Map_4004_4005 Bool)) (x@@0 T@Map_4004_4005) (y@@0 T@Map_4004_4005) ) (!  (=> (select a@@26 y@@0) (select (|Set#UnionOne_22186| a@@26 x@@0) y@@0))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_22186| a@@26 x@@0) (select a@@26 y@@0))
)))
(assert (forall ((a@@27 (Array Bool Bool)) (x@@1 Bool) (y@@1 Bool) ) (!  (=> (select a@@27 y@@1) (select (|Set#UnionOne_4005| a@@27 x@@1) y@@1))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4005| a@@27 x@@1) (select a@@27 y@@1))
)))
(assert (forall ((a@@28 (Array Int Bool)) (x@@2 Int) (y@@2 Int) ) (!  (=> (select a@@28 y@@2) (select (|Set#UnionOne_3| a@@28 x@@2) y@@2))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_3| a@@28 x@@2) (select a@@28 y@@2))
)))
(assert (forall ((a@@29 (Array T@Ref Bool)) (b@@24 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select a@@29 y@@3) (select (|Set#Union_6241| a@@29 b@@24) y@@3))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6241| a@@29 b@@24) (select a@@29 y@@3))
)))
(assert (forall ((a@@30 (Array T@Map_4004_4005 Bool)) (b@@25 (Array T@Map_4004_4005 Bool)) (y@@4 T@Map_4004_4005) ) (!  (=> (select a@@30 y@@4) (select (|Set#Union_22186| a@@30 b@@25) y@@4))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_22186| a@@30 b@@25) (select a@@30 y@@4))
)))
(assert (forall ((a@@31 (Array Int Bool)) (b@@26 (Array Int Bool)) (y@@5 Int) ) (!  (=> (select a@@31 y@@5) (select (|Set#Union_4125| a@@31 b@@26) y@@5))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4125| a@@31 b@@26) (select a@@31 y@@5))
)))
(assert (forall ((a@@32 (Array Bool Bool)) (b@@27 (Array Bool Bool)) (y@@6 Bool) ) (!  (=> (select a@@32 y@@6) (select (|Set#Union_4005| a@@32 b@@27) y@@6))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4005| a@@32 b@@27) (select a@@32 y@@6))
)))
(assert (forall ((a@@33 (Array T@Ref Bool)) (b@@28 (Array T@Ref Bool)) (y@@7 T@Ref) ) (!  (=> (select b@@28 y@@7) (select (|Set#Union_6241| a@@33 b@@28) y@@7))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6241| a@@33 b@@28) (select b@@28 y@@7))
)))
(assert (forall ((a@@34 (Array T@Map_4004_4005 Bool)) (b@@29 (Array T@Map_4004_4005 Bool)) (y@@8 T@Map_4004_4005) ) (!  (=> (select b@@29 y@@8) (select (|Set#Union_22186| a@@34 b@@29) y@@8))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_22186| a@@34 b@@29) (select b@@29 y@@8))
)))
(assert (forall ((a@@35 (Array Int Bool)) (b@@30 (Array Int Bool)) (y@@9 Int) ) (!  (=> (select b@@30 y@@9) (select (|Set#Union_4125| a@@35 b@@30) y@@9))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4125| a@@35 b@@30) (select b@@30 y@@9))
)))
(assert (forall ((a@@36 (Array Bool Bool)) (b@@31 (Array Bool Bool)) (y@@10 Bool) ) (!  (=> (select b@@31 y@@10) (select (|Set#Union_4005| a@@36 b@@31) y@@10))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4005| a@@36 b@@31) (select b@@31 y@@10))
)))
(assert (forall ((a@@37 (Array T@Ref Bool)) (x@@3 T@Ref) (o@@29 T@Ref) ) (! (= (select (|Set#UnionOne_6241| a@@37 x@@3) o@@29)  (or (= o@@29 x@@3) (select a@@37 o@@29)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6241| a@@37 x@@3) o@@29))
)))
(assert (forall ((a@@38 (Array T@Map_4004_4005 Bool)) (x@@4 T@Map_4004_4005) (o@@30 T@Map_4004_4005) ) (! (= (select (|Set#UnionOne_22186| a@@38 x@@4) o@@30)  (or (= o@@30 x@@4) (select a@@38 o@@30)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_22186| a@@38 x@@4) o@@30))
)))
(assert (forall ((a@@39 (Array Bool Bool)) (x@@5 Bool) (o@@31 Bool) ) (! (= (select (|Set#UnionOne_4005| a@@39 x@@5) o@@31)  (or (= o@@31 x@@5) (select a@@39 o@@31)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4005| a@@39 x@@5) o@@31))
)))
(assert (forall ((a@@40 (Array Int Bool)) (x@@6 Int) (o@@32 Int) ) (! (= (select (|Set#UnionOne_3| a@@40 x@@6) o@@32)  (or (= o@@32 x@@6) (select a@@40 o@@32)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_3| a@@40 x@@6) o@@32))
)))
(assert (forall ((a@@41 (Array T@Ref Bool)) (b@@32 (Array T@Ref Bool)) (y@@11 T@Ref) ) (!  (=> (select b@@32 y@@11) (not (select (|Set#Difference_6241| a@@41 b@@32) y@@11)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6241| a@@41 b@@32) (select b@@32 y@@11))
)))
(assert (forall ((a@@42 (Array T@Map_4004_4005 Bool)) (b@@33 (Array T@Map_4004_4005 Bool)) (y@@12 T@Map_4004_4005) ) (!  (=> (select b@@33 y@@12) (not (select (|Set#Difference_22186| a@@42 b@@33) y@@12)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_22186| a@@42 b@@33) (select b@@33 y@@12))
)))
(assert (forall ((a@@43 (Array Int Bool)) (b@@34 (Array Int Bool)) (y@@13 Int) ) (!  (=> (select b@@34 y@@13) (not (select (|Set#Difference_4125| a@@43 b@@34) y@@13)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4125| a@@43 b@@34) (select b@@34 y@@13))
)))
(assert (forall ((a@@44 (Array Bool Bool)) (b@@35 (Array Bool Bool)) (y@@14 Bool) ) (!  (=> (select b@@35 y@@14) (not (select (|Set#Difference_4005| a@@44 b@@35) y@@14)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4005| a@@44 b@@35) (select b@@35 y@@14))
)))
(assert (forall ((m@@111 T@Map_6241_6241) (|m'@@31| T@Map_6241_6241) ) (!  (=> (and (forall ((u@@79 T@Ref) ) (! (= (select (|Map#Domain_6241_6241| m@@111) u@@79) (select (|Map#Domain_6241_6241| |m'@@31|) u@@79))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@80 T@Ref) ) (!  (=> (select (|Map#Domain_6241_6241| m@@111) u@@80) (= (select (|Map#Elements_6241_24037| m@@111) u@@80) (select (|Map#Elements_6241_24037| |m'@@31|) u@@80)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_6241_6241| m@@111 |m'@@31|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_6241_6241| m@@111 |m'@@31|))
)))
(assert (forall ((m@@112 T@Map_6241_22186) (|m'@@32| T@Map_6241_22186) ) (!  (=> (and (forall ((u@@81 T@Ref) ) (! (= (select (|Map#Domain_6241_22186| m@@112) u@@81) (select (|Map#Domain_6241_22186| |m'@@32|) u@@81))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@82 T@Ref) ) (!  (=> (select (|Map#Domain_6241_22186| m@@112) u@@82) (= (select (|Map#Elements_6241_23890| m@@112) u@@82) (select (|Map#Elements_6241_23890| |m'@@32|) u@@82)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_6241_22186| m@@112 |m'@@32|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_6241_22186| m@@112 |m'@@32|))
)))
(assert (forall ((m@@113 T@Map_6241_4323) (|m'@@33| T@Map_6241_4323) ) (!  (=> (and (forall ((u@@83 T@Ref) ) (! (= (select (|Map#Domain_6241_4323| m@@113) u@@83) (select (|Map#Domain_6241_4323| |m'@@33|) u@@83))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@84 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4323| m@@113) u@@84) (= (select (|Map#Elements_6241_4323| m@@113) u@@84) (select (|Map#Elements_6241_4323| |m'@@33|) u@@84)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_6241_4323| m@@113 |m'@@33|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_6241_4323| m@@113 |m'@@33|))
)))
(assert (forall ((m@@114 T@Map_6241_4005) (|m'@@34| T@Map_6241_4005) ) (!  (=> (and (forall ((u@@85 T@Ref) ) (! (= (select (|Map#Domain_6241_4005| m@@114) u@@85) (select (|Map#Domain_6241_4005| |m'@@34|) u@@85))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@86 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4005| m@@114) u@@86) (= (select (|Map#Elements_6241_4005| m@@114) u@@86) (select (|Map#Elements_6241_4005| |m'@@34|) u@@86)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_6241_4005| m@@114 |m'@@34|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_6241_4005| m@@114 |m'@@34|))
)))
(assert (forall ((m@@115 T@Map_22186_6241) (|m'@@35| T@Map_22186_6241) ) (!  (=> (and (forall ((u@@87 T@Map_4004_4005) ) (! (= (select (|Map#Domain_22186_6241| m@@115) u@@87) (select (|Map#Domain_22186_6241| |m'@@35|) u@@87))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@88 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_6241| m@@115) u@@88) (= (select (|Map#Elements_22186_24037| m@@115) u@@88) (select (|Map#Elements_22186_24037| |m'@@35|) u@@88)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_22186_6241| m@@115 |m'@@35|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_22186_6241| m@@115 |m'@@35|))
)))
(assert (forall ((m@@116 T@Map_22186_22186) (|m'@@36| T@Map_22186_22186) ) (!  (=> (and (forall ((u@@89 T@Map_4004_4005) ) (! (= (select (|Map#Domain_22186_22186| m@@116) u@@89) (select (|Map#Domain_22186_22186| |m'@@36|) u@@89))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@90 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_22186| m@@116) u@@90) (= (select (|Map#Elements_22186_23890| m@@116) u@@90) (select (|Map#Elements_22186_23890| |m'@@36|) u@@90)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_22186_22186| m@@116 |m'@@36|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_22186_22186| m@@116 |m'@@36|))
)))
(assert (forall ((m@@117 T@Map_22186_4323) (|m'@@37| T@Map_22186_4323) ) (!  (=> (and (forall ((u@@91 T@Map_4004_4005) ) (! (= (select (|Map#Domain_22186_4323| m@@117) u@@91) (select (|Map#Domain_22186_4323| |m'@@37|) u@@91))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@92 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4323| m@@117) u@@92) (= (select (|Map#Elements_22186_4323| m@@117) u@@92) (select (|Map#Elements_22186_4323| |m'@@37|) u@@92)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_22186_4323| m@@117 |m'@@37|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_22186_4323| m@@117 |m'@@37|))
)))
(assert (forall ((m@@118 T@Map_22186_4005) (|m'@@38| T@Map_22186_4005) ) (!  (=> (and (forall ((u@@93 T@Map_4004_4005) ) (! (= (select (|Map#Domain_22186_4005| m@@118) u@@93) (select (|Map#Domain_22186_4005| |m'@@38|) u@@93))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@94 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4005| m@@118) u@@94) (= (select (|Map#Elements_22186_4005| m@@118) u@@94) (select (|Map#Elements_22186_4005| |m'@@38|) u@@94)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_22186_4005| m@@118 |m'@@38|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_22186_4005| m@@118 |m'@@38|))
)))
(assert (forall ((m@@119 T@Map_4005_6241) (|m'@@39| T@Map_4005_6241) ) (!  (=> (and (forall ((u@@95 Bool) ) (! (= (select (|Map#Domain_4005_6241| m@@119) u@@95) (select (|Map#Domain_4005_6241| |m'@@39|) u@@95))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@96 Bool) ) (!  (=> (select (|Map#Domain_4005_6241| m@@119) u@@96) (= (select (|Map#Elements_4005_24037| m@@119) u@@96) (select (|Map#Elements_4005_24037| |m'@@39|) u@@96)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4005_6241| m@@119 |m'@@39|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4005_6241| m@@119 |m'@@39|))
)))
(assert (forall ((m@@120 T@Map_4005_22186) (|m'@@40| T@Map_4005_22186) ) (!  (=> (and (forall ((u@@97 Bool) ) (! (= (select (|Map#Domain_4005_22186| m@@120) u@@97) (select (|Map#Domain_4005_22186| |m'@@40|) u@@97))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@98 Bool) ) (!  (=> (select (|Map#Domain_4005_22186| m@@120) u@@98) (= (select (|Map#Elements_4005_23890| m@@120) u@@98) (select (|Map#Elements_4005_23890| |m'@@40|) u@@98)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4005_22186| m@@120 |m'@@40|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4005_22186| m@@120 |m'@@40|))
)))
(assert (forall ((m@@121 T@Map_4005_4323) (|m'@@41| T@Map_4005_4323) ) (!  (=> (and (forall ((u@@99 Bool) ) (! (= (select (|Map#Domain_4005_4323| m@@121) u@@99) (select (|Map#Domain_4005_4323| |m'@@41|) u@@99))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@100 Bool) ) (!  (=> (select (|Map#Domain_4005_4323| m@@121) u@@100) (= (select (|Map#Elements_4005_4323| m@@121) u@@100) (select (|Map#Elements_4005_4323| |m'@@41|) u@@100)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4005_4323| m@@121 |m'@@41|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4005_4323| m@@121 |m'@@41|))
)))
(assert (forall ((m@@122 T@Map_4005_4005) (|m'@@42| T@Map_4005_4005) ) (!  (=> (and (forall ((u@@101 Bool) ) (! (= (select (|Map#Domain_4005_4005| m@@122) u@@101) (select (|Map#Domain_4005_4005| |m'@@42|) u@@101))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@102 Bool) ) (!  (=> (select (|Map#Domain_4005_4005| m@@122) u@@102) (= (select (|Map#Elements_4005_4005| m@@122) u@@102) (select (|Map#Elements_4005_4005| |m'@@42|) u@@102)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4005_4005| m@@122 |m'@@42|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4005_4005| m@@122 |m'@@42|))
)))
(assert (forall ((m@@123 T@Map_5300_24037) (|m'@@43| T@Map_5300_24037) ) (!  (=> (and (forall ((u@@103 Int) ) (! (= (select (|Map#Domain_5300_6241| m@@123) u@@103) (select (|Map#Domain_5300_6241| |m'@@43|) u@@103))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@104 Int) ) (!  (=> (select (|Map#Domain_5300_6241| m@@123) u@@104) (= (select (|Map#Elements_5300_6241| m@@123) u@@104) (select (|Map#Elements_5300_6241| |m'@@43|) u@@104)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4004_6241| m@@123 |m'@@43|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4004_6241| m@@123 |m'@@43|))
)))
(assert (forall ((m@@124 T@Map_4779_22026) (|m'@@44| T@Map_4779_22026) ) (!  (=> (and (forall ((u@@105 Int) ) (! (= (select (|Map#Domain_4779_22186| m@@124) u@@105) (select (|Map#Domain_4779_22186| |m'@@44|) u@@105))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@106 Int) ) (!  (=> (select (|Map#Domain_4779_22186| m@@124) u@@106) (= (select (|Map#Elements_4779_22378| m@@124) u@@106) (select (|Map#Elements_4779_22378| |m'@@44|) u@@106)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4004_22186| m@@124 |m'@@44|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4004_22186| m@@124 |m'@@44|))
)))
(assert (forall ((m@@125 T@Map_4322_4323) (|m'@@45| T@Map_4322_4323) ) (!  (=> (and (forall ((u@@107 Int) ) (! (= (select (|Map#Domain_4322_4323| m@@125) u@@107) (select (|Map#Domain_4322_4323| |m'@@45|) u@@107))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@108 Int) ) (!  (=> (select (|Map#Domain_4322_4323| m@@125) u@@108) (= (select (|Map#Elements_4322_4323| m@@125) u@@108) (select (|Map#Elements_4322_4323| |m'@@45|) u@@108)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4004_4323| m@@125 |m'@@45|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4004_4323| m@@125 |m'@@45|))
)))
(assert (forall ((m@@126 T@Map_4004_4005) (|m'@@46| T@Map_4004_4005) ) (!  (=> (and (forall ((u@@109 Int) ) (! (= (select (|Map#Domain_4004_4005| m@@126) u@@109) (select (|Map#Domain_4004_4005| |m'@@46|) u@@109))
 :qid |stdinbpl.467:12|
 :skolemid |95|
)) (forall ((u@@110 Int) ) (!  (=> (select (|Map#Domain_4004_4005| m@@126) u@@110) (= (select (|Map#Elements_4180_4181| m@@126) u@@110) (select (|Map#Elements_4180_4181| |m'@@46|) u@@110)))
 :qid |stdinbpl.468:14|
 :skolemid |96|
))) (|Map#Equal_4570_4571| m@@126 |m'@@46|))
 :qid |stdinbpl.465:21|
 :skolemid |97|
 :pattern ( (|Map#Equal_4570_4571| m@@126 |m'@@46|))
)))
(assert (forall ((a@@45 (Array T@Ref Bool)) (b@@36 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6241| (|Set#Difference_6241| a@@45 b@@36)) (|Set#Card_6241| (|Set#Difference_6241| b@@36 a@@45))) (|Set#Card_6241| (|Set#Intersection_6241| a@@45 b@@36))) (|Set#Card_6241| (|Set#Union_6241| a@@45 b@@36))) (= (|Set#Card_6241| (|Set#Difference_6241| a@@45 b@@36)) (- (|Set#Card_6241| a@@45) (|Set#Card_6241| (|Set#Intersection_6241| a@@45 b@@36)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6241| (|Set#Difference_6241| a@@45 b@@36)))
)))
(assert (forall ((a@@46 (Array T@Map_4004_4005 Bool)) (b@@37 (Array T@Map_4004_4005 Bool)) ) (!  (and (= (+ (+ (|Set#Card_22186| (|Set#Difference_22186| a@@46 b@@37)) (|Set#Card_22186| (|Set#Difference_22186| b@@37 a@@46))) (|Set#Card_22186| (|Set#Intersection_22186| a@@46 b@@37))) (|Set#Card_22186| (|Set#Union_22186| a@@46 b@@37))) (= (|Set#Card_22186| (|Set#Difference_22186| a@@46 b@@37)) (- (|Set#Card_22186| a@@46) (|Set#Card_22186| (|Set#Intersection_22186| a@@46 b@@37)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_22186| (|Set#Difference_22186| a@@46 b@@37)))
)))
(assert (forall ((a@@47 (Array Int Bool)) (b@@38 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_4125| (|Set#Difference_4125| a@@47 b@@38)) (|Set#Card_4125| (|Set#Difference_4125| b@@38 a@@47))) (|Set#Card_4125| (|Set#Intersection_4125| a@@47 b@@38))) (|Set#Card_4125| (|Set#Union_4125| a@@47 b@@38))) (= (|Set#Card_4125| (|Set#Difference_4125| a@@47 b@@38)) (- (|Set#Card_4125| a@@47) (|Set#Card_4125| (|Set#Intersection_4125| a@@47 b@@38)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4125| (|Set#Difference_4125| a@@47 b@@38)))
)))
(assert (forall ((a@@48 (Array Bool Bool)) (b@@39 (Array Bool Bool)) ) (!  (and (= (+ (+ (|Set#Card_4005| (|Set#Difference_4005| a@@48 b@@39)) (|Set#Card_4005| (|Set#Difference_4005| b@@39 a@@48))) (|Set#Card_4005| (|Set#Intersection_4005| a@@48 b@@39))) (|Set#Card_4005| (|Set#Union_4005| a@@48 b@@39))) (= (|Set#Card_4005| (|Set#Difference_4005| a@@48 b@@39)) (- (|Set#Card_4005| a@@48) (|Set#Card_4005| (|Set#Intersection_4005| a@@48 b@@39)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4005| (|Set#Difference_4005| a@@48 b@@39)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6241| s))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6241| s))
)))
(assert (forall ((s@@0 (Array T@Map_4004_4005 Bool)) ) (! (<= 0 (|Set#Card_22186| s@@0))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_22186| s@@0))
)))
(assert (forall ((s@@1 (Array Int Bool)) ) (! (<= 0 (|Set#Card_4125| s@@1))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4125| s@@1))
)))
(assert (forall ((s@@2 (Array Bool Bool)) ) (! (<= 0 (|Set#Card_4005| s@@2))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4005| s@@2))
)))
(assert (forall ((m@@127 T@Map_6241_6241) ) (! (<= 0 (|Map#Card_6241_6241| m@@127))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_6241_6241| m@@127))
)))
(assert (forall ((m@@128 T@Map_6241_22186) ) (! (<= 0 (|Map#Card_6241_22186| m@@128))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_6241_22186| m@@128))
)))
(assert (forall ((m@@129 T@Map_6241_4323) ) (! (<= 0 (|Map#Card_6241_4323| m@@129))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_6241_4323| m@@129))
)))
(assert (forall ((m@@130 T@Map_6241_4005) ) (! (<= 0 (|Map#Card_6241_4005| m@@130))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_6241_4005| m@@130))
)))
(assert (forall ((m@@131 T@Map_22186_6241) ) (! (<= 0 (|Map#Card_22186_6241| m@@131))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_22186_6241| m@@131))
)))
(assert (forall ((m@@132 T@Map_22186_22186) ) (! (<= 0 (|Map#Card_22186_22186| m@@132))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_22186_22186| m@@132))
)))
(assert (forall ((m@@133 T@Map_22186_4323) ) (! (<= 0 (|Map#Card_22186_4323| m@@133))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_22186_4323| m@@133))
)))
(assert (forall ((m@@134 T@Map_22186_4005) ) (! (<= 0 (|Map#Card_22186_4005| m@@134))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_22186_4005| m@@134))
)))
(assert (forall ((m@@135 T@Map_4005_6241) ) (! (<= 0 (|Map#Card_4005_6241| m@@135))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4005_6241| m@@135))
)))
(assert (forall ((m@@136 T@Map_4005_22186) ) (! (<= 0 (|Map#Card_4005_22186| m@@136))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4005_22186| m@@136))
)))
(assert (forall ((m@@137 T@Map_4005_4323) ) (! (<= 0 (|Map#Card_4005_4323| m@@137))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4005_4323| m@@137))
)))
(assert (forall ((m@@138 T@Map_4005_4005) ) (! (<= 0 (|Map#Card_4005_4005| m@@138))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4005_4005| m@@138))
)))
(assert (forall ((m@@139 T@Map_5300_24037) ) (! (<= 0 (|Map#Card_4068_24037| m@@139))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4068_24037| m@@139))
)))
(assert (forall ((m@@140 T@Map_4779_22026) ) (! (<= 0 (|Map#Card_4068_22026| m@@140))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4068_22026| m@@140))
)))
(assert (forall ((m@@141 T@Map_4322_4323) ) (! (<= 0 (|Map#Card_4322_4323| m@@141))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4322_4323| m@@141))
)))
(assert (forall ((m@@142 T@Map_4004_4005) ) (! (<= 0 (|Map#Card_4068_4069| m@@142))
 :qid |stdinbpl.397:20|
 :skolemid |82|
 :pattern ( (|Map#Card_4068_4069| m@@142))
)))
(assert (forall ((a@@49 (Array T@Ref Bool)) (x@@7 T@Ref) ) (! (select (|Set#UnionOne_6241| a@@49 x@@7) x@@7)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6241| a@@49 x@@7))
)))
(assert (forall ((a@@50 (Array T@Map_4004_4005 Bool)) (x@@8 T@Map_4004_4005) ) (! (select (|Set#UnionOne_22186| a@@50 x@@8) x@@8)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_22186| a@@50 x@@8))
)))
(assert (forall ((a@@51 (Array Bool Bool)) (x@@9 Bool) ) (! (select (|Set#UnionOne_4005| a@@51 x@@9) x@@9)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4005| a@@51 x@@9))
)))
(assert (forall ((a@@52 (Array Int Bool)) (x@@10 Int) ) (! (select (|Set#UnionOne_3| a@@52 x@@10) x@@10)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_3| a@@52 x@@10))
)))
(assert (forall ((a@@53 (Array T@Ref Bool)) (x@@11 T@Ref) ) (!  (=> (select a@@53 x@@11) (= (|Set#Card_6241| (|Set#UnionOne_6241| a@@53 x@@11)) (|Set#Card_6241| a@@53)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6241| (|Set#UnionOne_6241| a@@53 x@@11)))
)))
(assert (forall ((a@@54 (Array T@Map_4004_4005 Bool)) (x@@12 T@Map_4004_4005) ) (!  (=> (select a@@54 x@@12) (= (|Set#Card_22186| (|Set#UnionOne_22186| a@@54 x@@12)) (|Set#Card_22186| a@@54)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_22186| (|Set#UnionOne_22186| a@@54 x@@12)))
)))
(assert (forall ((a@@55 (Array Int Bool)) (x@@13 Int) ) (!  (=> (select a@@55 x@@13) (= (|Set#Card_4125| (|Set#UnionOne_3| a@@55 x@@13)) (|Set#Card_4125| a@@55)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4125| (|Set#UnionOne_3| a@@55 x@@13)))
)))
(assert (forall ((a@@56 (Array Bool Bool)) (x@@14 Bool) ) (!  (=> (select a@@56 x@@14) (= (|Set#Card_4005| (|Set#UnionOne_4005| a@@56 x@@14)) (|Set#Card_4005| a@@56)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4005| (|Set#UnionOne_4005| a@@56 x@@14)))
)))
(assert (forall ((r@@3 T@Ref) ) (! (= (|Set#Card_6241| (|Set#Singleton_6241| r@@3)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6241| (|Set#Singleton_6241| r@@3)))
)))
(assert (forall ((r@@4 T@Map_4004_4005) ) (! (= (|Set#Card_22186| (|Set#Singleton_22186| r@@4)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_22186| (|Set#Singleton_22186| r@@4)))
)))
(assert (forall ((r@@5 Int) ) (! (= (|Set#Card_4125| (|Set#Singleton_3| r@@5)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4125| (|Set#Singleton_3| r@@5)))
)))
(assert (forall ((r@@6 Bool) ) (! (= (|Set#Card_4005| (|Set#Singleton_5| r@@6)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4005| (|Set#Singleton_5| r@@6)))
)))
(assert (forall ((r@@7 T@Ref) ) (! (select (|Set#Singleton_6241| r@@7) r@@7)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6241| r@@7))
)))
(assert (forall ((r@@8 T@Map_4004_4005) ) (! (select (|Set#Singleton_22186| r@@8) r@@8)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_22186| r@@8))
)))
(assert (forall ((r@@9 Bool) ) (! (select (|Set#Singleton_5| r@@9) r@@9)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_5| r@@9))
)))
(assert (forall ((r@@10 Int) ) (! (select (|Set#Singleton_3| r@@10) r@@10)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_3| r@@10))
)))
(assert (forall ((m@@143 T@Map_6241_6241) ) (!  (and (and (= (= (|Map#Card_6241_6241| m@@143) 0) (= m@@143 |Map#Empty_6241_6241|)) (=> (not (= (|Map#Card_6241_6241| m@@143) 0)) (exists ((x@@15 T@Ref) ) (! (select (|Map#Domain_6241_6241| m@@143) x@@15)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@16 T@Ref) ) (!  (=> (select (|Map#Domain_6241_6241| m@@143) x@@16) (not (= (|Map#Card_6241_6241| m@@143) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_6241_6241| m@@143) x@@16))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_6241_6241| m@@143))
)))
(assert (forall ((m@@144 T@Map_6241_22186) ) (!  (and (and (= (= (|Map#Card_6241_22186| m@@144) 0) (= m@@144 |Map#Empty_6241_22186|)) (=> (not (= (|Map#Card_6241_22186| m@@144) 0)) (exists ((x@@17 T@Ref) ) (! (select (|Map#Domain_6241_22186| m@@144) x@@17)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@18 T@Ref) ) (!  (=> (select (|Map#Domain_6241_22186| m@@144) x@@18) (not (= (|Map#Card_6241_22186| m@@144) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_6241_22186| m@@144) x@@18))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_6241_22186| m@@144))
)))
(assert (forall ((m@@145 T@Map_6241_4323) ) (!  (and (and (= (= (|Map#Card_6241_4323| m@@145) 0) (= m@@145 |Map#Empty_6241_4323|)) (=> (not (= (|Map#Card_6241_4323| m@@145) 0)) (exists ((x@@19 T@Ref) ) (! (select (|Map#Domain_6241_4323| m@@145) x@@19)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@20 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4323| m@@145) x@@20) (not (= (|Map#Card_6241_4323| m@@145) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_6241_4323| m@@145) x@@20))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_6241_4323| m@@145))
)))
(assert (forall ((m@@146 T@Map_6241_4005) ) (!  (and (and (= (= (|Map#Card_6241_4005| m@@146) 0) (= m@@146 |Map#Empty_6241_4005|)) (=> (not (= (|Map#Card_6241_4005| m@@146) 0)) (exists ((x@@21 T@Ref) ) (! (select (|Map#Domain_6241_4005| m@@146) x@@21)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@22 T@Ref) ) (!  (=> (select (|Map#Domain_6241_4005| m@@146) x@@22) (not (= (|Map#Card_6241_4005| m@@146) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_6241_4005| m@@146) x@@22))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_6241_4005| m@@146))
)))
(assert (forall ((m@@147 T@Map_22186_6241) ) (!  (and (and (= (= (|Map#Card_22186_6241| m@@147) 0) (= m@@147 |Map#Empty_22186_6241|)) (=> (not (= (|Map#Card_22186_6241| m@@147) 0)) (exists ((x@@23 T@Map_4004_4005) ) (! (select (|Map#Domain_22186_6241| m@@147) x@@23)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@24 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_6241| m@@147) x@@24) (not (= (|Map#Card_22186_6241| m@@147) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_22186_6241| m@@147) x@@24))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_22186_6241| m@@147))
)))
(assert (forall ((m@@148 T@Map_22186_22186) ) (!  (and (and (= (= (|Map#Card_22186_22186| m@@148) 0) (= m@@148 |Map#Empty_22186_22186|)) (=> (not (= (|Map#Card_22186_22186| m@@148) 0)) (exists ((x@@25 T@Map_4004_4005) ) (! (select (|Map#Domain_22186_22186| m@@148) x@@25)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@26 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_22186| m@@148) x@@26) (not (= (|Map#Card_22186_22186| m@@148) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_22186_22186| m@@148) x@@26))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_22186_22186| m@@148))
)))
(assert (forall ((m@@149 T@Map_22186_4323) ) (!  (and (and (= (= (|Map#Card_22186_4323| m@@149) 0) (= m@@149 |Map#Empty_22186_4323|)) (=> (not (= (|Map#Card_22186_4323| m@@149) 0)) (exists ((x@@27 T@Map_4004_4005) ) (! (select (|Map#Domain_22186_4323| m@@149) x@@27)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@28 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4323| m@@149) x@@28) (not (= (|Map#Card_22186_4323| m@@149) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_22186_4323| m@@149) x@@28))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_22186_4323| m@@149))
)))
(assert (forall ((m@@150 T@Map_22186_4005) ) (!  (and (and (= (= (|Map#Card_22186_4005| m@@150) 0) (= m@@150 |Map#Empty_22186_4005|)) (=> (not (= (|Map#Card_22186_4005| m@@150) 0)) (exists ((x@@29 T@Map_4004_4005) ) (! (select (|Map#Domain_22186_4005| m@@150) x@@29)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@30 T@Map_4004_4005) ) (!  (=> (select (|Map#Domain_22186_4005| m@@150) x@@30) (not (= (|Map#Card_22186_4005| m@@150) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_22186_4005| m@@150) x@@30))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_22186_4005| m@@150))
)))
(assert (forall ((m@@151 T@Map_4005_6241) ) (!  (and (and (= (= (|Map#Card_4005_6241| m@@151) 0) (= m@@151 |Map#Empty_4005_6241|)) (=> (not (= (|Map#Card_4005_6241| m@@151) 0)) (exists ((x@@31 Bool) ) (! (select (|Map#Domain_4005_6241| m@@151) x@@31)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@32 Bool) ) (!  (=> (select (|Map#Domain_4005_6241| m@@151) x@@32) (not (= (|Map#Card_4005_6241| m@@151) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4005_6241| m@@151) x@@32))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4005_6241| m@@151))
)))
(assert (forall ((m@@152 T@Map_4005_22186) ) (!  (and (and (= (= (|Map#Card_4005_22186| m@@152) 0) (= m@@152 |Map#Empty_4005_22186|)) (=> (not (= (|Map#Card_4005_22186| m@@152) 0)) (exists ((x@@33 Bool) ) (! (select (|Map#Domain_4005_22186| m@@152) x@@33)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@34 Bool) ) (!  (=> (select (|Map#Domain_4005_22186| m@@152) x@@34) (not (= (|Map#Card_4005_22186| m@@152) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4005_22186| m@@152) x@@34))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4005_22186| m@@152))
)))
(assert (forall ((m@@153 T@Map_4005_4323) ) (!  (and (and (= (= (|Map#Card_4005_4323| m@@153) 0) (= m@@153 |Map#Empty_4005_4323|)) (=> (not (= (|Map#Card_4005_4323| m@@153) 0)) (exists ((x@@35 Bool) ) (! (select (|Map#Domain_4005_4323| m@@153) x@@35)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@36 Bool) ) (!  (=> (select (|Map#Domain_4005_4323| m@@153) x@@36) (not (= (|Map#Card_4005_4323| m@@153) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4005_4323| m@@153) x@@36))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4005_4323| m@@153))
)))
(assert (forall ((m@@154 T@Map_4005_4005) ) (!  (and (and (= (= (|Map#Card_4005_4005| m@@154) 0) (= m@@154 |Map#Empty_4005_4005|)) (=> (not (= (|Map#Card_4005_4005| m@@154) 0)) (exists ((x@@37 Bool) ) (! (select (|Map#Domain_4005_4005| m@@154) x@@37)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@38 Bool) ) (!  (=> (select (|Map#Domain_4005_4005| m@@154) x@@38) (not (= (|Map#Card_4005_4005| m@@154) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4005_4005| m@@154) x@@38))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4005_4005| m@@154))
)))
(assert (forall ((m@@155 T@Map_5300_24037) ) (!  (and (and (= (= (|Map#Card_4068_24037| m@@155) 0) (= m@@155 |Map#Empty_4004_6241|)) (=> (not (= (|Map#Card_4068_24037| m@@155) 0)) (exists ((x@@39 Int) ) (! (select (|Map#Domain_5300_6241| m@@155) x@@39)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@40 Int) ) (!  (=> (select (|Map#Domain_5300_6241| m@@155) x@@40) (not (= (|Map#Card_4068_24037| m@@155) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_5300_6241| m@@155) x@@40))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4068_24037| m@@155))
)))
(assert (forall ((m@@156 T@Map_4779_22026) ) (!  (and (and (= (= (|Map#Card_4068_22026| m@@156) 0) (= m@@156 |Map#Empty_4004_22186|)) (=> (not (= (|Map#Card_4068_22026| m@@156) 0)) (exists ((x@@41 Int) ) (! (select (|Map#Domain_4779_22186| m@@156) x@@41)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@42 Int) ) (!  (=> (select (|Map#Domain_4779_22186| m@@156) x@@42) (not (= (|Map#Card_4068_22026| m@@156) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4779_22186| m@@156) x@@42))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4068_22026| m@@156))
)))
(assert (forall ((m@@157 T@Map_4322_4323) ) (!  (and (and (= (= (|Map#Card_4322_4323| m@@157) 0) (= m@@157 |Map#Empty_4359_4360|)) (=> (not (= (|Map#Card_4322_4323| m@@157) 0)) (exists ((x@@43 Int) ) (! (select (|Map#Domain_4322_4323| m@@157) x@@43)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@44 Int) ) (!  (=> (select (|Map#Domain_4322_4323| m@@157) x@@44) (not (= (|Map#Card_4322_4323| m@@157) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4322_4323| m@@157) x@@44))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4322_4323| m@@157))
)))
(assert (forall ((m@@158 T@Map_4004_4005) ) (!  (and (and (= (= (|Map#Card_4068_4069| m@@158) 0) (= m@@158 |Map#Empty_4046_4047|)) (=> (not (= (|Map#Card_4068_4069| m@@158) 0)) (exists ((x@@45 Int) ) (! (select (|Map#Domain_4004_4005| m@@158) x@@45)
 :qid |stdinbpl.441:32|
 :skolemid |89|
)))) (forall ((x@@46 Int) ) (!  (=> (select (|Map#Domain_4004_4005| m@@158) x@@46) (not (= (|Map#Card_4068_4069| m@@158) 0)))
 :qid |stdinbpl.442:11|
 :skolemid |90|
 :pattern ( (select (|Map#Domain_4004_4005| m@@158) x@@46))
)))
 :qid |stdinbpl.439:21|
 :skolemid |91|
 :pattern ( (|Map#Card_4068_4069| m@@158))
)))
(assert (forall ((a@@57 (Array T@Ref Bool)) (b@@40 (Array T@Ref Bool)) ) (! (= (|Set#Union_6241| a@@57 (|Set#Union_6241| a@@57 b@@40)) (|Set#Union_6241| a@@57 b@@40))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6241| a@@57 (|Set#Union_6241| a@@57 b@@40)))
)))
(assert (forall ((a@@58 (Array T@Map_4004_4005 Bool)) (b@@41 (Array T@Map_4004_4005 Bool)) ) (! (= (|Set#Union_22186| a@@58 (|Set#Union_22186| a@@58 b@@41)) (|Set#Union_22186| a@@58 b@@41))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_22186| a@@58 (|Set#Union_22186| a@@58 b@@41)))
)))
(assert (forall ((a@@59 (Array Int Bool)) (b@@42 (Array Int Bool)) ) (! (= (|Set#Union_4125| a@@59 (|Set#Union_4125| a@@59 b@@42)) (|Set#Union_4125| a@@59 b@@42))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4125| a@@59 (|Set#Union_4125| a@@59 b@@42)))
)))
(assert (forall ((a@@60 (Array Bool Bool)) (b@@43 (Array Bool Bool)) ) (! (= (|Set#Union_4005| a@@60 (|Set#Union_4005| a@@60 b@@43)) (|Set#Union_4005| a@@60 b@@43))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4005| a@@60 (|Set#Union_4005| a@@60 b@@43)))
)))
(assert (forall ((a@@61 (Array T@Ref Bool)) (b@@44 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6241| a@@61 (|Set#Intersection_6241| a@@61 b@@44)) (|Set#Intersection_6241| a@@61 b@@44))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6241| a@@61 (|Set#Intersection_6241| a@@61 b@@44)))
)))
(assert (forall ((a@@62 (Array T@Map_4004_4005 Bool)) (b@@45 (Array T@Map_4004_4005 Bool)) ) (! (= (|Set#Intersection_22186| a@@62 (|Set#Intersection_22186| a@@62 b@@45)) (|Set#Intersection_22186| a@@62 b@@45))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_22186| a@@62 (|Set#Intersection_22186| a@@62 b@@45)))
)))
(assert (forall ((a@@63 (Array Int Bool)) (b@@46 (Array Int Bool)) ) (! (= (|Set#Intersection_4125| a@@63 (|Set#Intersection_4125| a@@63 b@@46)) (|Set#Intersection_4125| a@@63 b@@46))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4125| a@@63 (|Set#Intersection_4125| a@@63 b@@46)))
)))
(assert (forall ((a@@64 (Array Bool Bool)) (b@@47 (Array Bool Bool)) ) (! (= (|Set#Intersection_4005| a@@64 (|Set#Intersection_4005| a@@64 b@@47)) (|Set#Intersection_4005| a@@64 b@@47))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4005| a@@64 (|Set#Intersection_4005| a@@64 b@@47)))
)))
(assert (forall ((m@@159 T@Map_6241_6241) (u@@111 T@Ref) (|u'| T@Ref) (v@@47 T@Ref) ) (!  (and (=> (= |u'| u@@111) (and (select (|Map#Domain_6241_6241| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|) (= (select (|Map#Elements_6241_24037| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|) v@@47))) (=> (not (= |u'| u@@111)) (and (= (select (|Map#Domain_6241_6241| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|) (select (|Map#Domain_6241_6241| m@@159) |u'|)) (= (select (|Map#Elements_6241_24037| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|) (select (|Map#Elements_6241_24037| m@@159) |u'|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_6241_6241| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|))
 :pattern ( (select (|Map#Domain_6241_6241| m@@159) |u'|) (|Map#Build_6241_6241| m@@159 u@@111 v@@47))
 :pattern ( (select (|Map#Elements_6241_24037| (|Map#Build_6241_6241| m@@159 u@@111 v@@47)) |u'|))
)))
(assert (forall ((m@@160 T@Map_6241_22186) (u@@112 T@Ref) (|u'@@0| T@Ref) (v@@48 T@Map_4004_4005) ) (!  (and (=> (= |u'@@0| u@@112) (and (select (|Map#Domain_6241_22186| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|) (= (select (|Map#Elements_6241_23890| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|) v@@48))) (=> (not (= |u'@@0| u@@112)) (and (= (select (|Map#Domain_6241_22186| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|) (select (|Map#Domain_6241_22186| m@@160) |u'@@0|)) (= (select (|Map#Elements_6241_23890| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|) (select (|Map#Elements_6241_23890| m@@160) |u'@@0|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_6241_22186| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|))
 :pattern ( (select (|Map#Domain_6241_22186| m@@160) |u'@@0|) (|Map#Build_6241_22186| m@@160 u@@112 v@@48))
 :pattern ( (select (|Map#Elements_6241_23890| (|Map#Build_6241_22186| m@@160 u@@112 v@@48)) |u'@@0|))
)))
(assert (forall ((m@@161 T@Map_6241_4323) (u@@113 T@Ref) (|u'@@1| T@Ref) (v@@49 Int) ) (!  (and (=> (= |u'@@1| u@@113) (and (select (|Map#Domain_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|) (= (select (|Map#Elements_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|) v@@49))) (=> (not (= |u'@@1| u@@113)) (and (= (select (|Map#Domain_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|) (select (|Map#Domain_6241_4323| m@@161) |u'@@1|)) (= (select (|Map#Elements_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|) (select (|Map#Elements_6241_4323| m@@161) |u'@@1|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|))
 :pattern ( (select (|Map#Domain_6241_4323| m@@161) |u'@@1|) (|Map#Build_6241_4323| m@@161 u@@113 v@@49))
 :pattern ( (select (|Map#Elements_6241_4323| (|Map#Build_6241_4323| m@@161 u@@113 v@@49)) |u'@@1|))
)))
(assert (forall ((m@@162 T@Map_6241_4005) (u@@114 T@Ref) (|u'@@2| T@Ref) (v@@50 Bool) ) (!  (and (=> (= |u'@@2| u@@114) (and (select (|Map#Domain_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|) (= (select (|Map#Elements_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|) v@@50))) (=> (not (= |u'@@2| u@@114)) (and (= (select (|Map#Domain_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|) (select (|Map#Domain_6241_4005| m@@162) |u'@@2|)) (= (select (|Map#Elements_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|) (select (|Map#Elements_6241_4005| m@@162) |u'@@2|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|))
 :pattern ( (select (|Map#Domain_6241_4005| m@@162) |u'@@2|) (|Map#Build_6241_4005| m@@162 u@@114 v@@50))
 :pattern ( (select (|Map#Elements_6241_4005| (|Map#Build_6241_4005| m@@162 u@@114 v@@50)) |u'@@2|))
)))
(assert (forall ((m@@163 T@Map_22186_6241) (u@@115 T@Map_4004_4005) (|u'@@3| T@Map_4004_4005) (v@@51 T@Ref) ) (!  (and (=> (= |u'@@3| u@@115) (and (select (|Map#Domain_22186_6241| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|) (= (select (|Map#Elements_22186_24037| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|) v@@51))) (=> (not (= |u'@@3| u@@115)) (and (= (select (|Map#Domain_22186_6241| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|) (select (|Map#Domain_22186_6241| m@@163) |u'@@3|)) (= (select (|Map#Elements_22186_24037| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|) (select (|Map#Elements_22186_24037| m@@163) |u'@@3|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_22186_6241| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|))
 :pattern ( (select (|Map#Domain_22186_6241| m@@163) |u'@@3|) (|Map#Build_22186_6241| m@@163 u@@115 v@@51))
 :pattern ( (select (|Map#Elements_22186_24037| (|Map#Build_22186_6241| m@@163 u@@115 v@@51)) |u'@@3|))
)))
(assert (forall ((m@@164 T@Map_22186_22186) (u@@116 T@Map_4004_4005) (|u'@@4| T@Map_4004_4005) (v@@52 T@Map_4004_4005) ) (!  (and (=> (= |u'@@4| u@@116) (and (select (|Map#Domain_22186_22186| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|) (= (select (|Map#Elements_22186_23890| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|) v@@52))) (=> (not (= |u'@@4| u@@116)) (and (= (select (|Map#Domain_22186_22186| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|) (select (|Map#Domain_22186_22186| m@@164) |u'@@4|)) (= (select (|Map#Elements_22186_23890| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|) (select (|Map#Elements_22186_23890| m@@164) |u'@@4|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_22186_22186| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|))
 :pattern ( (select (|Map#Domain_22186_22186| m@@164) |u'@@4|) (|Map#Build_22186_22186| m@@164 u@@116 v@@52))
 :pattern ( (select (|Map#Elements_22186_23890| (|Map#Build_22186_22186| m@@164 u@@116 v@@52)) |u'@@4|))
)))
(assert (forall ((m@@165 T@Map_22186_4323) (u@@117 T@Map_4004_4005) (|u'@@5| T@Map_4004_4005) (v@@53 Int) ) (!  (and (=> (= |u'@@5| u@@117) (and (select (|Map#Domain_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|) (= (select (|Map#Elements_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|) v@@53))) (=> (not (= |u'@@5| u@@117)) (and (= (select (|Map#Domain_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|) (select (|Map#Domain_22186_4323| m@@165) |u'@@5|)) (= (select (|Map#Elements_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|) (select (|Map#Elements_22186_4323| m@@165) |u'@@5|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|))
 :pattern ( (select (|Map#Domain_22186_4323| m@@165) |u'@@5|) (|Map#Build_22186_4323| m@@165 u@@117 v@@53))
 :pattern ( (select (|Map#Elements_22186_4323| (|Map#Build_22186_4323| m@@165 u@@117 v@@53)) |u'@@5|))
)))
(assert (forall ((m@@166 T@Map_22186_4005) (u@@118 T@Map_4004_4005) (|u'@@6| T@Map_4004_4005) (v@@54 Bool) ) (!  (and (=> (= |u'@@6| u@@118) (and (select (|Map#Domain_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|) (= (select (|Map#Elements_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|) v@@54))) (=> (not (= |u'@@6| u@@118)) (and (= (select (|Map#Domain_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|) (select (|Map#Domain_22186_4005| m@@166) |u'@@6|)) (= (select (|Map#Elements_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|) (select (|Map#Elements_22186_4005| m@@166) |u'@@6|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|))
 :pattern ( (select (|Map#Domain_22186_4005| m@@166) |u'@@6|) (|Map#Build_22186_4005| m@@166 u@@118 v@@54))
 :pattern ( (select (|Map#Elements_22186_4005| (|Map#Build_22186_4005| m@@166 u@@118 v@@54)) |u'@@6|))
)))
(assert (forall ((m@@167 T@Map_4005_6241) (u@@119 Bool) (|u'@@7| Bool) (v@@55 T@Ref) ) (!  (and (=> (= |u'@@7| u@@119) (and (select (|Map#Domain_4005_6241| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|) (= (select (|Map#Elements_4005_24037| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|) v@@55))) (=> (not (= |u'@@7| u@@119)) (and (= (select (|Map#Domain_4005_6241| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|) (select (|Map#Domain_4005_6241| m@@167) |u'@@7|)) (= (select (|Map#Elements_4005_24037| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|) (select (|Map#Elements_4005_24037| m@@167) |u'@@7|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4005_6241| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|))
 :pattern ( (select (|Map#Domain_4005_6241| m@@167) |u'@@7|) (|Map#Build_4005_6241| m@@167 u@@119 v@@55))
 :pattern ( (select (|Map#Elements_4005_24037| (|Map#Build_4005_6241| m@@167 u@@119 v@@55)) |u'@@7|))
)))
(assert (forall ((m@@168 T@Map_4005_22186) (u@@120 Bool) (|u'@@8| Bool) (v@@56 T@Map_4004_4005) ) (!  (and (=> (= |u'@@8| u@@120) (and (select (|Map#Domain_4005_22186| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|) (= (select (|Map#Elements_4005_23890| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|) v@@56))) (=> (not (= |u'@@8| u@@120)) (and (= (select (|Map#Domain_4005_22186| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|) (select (|Map#Domain_4005_22186| m@@168) |u'@@8|)) (= (select (|Map#Elements_4005_23890| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|) (select (|Map#Elements_4005_23890| m@@168) |u'@@8|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4005_22186| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|))
 :pattern ( (select (|Map#Domain_4005_22186| m@@168) |u'@@8|) (|Map#Build_4005_22186| m@@168 u@@120 v@@56))
 :pattern ( (select (|Map#Elements_4005_23890| (|Map#Build_4005_22186| m@@168 u@@120 v@@56)) |u'@@8|))
)))
(assert (forall ((m@@169 T@Map_4005_4323) (u@@121 Bool) (|u'@@9| Bool) (v@@57 Int) ) (!  (and (=> (= |u'@@9| u@@121) (and (select (|Map#Domain_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|) (= (select (|Map#Elements_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|) v@@57))) (=> (not (= |u'@@9| u@@121)) (and (= (select (|Map#Domain_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|) (select (|Map#Domain_4005_4323| m@@169) |u'@@9|)) (= (select (|Map#Elements_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|) (select (|Map#Elements_4005_4323| m@@169) |u'@@9|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|))
 :pattern ( (select (|Map#Domain_4005_4323| m@@169) |u'@@9|) (|Map#Build_4005_4323| m@@169 u@@121 v@@57))
 :pattern ( (select (|Map#Elements_4005_4323| (|Map#Build_4005_4323| m@@169 u@@121 v@@57)) |u'@@9|))
)))
(assert (forall ((m@@170 T@Map_4005_4005) (u@@122 Bool) (|u'@@10| Bool) (v@@58 Bool) ) (!  (and (=> (= |u'@@10| u@@122) (and (select (|Map#Domain_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|) (= (select (|Map#Elements_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|) v@@58))) (=> (not (= |u'@@10| u@@122)) (and (= (select (|Map#Domain_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|) (select (|Map#Domain_4005_4005| m@@170) |u'@@10|)) (= (select (|Map#Elements_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|) (select (|Map#Elements_4005_4005| m@@170) |u'@@10|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|))
 :pattern ( (select (|Map#Domain_4005_4005| m@@170) |u'@@10|) (|Map#Build_4005_4005| m@@170 u@@122 v@@58))
 :pattern ( (select (|Map#Elements_4005_4005| (|Map#Build_4005_4005| m@@170 u@@122 v@@58)) |u'@@10|))
)))
(assert (forall ((m@@171 T@Map_5300_24037) (u@@123 Int) (|u'@@11| Int) (v@@59 T@Ref) ) (!  (and (=> (= |u'@@11| u@@123) (and (select (|Map#Domain_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|) (= (select (|Map#Elements_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|) v@@59))) (=> (not (= |u'@@11| u@@123)) (and (= (select (|Map#Domain_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|) (select (|Map#Domain_5300_6241| m@@171) |u'@@11|)) (= (select (|Map#Elements_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|) (select (|Map#Elements_5300_6241| m@@171) |u'@@11|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|))
 :pattern ( (select (|Map#Domain_5300_6241| m@@171) |u'@@11|) (|Map#Build_4004_6241| m@@171 u@@123 v@@59))
 :pattern ( (select (|Map#Elements_5300_6241| (|Map#Build_4004_6241| m@@171 u@@123 v@@59)) |u'@@11|))
)))
(assert (forall ((m@@172 T@Map_4779_22026) (u@@124 Int) (|u'@@12| Int) (v@@60 T@Map_4004_4005) ) (!  (and (=> (= |u'@@12| u@@124) (and (select (|Map#Domain_4779_22186| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|) (= (select (|Map#Elements_4779_22378| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|) v@@60))) (=> (not (= |u'@@12| u@@124)) (and (= (select (|Map#Domain_4779_22186| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|) (select (|Map#Domain_4779_22186| m@@172) |u'@@12|)) (= (select (|Map#Elements_4779_22378| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|) (select (|Map#Elements_4779_22378| m@@172) |u'@@12|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4779_22186| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|))
 :pattern ( (select (|Map#Domain_4779_22186| m@@172) |u'@@12|) (|Map#Build_4004_22186| m@@172 u@@124 v@@60))
 :pattern ( (select (|Map#Elements_4779_22378| (|Map#Build_4004_22186| m@@172 u@@124 v@@60)) |u'@@12|))
)))
(assert (forall ((m@@173 T@Map_4322_4323) (u@@125 Int) (|u'@@13| Int) (v@@61 Int) ) (!  (and (=> (= |u'@@13| u@@125) (and (select (|Map#Domain_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|) (= (select (|Map#Elements_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|) v@@61))) (=> (not (= |u'@@13| u@@125)) (and (= (select (|Map#Domain_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|) (select (|Map#Domain_4322_4323| m@@173) |u'@@13|)) (= (select (|Map#Elements_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|) (select (|Map#Elements_4322_4323| m@@173) |u'@@13|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|))
 :pattern ( (select (|Map#Domain_4322_4323| m@@173) |u'@@13|) (|Map#Build_4359_4360| m@@173 u@@125 v@@61))
 :pattern ( (select (|Map#Elements_4322_4323| (|Map#Build_4359_4360| m@@173 u@@125 v@@61)) |u'@@13|))
)))
(assert (forall ((m@@174 T@Map_4004_4005) (u@@126 Int) (|u'@@14| Int) (v@@62 Bool) ) (!  (and (=> (= |u'@@14| u@@126) (and (select (|Map#Domain_4004_4005| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|) (= (select (|Map#Elements_4180_4181| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|) v@@62))) (=> (not (= |u'@@14| u@@126)) (and (= (select (|Map#Domain_4004_4005| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|) (select (|Map#Domain_4004_4005| m@@174) |u'@@14|)) (= (select (|Map#Elements_4180_4181| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|) (select (|Map#Elements_4180_4181| m@@174) |u'@@14|)))))
 :qid |stdinbpl.448:21|
 :skolemid |92|
 :pattern ( (select (|Map#Domain_4004_4005| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|))
 :pattern ( (select (|Map#Domain_4004_4005| m@@174) |u'@@14|) (|Map#Build_4180_4181| m@@174 u@@126 v@@62))
 :pattern ( (select (|Map#Elements_4180_4181| (|Map#Build_4180_4181| m@@174 u@@126 v@@62)) |u'@@14|))
)))
(assert (forall ((o@@33 T@Ref) ) (!  (not (select |Set#Empty_6241| o@@33))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6241| o@@33))
)))
(assert (forall ((o@@34 T@Map_4004_4005) ) (!  (not (select |Set#Empty_22186| o@@34))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_22186| o@@34))
)))
(assert (forall ((o@@35 Bool) ) (!  (not (select |Set#Empty_4005| o@@35))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4005| o@@35))
)))
(assert (forall ((o@@36 Int) ) (!  (not (select |Set#Empty_4125| o@@36))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4125| o@@36))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10611) (o_16 T@Ref) (f_2 T@Field_6194_26669) (v@@63 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@11) (store (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@11) o_16 f_2 v@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@11) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@11) (store (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@11) o_16 f_2 v@@63)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10611) (o_16@@0 T@Ref) (f_2@@0 T@Field_6194_26802) (v@@64 T@PolymorphicMapType_11160) ) (! (succHeap Heap@@12 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@12) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@12) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@12) (store (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@12) o_16@@0 f_2@@0 v@@64) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@12) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@12) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@12) (store (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@12) o_16@@0 f_2@@0 v@@64) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10611) (o_16@@1 T@Ref) (f_2@@1 T@Field_17914_3982) (v@@65 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@13) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@13) (store (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@13) o_16@@1 f_2@@1 v@@65) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@13) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@13) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@13) (store (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@13) o_16@@1 f_2@@1 v@@65) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@13) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10611) (o_16@@2 T@Ref) (f_2@@2 T@Field_10684_10685) (v@@66 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@14) (store (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@14) o_16@@2 f_2@@2 v@@66) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@14) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@14) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10611 (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@14) (store (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@14) o_16@@2 f_2@@2 v@@66) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@14) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@14) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10611) (o_16@@3 T@Ref) (f_2@@3 T@Field_10671_53) (v@@67 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10611 (store (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@15) o_16@@3 f_2@@3 v@@67) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10611 (store (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@15) o_16@@3 f_2@@3 v@@67) (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_6194_3982#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_6194_26846#PolymorphicMapType_10611| Heap@@15) (|PolymorphicMapType_10611_10671_26669#PolymorphicMapType_10611| Heap@@15)))
)))
(assert (forall ((m@@175 T@Map_6241_6241) ) (! (= (|Set#Card_6241| (|Map#Domain_6241_6241| m@@175)) (|Map#Card_6241_6241| m@@175))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_6241| (|Map#Domain_6241_6241| m@@175)))
 :pattern ( (|Map#Card_6241_6241| m@@175))
)))
(assert (forall ((m@@176 T@Map_6241_22186) ) (! (= (|Set#Card_6241| (|Map#Domain_6241_22186| m@@176)) (|Map#Card_6241_22186| m@@176))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_6241| (|Map#Domain_6241_22186| m@@176)))
 :pattern ( (|Map#Card_6241_22186| m@@176))
)))
(assert (forall ((m@@177 T@Map_6241_4323) ) (! (= (|Set#Card_6241| (|Map#Domain_6241_4323| m@@177)) (|Map#Card_6241_4323| m@@177))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_6241| (|Map#Domain_6241_4323| m@@177)))
 :pattern ( (|Map#Card_6241_4323| m@@177))
)))
(assert (forall ((m@@178 T@Map_6241_4005) ) (! (= (|Set#Card_6241| (|Map#Domain_6241_4005| m@@178)) (|Map#Card_6241_4005| m@@178))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_6241| (|Map#Domain_6241_4005| m@@178)))
 :pattern ( (|Map#Card_6241_4005| m@@178))
)))
(assert (forall ((m@@179 T@Map_22186_6241) ) (! (= (|Set#Card_22186| (|Map#Domain_22186_6241| m@@179)) (|Map#Card_22186_6241| m@@179))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_22186| (|Map#Domain_22186_6241| m@@179)))
 :pattern ( (|Map#Card_22186_6241| m@@179))
)))
(assert (forall ((m@@180 T@Map_22186_22186) ) (! (= (|Set#Card_22186| (|Map#Domain_22186_22186| m@@180)) (|Map#Card_22186_22186| m@@180))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_22186| (|Map#Domain_22186_22186| m@@180)))
 :pattern ( (|Map#Card_22186_22186| m@@180))
)))
(assert (forall ((m@@181 T@Map_22186_4323) ) (! (= (|Set#Card_22186| (|Map#Domain_22186_4323| m@@181)) (|Map#Card_22186_4323| m@@181))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_22186| (|Map#Domain_22186_4323| m@@181)))
 :pattern ( (|Map#Card_22186_4323| m@@181))
)))
(assert (forall ((m@@182 T@Map_22186_4005) ) (! (= (|Set#Card_22186| (|Map#Domain_22186_4005| m@@182)) (|Map#Card_22186_4005| m@@182))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_22186| (|Map#Domain_22186_4005| m@@182)))
 :pattern ( (|Map#Card_22186_4005| m@@182))
)))
(assert (forall ((m@@183 T@Map_5300_24037) ) (! (= (|Set#Card_4125| (|Map#Domain_5300_6241| m@@183)) (|Map#Card_4068_24037| m@@183))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4125| (|Map#Domain_5300_6241| m@@183)))
 :pattern ( (|Map#Card_4068_24037| m@@183))
)))
(assert (forall ((m@@184 T@Map_4779_22026) ) (! (= (|Set#Card_4125| (|Map#Domain_4779_22186| m@@184)) (|Map#Card_4068_22026| m@@184))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4125| (|Map#Domain_4779_22186| m@@184)))
 :pattern ( (|Map#Card_4068_22026| m@@184))
)))
(assert (forall ((m@@185 T@Map_4322_4323) ) (! (= (|Set#Card_4125| (|Map#Domain_4322_4323| m@@185)) (|Map#Card_4322_4323| m@@185))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4125| (|Map#Domain_4322_4323| m@@185)))
 :pattern ( (|Map#Card_4322_4323| m@@185))
)))
(assert (forall ((m@@186 T@Map_4004_4005) ) (! (= (|Set#Card_4125| (|Map#Domain_4004_4005| m@@186)) (|Map#Card_4068_4069| m@@186))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4125| (|Map#Domain_4004_4005| m@@186)))
 :pattern ( (|Map#Card_4068_4069| m@@186))
)))
(assert (forall ((m@@187 T@Map_4005_6241) ) (! (= (|Set#Card_4005| (|Map#Domain_4005_6241| m@@187)) (|Map#Card_4005_6241| m@@187))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4005| (|Map#Domain_4005_6241| m@@187)))
 :pattern ( (|Map#Card_4005_6241| m@@187))
)))
(assert (forall ((m@@188 T@Map_4005_22186) ) (! (= (|Set#Card_4005| (|Map#Domain_4005_22186| m@@188)) (|Map#Card_4005_22186| m@@188))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4005| (|Map#Domain_4005_22186| m@@188)))
 :pattern ( (|Map#Card_4005_22186| m@@188))
)))
(assert (forall ((m@@189 T@Map_4005_4323) ) (! (= (|Set#Card_4005| (|Map#Domain_4005_4323| m@@189)) (|Map#Card_4005_4323| m@@189))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4005| (|Map#Domain_4005_4323| m@@189)))
 :pattern ( (|Map#Card_4005_4323| m@@189))
)))
(assert (forall ((m@@190 T@Map_4005_4005) ) (! (= (|Set#Card_4005| (|Map#Domain_4005_4005| m@@190)) (|Map#Card_4005_4005| m@@190))
 :qid |stdinbpl.404:20|
 :skolemid |83|
 :pattern ( (|Set#Card_4005| (|Map#Domain_4005_4005| m@@190)))
 :pattern ( (|Map#Card_4005_4005| m@@190))
)))
(assert (forall ((a@@65 Int) (b@@48 Int) ) (! (= (<= a@@65 b@@48) (= (|Math#min| a@@65 b@@48) a@@65))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@65 b@@48))
)))
(assert (forall ((a@@66 Int) (b@@49 Int) ) (! (= (<= b@@49 a@@66) (= (|Math#min| a@@66 b@@49) b@@49))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@66 b@@49))
)))
(assert (forall ((s@@3 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6241| s@@3) 0) (= s@@3 |Set#Empty_6241|)) (=> (not (= (|Set#Card_6241| s@@3) 0)) (exists ((x@@47 T@Ref) ) (! (select s@@3 x@@47)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6241| s@@3))
)))
(assert (forall ((s@@4 (Array T@Map_4004_4005 Bool)) ) (!  (and (= (= (|Set#Card_22186| s@@4) 0) (= s@@4 |Set#Empty_22186|)) (=> (not (= (|Set#Card_22186| s@@4) 0)) (exists ((x@@48 T@Map_4004_4005) ) (! (select s@@4 x@@48)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_22186| s@@4))
)))
(assert (forall ((s@@5 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_4125| s@@5) 0) (= s@@5 |Set#Empty_4125|)) (=> (not (= (|Set#Card_4125| s@@5) 0)) (exists ((x@@49 Int) ) (! (select s@@5 x@@49)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4125| s@@5))
)))
(assert (forall ((s@@6 (Array Bool Bool)) ) (!  (and (= (= (|Set#Card_4005| s@@6) 0) (= s@@6 |Set#Empty_4005|)) (=> (not (= (|Set#Card_4005| s@@6) 0)) (exists ((x@@50 Bool) ) (! (select s@@6 x@@50)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4005| s@@6))
)))
(assert (forall ((u@@127 T@Ref) ) (!  (not (select (|Map#Domain_6241_6241| |Map#Empty_6241_6241|) u@@127))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_6241_6241| |Map#Empty_6241_6241|) u@@127))
)))
(assert (forall ((u@@128 T@Ref) ) (!  (not (select (|Map#Domain_6241_22186| |Map#Empty_6241_22186|) u@@128))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_6241_22186| |Map#Empty_6241_22186|) u@@128))
)))
(assert (forall ((u@@129 T@Ref) ) (!  (not (select (|Map#Domain_6241_4323| |Map#Empty_6241_4323|) u@@129))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_6241_4323| |Map#Empty_6241_4323|) u@@129))
)))
(assert (forall ((u@@130 T@Ref) ) (!  (not (select (|Map#Domain_6241_4005| |Map#Empty_6241_4005|) u@@130))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_6241_4005| |Map#Empty_6241_4005|) u@@130))
)))
(assert (forall ((u@@131 T@Map_4004_4005) ) (!  (not (select (|Map#Domain_22186_6241| |Map#Empty_22186_6241|) u@@131))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_22186_6241| |Map#Empty_22186_6241|) u@@131))
)))
(assert (forall ((u@@132 T@Map_4004_4005) ) (!  (not (select (|Map#Domain_22186_22186| |Map#Empty_22186_22186|) u@@132))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_22186_22186| |Map#Empty_22186_22186|) u@@132))
)))
(assert (forall ((u@@133 T@Map_4004_4005) ) (!  (not (select (|Map#Domain_22186_4323| |Map#Empty_22186_4323|) u@@133))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_22186_4323| |Map#Empty_22186_4323|) u@@133))
)))
(assert (forall ((u@@134 T@Map_4004_4005) ) (!  (not (select (|Map#Domain_22186_4005| |Map#Empty_22186_4005|) u@@134))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_22186_4005| |Map#Empty_22186_4005|) u@@134))
)))
(assert (forall ((u@@135 Bool) ) (!  (not (select (|Map#Domain_4005_6241| |Map#Empty_4005_6241|) u@@135))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4005_6241| |Map#Empty_4005_6241|) u@@135))
)))
(assert (forall ((u@@136 Bool) ) (!  (not (select (|Map#Domain_4005_22186| |Map#Empty_4005_22186|) u@@136))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4005_22186| |Map#Empty_4005_22186|) u@@136))
)))
(assert (forall ((u@@137 Bool) ) (!  (not (select (|Map#Domain_4005_4323| |Map#Empty_4005_4323|) u@@137))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4005_4323| |Map#Empty_4005_4323|) u@@137))
)))
(assert (forall ((u@@138 Bool) ) (!  (not (select (|Map#Domain_4005_4005| |Map#Empty_4005_4005|) u@@138))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4005_4005| |Map#Empty_4005_4005|) u@@138))
)))
(assert (forall ((u@@139 Int) ) (!  (not (select (|Map#Domain_5300_6241| |Map#Empty_4004_6241|) u@@139))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_5300_6241| |Map#Empty_4004_6241|) u@@139))
)))
(assert (forall ((u@@140 Int) ) (!  (not (select (|Map#Domain_4779_22186| |Map#Empty_4004_22186|) u@@140))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4779_22186| |Map#Empty_4004_22186|) u@@140))
)))
(assert (forall ((u@@141 Int) ) (!  (not (select (|Map#Domain_4322_4323| |Map#Empty_4359_4360|) u@@141))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4322_4323| |Map#Empty_4359_4360|) u@@141))
)))
(assert (forall ((u@@142 Int) ) (!  (not (select (|Map#Domain_4004_4005| |Map#Empty_4046_4047|) u@@142))
 :qid |stdinbpl.435:21|
 :skolemid |88|
 :pattern ( (select (|Map#Domain_4004_4005| |Map#Empty_4046_4047|) u@@142))
)))
(assert (forall ((a@@67 (Array T@Ref Bool)) (x@@51 T@Ref) ) (!  (=> (not (select a@@67 x@@51)) (= (|Set#Card_6241| (|Set#UnionOne_6241| a@@67 x@@51)) (+ (|Set#Card_6241| a@@67) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6241| (|Set#UnionOne_6241| a@@67 x@@51)))
)))
(assert (forall ((a@@68 (Array T@Map_4004_4005 Bool)) (x@@52 T@Map_4004_4005) ) (!  (=> (not (select a@@68 x@@52)) (= (|Set#Card_22186| (|Set#UnionOne_22186| a@@68 x@@52)) (+ (|Set#Card_22186| a@@68) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_22186| (|Set#UnionOne_22186| a@@68 x@@52)))
)))
(assert (forall ((a@@69 (Array Int Bool)) (x@@53 Int) ) (!  (=> (not (select a@@69 x@@53)) (= (|Set#Card_4125| (|Set#UnionOne_3| a@@69 x@@53)) (+ (|Set#Card_4125| a@@69) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4125| (|Set#UnionOne_3| a@@69 x@@53)))
)))
(assert (forall ((a@@70 (Array Bool Bool)) (x@@54 Bool) ) (!  (=> (not (select a@@70 x@@54)) (= (|Set#Card_4005| (|Set#UnionOne_4005| a@@70 x@@54)) (+ (|Set#Card_4005| a@@70) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4005| (|Set#UnionOne_4005| a@@70 x@@54)))
)))
(assert (forall ((o_16@@4 T@Ref) (f_10 T@Field_10684_10685) (Heap@@16 T@PolymorphicMapType_10611) ) (!  (=> (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@16) o_16@@4 $allocated) (select (|PolymorphicMapType_10611_5868_53#PolymorphicMapType_10611| Heap@@16) (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@16) o_16@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10611_5871_5872#PolymorphicMapType_10611| Heap@@16) o_16@@4 f_10))
)))
(assert (forall ((p@@1 T@Field_6194_26669) (v_1@@0 T@FrameType) (q T@Field_6194_26669) (w@@0 T@FrameType) (r@@11 T@Field_6194_26669) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_10671_10671 p@@1 v_1@@0 q w@@0) (InsidePredicate_10671_10671 q w@@0 r@@11 u@@143)) (InsidePredicate_10671_10671 p@@1 v_1@@0 r@@11 u@@143))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10671_10671 p@@1 v_1@@0 q w@@0) (InsidePredicate_10671_10671 q w@@0 r@@11 u@@143))
)))
(assert (forall ((a@@71 Int) ) (!  (=> (< a@@71 0) (= (|Math#clip| a@@71) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@71))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@72 (Array T@Ref Bool)) (b@@50 (Array T@Ref Bool)) (o@@37 T@Ref) ) (! (= (select (|Set#Union_6241| a@@72 b@@50) o@@37)  (or (select a@@72 o@@37) (select b@@50 o@@37)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6241| a@@72 b@@50) o@@37))
)))
(assert (forall ((a@@73 (Array T@Map_4004_4005 Bool)) (b@@51 (Array T@Map_4004_4005 Bool)) (o@@38 T@Map_4004_4005) ) (! (= (select (|Set#Union_22186| a@@73 b@@51) o@@38)  (or (select a@@73 o@@38) (select b@@51 o@@38)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_22186| a@@73 b@@51) o@@38))
)))
(assert (forall ((a@@74 (Array Int Bool)) (b@@52 (Array Int Bool)) (o@@39 Int) ) (! (= (select (|Set#Union_4125| a@@74 b@@52) o@@39)  (or (select a@@74 o@@39) (select b@@52 o@@39)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4125| a@@74 b@@52) o@@39))
)))
(assert (forall ((a@@75 (Array Bool Bool)) (b@@53 (Array Bool Bool)) (o@@40 Bool) ) (! (= (select (|Set#Union_4005| a@@75 b@@53) o@@40)  (or (select a@@75 o@@40) (select b@@53 o@@40)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4005| a@@75 b@@53) o@@40))
)))
(assert (forall ((m@@191 T@Map_6241_6241) (|m'@@47| T@Map_6241_6241) ) (!  (=> (not (|Map#Disjoint_6241_24037| m@@191 |m'@@47|)) (exists ((o@@41 T@Ref) ) (!  (and (select (|Map#Domain_6241_6241| m@@191) o@@41) (select (|Map#Domain_6241_6241| |m'@@47|) o@@41))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_6241_6241| m@@191) o@@41))
 :pattern ( (select (|Map#Domain_6241_6241| |m'@@47|) o@@41))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_6241_24037| m@@191 |m'@@47|))
)))
(assert (forall ((m@@192 T@Map_6241_22186) (|m'@@48| T@Map_6241_22186) ) (!  (=> (not (|Map#Disjoint_6241_22026| m@@192 |m'@@48|)) (exists ((o@@42 T@Ref) ) (!  (and (select (|Map#Domain_6241_22186| m@@192) o@@42) (select (|Map#Domain_6241_22186| |m'@@48|) o@@42))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_6241_22186| m@@192) o@@42))
 :pattern ( (select (|Map#Domain_6241_22186| |m'@@48|) o@@42))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_6241_22026| m@@192 |m'@@48|))
)))
(assert (forall ((m@@193 T@Map_6241_4323) (|m'@@49| T@Map_6241_4323) ) (!  (=> (not (|Map#Disjoint_6241_4323| m@@193 |m'@@49|)) (exists ((o@@43 T@Ref) ) (!  (and (select (|Map#Domain_6241_4323| m@@193) o@@43) (select (|Map#Domain_6241_4323| |m'@@49|) o@@43))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_6241_4323| m@@193) o@@43))
 :pattern ( (select (|Map#Domain_6241_4323| |m'@@49|) o@@43))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_6241_4323| m@@193 |m'@@49|))
)))
(assert (forall ((m@@194 T@Map_6241_4005) (|m'@@50| T@Map_6241_4005) ) (!  (=> (not (|Map#Disjoint_6241_4005| m@@194 |m'@@50|)) (exists ((o@@44 T@Ref) ) (!  (and (select (|Map#Domain_6241_4005| m@@194) o@@44) (select (|Map#Domain_6241_4005| |m'@@50|) o@@44))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_6241_4005| m@@194) o@@44))
 :pattern ( (select (|Map#Domain_6241_4005| |m'@@50|) o@@44))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_6241_4005| m@@194 |m'@@50|))
)))
(assert (forall ((m@@195 T@Map_22186_6241) (|m'@@51| T@Map_22186_6241) ) (!  (=> (not (|Map#Disjoint_22186_24037| m@@195 |m'@@51|)) (exists ((o@@45 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_6241| m@@195) o@@45) (select (|Map#Domain_22186_6241| |m'@@51|) o@@45))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_22186_6241| m@@195) o@@45))
 :pattern ( (select (|Map#Domain_22186_6241| |m'@@51|) o@@45))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_22186_24037| m@@195 |m'@@51|))
)))
(assert (forall ((m@@196 T@Map_22186_22186) (|m'@@52| T@Map_22186_22186) ) (!  (=> (not (|Map#Disjoint_22186_22026| m@@196 |m'@@52|)) (exists ((o@@46 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_22186| m@@196) o@@46) (select (|Map#Domain_22186_22186| |m'@@52|) o@@46))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_22186_22186| m@@196) o@@46))
 :pattern ( (select (|Map#Domain_22186_22186| |m'@@52|) o@@46))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_22186_22026| m@@196 |m'@@52|))
)))
(assert (forall ((m@@197 T@Map_22186_4323) (|m'@@53| T@Map_22186_4323) ) (!  (=> (not (|Map#Disjoint_22186_4323| m@@197 |m'@@53|)) (exists ((o@@47 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_4323| m@@197) o@@47) (select (|Map#Domain_22186_4323| |m'@@53|) o@@47))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_22186_4323| m@@197) o@@47))
 :pattern ( (select (|Map#Domain_22186_4323| |m'@@53|) o@@47))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_22186_4323| m@@197 |m'@@53|))
)))
(assert (forall ((m@@198 T@Map_22186_4005) (|m'@@54| T@Map_22186_4005) ) (!  (=> (not (|Map#Disjoint_22186_4005| m@@198 |m'@@54|)) (exists ((o@@48 T@Map_4004_4005) ) (!  (and (select (|Map#Domain_22186_4005| m@@198) o@@48) (select (|Map#Domain_22186_4005| |m'@@54|) o@@48))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_22186_4005| m@@198) o@@48))
 :pattern ( (select (|Map#Domain_22186_4005| |m'@@54|) o@@48))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_22186_4005| m@@198 |m'@@54|))
)))
(assert (forall ((m@@199 T@Map_4005_6241) (|m'@@55| T@Map_4005_6241) ) (!  (=> (not (|Map#Disjoint_4005_24037| m@@199 |m'@@55|)) (exists ((o@@49 Bool) ) (!  (and (select (|Map#Domain_4005_6241| m@@199) o@@49) (select (|Map#Domain_4005_6241| |m'@@55|) o@@49))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4005_6241| m@@199) o@@49))
 :pattern ( (select (|Map#Domain_4005_6241| |m'@@55|) o@@49))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4005_24037| m@@199 |m'@@55|))
)))
(assert (forall ((m@@200 T@Map_4005_22186) (|m'@@56| T@Map_4005_22186) ) (!  (=> (not (|Map#Disjoint_4005_22026| m@@200 |m'@@56|)) (exists ((o@@50 Bool) ) (!  (and (select (|Map#Domain_4005_22186| m@@200) o@@50) (select (|Map#Domain_4005_22186| |m'@@56|) o@@50))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4005_22186| m@@200) o@@50))
 :pattern ( (select (|Map#Domain_4005_22186| |m'@@56|) o@@50))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4005_22026| m@@200 |m'@@56|))
)))
(assert (forall ((m@@201 T@Map_4005_4323) (|m'@@57| T@Map_4005_4323) ) (!  (=> (not (|Map#Disjoint_4005_4323| m@@201 |m'@@57|)) (exists ((o@@51 Bool) ) (!  (and (select (|Map#Domain_4005_4323| m@@201) o@@51) (select (|Map#Domain_4005_4323| |m'@@57|) o@@51))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4005_4323| m@@201) o@@51))
 :pattern ( (select (|Map#Domain_4005_4323| |m'@@57|) o@@51))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4005_4323| m@@201 |m'@@57|))
)))
(assert (forall ((m@@202 T@Map_4005_4005) (|m'@@58| T@Map_4005_4005) ) (!  (=> (not (|Map#Disjoint_4005_4005| m@@202 |m'@@58|)) (exists ((o@@52 Bool) ) (!  (and (select (|Map#Domain_4005_4005| m@@202) o@@52) (select (|Map#Domain_4005_4005| |m'@@58|) o@@52))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4005_4005| m@@202) o@@52))
 :pattern ( (select (|Map#Domain_4005_4005| |m'@@58|) o@@52))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4005_4005| m@@202 |m'@@58|))
)))
(assert (forall ((m@@203 T@Map_5300_24037) (|m'@@59| T@Map_5300_24037) ) (!  (=> (not (|Map#Disjoint_4004_24037| m@@203 |m'@@59|)) (exists ((o@@53 Int) ) (!  (and (select (|Map#Domain_5300_6241| m@@203) o@@53) (select (|Map#Domain_5300_6241| |m'@@59|) o@@53))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_5300_6241| m@@203) o@@53))
 :pattern ( (select (|Map#Domain_5300_6241| |m'@@59|) o@@53))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4004_24037| m@@203 |m'@@59|))
)))
(assert (forall ((m@@204 T@Map_4779_22026) (|m'@@60| T@Map_4779_22026) ) (!  (=> (not (|Map#Disjoint_4004_22026| m@@204 |m'@@60|)) (exists ((o@@54 Int) ) (!  (and (select (|Map#Domain_4779_22186| m@@204) o@@54) (select (|Map#Domain_4779_22186| |m'@@60|) o@@54))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4779_22186| m@@204) o@@54))
 :pattern ( (select (|Map#Domain_4779_22186| |m'@@60|) o@@54))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4004_22026| m@@204 |m'@@60|))
)))
(assert (forall ((m@@205 T@Map_4322_4323) (|m'@@61| T@Map_4322_4323) ) (!  (=> (not (|Map#Disjoint_4004_4323| m@@205 |m'@@61|)) (exists ((o@@55 Int) ) (!  (and (select (|Map#Domain_4322_4323| m@@205) o@@55) (select (|Map#Domain_4322_4323| |m'@@61|) o@@55))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4322_4323| m@@205) o@@55))
 :pattern ( (select (|Map#Domain_4322_4323| |m'@@61|) o@@55))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4004_4323| m@@205 |m'@@61|))
)))
(assert (forall ((m@@206 T@Map_4004_4005) (|m'@@62| T@Map_4004_4005) ) (!  (=> (not (|Map#Disjoint_4004_4005| m@@206 |m'@@62|)) (exists ((o@@56 Int) ) (!  (and (select (|Map#Domain_4004_4005| m@@206) o@@56) (select (|Map#Domain_4004_4005| |m'@@62|) o@@56))
 :qid |stdinbpl.481:38|
 :skolemid |101|
 :pattern ( (select (|Map#Domain_4004_4005| m@@206) o@@56))
 :pattern ( (select (|Map#Domain_4004_4005| |m'@@62|) o@@56))
)))
 :qid |stdinbpl.479:21|
 :skolemid |102|
 :pattern ( (|Map#Disjoint_4004_4005| m@@206 |m'@@62|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_10611)
(declare-fun m1_3@0 () T@Map_4004_4005)
(declare-fun m2_1@0 () T@Map_4004_4005)
(set-info :boogie-vc-id test4_1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (= m1_3@0 (|Map#Build_4180_4181| (|Map#Build_4180_4181| (|Map#Build_4180_4181| |Map#Empty_4046_4047| 2 false) 4 true) 6 false)) (state Heap@@17 ZeroMask)) (and (= m2_1@0 (|Map#Build_4180_4181| (|Map#Build_4180_4181| |Map#Empty_4046_4047| 6 false) 2 false)) (state Heap@@17 ZeroMask))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (select (|Map#Domain_4004_4005| m2_1@0) 4))) (=> (not (select (|Map#Domain_4004_4005| m2_1@0) 4)) (=> (state Heap@@17 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 6)) (not (|Map#Equal_4570_4571| m1_3@0 m2_1@0))) (=> (not (|Map#Equal_4570_4571| m1_3@0 m2_1@0)) (=> (state Heap@@17 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 5)) (select (|Map#Domain_4004_4005| (|Map#Build_4180_4181| m2_1@0 4 true)) 4)) (=> (select (|Map#Domain_4004_4005| (|Map#Build_4180_4181| m2_1@0 4 true)) 4) (and (=> (= (ControlFlow 0 2) (- 0 4)) (select (|Map#Elements_4180_4181| (|Map#Build_4180_4181| m2_1@0 4 true)) 4)) (=> (select (|Map#Elements_4180_4181| (|Map#Build_4180_4181| m2_1@0 4 true)) 4) (=> (state Heap@@17 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Map#Equal_4570_4571| m1_3@0 (|Map#Build_4180_4181| m1_3@0 4 true))) (=> (|Map#Equal_4570_4571| m1_3@0 (|Map#Build_4180_4181| m1_3@0 4 true)) (=> (and (state Heap@@17 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (|Map#Equal_4570_4571| m1_3@0 (|Map#Build_4180_4181| m2_1@0 4 true))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
