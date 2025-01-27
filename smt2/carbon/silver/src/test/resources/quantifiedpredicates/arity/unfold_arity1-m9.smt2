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
(declare-sort T@Field_16014_53 0)
(declare-sort T@Field_16027_16028 0)
(declare-sort T@Field_22067_3242 0)
(declare-sort T@Field_22561_22562 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23481_23482 0)
(declare-sort T@Field_24489_24490 0)
(declare-sort T@Field_25463_25464 0)
(declare-sort T@Field_9821_9839 0)
(declare-sort T@Field_9821_22160 0)
(declare-sort T@Field_9838_3242 0)
(declare-sort T@Field_9838_53 0)
(declare-sort T@Field_9838_16028 0)
(declare-sort T@Field_22574_22579 0)
(declare-sort T@Field_9863_3242 0)
(declare-sort T@Field_9863_53 0)
(declare-sort T@Field_9863_16028 0)
(declare-sort T@Field_23494_23499 0)
(declare-sort T@Field_9888_3242 0)
(declare-sort T@Field_9888_53 0)
(declare-sort T@Field_9888_16028 0)
(declare-sort T@Field_24502_24507 0)
(declare-sort T@Field_9913_3242 0)
(declare-sort T@Field_9913_53 0)
(declare-sort T@Field_9913_16028 0)
(declare-sort T@Field_25476_25481 0)
(declare-sort T@Field_22143_3242 0)
(declare-sort T@Field_22143_22144 0)
(declare-sort T@Field_22143_53 0)
(declare-sort T@Field_22143_16028 0)
(declare-sort T@Field_22155_22160 0)
(declare-datatypes ((T@PolymorphicMapType_15975 0)) (((PolymorphicMapType_15975 (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_22067_3242 Real)) (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| (Array T@Ref T@Field_22561_22562 Real)) (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| (Array T@Ref T@Field_23481_23482 Real)) (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| (Array T@Ref T@Field_24489_24490 Real)) (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| (Array T@Ref T@Field_25463_25464 Real)) (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| (Array T@Ref T@Field_9821_9839 Real)) (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| (Array T@Ref T@Field_16014_53 Real)) (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_16027_16028 Real)) (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| (Array T@Ref T@Field_9821_22160 Real)) (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_9838_3242 Real)) (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| (Array T@Ref T@Field_9838_53 Real)) (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_9838_16028 Real)) (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| (Array T@Ref T@Field_22574_22579 Real)) (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_9863_3242 Real)) (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| (Array T@Ref T@Field_9863_53 Real)) (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_9863_16028 Real)) (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| (Array T@Ref T@Field_23494_23499 Real)) (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_9888_3242 Real)) (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| (Array T@Ref T@Field_9888_53 Real)) (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_9888_16028 Real)) (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| (Array T@Ref T@Field_24502_24507 Real)) (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_9913_3242 Real)) (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| (Array T@Ref T@Field_9913_53 Real)) (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_9913_16028 Real)) (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| (Array T@Ref T@Field_25476_25481 Real)) (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| (Array T@Ref T@Field_22143_3242 Real)) (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| (Array T@Ref T@Field_22143_22144 Real)) (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| (Array T@Ref T@Field_22143_53 Real)) (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| (Array T@Ref T@Field_22143_16028 Real)) (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| (Array T@Ref T@Field_22155_22160 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16503 0)) (((PolymorphicMapType_16503 (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (Array T@Ref T@Field_16014_53 Bool)) (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_16027_16028 Bool)) (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_22067_3242 Bool)) (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_9821_9839 Bool)) (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (Array T@Ref T@Field_9821_22160 Bool)) (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (Array T@Ref T@Field_22143_53 Bool)) (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_22143_16028 Bool)) (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_22143_3242 Bool)) (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_22143_22144 Bool)) (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (Array T@Ref T@Field_22155_22160 Bool)) (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (Array T@Ref T@Field_9838_53 Bool)) (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_9838_16028 Bool)) (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_9838_3242 Bool)) (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_22561_22562 Bool)) (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (Array T@Ref T@Field_22574_22579 Bool)) (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (Array T@Ref T@Field_9863_53 Bool)) (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_9863_16028 Bool)) (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_9863_3242 Bool)) (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_23481_23482 Bool)) (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (Array T@Ref T@Field_23494_23499 Bool)) (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (Array T@Ref T@Field_9888_53 Bool)) (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_9888_16028 Bool)) (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_9888_3242 Bool)) (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_24489_24490 Bool)) (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (Array T@Ref T@Field_24502_24507 Bool)) (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (Array T@Ref T@Field_9913_53 Bool)) (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (Array T@Ref T@Field_9913_16028 Bool)) (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (Array T@Ref T@Field_9913_3242 Bool)) (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (Array T@Ref T@Field_25463_25464 Bool)) (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (Array T@Ref T@Field_25476_25481 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15954 0)) (((PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| (Array T@Ref T@Field_16014_53 Bool)) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| (Array T@Ref T@Field_16027_16028 T@Ref)) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_22067_3242 Int)) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| (Array T@Ref T@Field_22561_22562 T@FrameType)) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| (Array T@Ref T@Field_23481_23482 T@FrameType)) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| (Array T@Ref T@Field_24489_24490 T@FrameType)) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| (Array T@Ref T@Field_25463_25464 T@FrameType)) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| (Array T@Ref T@Field_9821_9839 T@FrameType)) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| (Array T@Ref T@Field_9821_22160 T@PolymorphicMapType_16503)) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_9838_3242 Int)) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| (Array T@Ref T@Field_9838_53 Bool)) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| (Array T@Ref T@Field_9838_16028 T@Ref)) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| (Array T@Ref T@Field_22574_22579 T@PolymorphicMapType_16503)) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_9863_3242 Int)) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| (Array T@Ref T@Field_9863_53 Bool)) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| (Array T@Ref T@Field_9863_16028 T@Ref)) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| (Array T@Ref T@Field_23494_23499 T@PolymorphicMapType_16503)) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_9888_3242 Int)) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| (Array T@Ref T@Field_9888_53 Bool)) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| (Array T@Ref T@Field_9888_16028 T@Ref)) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| (Array T@Ref T@Field_24502_24507 T@PolymorphicMapType_16503)) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_9913_3242 Int)) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| (Array T@Ref T@Field_9913_53 Bool)) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| (Array T@Ref T@Field_9913_16028 T@Ref)) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| (Array T@Ref T@Field_25476_25481 T@PolymorphicMapType_16503)) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| (Array T@Ref T@Field_22143_3242 Int)) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| (Array T@Ref T@Field_22143_22144 T@FrameType)) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| (Array T@Ref T@Field_22143_53 Bool)) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| (Array T@Ref T@Field_22143_16028 T@Ref)) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| (Array T@Ref T@Field_22155_22160 T@PolymorphicMapType_16503)) ) ) ))
(declare-fun $allocated () T@Field_16014_53)
(declare-fun f_7 () T@Field_22067_3242)
(declare-fun g () T@Field_22067_3242)
(declare-sort T@Seq_26504 0)
(declare-fun |Seq#Length_26504| (T@Seq_26504) Int)
(declare-fun |Seq#Drop_26504| (T@Seq_26504 Int) T@Seq_26504)
(declare-sort T@Seq_3120 0)
(declare-fun |Seq#Length_3120| (T@Seq_3120) Int)
(declare-fun |Seq#Drop_3120| (T@Seq_3120 Int) T@Seq_3120)
(declare-fun succHeap (T@PolymorphicMapType_15954 T@PolymorphicMapType_15954) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15954 T@PolymorphicMapType_15954) Bool)
(declare-fun state (T@PolymorphicMapType_15954 T@PolymorphicMapType_15975) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15975) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16503)
(declare-fun p4 (T@Ref Int) T@Field_24489_24490)
(declare-fun IsPredicateField_9888_9889 (T@Field_24489_24490) Bool)
(declare-fun p5 (T@Ref Int) T@Field_25463_25464)
(declare-fun IsPredicateField_9913_9914 (T@Field_25463_25464) Bool)
(declare-fun |p4#trigger_9888| (T@PolymorphicMapType_15954 T@Field_24489_24490) Bool)
(declare-fun |p4#everUsed_9888| (T@Field_24489_24490) Bool)
(declare-fun |p5#trigger_9913| (T@PolymorphicMapType_15954 T@Field_25463_25464) Bool)
(declare-fun |p5#everUsed_9913| (T@Field_25463_25464) Bool)
(declare-fun |Seq#Index_26504| (T@Seq_26504 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3120| (T@Seq_3120 Int) Int)
(declare-fun IsPredicateField_9825_9826 (T@Field_22143_22144) Bool)
(declare-fun p1 () T@Field_22143_22144)
(declare-fun |Seq#Empty_26504| () T@Seq_26504)
(declare-fun |Seq#Empty_3120| () T@Seq_3120)
(declare-fun getPredWandId_9825_9826 (T@Field_22143_22144) Int)
(declare-fun p2 (T@Ref) T@Field_22561_22562)
(declare-fun IsPredicateField_9838_9839 (T@Field_22561_22562) Bool)
(declare-fun p3_1 (T@Ref) T@Field_23481_23482)
(declare-fun IsPredicateField_9863_9864 (T@Field_23481_23482) Bool)
(declare-fun |p2#trigger_9838| (T@PolymorphicMapType_15954 T@Field_22561_22562) Bool)
(declare-fun |p2#everUsed_9838| (T@Field_22561_22562) Bool)
(declare-fun |p3#trigger_9863| (T@PolymorphicMapType_15954 T@Field_23481_23482) Bool)
(declare-fun |p3#everUsed_9863| (T@Field_23481_23482) Bool)
(declare-fun |Seq#Update_26504| (T@Seq_26504 Int T@Ref) T@Seq_26504)
(declare-fun |Seq#Update_3120| (T@Seq_3120 Int Int) T@Seq_3120)
(declare-fun |Seq#Take_26504| (T@Seq_26504 Int) T@Seq_26504)
(declare-fun |Seq#Take_3120| (T@Seq_3120 Int) T@Seq_3120)
(declare-fun |Seq#Contains_3120| (T@Seq_3120 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3120)
(declare-fun |Seq#Contains_9941| (T@Seq_26504 T@Ref) Bool)
(declare-fun |Seq#Skolem_9941| (T@Seq_26504 T@Ref) Int)
(declare-fun |Seq#Skolem_3120| (T@Seq_3120 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15954 T@PolymorphicMapType_15954 T@PolymorphicMapType_15975) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9825 (T@Field_22143_22144) T@Field_22155_22160)
(declare-fun HasDirectPerm_22143_9839 (T@PolymorphicMapType_15975 T@Ref T@Field_22143_22144) Bool)
(declare-fun PredicateMaskField_9913 (T@Field_25463_25464) T@Field_25476_25481)
(declare-fun HasDirectPerm_9913_9914 (T@PolymorphicMapType_15975 T@Ref T@Field_25463_25464) Bool)
(declare-fun PredicateMaskField_9888 (T@Field_24489_24490) T@Field_24502_24507)
(declare-fun HasDirectPerm_9888_9889 (T@PolymorphicMapType_15975 T@Ref T@Field_24489_24490) Bool)
(declare-fun PredicateMaskField_9863 (T@Field_23481_23482) T@Field_23494_23499)
(declare-fun HasDirectPerm_9863_9864 (T@PolymorphicMapType_15975 T@Ref T@Field_23481_23482) Bool)
(declare-fun PredicateMaskField_9838 (T@Field_22561_22562) T@Field_22574_22579)
(declare-fun HasDirectPerm_9838_9839 (T@PolymorphicMapType_15975 T@Ref T@Field_22561_22562) Bool)
(declare-fun IsPredicateField_9821_54969 (T@Field_9821_9839) Bool)
(declare-fun PredicateMaskField_9821 (T@Field_9821_9839) T@Field_9821_22160)
(declare-fun HasDirectPerm_9821_9839 (T@PolymorphicMapType_15975 T@Ref T@Field_9821_9839) Bool)
(declare-fun IsWandField_22143_66710 (T@Field_22143_22144) Bool)
(declare-fun WandMaskField_22143 (T@Field_22143_22144) T@Field_22155_22160)
(declare-fun IsWandField_9913_66353 (T@Field_25463_25464) Bool)
(declare-fun WandMaskField_9913 (T@Field_25463_25464) T@Field_25476_25481)
(declare-fun IsWandField_9888_65996 (T@Field_24489_24490) Bool)
(declare-fun WandMaskField_9888 (T@Field_24489_24490) T@Field_24502_24507)
(declare-fun IsWandField_9863_65639 (T@Field_23481_23482) Bool)
(declare-fun WandMaskField_9863 (T@Field_23481_23482) T@Field_23494_23499)
(declare-fun IsWandField_9838_65282 (T@Field_22561_22562) Bool)
(declare-fun WandMaskField_9838 (T@Field_22561_22562) T@Field_22574_22579)
(declare-fun IsWandField_9821_64925 (T@Field_9821_9839) Bool)
(declare-fun WandMaskField_9821 (T@Field_9821_9839) T@Field_9821_22160)
(declare-fun |Seq#Singleton_26504| (T@Ref) T@Seq_26504)
(declare-fun |Seq#Singleton_3120| (Int) T@Seq_3120)
(declare-fun |p4#sm| (T@Ref Int) T@Field_24502_24507)
(declare-fun |p5#sm| (T@Ref Int) T@Field_25476_25481)
(declare-fun |p2#sm| (T@Ref) T@Field_22574_22579)
(declare-fun |p3#sm| (T@Ref) T@Field_23494_23499)
(declare-fun |Seq#Append_26504| (T@Seq_26504 T@Seq_26504) T@Seq_26504)
(declare-fun |Seq#Append_3120| (T@Seq_3120 T@Seq_3120) T@Seq_3120)
(declare-fun dummyHeap () T@PolymorphicMapType_15954)
(declare-fun ZeroMask () T@PolymorphicMapType_15975)
(declare-fun InsidePredicate_25463_25463 (T@Field_25463_25464 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_24489 (T@Field_24489_24490 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_23481 (T@Field_23481_23482 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_22561 (T@Field_22561_22562 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_22143 (T@Field_22143_22144 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_16014 (T@Field_9821_9839 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun IsPredicateField_9821_3242 (T@Field_22067_3242) Bool)
(declare-fun IsWandField_9821_3242 (T@Field_22067_3242) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_22143_87201 (T@Field_22155_22160) Bool)
(declare-fun IsWandField_22143_87217 (T@Field_22155_22160) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_22143_16028 (T@Field_22143_16028) Bool)
(declare-fun IsWandField_22143_16028 (T@Field_22143_16028) Bool)
(declare-fun IsPredicateField_22143_53 (T@Field_22143_53) Bool)
(declare-fun IsWandField_22143_53 (T@Field_22143_53) Bool)
(declare-fun IsPredicateField_22143_3242 (T@Field_22143_3242) Bool)
(declare-fun IsWandField_22143_3242 (T@Field_22143_3242) Bool)
(declare-fun IsPredicateField_9913_86370 (T@Field_25476_25481) Bool)
(declare-fun IsWandField_9913_86386 (T@Field_25476_25481) Bool)
(declare-fun IsPredicateField_9913_16028 (T@Field_9913_16028) Bool)
(declare-fun IsWandField_9913_16028 (T@Field_9913_16028) Bool)
(declare-fun IsPredicateField_9913_53 (T@Field_9913_53) Bool)
(declare-fun IsWandField_9913_53 (T@Field_9913_53) Bool)
(declare-fun IsPredicateField_9913_3242 (T@Field_9913_3242) Bool)
(declare-fun IsWandField_9913_3242 (T@Field_9913_3242) Bool)
(declare-fun IsPredicateField_9888_85539 (T@Field_24502_24507) Bool)
(declare-fun IsWandField_9888_85555 (T@Field_24502_24507) Bool)
(declare-fun IsPredicateField_9888_16028 (T@Field_9888_16028) Bool)
(declare-fun IsWandField_9888_16028 (T@Field_9888_16028) Bool)
(declare-fun IsPredicateField_9888_53 (T@Field_9888_53) Bool)
(declare-fun IsWandField_9888_53 (T@Field_9888_53) Bool)
(declare-fun IsPredicateField_9888_3242 (T@Field_9888_3242) Bool)
(declare-fun IsWandField_9888_3242 (T@Field_9888_3242) Bool)
(declare-fun IsPredicateField_9863_84708 (T@Field_23494_23499) Bool)
(declare-fun IsWandField_9863_84724 (T@Field_23494_23499) Bool)
(declare-fun IsPredicateField_9863_16028 (T@Field_9863_16028) Bool)
(declare-fun IsWandField_9863_16028 (T@Field_9863_16028) Bool)
(declare-fun IsPredicateField_9863_53 (T@Field_9863_53) Bool)
(declare-fun IsWandField_9863_53 (T@Field_9863_53) Bool)
(declare-fun IsPredicateField_9863_3242 (T@Field_9863_3242) Bool)
(declare-fun IsWandField_9863_3242 (T@Field_9863_3242) Bool)
(declare-fun IsPredicateField_9838_83877 (T@Field_22574_22579) Bool)
(declare-fun IsWandField_9838_83893 (T@Field_22574_22579) Bool)
(declare-fun IsPredicateField_9838_16028 (T@Field_9838_16028) Bool)
(declare-fun IsWandField_9838_16028 (T@Field_9838_16028) Bool)
(declare-fun IsPredicateField_9838_53 (T@Field_9838_53) Bool)
(declare-fun IsWandField_9838_53 (T@Field_9838_53) Bool)
(declare-fun IsPredicateField_9838_3242 (T@Field_9838_3242) Bool)
(declare-fun IsWandField_9838_3242 (T@Field_9838_3242) Bool)
(declare-fun IsPredicateField_9821_83046 (T@Field_9821_22160) Bool)
(declare-fun IsWandField_9821_83062 (T@Field_9821_22160) Bool)
(declare-fun IsPredicateField_9821_16028 (T@Field_16027_16028) Bool)
(declare-fun IsWandField_9821_16028 (T@Field_16027_16028) Bool)
(declare-fun IsPredicateField_9821_53 (T@Field_16014_53) Bool)
(declare-fun IsWandField_9821_53 (T@Field_16014_53) Bool)
(declare-fun HasDirectPerm_22143_54681 (T@PolymorphicMapType_15975 T@Ref T@Field_22155_22160) Bool)
(declare-fun HasDirectPerm_22143_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_22143_16028) Bool)
(declare-fun HasDirectPerm_22143_53 (T@PolymorphicMapType_15975 T@Ref T@Field_22143_53) Bool)
(declare-fun HasDirectPerm_22143_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_22143_3242) Bool)
(declare-fun HasDirectPerm_9913_53503 (T@PolymorphicMapType_15975 T@Ref T@Field_25476_25481) Bool)
(declare-fun HasDirectPerm_9913_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_9913_16028) Bool)
(declare-fun HasDirectPerm_9913_53 (T@PolymorphicMapType_15975 T@Ref T@Field_9913_53) Bool)
(declare-fun HasDirectPerm_9913_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_9913_3242) Bool)
(declare-fun HasDirectPerm_9888_52362 (T@PolymorphicMapType_15975 T@Ref T@Field_24502_24507) Bool)
(declare-fun HasDirectPerm_9888_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_9888_16028) Bool)
(declare-fun HasDirectPerm_9888_53 (T@PolymorphicMapType_15975 T@Ref T@Field_9888_53) Bool)
(declare-fun HasDirectPerm_9888_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_9888_3242) Bool)
(declare-fun HasDirectPerm_9863_51221 (T@PolymorphicMapType_15975 T@Ref T@Field_23494_23499) Bool)
(declare-fun HasDirectPerm_9863_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_9863_16028) Bool)
(declare-fun HasDirectPerm_9863_53 (T@PolymorphicMapType_15975 T@Ref T@Field_9863_53) Bool)
(declare-fun HasDirectPerm_9863_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_9863_3242) Bool)
(declare-fun HasDirectPerm_9838_50080 (T@PolymorphicMapType_15975 T@Ref T@Field_22574_22579) Bool)
(declare-fun HasDirectPerm_9838_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_9838_16028) Bool)
(declare-fun HasDirectPerm_9838_53 (T@PolymorphicMapType_15975 T@Ref T@Field_9838_53) Bool)
(declare-fun HasDirectPerm_9838_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_9838_3242) Bool)
(declare-fun HasDirectPerm_9821_48939 (T@PolymorphicMapType_15975 T@Ref T@Field_9821_22160) Bool)
(declare-fun HasDirectPerm_9821_16028 (T@PolymorphicMapType_15975 T@Ref T@Field_16027_16028) Bool)
(declare-fun HasDirectPerm_9821_53 (T@PolymorphicMapType_15975 T@Ref T@Field_16014_53) Bool)
(declare-fun HasDirectPerm_9821_3242 (T@PolymorphicMapType_15975 T@Ref T@Field_22067_3242) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15975 T@PolymorphicMapType_15975 T@PolymorphicMapType_15975) Bool)
(declare-fun |Seq#Equal_26504| (T@Seq_26504 T@Seq_26504) Bool)
(declare-fun |Seq#Equal_3120| (T@Seq_3120 T@Seq_3120) Bool)
(declare-fun |Seq#ContainsTrigger_9941| (T@Seq_26504 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3120| (T@Seq_3120 Int) Bool)
(declare-fun getPredWandId_9888_9889 (T@Field_24489_24490) Int)
(declare-fun getPredWandId_9913_9914 (T@Field_25463_25464) Int)
(declare-fun getPredWandId_9838_9839 (T@Field_22561_22562) Int)
(declare-fun getPredWandId_9863_9864 (T@Field_23481_23482) Int)
(declare-fun |p1#trigger_9825| (T@PolymorphicMapType_15954 T@Field_22143_22144) Bool)
(declare-fun |p1#everUsed_9825| (T@Field_22143_22144) Bool)
(declare-fun |p1#sm| () T@Field_22155_22160)
(declare-fun |Seq#SkolemDiff_26504| (T@Seq_26504 T@Seq_26504) Int)
(declare-fun |Seq#SkolemDiff_3120| (T@Seq_3120 T@Seq_3120) Int)
(declare-fun InsidePredicate_25463_24489 (T@Field_25463_25464 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_25463_23481 (T@Field_25463_25464 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_25463_22561 (T@Field_25463_25464 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_25463_22143 (T@Field_25463_25464 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(declare-fun InsidePredicate_25463_16014 (T@Field_25463_25464 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_25463 (T@Field_24489_24490 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_23481 (T@Field_24489_24490 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_22561 (T@Field_24489_24490 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_22143 (T@Field_24489_24490 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(declare-fun InsidePredicate_24489_16014 (T@Field_24489_24490 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_25463 (T@Field_23481_23482 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_24489 (T@Field_23481_23482 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_22561 (T@Field_23481_23482 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_22143 (T@Field_23481_23482 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(declare-fun InsidePredicate_23481_16014 (T@Field_23481_23482 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_25463 (T@Field_22561_22562 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_24489 (T@Field_22561_22562 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_23481 (T@Field_22561_22562 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_22143 (T@Field_22561_22562 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(declare-fun InsidePredicate_22561_16014 (T@Field_22561_22562 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_25463 (T@Field_22143_22144 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_24489 (T@Field_22143_22144 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_23481 (T@Field_22143_22144 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_22561 (T@Field_22143_22144 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_22143_16014 (T@Field_22143_22144 T@FrameType T@Field_9821_9839 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_25463 (T@Field_9821_9839 T@FrameType T@Field_25463_25464 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_24489 (T@Field_9821_9839 T@FrameType T@Field_24489_24490 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_23481 (T@Field_9821_9839 T@FrameType T@Field_23481_23482 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_22561 (T@Field_9821_9839 T@FrameType T@Field_22561_22562 T@FrameType) Bool)
(declare-fun InsidePredicate_16014_22143 (T@Field_9821_9839 T@FrameType T@Field_22143_22144 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_26504) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_26504| s)) (= (|Seq#Length_26504| (|Seq#Drop_26504| s n)) (- (|Seq#Length_26504| s) n))) (=> (< (|Seq#Length_26504| s) n) (= (|Seq#Length_26504| (|Seq#Drop_26504| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_26504| (|Seq#Drop_26504| s n)) (|Seq#Length_26504| s))))
 :qid |stdinbpl.312:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_26504| (|Seq#Drop_26504| s n)))
 :pattern ( (|Seq#Length_26504| s) (|Seq#Drop_26504| s n))
)))
(assert (forall ((s@@0 T@Seq_3120) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3120| s@@0)) (= (|Seq#Length_3120| (|Seq#Drop_3120| s@@0 n@@0)) (- (|Seq#Length_3120| s@@0) n@@0))) (=> (< (|Seq#Length_3120| s@@0) n@@0) (= (|Seq#Length_3120| (|Seq#Drop_3120| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3120| (|Seq#Drop_3120| s@@0 n@@0)) (|Seq#Length_3120| s@@0))))
 :qid |stdinbpl.312:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3120| (|Seq#Drop_3120| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3120| s@@0) (|Seq#Drop_3120| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15954) (Heap1 T@PolymorphicMapType_15954) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15954) (Mask T@PolymorphicMapType_15975) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15954) (Heap1@@0 T@PolymorphicMapType_15954) (Heap2 T@PolymorphicMapType_15954) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25476_25481) ) (!  (not (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25463_25464) ) (!  (not (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9913_3242) ) (!  (not (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9913_16028) ) (!  (not (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9913_53) ) (!  (not (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24502_24507) ) (!  (not (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24489_24490) ) (!  (not (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9888_3242) ) (!  (not (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9888_16028) ) (!  (not (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9888_53) ) (!  (not (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_23494_23499) ) (!  (not (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_23481_23482) ) (!  (not (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9863_3242) ) (!  (not (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9863_16028) ) (!  (not (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9863_53) ) (!  (not (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_22574_22579) ) (!  (not (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_22561_22562) ) (!  (not (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9838_3242) ) (!  (not (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_9838_16028) ) (!  (not (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_9838_53) ) (!  (not (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_22155_22160) ) (!  (not (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_22143_22144) ) (!  (not (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_22143_3242) ) (!  (not (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_22143_16028) ) (!  (not (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_22143_53) ) (!  (not (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_9821_22160) ) (!  (not (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_9821_9839) ) (!  (not (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_22067_3242) ) (!  (not (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_16027_16028) ) (!  (not (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_16014_53) ) (!  (not (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_9888_9889 (p4 r_1 i))
 :qid |stdinbpl.745:15|
 :skolemid |72|
 :pattern ( (p4 r_1 i))
)))
(assert (forall ((r_1@@0 T@Ref) (i@@0 Int) ) (! (IsPredicateField_9913_9914 (p5 r_1@@0 i@@0))
 :qid |stdinbpl.799:15|
 :skolemid |78|
 :pattern ( (p5 r_1@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15954) (r_1@@1 T@Ref) (i@@1 Int) ) (! (|p4#everUsed_9888| (p4 r_1@@1 i@@1))
 :qid |stdinbpl.764:15|
 :skolemid |76|
 :pattern ( (|p4#trigger_9888| Heap@@0 (p4 r_1@@1 i@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15954) (r_1@@2 T@Ref) (i@@2 Int) ) (! (|p5#everUsed_9913| (p5 r_1@@2 i@@2))
 :qid |stdinbpl.818:15|
 :skolemid |82|
 :pattern ( (|p5#trigger_9913| Heap@@1 (p5 r_1@@2 i@@2)))
)))
(assert (forall ((s@@1 T@Seq_26504) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_26504| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_26504| (|Seq#Drop_26504| s@@1 n@@1) j) (|Seq#Index_26504| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.333:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_26504| (|Seq#Drop_26504| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3120) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3120| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3120| (|Seq#Drop_3120| s@@2 n@@2) j@@0) (|Seq#Index_3120| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.333:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3120| (|Seq#Drop_3120| s@@2 n@@2) j@@0))
)))
(assert (IsPredicateField_9825_9826 p1))
(assert (= (|Seq#Length_26504| |Seq#Empty_26504|) 0))
(assert (= (|Seq#Length_3120| |Seq#Empty_3120|) 0))
(assert (= (getPredWandId_9825_9826 p1) 0))
(assert (forall ((r_1@@3 T@Ref) ) (! (IsPredicateField_9838_9839 (p2 r_1@@3))
 :qid |stdinbpl.632:15|
 :skolemid |60|
 :pattern ( (p2 r_1@@3))
)))
(assert (forall ((r_1@@4 T@Ref) ) (! (IsPredicateField_9863_9864 (p3_1 r_1@@4))
 :qid |stdinbpl.686:15|
 :skolemid |66|
 :pattern ( (p3_1 r_1@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15954) (r_1@@5 T@Ref) ) (! (|p2#everUsed_9838| (p2 r_1@@5))
 :qid |stdinbpl.651:15|
 :skolemid |64|
 :pattern ( (|p2#trigger_9838| Heap@@2 (p2 r_1@@5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15954) (r_1@@6 T@Ref) ) (! (|p3#everUsed_9863| (p3_1 r_1@@6))
 :qid |stdinbpl.705:15|
 :skolemid |70|
 :pattern ( (|p3#trigger_9863| Heap@@3 (p3_1 r_1@@6)))
)))
(assert (forall ((s@@3 T@Seq_26504) (i@@3 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_26504| s@@3))) (and (=> (= i@@3 n@@3) (= (|Seq#Index_26504| (|Seq#Update_26504| s@@3 i@@3 v) n@@3) v)) (=> (not (= i@@3 n@@3)) (= (|Seq#Index_26504| (|Seq#Update_26504| s@@3 i@@3 v) n@@3) (|Seq#Index_26504| s@@3 n@@3)))))
 :qid |stdinbpl.288:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_26504| (|Seq#Update_26504| s@@3 i@@3 v) n@@3))
 :pattern ( (|Seq#Index_26504| s@@3 n@@3) (|Seq#Update_26504| s@@3 i@@3 v))
)))
(assert (forall ((s@@4 T@Seq_3120) (i@@4 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3120| s@@4))) (and (=> (= i@@4 n@@4) (= (|Seq#Index_3120| (|Seq#Update_3120| s@@4 i@@4 v@@0) n@@4) v@@0)) (=> (not (= i@@4 n@@4)) (= (|Seq#Index_3120| (|Seq#Update_3120| s@@4 i@@4 v@@0) n@@4) (|Seq#Index_3120| s@@4 n@@4)))))
 :qid |stdinbpl.288:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3120| (|Seq#Update_3120| s@@4 i@@4 v@@0) n@@4))
 :pattern ( (|Seq#Index_3120| s@@4 n@@4) (|Seq#Update_3120| s@@4 i@@4 v@@0))
)))
(assert (forall ((s@@5 T@Seq_26504) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_26504| s@@5)) (= (|Seq#Length_26504| (|Seq#Take_26504| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_26504| s@@5) n@@5) (= (|Seq#Length_26504| (|Seq#Take_26504| s@@5 n@@5)) (|Seq#Length_26504| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_26504| (|Seq#Take_26504| s@@5 n@@5)) 0)))
 :qid |stdinbpl.299:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_26504| (|Seq#Take_26504| s@@5 n@@5)))
 :pattern ( (|Seq#Take_26504| s@@5 n@@5) (|Seq#Length_26504| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3120) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3120| s@@6)) (= (|Seq#Length_3120| (|Seq#Take_3120| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3120| s@@6) n@@6) (= (|Seq#Length_3120| (|Seq#Take_3120| s@@6 n@@6)) (|Seq#Length_3120| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3120| (|Seq#Take_3120| s@@6 n@@6)) 0)))
 :qid |stdinbpl.299:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3120| (|Seq#Take_3120| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3120| s@@6 n@@6) (|Seq#Length_3120| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3120| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.573:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3120| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_26504) (x T@Ref) ) (!  (=> (|Seq#Contains_9941| s@@7 x) (and (and (<= 0 (|Seq#Skolem_9941| s@@7 x)) (< (|Seq#Skolem_9941| s@@7 x) (|Seq#Length_26504| s@@7))) (= (|Seq#Index_26504| s@@7 (|Seq#Skolem_9941| s@@7 x)) x)))
 :qid |stdinbpl.431:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_9941| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3120) (x@@0 Int) ) (!  (=> (|Seq#Contains_3120| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3120| s@@8 x@@0)) (< (|Seq#Skolem_3120| s@@8 x@@0) (|Seq#Length_3120| s@@8))) (= (|Seq#Index_3120| s@@8 (|Seq#Skolem_3120| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.431:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3120| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_26504) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_26504| s@@9 n@@7) s@@9))
 :qid |stdinbpl.415:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_26504| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3120) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3120| s@@10 n@@8) s@@10))
 :qid |stdinbpl.415:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3120| s@@10 n@@8))
)))
(assert (forall ((i@@5 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@5 j@@1) (- i@@5 j@@1))
 :qid |stdinbpl.268:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@5 j@@1))
)))
(assert (forall ((i@@6 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@6 j@@2) (+ i@@6 j@@2))
 :qid |stdinbpl.266:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@6 j@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15954) (ExhaleHeap T@PolymorphicMapType_15954) (Mask@@0 T@PolymorphicMapType_15975) (pm_f_30 T@Field_22143_22144) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22143_9839 Mask@@0 null pm_f_30) (IsPredicateField_9825_9826 pm_f_30)) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@4) null (PredicateMaskField_9825 pm_f_30)) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap) null (PredicateMaskField_9825 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_9825_9826 pm_f_30) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap) null (PredicateMaskField_9825 pm_f_30)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15954) (ExhaleHeap@@0 T@PolymorphicMapType_15954) (Mask@@1 T@PolymorphicMapType_15975) (pm_f_30@@0 T@Field_25463_25464) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9913_9914 Mask@@1 null pm_f_30@@0) (IsPredicateField_9913_9914 pm_f_30@@0)) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@5) null (PredicateMaskField_9913 pm_f_30@@0)) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@0) null (PredicateMaskField_9913 pm_f_30@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9913_9914 pm_f_30@@0) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@0) null (PredicateMaskField_9913 pm_f_30@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15954) (ExhaleHeap@@1 T@PolymorphicMapType_15954) (Mask@@2 T@PolymorphicMapType_15975) (pm_f_30@@1 T@Field_24489_24490) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9888_9889 Mask@@2 null pm_f_30@@1) (IsPredicateField_9888_9889 pm_f_30@@1)) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@6) null (PredicateMaskField_9888 pm_f_30@@1)) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@1) null (PredicateMaskField_9888 pm_f_30@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9888_9889 pm_f_30@@1) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@1) null (PredicateMaskField_9888 pm_f_30@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15954) (ExhaleHeap@@2 T@PolymorphicMapType_15954) (Mask@@3 T@PolymorphicMapType_15975) (pm_f_30@@2 T@Field_23481_23482) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_9863_9864 Mask@@3 null pm_f_30@@2) (IsPredicateField_9863_9864 pm_f_30@@2)) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@7) null (PredicateMaskField_9863 pm_f_30@@2)) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@2) null (PredicateMaskField_9863 pm_f_30@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsPredicateField_9863_9864 pm_f_30@@2) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@2) null (PredicateMaskField_9863 pm_f_30@@2)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15954) (ExhaleHeap@@3 T@PolymorphicMapType_15954) (Mask@@4 T@PolymorphicMapType_15975) (pm_f_30@@3 T@Field_22561_22562) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9838_9839 Mask@@4 null pm_f_30@@3) (IsPredicateField_9838_9839 pm_f_30@@3)) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@8) null (PredicateMaskField_9838 pm_f_30@@3)) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@3) null (PredicateMaskField_9838 pm_f_30@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9838_9839 pm_f_30@@3) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@3) null (PredicateMaskField_9838 pm_f_30@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15954) (ExhaleHeap@@4 T@PolymorphicMapType_15954) (Mask@@5 T@PolymorphicMapType_15975) (pm_f_30@@4 T@Field_9821_9839) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9821_9839 Mask@@5 null pm_f_30@@4) (IsPredicateField_9821_54969 pm_f_30@@4)) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@9) null (PredicateMaskField_9821 pm_f_30@@4)) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@4) null (PredicateMaskField_9821 pm_f_30@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_9821_54969 pm_f_30@@4) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@4) null (PredicateMaskField_9821 pm_f_30@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15954) (ExhaleHeap@@5 T@PolymorphicMapType_15954) (Mask@@6 T@PolymorphicMapType_15975) (pm_f_30@@5 T@Field_22143_22144) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_22143_9839 Mask@@6 null pm_f_30@@5) (IsWandField_22143_66710 pm_f_30@@5)) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@10) null (WandMaskField_22143 pm_f_30@@5)) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@5) null (WandMaskField_22143 pm_f_30@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_22143_66710 pm_f_30@@5) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@5) null (WandMaskField_22143 pm_f_30@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15954) (ExhaleHeap@@6 T@PolymorphicMapType_15954) (Mask@@7 T@PolymorphicMapType_15975) (pm_f_30@@6 T@Field_25463_25464) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_9913_9914 Mask@@7 null pm_f_30@@6) (IsWandField_9913_66353 pm_f_30@@6)) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@11) null (WandMaskField_9913 pm_f_30@@6)) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@6) null (WandMaskField_9913 pm_f_30@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_9913_66353 pm_f_30@@6) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@6) null (WandMaskField_9913 pm_f_30@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15954) (ExhaleHeap@@7 T@PolymorphicMapType_15954) (Mask@@8 T@PolymorphicMapType_15975) (pm_f_30@@7 T@Field_24489_24490) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_9888_9889 Mask@@8 null pm_f_30@@7) (IsWandField_9888_65996 pm_f_30@@7)) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@12) null (WandMaskField_9888 pm_f_30@@7)) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@7) null (WandMaskField_9888 pm_f_30@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@8) (IsWandField_9888_65996 pm_f_30@@7) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@7) null (WandMaskField_9888 pm_f_30@@7)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15954) (ExhaleHeap@@8 T@PolymorphicMapType_15954) (Mask@@9 T@PolymorphicMapType_15975) (pm_f_30@@8 T@Field_23481_23482) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_9863_9864 Mask@@9 null pm_f_30@@8) (IsWandField_9863_65639 pm_f_30@@8)) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@13) null (WandMaskField_9863 pm_f_30@@8)) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@8) null (WandMaskField_9863 pm_f_30@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@9) (IsWandField_9863_65639 pm_f_30@@8) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@8) null (WandMaskField_9863 pm_f_30@@8)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15954) (ExhaleHeap@@9 T@PolymorphicMapType_15954) (Mask@@10 T@PolymorphicMapType_15975) (pm_f_30@@9 T@Field_22561_22562) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_9838_9839 Mask@@10 null pm_f_30@@9) (IsWandField_9838_65282 pm_f_30@@9)) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@14) null (WandMaskField_9838 pm_f_30@@9)) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@9) null (WandMaskField_9838 pm_f_30@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@10) (IsWandField_9838_65282 pm_f_30@@9) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@9) null (WandMaskField_9838 pm_f_30@@9)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15954) (ExhaleHeap@@10 T@PolymorphicMapType_15954) (Mask@@11 T@PolymorphicMapType_15975) (pm_f_30@@10 T@Field_9821_9839) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_9821_9839 Mask@@11 null pm_f_30@@10) (IsWandField_9821_64925 pm_f_30@@10)) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@15) null (WandMaskField_9821 pm_f_30@@10)) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@10) null (WandMaskField_9821 pm_f_30@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@11) (IsWandField_9821_64925 pm_f_30@@10) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@10) null (WandMaskField_9821 pm_f_30@@10)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_9941| (|Seq#Singleton_26504| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.556:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_9941| (|Seq#Singleton_26504| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3120| (|Seq#Singleton_3120| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.556:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3120| (|Seq#Singleton_3120| x@@2) y@@0))
)))
(assert (forall ((r_1@@7 T@Ref) (i@@7 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (p4 r_1@@7 i@@7) (p4 r2 i2)) (and (= r_1@@7 r2) (= i@@7 i2)))
 :qid |stdinbpl.755:15|
 :skolemid |74|
 :pattern ( (p4 r_1@@7 i@@7) (p4 r2 i2))
)))
(assert (forall ((r_1@@8 T@Ref) (i@@8 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|p4#sm| r_1@@8 i@@8) (|p4#sm| r2@@0 i2@@0)) (and (= r_1@@8 r2@@0) (= i@@8 i2@@0)))
 :qid |stdinbpl.759:15|
 :skolemid |75|
 :pattern ( (|p4#sm| r_1@@8 i@@8) (|p4#sm| r2@@0 i2@@0))
)))
(assert (forall ((r_1@@9 T@Ref) (i@@9 Int) (r2@@1 T@Ref) (i2@@1 Int) ) (!  (=> (= (p5 r_1@@9 i@@9) (p5 r2@@1 i2@@1)) (and (= r_1@@9 r2@@1) (= i@@9 i2@@1)))
 :qid |stdinbpl.809:15|
 :skolemid |80|
 :pattern ( (p5 r_1@@9 i@@9) (p5 r2@@1 i2@@1))
)))
(assert (forall ((r_1@@10 T@Ref) (i@@10 Int) (r2@@2 T@Ref) (i2@@2 Int) ) (!  (=> (= (|p5#sm| r_1@@10 i@@10) (|p5#sm| r2@@2 i2@@2)) (and (= r_1@@10 r2@@2) (= i@@10 i2@@2)))
 :qid |stdinbpl.813:15|
 :skolemid |81|
 :pattern ( (|p5#sm| r_1@@10 i@@10) (|p5#sm| r2@@2 i2@@2))
)))
(assert (forall ((s@@11 T@Seq_26504) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_26504| s@@11))) (= (|Seq#Index_26504| (|Seq#Take_26504| s@@11 n@@9) j@@3) (|Seq#Index_26504| s@@11 j@@3)))
 :qid |stdinbpl.307:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_26504| (|Seq#Take_26504| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_26504| s@@11 j@@3) (|Seq#Take_26504| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3120) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3120| s@@12))) (= (|Seq#Index_3120| (|Seq#Take_3120| s@@12 n@@10) j@@4) (|Seq#Index_3120| s@@12 j@@4)))
 :qid |stdinbpl.307:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3120| (|Seq#Take_3120| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3120| s@@12 j@@4) (|Seq#Take_3120| s@@12 n@@10))
)))
(assert (forall ((r_1@@11 T@Ref) (r2@@3 T@Ref) ) (!  (=> (= (p2 r_1@@11) (p2 r2@@3)) (= r_1@@11 r2@@3))
 :qid |stdinbpl.642:15|
 :skolemid |62|
 :pattern ( (p2 r_1@@11) (p2 r2@@3))
)))
(assert (forall ((r_1@@12 T@Ref) (r2@@4 T@Ref) ) (!  (=> (= (|p2#sm| r_1@@12) (|p2#sm| r2@@4)) (= r_1@@12 r2@@4))
 :qid |stdinbpl.646:15|
 :skolemid |63|
 :pattern ( (|p2#sm| r_1@@12) (|p2#sm| r2@@4))
)))
(assert (forall ((r_1@@13 T@Ref) (r2@@5 T@Ref) ) (!  (=> (= (p3_1 r_1@@13) (p3_1 r2@@5)) (= r_1@@13 r2@@5))
 :qid |stdinbpl.696:15|
 :skolemid |68|
 :pattern ( (p3_1 r_1@@13) (p3_1 r2@@5))
)))
(assert (forall ((r_1@@14 T@Ref) (r2@@6 T@Ref) ) (!  (=> (= (|p3#sm| r_1@@14) (|p3#sm| r2@@6)) (= r_1@@14 r2@@6))
 :qid |stdinbpl.700:15|
 :skolemid |69|
 :pattern ( (|p3#sm| r_1@@14) (|p3#sm| r2@@6))
)))
(assert (forall ((s@@13 T@Seq_26504) (t T@Seq_26504) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_26504| s@@13))) (< n@@11 (|Seq#Length_26504| (|Seq#Append_26504| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_26504| s@@13)) (|Seq#Length_26504| s@@13)) n@@11) (= (|Seq#Take_26504| (|Seq#Append_26504| s@@13 t) n@@11) (|Seq#Append_26504| s@@13 (|Seq#Take_26504| t (|Seq#Sub| n@@11 (|Seq#Length_26504| s@@13)))))))
 :qid |stdinbpl.392:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_26504| (|Seq#Append_26504| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3120) (t@@0 T@Seq_3120) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3120| s@@14))) (< n@@12 (|Seq#Length_3120| (|Seq#Append_3120| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3120| s@@14)) (|Seq#Length_3120| s@@14)) n@@12) (= (|Seq#Take_3120| (|Seq#Append_3120| s@@14 t@@0) n@@12) (|Seq#Append_3120| s@@14 (|Seq#Take_3120| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3120| s@@14)))))))
 :qid |stdinbpl.392:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3120| (|Seq#Append_3120| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15954) (ExhaleHeap@@11 T@PolymorphicMapType_15954) (Mask@@12 T@PolymorphicMapType_15975) (o_7 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@16) o_7 $allocated) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@11) o_7 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@11) o_7 $allocated))
)))
(assert (forall ((p T@Field_25463_25464) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25463_25463 p v_1 p w))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25463_25463 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24489_24490) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24489_24489 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24489_24489 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_23481_23482) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_23481_23481 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23481_23481 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_22561_22562) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_22561_22561 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22561_22561 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_22143_22144) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_22143_22143 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22143_22143 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_9821_9839) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_16014_16014 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16014_16014 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert (forall ((s0 T@Seq_26504) (s1 T@Seq_26504) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_26504|)) (not (= s1 |Seq#Empty_26504|))) (<= (|Seq#Length_26504| s0) n@@13)) (< n@@13 (|Seq#Length_26504| (|Seq#Append_26504| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_26504| s0)) (|Seq#Length_26504| s0)) n@@13) (= (|Seq#Index_26504| (|Seq#Append_26504| s0 s1) n@@13) (|Seq#Index_26504| s1 (|Seq#Sub| n@@13 (|Seq#Length_26504| s0))))))
 :qid |stdinbpl.279:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_26504| (|Seq#Append_26504| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3120) (s1@@0 T@Seq_3120) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3120|)) (not (= s1@@0 |Seq#Empty_3120|))) (<= (|Seq#Length_3120| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3120| (|Seq#Append_3120| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3120| s0@@0)) (|Seq#Length_3120| s0@@0)) n@@14) (= (|Seq#Index_3120| (|Seq#Append_3120| s0@@0 s1@@0) n@@14) (|Seq#Index_3120| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3120| s0@@0))))))
 :qid |stdinbpl.279:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3120| (|Seq#Append_3120| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9821_3242 f_7)))
(assert  (not (IsWandField_9821_3242 f_7)))
(assert  (not (IsPredicateField_9821_3242 g)))
(assert  (not (IsWandField_9821_3242 g)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15954) (ExhaleHeap@@12 T@PolymorphicMapType_15954) (Mask@@13 T@PolymorphicMapType_15975) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13) (succHeap Heap@@17 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15975) (o_2@@29 T@Ref) (f_4@@29 T@Field_22155_22160) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| Mask@@14) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_22143_87201 f_4@@29))) (not (IsWandField_22143_87217 f_4@@29))) (<= (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| Mask@@14) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| Mask@@14) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15975) (o_2@@30 T@Ref) (f_4@@30 T@Field_22143_16028) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| Mask@@15) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_22143_16028 f_4@@30))) (not (IsWandField_22143_16028 f_4@@30))) (<= (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| Mask@@15) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| Mask@@15) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15975) (o_2@@31 T@Ref) (f_4@@31 T@Field_22143_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| Mask@@16) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_22143_53 f_4@@31))) (not (IsWandField_22143_53 f_4@@31))) (<= (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| Mask@@16) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| Mask@@16) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15975) (o_2@@32 T@Ref) (f_4@@32 T@Field_22143_22144) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| Mask@@17) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9825_9826 f_4@@32))) (not (IsWandField_22143_66710 f_4@@32))) (<= (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| Mask@@17) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| Mask@@17) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15975) (o_2@@33 T@Ref) (f_4@@33 T@Field_22143_3242) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| Mask@@18) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_22143_3242 f_4@@33))) (not (IsWandField_22143_3242 f_4@@33))) (<= (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| Mask@@18) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| Mask@@18) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15975) (o_2@@34 T@Ref) (f_4@@34 T@Field_25476_25481) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| Mask@@19) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9913_86370 f_4@@34))) (not (IsWandField_9913_86386 f_4@@34))) (<= (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| Mask@@19) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| Mask@@19) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15975) (o_2@@35 T@Ref) (f_4@@35 T@Field_9913_16028) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| Mask@@20) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9913_16028 f_4@@35))) (not (IsWandField_9913_16028 f_4@@35))) (<= (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| Mask@@20) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| Mask@@20) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15975) (o_2@@36 T@Ref) (f_4@@36 T@Field_9913_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| Mask@@21) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9913_53 f_4@@36))) (not (IsWandField_9913_53 f_4@@36))) (<= (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| Mask@@21) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| Mask@@21) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15975) (o_2@@37 T@Ref) (f_4@@37 T@Field_25463_25464) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| Mask@@22) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9913_9914 f_4@@37))) (not (IsWandField_9913_66353 f_4@@37))) (<= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| Mask@@22) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| Mask@@22) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15975) (o_2@@38 T@Ref) (f_4@@38 T@Field_9913_3242) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| Mask@@23) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9913_3242 f_4@@38))) (not (IsWandField_9913_3242 f_4@@38))) (<= (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| Mask@@23) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| Mask@@23) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15975) (o_2@@39 T@Ref) (f_4@@39 T@Field_24502_24507) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| Mask@@24) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9888_85539 f_4@@39))) (not (IsWandField_9888_85555 f_4@@39))) (<= (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| Mask@@24) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| Mask@@24) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15975) (o_2@@40 T@Ref) (f_4@@40 T@Field_9888_16028) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| Mask@@25) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_9888_16028 f_4@@40))) (not (IsWandField_9888_16028 f_4@@40))) (<= (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| Mask@@25) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| Mask@@25) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15975) (o_2@@41 T@Ref) (f_4@@41 T@Field_9888_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| Mask@@26) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_9888_53 f_4@@41))) (not (IsWandField_9888_53 f_4@@41))) (<= (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| Mask@@26) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| Mask@@26) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15975) (o_2@@42 T@Ref) (f_4@@42 T@Field_24489_24490) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| Mask@@27) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9888_9889 f_4@@42))) (not (IsWandField_9888_65996 f_4@@42))) (<= (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| Mask@@27) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| Mask@@27) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15975) (o_2@@43 T@Ref) (f_4@@43 T@Field_9888_3242) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| Mask@@28) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_9888_3242 f_4@@43))) (not (IsWandField_9888_3242 f_4@@43))) (<= (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| Mask@@28) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| Mask@@28) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15975) (o_2@@44 T@Ref) (f_4@@44 T@Field_23494_23499) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| Mask@@29) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_9863_84708 f_4@@44))) (not (IsWandField_9863_84724 f_4@@44))) (<= (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| Mask@@29) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| Mask@@29) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15975) (o_2@@45 T@Ref) (f_4@@45 T@Field_9863_16028) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| Mask@@30) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_9863_16028 f_4@@45))) (not (IsWandField_9863_16028 f_4@@45))) (<= (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| Mask@@30) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| Mask@@30) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15975) (o_2@@46 T@Ref) (f_4@@46 T@Field_9863_53) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| Mask@@31) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_9863_53 f_4@@46))) (not (IsWandField_9863_53 f_4@@46))) (<= (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| Mask@@31) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| Mask@@31) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15975) (o_2@@47 T@Ref) (f_4@@47 T@Field_23481_23482) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| Mask@@32) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9863_9864 f_4@@47))) (not (IsWandField_9863_65639 f_4@@47))) (<= (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| Mask@@32) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| Mask@@32) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15975) (o_2@@48 T@Ref) (f_4@@48 T@Field_9863_3242) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| Mask@@33) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_9863_3242 f_4@@48))) (not (IsWandField_9863_3242 f_4@@48))) (<= (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| Mask@@33) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| Mask@@33) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15975) (o_2@@49 T@Ref) (f_4@@49 T@Field_22574_22579) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| Mask@@34) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9838_83877 f_4@@49))) (not (IsWandField_9838_83893 f_4@@49))) (<= (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| Mask@@34) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| Mask@@34) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15975) (o_2@@50 T@Ref) (f_4@@50 T@Field_9838_16028) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| Mask@@35) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_9838_16028 f_4@@50))) (not (IsWandField_9838_16028 f_4@@50))) (<= (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| Mask@@35) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| Mask@@35) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15975) (o_2@@51 T@Ref) (f_4@@51 T@Field_9838_53) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| Mask@@36) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_9838_53 f_4@@51))) (not (IsWandField_9838_53 f_4@@51))) (<= (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| Mask@@36) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| Mask@@36) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15975) (o_2@@52 T@Ref) (f_4@@52 T@Field_22561_22562) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| Mask@@37) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_9838_9839 f_4@@52))) (not (IsWandField_9838_65282 f_4@@52))) (<= (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| Mask@@37) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| Mask@@37) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15975) (o_2@@53 T@Ref) (f_4@@53 T@Field_9838_3242) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| Mask@@38) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_9838_3242 f_4@@53))) (not (IsWandField_9838_3242 f_4@@53))) (<= (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| Mask@@38) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| Mask@@38) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15975) (o_2@@54 T@Ref) (f_4@@54 T@Field_9821_22160) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| Mask@@39) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_9821_83046 f_4@@54))) (not (IsWandField_9821_83062 f_4@@54))) (<= (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| Mask@@39) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| Mask@@39) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15975) (o_2@@55 T@Ref) (f_4@@55 T@Field_16027_16028) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| Mask@@40) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_9821_16028 f_4@@55))) (not (IsWandField_9821_16028 f_4@@55))) (<= (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| Mask@@40) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| Mask@@40) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_15975) (o_2@@56 T@Ref) (f_4@@56 T@Field_16014_53) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| Mask@@41) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_9821_53 f_4@@56))) (not (IsWandField_9821_53 f_4@@56))) (<= (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| Mask@@41) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| Mask@@41) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_15975) (o_2@@57 T@Ref) (f_4@@57 T@Field_9821_9839) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| Mask@@42) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_9821_54969 f_4@@57))) (not (IsWandField_9821_64925 f_4@@57))) (<= (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| Mask@@42) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| Mask@@42) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_15975) (o_2@@58 T@Ref) (f_4@@58 T@Field_22067_3242) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@@43) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_9821_3242 f_4@@58))) (not (IsWandField_9821_3242 f_4@@58))) (<= (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@@43) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@@43) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_15975) (o_2@@59 T@Ref) (f_4@@59 T@Field_22155_22160) ) (! (= (HasDirectPerm_22143_54681 Mask@@44 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| Mask@@44) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22143_54681 Mask@@44 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_15975) (o_2@@60 T@Ref) (f_4@@60 T@Field_22143_16028) ) (! (= (HasDirectPerm_22143_16028 Mask@@45 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| Mask@@45) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22143_16028 Mask@@45 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_15975) (o_2@@61 T@Ref) (f_4@@61 T@Field_22143_53) ) (! (= (HasDirectPerm_22143_53 Mask@@46 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| Mask@@46) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22143_53 Mask@@46 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_15975) (o_2@@62 T@Ref) (f_4@@62 T@Field_22143_22144) ) (! (= (HasDirectPerm_22143_9839 Mask@@47 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| Mask@@47) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22143_9839 Mask@@47 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_15975) (o_2@@63 T@Ref) (f_4@@63 T@Field_22143_3242) ) (! (= (HasDirectPerm_22143_3242 Mask@@48 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| Mask@@48) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22143_3242 Mask@@48 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_15975) (o_2@@64 T@Ref) (f_4@@64 T@Field_25476_25481) ) (! (= (HasDirectPerm_9913_53503 Mask@@49 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| Mask@@49) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9913_53503 Mask@@49 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_15975) (o_2@@65 T@Ref) (f_4@@65 T@Field_9913_16028) ) (! (= (HasDirectPerm_9913_16028 Mask@@50 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| Mask@@50) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9913_16028 Mask@@50 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_15975) (o_2@@66 T@Ref) (f_4@@66 T@Field_9913_53) ) (! (= (HasDirectPerm_9913_53 Mask@@51 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| Mask@@51) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9913_53 Mask@@51 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_15975) (o_2@@67 T@Ref) (f_4@@67 T@Field_25463_25464) ) (! (= (HasDirectPerm_9913_9914 Mask@@52 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| Mask@@52) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9913_9914 Mask@@52 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_15975) (o_2@@68 T@Ref) (f_4@@68 T@Field_9913_3242) ) (! (= (HasDirectPerm_9913_3242 Mask@@53 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| Mask@@53) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9913_3242 Mask@@53 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_15975) (o_2@@69 T@Ref) (f_4@@69 T@Field_24502_24507) ) (! (= (HasDirectPerm_9888_52362 Mask@@54 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| Mask@@54) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_52362 Mask@@54 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_15975) (o_2@@70 T@Ref) (f_4@@70 T@Field_9888_16028) ) (! (= (HasDirectPerm_9888_16028 Mask@@55 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| Mask@@55) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_16028 Mask@@55 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_15975) (o_2@@71 T@Ref) (f_4@@71 T@Field_9888_53) ) (! (= (HasDirectPerm_9888_53 Mask@@56 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| Mask@@56) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_53 Mask@@56 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_15975) (o_2@@72 T@Ref) (f_4@@72 T@Field_24489_24490) ) (! (= (HasDirectPerm_9888_9889 Mask@@57 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| Mask@@57) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_9889 Mask@@57 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_15975) (o_2@@73 T@Ref) (f_4@@73 T@Field_9888_3242) ) (! (= (HasDirectPerm_9888_3242 Mask@@58 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| Mask@@58) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9888_3242 Mask@@58 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_15975) (o_2@@74 T@Ref) (f_4@@74 T@Field_23494_23499) ) (! (= (HasDirectPerm_9863_51221 Mask@@59 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| Mask@@59) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9863_51221 Mask@@59 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_15975) (o_2@@75 T@Ref) (f_4@@75 T@Field_9863_16028) ) (! (= (HasDirectPerm_9863_16028 Mask@@60 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| Mask@@60) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9863_16028 Mask@@60 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_15975) (o_2@@76 T@Ref) (f_4@@76 T@Field_9863_53) ) (! (= (HasDirectPerm_9863_53 Mask@@61 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| Mask@@61) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9863_53 Mask@@61 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_15975) (o_2@@77 T@Ref) (f_4@@77 T@Field_23481_23482) ) (! (= (HasDirectPerm_9863_9864 Mask@@62 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| Mask@@62) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9863_9864 Mask@@62 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_15975) (o_2@@78 T@Ref) (f_4@@78 T@Field_9863_3242) ) (! (= (HasDirectPerm_9863_3242 Mask@@63 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| Mask@@63) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9863_3242 Mask@@63 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_15975) (o_2@@79 T@Ref) (f_4@@79 T@Field_22574_22579) ) (! (= (HasDirectPerm_9838_50080 Mask@@64 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| Mask@@64) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9838_50080 Mask@@64 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_15975) (o_2@@80 T@Ref) (f_4@@80 T@Field_9838_16028) ) (! (= (HasDirectPerm_9838_16028 Mask@@65 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| Mask@@65) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9838_16028 Mask@@65 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_15975) (o_2@@81 T@Ref) (f_4@@81 T@Field_9838_53) ) (! (= (HasDirectPerm_9838_53 Mask@@66 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| Mask@@66) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9838_53 Mask@@66 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_15975) (o_2@@82 T@Ref) (f_4@@82 T@Field_22561_22562) ) (! (= (HasDirectPerm_9838_9839 Mask@@67 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| Mask@@67) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9838_9839 Mask@@67 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_15975) (o_2@@83 T@Ref) (f_4@@83 T@Field_9838_3242) ) (! (= (HasDirectPerm_9838_3242 Mask@@68 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| Mask@@68) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9838_3242 Mask@@68 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_15975) (o_2@@84 T@Ref) (f_4@@84 T@Field_9821_22160) ) (! (= (HasDirectPerm_9821_48939 Mask@@69 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| Mask@@69) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9821_48939 Mask@@69 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_15975) (o_2@@85 T@Ref) (f_4@@85 T@Field_16027_16028) ) (! (= (HasDirectPerm_9821_16028 Mask@@70 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| Mask@@70) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9821_16028 Mask@@70 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_15975) (o_2@@86 T@Ref) (f_4@@86 T@Field_16014_53) ) (! (= (HasDirectPerm_9821_53 Mask@@71 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| Mask@@71) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9821_53 Mask@@71 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_15975) (o_2@@87 T@Ref) (f_4@@87 T@Field_9821_9839) ) (! (= (HasDirectPerm_9821_9839 Mask@@72 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| Mask@@72) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9821_9839 Mask@@72 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_15975) (o_2@@88 T@Ref) (f_4@@88 T@Field_22067_3242) ) (! (= (HasDirectPerm_9821_3242 Mask@@73 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@@73) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9821_3242 Mask@@73 o_2@@88 f_4@@88))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.198:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3120| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.571:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3120| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15954) (ExhaleHeap@@13 T@PolymorphicMapType_15954) (Mask@@74 T@PolymorphicMapType_15975) (o_7@@0 T@Ref) (f_13 T@Field_22155_22160) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@74) (=> (HasDirectPerm_22143_54681 Mask@@74 o_7@@0 f_13) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@18) o_7@@0 f_13) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@13) o_7@@0 f_13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@74) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@13) o_7@@0 f_13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15954) (ExhaleHeap@@14 T@PolymorphicMapType_15954) (Mask@@75 T@PolymorphicMapType_15975) (o_7@@1 T@Ref) (f_13@@0 T@Field_22143_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@75) (=> (HasDirectPerm_22143_16028 Mask@@75 o_7@@1 f_13@@0) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@19) o_7@@1 f_13@@0) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@14) o_7@@1 f_13@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@75) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@14) o_7@@1 f_13@@0))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15954) (ExhaleHeap@@15 T@PolymorphicMapType_15954) (Mask@@76 T@PolymorphicMapType_15975) (o_7@@2 T@Ref) (f_13@@1 T@Field_22143_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@76) (=> (HasDirectPerm_22143_53 Mask@@76 o_7@@2 f_13@@1) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@20) o_7@@2 f_13@@1) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@15) o_7@@2 f_13@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@76) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@15) o_7@@2 f_13@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15954) (ExhaleHeap@@16 T@PolymorphicMapType_15954) (Mask@@77 T@PolymorphicMapType_15975) (o_7@@3 T@Ref) (f_13@@2 T@Field_22143_22144) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@77) (=> (HasDirectPerm_22143_9839 Mask@@77 o_7@@3 f_13@@2) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@21) o_7@@3 f_13@@2) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@16) o_7@@3 f_13@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@77) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@16) o_7@@3 f_13@@2))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15954) (ExhaleHeap@@17 T@PolymorphicMapType_15954) (Mask@@78 T@PolymorphicMapType_15975) (o_7@@4 T@Ref) (f_13@@3 T@Field_22143_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@78) (=> (HasDirectPerm_22143_3242 Mask@@78 o_7@@4 f_13@@3) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@22) o_7@@4 f_13@@3) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@17) o_7@@4 f_13@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@78) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@17) o_7@@4 f_13@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15954) (ExhaleHeap@@18 T@PolymorphicMapType_15954) (Mask@@79 T@PolymorphicMapType_15975) (o_7@@5 T@Ref) (f_13@@4 T@Field_25476_25481) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@79) (=> (HasDirectPerm_9913_53503 Mask@@79 o_7@@5 f_13@@4) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@23) o_7@@5 f_13@@4) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@18) o_7@@5 f_13@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@79) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@18) o_7@@5 f_13@@4))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15954) (ExhaleHeap@@19 T@PolymorphicMapType_15954) (Mask@@80 T@PolymorphicMapType_15975) (o_7@@6 T@Ref) (f_13@@5 T@Field_9913_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@80) (=> (HasDirectPerm_9913_16028 Mask@@80 o_7@@6 f_13@@5) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@24) o_7@@6 f_13@@5) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@19) o_7@@6 f_13@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@19 Mask@@80) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@19) o_7@@6 f_13@@5))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15954) (ExhaleHeap@@20 T@PolymorphicMapType_15954) (Mask@@81 T@PolymorphicMapType_15975) (o_7@@7 T@Ref) (f_13@@6 T@Field_9913_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@81) (=> (HasDirectPerm_9913_53 Mask@@81 o_7@@7 f_13@@6) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@25) o_7@@7 f_13@@6) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@20) o_7@@7 f_13@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@20 Mask@@81) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@20) o_7@@7 f_13@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15954) (ExhaleHeap@@21 T@PolymorphicMapType_15954) (Mask@@82 T@PolymorphicMapType_15975) (o_7@@8 T@Ref) (f_13@@7 T@Field_25463_25464) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@82) (=> (HasDirectPerm_9913_9914 Mask@@82 o_7@@8 f_13@@7) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@26) o_7@@8 f_13@@7) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@21) o_7@@8 f_13@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@21 Mask@@82) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@21) o_7@@8 f_13@@7))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15954) (ExhaleHeap@@22 T@PolymorphicMapType_15954) (Mask@@83 T@PolymorphicMapType_15975) (o_7@@9 T@Ref) (f_13@@8 T@Field_9913_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@83) (=> (HasDirectPerm_9913_3242 Mask@@83 o_7@@9 f_13@@8) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@27) o_7@@9 f_13@@8) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@22) o_7@@9 f_13@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@22 Mask@@83) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@22) o_7@@9 f_13@@8))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15954) (ExhaleHeap@@23 T@PolymorphicMapType_15954) (Mask@@84 T@PolymorphicMapType_15975) (o_7@@10 T@Ref) (f_13@@9 T@Field_24502_24507) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@84) (=> (HasDirectPerm_9888_52362 Mask@@84 o_7@@10 f_13@@9) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@28) o_7@@10 f_13@@9) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@23) o_7@@10 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@23 Mask@@84) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@23) o_7@@10 f_13@@9))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15954) (ExhaleHeap@@24 T@PolymorphicMapType_15954) (Mask@@85 T@PolymorphicMapType_15975) (o_7@@11 T@Ref) (f_13@@10 T@Field_9888_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@85) (=> (HasDirectPerm_9888_16028 Mask@@85 o_7@@11 f_13@@10) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@29) o_7@@11 f_13@@10) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@24) o_7@@11 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@24 Mask@@85) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@24) o_7@@11 f_13@@10))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15954) (ExhaleHeap@@25 T@PolymorphicMapType_15954) (Mask@@86 T@PolymorphicMapType_15975) (o_7@@12 T@Ref) (f_13@@11 T@Field_9888_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@86) (=> (HasDirectPerm_9888_53 Mask@@86 o_7@@12 f_13@@11) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@30) o_7@@12 f_13@@11) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@25) o_7@@12 f_13@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@25 Mask@@86) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@25) o_7@@12 f_13@@11))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15954) (ExhaleHeap@@26 T@PolymorphicMapType_15954) (Mask@@87 T@PolymorphicMapType_15975) (o_7@@13 T@Ref) (f_13@@12 T@Field_24489_24490) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@87) (=> (HasDirectPerm_9888_9889 Mask@@87 o_7@@13 f_13@@12) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@31) o_7@@13 f_13@@12) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@26) o_7@@13 f_13@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@26 Mask@@87) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@26) o_7@@13 f_13@@12))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15954) (ExhaleHeap@@27 T@PolymorphicMapType_15954) (Mask@@88 T@PolymorphicMapType_15975) (o_7@@14 T@Ref) (f_13@@13 T@Field_9888_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@88) (=> (HasDirectPerm_9888_3242 Mask@@88 o_7@@14 f_13@@13) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@32) o_7@@14 f_13@@13) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@27) o_7@@14 f_13@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@27 Mask@@88) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@27) o_7@@14 f_13@@13))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15954) (ExhaleHeap@@28 T@PolymorphicMapType_15954) (Mask@@89 T@PolymorphicMapType_15975) (o_7@@15 T@Ref) (f_13@@14 T@Field_23494_23499) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@89) (=> (HasDirectPerm_9863_51221 Mask@@89 o_7@@15 f_13@@14) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@33) o_7@@15 f_13@@14) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@28) o_7@@15 f_13@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@28 Mask@@89) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@28) o_7@@15 f_13@@14))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15954) (ExhaleHeap@@29 T@PolymorphicMapType_15954) (Mask@@90 T@PolymorphicMapType_15975) (o_7@@16 T@Ref) (f_13@@15 T@Field_9863_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@90) (=> (HasDirectPerm_9863_16028 Mask@@90 o_7@@16 f_13@@15) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@34) o_7@@16 f_13@@15) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@29) o_7@@16 f_13@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@29 Mask@@90) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@29) o_7@@16 f_13@@15))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15954) (ExhaleHeap@@30 T@PolymorphicMapType_15954) (Mask@@91 T@PolymorphicMapType_15975) (o_7@@17 T@Ref) (f_13@@16 T@Field_9863_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@91) (=> (HasDirectPerm_9863_53 Mask@@91 o_7@@17 f_13@@16) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@35) o_7@@17 f_13@@16) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@30) o_7@@17 f_13@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@30 Mask@@91) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@30) o_7@@17 f_13@@16))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15954) (ExhaleHeap@@31 T@PolymorphicMapType_15954) (Mask@@92 T@PolymorphicMapType_15975) (o_7@@18 T@Ref) (f_13@@17 T@Field_23481_23482) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@92) (=> (HasDirectPerm_9863_9864 Mask@@92 o_7@@18 f_13@@17) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@36) o_7@@18 f_13@@17) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@31) o_7@@18 f_13@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@31 Mask@@92) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@31) o_7@@18 f_13@@17))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15954) (ExhaleHeap@@32 T@PolymorphicMapType_15954) (Mask@@93 T@PolymorphicMapType_15975) (o_7@@19 T@Ref) (f_13@@18 T@Field_9863_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@93) (=> (HasDirectPerm_9863_3242 Mask@@93 o_7@@19 f_13@@18) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@37) o_7@@19 f_13@@18) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@32) o_7@@19 f_13@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@32 Mask@@93) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@32) o_7@@19 f_13@@18))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15954) (ExhaleHeap@@33 T@PolymorphicMapType_15954) (Mask@@94 T@PolymorphicMapType_15975) (o_7@@20 T@Ref) (f_13@@19 T@Field_22574_22579) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@94) (=> (HasDirectPerm_9838_50080 Mask@@94 o_7@@20 f_13@@19) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@38) o_7@@20 f_13@@19) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@33) o_7@@20 f_13@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@33 Mask@@94) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@33) o_7@@20 f_13@@19))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15954) (ExhaleHeap@@34 T@PolymorphicMapType_15954) (Mask@@95 T@PolymorphicMapType_15975) (o_7@@21 T@Ref) (f_13@@20 T@Field_9838_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@95) (=> (HasDirectPerm_9838_16028 Mask@@95 o_7@@21 f_13@@20) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@39) o_7@@21 f_13@@20) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@34) o_7@@21 f_13@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@34 Mask@@95) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@34) o_7@@21 f_13@@20))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15954) (ExhaleHeap@@35 T@PolymorphicMapType_15954) (Mask@@96 T@PolymorphicMapType_15975) (o_7@@22 T@Ref) (f_13@@21 T@Field_9838_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@96) (=> (HasDirectPerm_9838_53 Mask@@96 o_7@@22 f_13@@21) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@40) o_7@@22 f_13@@21) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@35) o_7@@22 f_13@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@35 Mask@@96) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@35) o_7@@22 f_13@@21))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15954) (ExhaleHeap@@36 T@PolymorphicMapType_15954) (Mask@@97 T@PolymorphicMapType_15975) (o_7@@23 T@Ref) (f_13@@22 T@Field_22561_22562) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@97) (=> (HasDirectPerm_9838_9839 Mask@@97 o_7@@23 f_13@@22) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@41) o_7@@23 f_13@@22) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@36) o_7@@23 f_13@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@36 Mask@@97) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@36) o_7@@23 f_13@@22))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15954) (ExhaleHeap@@37 T@PolymorphicMapType_15954) (Mask@@98 T@PolymorphicMapType_15975) (o_7@@24 T@Ref) (f_13@@23 T@Field_9838_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@37 Mask@@98) (=> (HasDirectPerm_9838_3242 Mask@@98 o_7@@24 f_13@@23) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@42) o_7@@24 f_13@@23) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@37) o_7@@24 f_13@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@37 Mask@@98) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@37) o_7@@24 f_13@@23))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15954) (ExhaleHeap@@38 T@PolymorphicMapType_15954) (Mask@@99 T@PolymorphicMapType_15975) (o_7@@25 T@Ref) (f_13@@24 T@Field_9821_22160) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@38 Mask@@99) (=> (HasDirectPerm_9821_48939 Mask@@99 o_7@@25 f_13@@24) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@43) o_7@@25 f_13@@24) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@38) o_7@@25 f_13@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@38 Mask@@99) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@38) o_7@@25 f_13@@24))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15954) (ExhaleHeap@@39 T@PolymorphicMapType_15954) (Mask@@100 T@PolymorphicMapType_15975) (o_7@@26 T@Ref) (f_13@@25 T@Field_16027_16028) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@39 Mask@@100) (=> (HasDirectPerm_9821_16028 Mask@@100 o_7@@26 f_13@@25) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@44) o_7@@26 f_13@@25) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@39) o_7@@26 f_13@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@39 Mask@@100) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@39) o_7@@26 f_13@@25))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15954) (ExhaleHeap@@40 T@PolymorphicMapType_15954) (Mask@@101 T@PolymorphicMapType_15975) (o_7@@27 T@Ref) (f_13@@26 T@Field_16014_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@40 Mask@@101) (=> (HasDirectPerm_9821_53 Mask@@101 o_7@@27 f_13@@26) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@45) o_7@@27 f_13@@26) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@40) o_7@@27 f_13@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@40 Mask@@101) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@40) o_7@@27 f_13@@26))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15954) (ExhaleHeap@@41 T@PolymorphicMapType_15954) (Mask@@102 T@PolymorphicMapType_15975) (o_7@@28 T@Ref) (f_13@@27 T@Field_9821_9839) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@41 Mask@@102) (=> (HasDirectPerm_9821_9839 Mask@@102 o_7@@28 f_13@@27) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@46) o_7@@28 f_13@@27) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@41) o_7@@28 f_13@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@41 Mask@@102) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@41) o_7@@28 f_13@@27))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15954) (ExhaleHeap@@42 T@PolymorphicMapType_15954) (Mask@@103 T@PolymorphicMapType_15975) (o_7@@29 T@Ref) (f_13@@28 T@Field_22067_3242) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@42 Mask@@103) (=> (HasDirectPerm_9821_3242 Mask@@103 o_7@@29 f_13@@28) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@47) o_7@@29 f_13@@28) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@42) o_7@@29 f_13@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@42 Mask@@103) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@42) o_7@@29 f_13@@28))
)))
(assert (forall ((s0@@1 T@Seq_26504) (s1@@1 T@Seq_26504) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_26504|)) (not (= s1@@1 |Seq#Empty_26504|))) (= (|Seq#Length_26504| (|Seq#Append_26504| s0@@1 s1@@1)) (+ (|Seq#Length_26504| s0@@1) (|Seq#Length_26504| s1@@1))))
 :qid |stdinbpl.248:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_26504| (|Seq#Append_26504| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3120) (s1@@2 T@Seq_3120) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3120|)) (not (= s1@@2 |Seq#Empty_3120|))) (= (|Seq#Length_3120| (|Seq#Append_3120| s0@@2 s1@@2)) (+ (|Seq#Length_3120| s0@@2) (|Seq#Length_3120| s1@@2))))
 :qid |stdinbpl.248:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3120| (|Seq#Append_3120| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_22155_22160) ) (! (= (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_22143_16028) ) (! (= (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_22143_53) ) (! (= (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_22143_22144) ) (! (= (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_22143_3242) ) (! (= (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_25476_25481) ) (! (= (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_9913_16028) ) (! (= (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_9913_53) ) (! (= (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_25463_25464) ) (! (= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_9913_3242) ) (! (= (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_24502_24507) ) (! (= (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_9888_16028) ) (! (= (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_9888_53) ) (! (= (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_24489_24490) ) (! (= (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_9888_3242) ) (! (= (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_23494_23499) ) (! (= (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_9863_16028) ) (! (= (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_9863_53) ) (! (= (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_23481_23482) ) (! (= (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_9863_3242) ) (! (= (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_22574_22579) ) (! (= (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_9838_16028) ) (! (= (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_9838_53) ) (! (= (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_22561_22562) ) (! (= (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_9838_3242) ) (! (= (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_9821_22160) ) (! (= (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_16027_16028) ) (! (= (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_16014_53) ) (! (= (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_9821_9839) ) (! (= (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_22067_3242) ) (! (= (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((s@@15 T@Seq_26504) (t@@1 T@Seq_26504) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_26504| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_26504| s@@15)) (|Seq#Length_26504| s@@15)) n@@15) (= (|Seq#Drop_26504| (|Seq#Append_26504| s@@15 t@@1) n@@15) (|Seq#Drop_26504| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_26504| s@@15))))))
 :qid |stdinbpl.405:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_26504| (|Seq#Append_26504| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3120) (t@@2 T@Seq_3120) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3120| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3120| s@@16)) (|Seq#Length_3120| s@@16)) n@@16) (= (|Seq#Drop_3120| (|Seq#Append_3120| s@@16 t@@2) n@@16) (|Seq#Drop_3120| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3120| s@@16))))))
 :qid |stdinbpl.405:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3120| (|Seq#Append_3120| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15954) (ExhaleHeap@@43 T@PolymorphicMapType_15954) (Mask@@104 T@PolymorphicMapType_15975) (pm_f_30@@11 T@Field_22143_22144) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@43 Mask@@104) (=> (and (HasDirectPerm_22143_9839 Mask@@104 null pm_f_30@@11) (IsPredicateField_9825_9826 pm_f_30@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30 T@Ref) (f_13@@29 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30 f_13@@29) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@48) o2_30 f_13@@29) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30 f_13@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30 f_13@@29))
)) (forall ((o2_30@@0 T@Ref) (f_13@@30 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@0 f_13@@30) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@48) o2_30@@0 f_13@@30) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@0 f_13@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@0 f_13@@30))
))) (forall ((o2_30@@1 T@Ref) (f_13@@31 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@1 f_13@@31) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@1 f_13@@31) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@1 f_13@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@1 f_13@@31))
))) (forall ((o2_30@@2 T@Ref) (f_13@@32 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@2 f_13@@32) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@48) o2_30@@2 f_13@@32) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@2 f_13@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@2 f_13@@32))
))) (forall ((o2_30@@3 T@Ref) (f_13@@33 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@3 f_13@@33) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@48) o2_30@@3 f_13@@33) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@3 f_13@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@3 f_13@@33))
))) (forall ((o2_30@@4 T@Ref) (f_13@@34 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@4 f_13@@34) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@48) o2_30@@4 f_13@@34) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@4 f_13@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@4 f_13@@34))
))) (forall ((o2_30@@5 T@Ref) (f_13@@35 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@5 f_13@@35) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@48) o2_30@@5 f_13@@35) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@5 f_13@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@5 f_13@@35))
))) (forall ((o2_30@@6 T@Ref) (f_13@@36 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@6 f_13@@36) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@6 f_13@@36) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@6 f_13@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@6 f_13@@36))
))) (forall ((o2_30@@7 T@Ref) (f_13@@37 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@7 f_13@@37) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@48) o2_30@@7 f_13@@37) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@7 f_13@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@7 f_13@@37))
))) (forall ((o2_30@@8 T@Ref) (f_13@@38 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@8 f_13@@38) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) o2_30@@8 f_13@@38) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@8 f_13@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@8 f_13@@38))
))) (forall ((o2_30@@9 T@Ref) (f_13@@39 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@9 f_13@@39) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@48) o2_30@@9 f_13@@39) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@9 f_13@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@9 f_13@@39))
))) (forall ((o2_30@@10 T@Ref) (f_13@@40 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@10 f_13@@40) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@48) o2_30@@10 f_13@@40) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@10 f_13@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@10 f_13@@40))
))) (forall ((o2_30@@11 T@Ref) (f_13@@41 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@11 f_13@@41) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@11 f_13@@41) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@11 f_13@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@11 f_13@@41))
))) (forall ((o2_30@@12 T@Ref) (f_13@@42 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@12 f_13@@42) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@48) o2_30@@12 f_13@@42) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@12 f_13@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@12 f_13@@42))
))) (forall ((o2_30@@13 T@Ref) (f_13@@43 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@13 f_13@@43) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@48) o2_30@@13 f_13@@43) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@13 f_13@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@13 f_13@@43))
))) (forall ((o2_30@@14 T@Ref) (f_13@@44 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@14 f_13@@44) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@48) o2_30@@14 f_13@@44) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@14 f_13@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@14 f_13@@44))
))) (forall ((o2_30@@15 T@Ref) (f_13@@45 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@15 f_13@@45) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@48) o2_30@@15 f_13@@45) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@15 f_13@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@15 f_13@@45))
))) (forall ((o2_30@@16 T@Ref) (f_13@@46 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@16 f_13@@46) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@16 f_13@@46) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@16 f_13@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@16 f_13@@46))
))) (forall ((o2_30@@17 T@Ref) (f_13@@47 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@17 f_13@@47) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@48) o2_30@@17 f_13@@47) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@17 f_13@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@17 f_13@@47))
))) (forall ((o2_30@@18 T@Ref) (f_13@@48 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@18 f_13@@48) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@48) o2_30@@18 f_13@@48) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@18 f_13@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@18 f_13@@48))
))) (forall ((o2_30@@19 T@Ref) (f_13@@49 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@19 f_13@@49) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@48) o2_30@@19 f_13@@49) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@19 f_13@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@19 f_13@@49))
))) (forall ((o2_30@@20 T@Ref) (f_13@@50 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@20 f_13@@50) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@48) o2_30@@20 f_13@@50) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@20 f_13@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@20 f_13@@50))
))) (forall ((o2_30@@21 T@Ref) (f_13@@51 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@21 f_13@@51) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@21 f_13@@51) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@21 f_13@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@21 f_13@@51))
))) (forall ((o2_30@@22 T@Ref) (f_13@@52 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@22 f_13@@52) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@48) o2_30@@22 f_13@@52) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@22 f_13@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@22 f_13@@52))
))) (forall ((o2_30@@23 T@Ref) (f_13@@53 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@23 f_13@@53) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@48) o2_30@@23 f_13@@53) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@23 f_13@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@23 f_13@@53))
))) (forall ((o2_30@@24 T@Ref) (f_13@@54 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@24 f_13@@54) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@48) o2_30@@24 f_13@@54) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@24 f_13@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@24 f_13@@54))
))) (forall ((o2_30@@25 T@Ref) (f_13@@55 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@25 f_13@@55) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@48) o2_30@@25 f_13@@55) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@25 f_13@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@25 f_13@@55))
))) (forall ((o2_30@@26 T@Ref) (f_13@@56 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@26 f_13@@56) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@48) o2_30@@26 f_13@@56) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@26 f_13@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@26 f_13@@56))
))) (forall ((o2_30@@27 T@Ref) (f_13@@57 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@27 f_13@@57) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@48) o2_30@@27 f_13@@57) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@27 f_13@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@27 f_13@@57))
))) (forall ((o2_30@@28 T@Ref) (f_13@@58 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@48) null (PredicateMaskField_9825 pm_f_30@@11))) o2_30@@28 f_13@@58) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@48) o2_30@@28 f_13@@58) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@28 f_13@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@43) o2_30@@28 f_13@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@43 Mask@@104) (IsPredicateField_9825_9826 pm_f_30@@11))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15954) (ExhaleHeap@@44 T@PolymorphicMapType_15954) (Mask@@105 T@PolymorphicMapType_15975) (pm_f_30@@12 T@Field_25463_25464) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@44 Mask@@105) (=> (and (HasDirectPerm_9913_9914 Mask@@105 null pm_f_30@@12) (IsPredicateField_9913_9914 pm_f_30@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@29 T@Ref) (f_13@@59 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@29 f_13@@59) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@49) o2_30@@29 f_13@@59) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@29 f_13@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@29 f_13@@59))
)) (forall ((o2_30@@30 T@Ref) (f_13@@60 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@30 f_13@@60) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@49) o2_30@@30 f_13@@60) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@30 f_13@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@30 f_13@@60))
))) (forall ((o2_30@@31 T@Ref) (f_13@@61 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@31 f_13@@61) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@31 f_13@@61) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@31 f_13@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@31 f_13@@61))
))) (forall ((o2_30@@32 T@Ref) (f_13@@62 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@32 f_13@@62) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@49) o2_30@@32 f_13@@62) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@32 f_13@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@32 f_13@@62))
))) (forall ((o2_30@@33 T@Ref) (f_13@@63 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@33 f_13@@63) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@49) o2_30@@33 f_13@@63) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@33 f_13@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@33 f_13@@63))
))) (forall ((o2_30@@34 T@Ref) (f_13@@64 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@34 f_13@@64) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@49) o2_30@@34 f_13@@64) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@34 f_13@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@34 f_13@@64))
))) (forall ((o2_30@@35 T@Ref) (f_13@@65 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@35 f_13@@65) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@49) o2_30@@35 f_13@@65) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@35 f_13@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@35 f_13@@65))
))) (forall ((o2_30@@36 T@Ref) (f_13@@66 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@36 f_13@@66) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@36 f_13@@66) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@36 f_13@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@36 f_13@@66))
))) (forall ((o2_30@@37 T@Ref) (f_13@@67 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@37 f_13@@67) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@49) o2_30@@37 f_13@@67) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@37 f_13@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@37 f_13@@67))
))) (forall ((o2_30@@38 T@Ref) (f_13@@68 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@38 f_13@@68) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@49) o2_30@@38 f_13@@68) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@38 f_13@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@38 f_13@@68))
))) (forall ((o2_30@@39 T@Ref) (f_13@@69 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@39 f_13@@69) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@49) o2_30@@39 f_13@@69) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@39 f_13@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@39 f_13@@69))
))) (forall ((o2_30@@40 T@Ref) (f_13@@70 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@40 f_13@@70) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@49) o2_30@@40 f_13@@70) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@40 f_13@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@40 f_13@@70))
))) (forall ((o2_30@@41 T@Ref) (f_13@@71 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@41 f_13@@71) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@41 f_13@@71) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@41 f_13@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@41 f_13@@71))
))) (forall ((o2_30@@42 T@Ref) (f_13@@72 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@42 f_13@@72) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@49) o2_30@@42 f_13@@72) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@42 f_13@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@42 f_13@@72))
))) (forall ((o2_30@@43 T@Ref) (f_13@@73 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@43 f_13@@73) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@49) o2_30@@43 f_13@@73) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@43 f_13@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@43 f_13@@73))
))) (forall ((o2_30@@44 T@Ref) (f_13@@74 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@44 f_13@@74) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@49) o2_30@@44 f_13@@74) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@44 f_13@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@44 f_13@@74))
))) (forall ((o2_30@@45 T@Ref) (f_13@@75 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@45 f_13@@75) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@49) o2_30@@45 f_13@@75) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@45 f_13@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@45 f_13@@75))
))) (forall ((o2_30@@46 T@Ref) (f_13@@76 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@46 f_13@@76) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@46 f_13@@76) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@46 f_13@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@46 f_13@@76))
))) (forall ((o2_30@@47 T@Ref) (f_13@@77 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@47 f_13@@77) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@49) o2_30@@47 f_13@@77) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@47 f_13@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@47 f_13@@77))
))) (forall ((o2_30@@48 T@Ref) (f_13@@78 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@48 f_13@@78) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@49) o2_30@@48 f_13@@78) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@48 f_13@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@48 f_13@@78))
))) (forall ((o2_30@@49 T@Ref) (f_13@@79 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@49 f_13@@79) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@49) o2_30@@49 f_13@@79) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@49 f_13@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@49 f_13@@79))
))) (forall ((o2_30@@50 T@Ref) (f_13@@80 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@50 f_13@@80) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@49) o2_30@@50 f_13@@80) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@50 f_13@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@50 f_13@@80))
))) (forall ((o2_30@@51 T@Ref) (f_13@@81 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@51 f_13@@81) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@51 f_13@@81) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@51 f_13@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@51 f_13@@81))
))) (forall ((o2_30@@52 T@Ref) (f_13@@82 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@52 f_13@@82) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@49) o2_30@@52 f_13@@82) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@52 f_13@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@52 f_13@@82))
))) (forall ((o2_30@@53 T@Ref) (f_13@@83 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@53 f_13@@83) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@49) o2_30@@53 f_13@@83) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@53 f_13@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@53 f_13@@83))
))) (forall ((o2_30@@54 T@Ref) (f_13@@84 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@54 f_13@@84) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@49) o2_30@@54 f_13@@84) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@54 f_13@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@54 f_13@@84))
))) (forall ((o2_30@@55 T@Ref) (f_13@@85 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@55 f_13@@85) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@49) o2_30@@55 f_13@@85) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@55 f_13@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@55 f_13@@85))
))) (forall ((o2_30@@56 T@Ref) (f_13@@86 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@56 f_13@@86) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@49) o2_30@@56 f_13@@86) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@56 f_13@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@56 f_13@@86))
))) (forall ((o2_30@@57 T@Ref) (f_13@@87 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@57 f_13@@87) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@49) o2_30@@57 f_13@@87) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@57 f_13@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@57 f_13@@87))
))) (forall ((o2_30@@58 T@Ref) (f_13@@88 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) null (PredicateMaskField_9913 pm_f_30@@12))) o2_30@@58 f_13@@88) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@49) o2_30@@58 f_13@@88) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@58 f_13@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@44) o2_30@@58 f_13@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@44 Mask@@105) (IsPredicateField_9913_9914 pm_f_30@@12))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15954) (ExhaleHeap@@45 T@PolymorphicMapType_15954) (Mask@@106 T@PolymorphicMapType_15975) (pm_f_30@@13 T@Field_24489_24490) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@45 Mask@@106) (=> (and (HasDirectPerm_9888_9889 Mask@@106 null pm_f_30@@13) (IsPredicateField_9888_9889 pm_f_30@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@59 T@Ref) (f_13@@89 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@59 f_13@@89) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@50) o2_30@@59 f_13@@89) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@59 f_13@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@59 f_13@@89))
)) (forall ((o2_30@@60 T@Ref) (f_13@@90 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@60 f_13@@90) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@50) o2_30@@60 f_13@@90) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@60 f_13@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@60 f_13@@90))
))) (forall ((o2_30@@61 T@Ref) (f_13@@91 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@61 f_13@@91) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@61 f_13@@91) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@61 f_13@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@61 f_13@@91))
))) (forall ((o2_30@@62 T@Ref) (f_13@@92 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@62 f_13@@92) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@50) o2_30@@62 f_13@@92) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@62 f_13@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@62 f_13@@92))
))) (forall ((o2_30@@63 T@Ref) (f_13@@93 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@63 f_13@@93) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@50) o2_30@@63 f_13@@93) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@63 f_13@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@63 f_13@@93))
))) (forall ((o2_30@@64 T@Ref) (f_13@@94 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@64 f_13@@94) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@50) o2_30@@64 f_13@@94) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@64 f_13@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@64 f_13@@94))
))) (forall ((o2_30@@65 T@Ref) (f_13@@95 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@65 f_13@@95) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@50) o2_30@@65 f_13@@95) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@65 f_13@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@65 f_13@@95))
))) (forall ((o2_30@@66 T@Ref) (f_13@@96 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@66 f_13@@96) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@66 f_13@@96) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@66 f_13@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@66 f_13@@96))
))) (forall ((o2_30@@67 T@Ref) (f_13@@97 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@67 f_13@@97) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@50) o2_30@@67 f_13@@97) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@67 f_13@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@67 f_13@@97))
))) (forall ((o2_30@@68 T@Ref) (f_13@@98 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@68 f_13@@98) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@50) o2_30@@68 f_13@@98) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@68 f_13@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@68 f_13@@98))
))) (forall ((o2_30@@69 T@Ref) (f_13@@99 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@69 f_13@@99) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@50) o2_30@@69 f_13@@99) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@69 f_13@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@69 f_13@@99))
))) (forall ((o2_30@@70 T@Ref) (f_13@@100 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@70 f_13@@100) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@50) o2_30@@70 f_13@@100) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@70 f_13@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@70 f_13@@100))
))) (forall ((o2_30@@71 T@Ref) (f_13@@101 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@71 f_13@@101) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@71 f_13@@101) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@71 f_13@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@71 f_13@@101))
))) (forall ((o2_30@@72 T@Ref) (f_13@@102 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@72 f_13@@102) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@50) o2_30@@72 f_13@@102) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@72 f_13@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@72 f_13@@102))
))) (forall ((o2_30@@73 T@Ref) (f_13@@103 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@73 f_13@@103) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@50) o2_30@@73 f_13@@103) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@73 f_13@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@73 f_13@@103))
))) (forall ((o2_30@@74 T@Ref) (f_13@@104 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@74 f_13@@104) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@50) o2_30@@74 f_13@@104) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@74 f_13@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@74 f_13@@104))
))) (forall ((o2_30@@75 T@Ref) (f_13@@105 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@75 f_13@@105) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@50) o2_30@@75 f_13@@105) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@75 f_13@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@75 f_13@@105))
))) (forall ((o2_30@@76 T@Ref) (f_13@@106 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@76 f_13@@106) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@76 f_13@@106) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@76 f_13@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@76 f_13@@106))
))) (forall ((o2_30@@77 T@Ref) (f_13@@107 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@77 f_13@@107) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@50) o2_30@@77 f_13@@107) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@77 f_13@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@77 f_13@@107))
))) (forall ((o2_30@@78 T@Ref) (f_13@@108 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@78 f_13@@108) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@50) o2_30@@78 f_13@@108) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@78 f_13@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@78 f_13@@108))
))) (forall ((o2_30@@79 T@Ref) (f_13@@109 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@79 f_13@@109) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@50) o2_30@@79 f_13@@109) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@79 f_13@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@79 f_13@@109))
))) (forall ((o2_30@@80 T@Ref) (f_13@@110 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@80 f_13@@110) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@50) o2_30@@80 f_13@@110) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@80 f_13@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@80 f_13@@110))
))) (forall ((o2_30@@81 T@Ref) (f_13@@111 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@81 f_13@@111) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@81 f_13@@111) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@81 f_13@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@81 f_13@@111))
))) (forall ((o2_30@@82 T@Ref) (f_13@@112 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@82 f_13@@112) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@50) o2_30@@82 f_13@@112) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@82 f_13@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@82 f_13@@112))
))) (forall ((o2_30@@83 T@Ref) (f_13@@113 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@83 f_13@@113) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) o2_30@@83 f_13@@113) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@83 f_13@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@83 f_13@@113))
))) (forall ((o2_30@@84 T@Ref) (f_13@@114 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@84 f_13@@114) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@50) o2_30@@84 f_13@@114) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@84 f_13@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@84 f_13@@114))
))) (forall ((o2_30@@85 T@Ref) (f_13@@115 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@85 f_13@@115) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@50) o2_30@@85 f_13@@115) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@85 f_13@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@85 f_13@@115))
))) (forall ((o2_30@@86 T@Ref) (f_13@@116 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@86 f_13@@116) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@50) o2_30@@86 f_13@@116) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@86 f_13@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@86 f_13@@116))
))) (forall ((o2_30@@87 T@Ref) (f_13@@117 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@87 f_13@@117) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@50) o2_30@@87 f_13@@117) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@87 f_13@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@87 f_13@@117))
))) (forall ((o2_30@@88 T@Ref) (f_13@@118 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@50) null (PredicateMaskField_9888 pm_f_30@@13))) o2_30@@88 f_13@@118) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@50) o2_30@@88 f_13@@118) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@88 f_13@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@45) o2_30@@88 f_13@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@45 Mask@@106) (IsPredicateField_9888_9889 pm_f_30@@13))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15954) (ExhaleHeap@@46 T@PolymorphicMapType_15954) (Mask@@107 T@PolymorphicMapType_15975) (pm_f_30@@14 T@Field_23481_23482) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@46 Mask@@107) (=> (and (HasDirectPerm_9863_9864 Mask@@107 null pm_f_30@@14) (IsPredicateField_9863_9864 pm_f_30@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@89 T@Ref) (f_13@@119 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@89 f_13@@119) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@51) o2_30@@89 f_13@@119) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@89 f_13@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@89 f_13@@119))
)) (forall ((o2_30@@90 T@Ref) (f_13@@120 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@90 f_13@@120) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@51) o2_30@@90 f_13@@120) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@90 f_13@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@90 f_13@@120))
))) (forall ((o2_30@@91 T@Ref) (f_13@@121 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@91 f_13@@121) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@91 f_13@@121) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@91 f_13@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@91 f_13@@121))
))) (forall ((o2_30@@92 T@Ref) (f_13@@122 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@92 f_13@@122) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@51) o2_30@@92 f_13@@122) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@92 f_13@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@92 f_13@@122))
))) (forall ((o2_30@@93 T@Ref) (f_13@@123 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@93 f_13@@123) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@51) o2_30@@93 f_13@@123) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@93 f_13@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@93 f_13@@123))
))) (forall ((o2_30@@94 T@Ref) (f_13@@124 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@94 f_13@@124) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@51) o2_30@@94 f_13@@124) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@94 f_13@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@94 f_13@@124))
))) (forall ((o2_30@@95 T@Ref) (f_13@@125 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@95 f_13@@125) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@51) o2_30@@95 f_13@@125) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@95 f_13@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@95 f_13@@125))
))) (forall ((o2_30@@96 T@Ref) (f_13@@126 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@96 f_13@@126) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@96 f_13@@126) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@96 f_13@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@96 f_13@@126))
))) (forall ((o2_30@@97 T@Ref) (f_13@@127 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@97 f_13@@127) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@51) o2_30@@97 f_13@@127) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@97 f_13@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@97 f_13@@127))
))) (forall ((o2_30@@98 T@Ref) (f_13@@128 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@98 f_13@@128) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@51) o2_30@@98 f_13@@128) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@98 f_13@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@98 f_13@@128))
))) (forall ((o2_30@@99 T@Ref) (f_13@@129 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@99 f_13@@129) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@51) o2_30@@99 f_13@@129) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@99 f_13@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@99 f_13@@129))
))) (forall ((o2_30@@100 T@Ref) (f_13@@130 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@100 f_13@@130) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@51) o2_30@@100 f_13@@130) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@100 f_13@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@100 f_13@@130))
))) (forall ((o2_30@@101 T@Ref) (f_13@@131 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@101 f_13@@131) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@101 f_13@@131) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@101 f_13@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@101 f_13@@131))
))) (forall ((o2_30@@102 T@Ref) (f_13@@132 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@102 f_13@@132) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@51) o2_30@@102 f_13@@132) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@102 f_13@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@102 f_13@@132))
))) (forall ((o2_30@@103 T@Ref) (f_13@@133 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@103 f_13@@133) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@51) o2_30@@103 f_13@@133) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@103 f_13@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@103 f_13@@133))
))) (forall ((o2_30@@104 T@Ref) (f_13@@134 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@104 f_13@@134) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@51) o2_30@@104 f_13@@134) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@104 f_13@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@104 f_13@@134))
))) (forall ((o2_30@@105 T@Ref) (f_13@@135 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@105 f_13@@135) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@51) o2_30@@105 f_13@@135) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@105 f_13@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@105 f_13@@135))
))) (forall ((o2_30@@106 T@Ref) (f_13@@136 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@106 f_13@@136) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@106 f_13@@136) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@106 f_13@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@106 f_13@@136))
))) (forall ((o2_30@@107 T@Ref) (f_13@@137 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@107 f_13@@137) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@51) o2_30@@107 f_13@@137) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@107 f_13@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@107 f_13@@137))
))) (forall ((o2_30@@108 T@Ref) (f_13@@138 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@108 f_13@@138) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) o2_30@@108 f_13@@138) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@108 f_13@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@108 f_13@@138))
))) (forall ((o2_30@@109 T@Ref) (f_13@@139 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@109 f_13@@139) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@51) o2_30@@109 f_13@@139) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@109 f_13@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@109 f_13@@139))
))) (forall ((o2_30@@110 T@Ref) (f_13@@140 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@110 f_13@@140) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@51) o2_30@@110 f_13@@140) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@110 f_13@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@110 f_13@@140))
))) (forall ((o2_30@@111 T@Ref) (f_13@@141 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@111 f_13@@141) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@111 f_13@@141) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@111 f_13@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@111 f_13@@141))
))) (forall ((o2_30@@112 T@Ref) (f_13@@142 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@112 f_13@@142) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@51) o2_30@@112 f_13@@142) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@112 f_13@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@112 f_13@@142))
))) (forall ((o2_30@@113 T@Ref) (f_13@@143 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@113 f_13@@143) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@51) o2_30@@113 f_13@@143) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@113 f_13@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@113 f_13@@143))
))) (forall ((o2_30@@114 T@Ref) (f_13@@144 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@114 f_13@@144) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@51) o2_30@@114 f_13@@144) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@114 f_13@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@114 f_13@@144))
))) (forall ((o2_30@@115 T@Ref) (f_13@@145 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@115 f_13@@145) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@51) o2_30@@115 f_13@@145) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@115 f_13@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@115 f_13@@145))
))) (forall ((o2_30@@116 T@Ref) (f_13@@146 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@116 f_13@@146) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@51) o2_30@@116 f_13@@146) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@116 f_13@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@116 f_13@@146))
))) (forall ((o2_30@@117 T@Ref) (f_13@@147 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@117 f_13@@147) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@51) o2_30@@117 f_13@@147) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@117 f_13@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@117 f_13@@147))
))) (forall ((o2_30@@118 T@Ref) (f_13@@148 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@51) null (PredicateMaskField_9863 pm_f_30@@14))) o2_30@@118 f_13@@148) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@51) o2_30@@118 f_13@@148) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@118 f_13@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@46) o2_30@@118 f_13@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@46 Mask@@107) (IsPredicateField_9863_9864 pm_f_30@@14))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15954) (ExhaleHeap@@47 T@PolymorphicMapType_15954) (Mask@@108 T@PolymorphicMapType_15975) (pm_f_30@@15 T@Field_22561_22562) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@47 Mask@@108) (=> (and (HasDirectPerm_9838_9839 Mask@@108 null pm_f_30@@15) (IsPredicateField_9838_9839 pm_f_30@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@119 T@Ref) (f_13@@149 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@119 f_13@@149) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@52) o2_30@@119 f_13@@149) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@119 f_13@@149)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@119 f_13@@149))
)) (forall ((o2_30@@120 T@Ref) (f_13@@150 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@120 f_13@@150) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@52) o2_30@@120 f_13@@150) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@120 f_13@@150)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@120 f_13@@150))
))) (forall ((o2_30@@121 T@Ref) (f_13@@151 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@121 f_13@@151) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@121 f_13@@151) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@121 f_13@@151)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@121 f_13@@151))
))) (forall ((o2_30@@122 T@Ref) (f_13@@152 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@122 f_13@@152) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@52) o2_30@@122 f_13@@152) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@122 f_13@@152)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@122 f_13@@152))
))) (forall ((o2_30@@123 T@Ref) (f_13@@153 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@123 f_13@@153) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@52) o2_30@@123 f_13@@153) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@123 f_13@@153)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@123 f_13@@153))
))) (forall ((o2_30@@124 T@Ref) (f_13@@154 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@124 f_13@@154) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@52) o2_30@@124 f_13@@154) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@124 f_13@@154)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@124 f_13@@154))
))) (forall ((o2_30@@125 T@Ref) (f_13@@155 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@125 f_13@@155) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@52) o2_30@@125 f_13@@155) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@125 f_13@@155)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@125 f_13@@155))
))) (forall ((o2_30@@126 T@Ref) (f_13@@156 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@126 f_13@@156) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@126 f_13@@156) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@126 f_13@@156)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@126 f_13@@156))
))) (forall ((o2_30@@127 T@Ref) (f_13@@157 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@127 f_13@@157) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@52) o2_30@@127 f_13@@157) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@127 f_13@@157)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@127 f_13@@157))
))) (forall ((o2_30@@128 T@Ref) (f_13@@158 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@128 f_13@@158) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@52) o2_30@@128 f_13@@158) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@128 f_13@@158)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@128 f_13@@158))
))) (forall ((o2_30@@129 T@Ref) (f_13@@159 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@129 f_13@@159) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@52) o2_30@@129 f_13@@159) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@129 f_13@@159)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@129 f_13@@159))
))) (forall ((o2_30@@130 T@Ref) (f_13@@160 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@130 f_13@@160) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@52) o2_30@@130 f_13@@160) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@130 f_13@@160)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@130 f_13@@160))
))) (forall ((o2_30@@131 T@Ref) (f_13@@161 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@131 f_13@@161) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@131 f_13@@161) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@131 f_13@@161)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@131 f_13@@161))
))) (forall ((o2_30@@132 T@Ref) (f_13@@162 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@132 f_13@@162) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@52) o2_30@@132 f_13@@162) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@132 f_13@@162)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@132 f_13@@162))
))) (forall ((o2_30@@133 T@Ref) (f_13@@163 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@133 f_13@@163) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) o2_30@@133 f_13@@163) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@133 f_13@@163)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@133 f_13@@163))
))) (forall ((o2_30@@134 T@Ref) (f_13@@164 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@134 f_13@@164) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@52) o2_30@@134 f_13@@164) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@134 f_13@@164)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@134 f_13@@164))
))) (forall ((o2_30@@135 T@Ref) (f_13@@165 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@135 f_13@@165) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@52) o2_30@@135 f_13@@165) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@135 f_13@@165)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@135 f_13@@165))
))) (forall ((o2_30@@136 T@Ref) (f_13@@166 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@136 f_13@@166) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@136 f_13@@166) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@136 f_13@@166)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@136 f_13@@166))
))) (forall ((o2_30@@137 T@Ref) (f_13@@167 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@137 f_13@@167) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@52) o2_30@@137 f_13@@167) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@137 f_13@@167)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@137 f_13@@167))
))) (forall ((o2_30@@138 T@Ref) (f_13@@168 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@138 f_13@@168) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@52) o2_30@@138 f_13@@168) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@138 f_13@@168)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@138 f_13@@168))
))) (forall ((o2_30@@139 T@Ref) (f_13@@169 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@139 f_13@@169) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@52) o2_30@@139 f_13@@169) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@139 f_13@@169)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@139 f_13@@169))
))) (forall ((o2_30@@140 T@Ref) (f_13@@170 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@140 f_13@@170) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@52) o2_30@@140 f_13@@170) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@140 f_13@@170)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@140 f_13@@170))
))) (forall ((o2_30@@141 T@Ref) (f_13@@171 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@141 f_13@@171) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@141 f_13@@171) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@141 f_13@@171)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@141 f_13@@171))
))) (forall ((o2_30@@142 T@Ref) (f_13@@172 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@142 f_13@@172) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@52) o2_30@@142 f_13@@172) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@142 f_13@@172)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@142 f_13@@172))
))) (forall ((o2_30@@143 T@Ref) (f_13@@173 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@143 f_13@@173) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@52) o2_30@@143 f_13@@173) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@143 f_13@@173)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@143 f_13@@173))
))) (forall ((o2_30@@144 T@Ref) (f_13@@174 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@144 f_13@@174) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@52) o2_30@@144 f_13@@174) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@144 f_13@@174)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@144 f_13@@174))
))) (forall ((o2_30@@145 T@Ref) (f_13@@175 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@145 f_13@@175) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@52) o2_30@@145 f_13@@175) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@145 f_13@@175)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@145 f_13@@175))
))) (forall ((o2_30@@146 T@Ref) (f_13@@176 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@146 f_13@@176) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@52) o2_30@@146 f_13@@176) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@146 f_13@@176)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@146 f_13@@176))
))) (forall ((o2_30@@147 T@Ref) (f_13@@177 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@147 f_13@@177) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@52) o2_30@@147 f_13@@177) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@147 f_13@@177)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@147 f_13@@177))
))) (forall ((o2_30@@148 T@Ref) (f_13@@178 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@52) null (PredicateMaskField_9838 pm_f_30@@15))) o2_30@@148 f_13@@178) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@52) o2_30@@148 f_13@@178) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@148 f_13@@178)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@47) o2_30@@148 f_13@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@47 Mask@@108) (IsPredicateField_9838_9839 pm_f_30@@15))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15954) (ExhaleHeap@@48 T@PolymorphicMapType_15954) (Mask@@109 T@PolymorphicMapType_15975) (pm_f_30@@16 T@Field_9821_9839) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@48 Mask@@109) (=> (and (HasDirectPerm_9821_9839 Mask@@109 null pm_f_30@@16) (IsPredicateField_9821_54969 pm_f_30@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@149 T@Ref) (f_13@@179 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@149 f_13@@179) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@53) o2_30@@149 f_13@@179) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@149 f_13@@179)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@149 f_13@@179))
)) (forall ((o2_30@@150 T@Ref) (f_13@@180 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@150 f_13@@180) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@53) o2_30@@150 f_13@@180) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@150 f_13@@180)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@150 f_13@@180))
))) (forall ((o2_30@@151 T@Ref) (f_13@@181 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@151 f_13@@181) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@151 f_13@@181) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@151 f_13@@181)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@151 f_13@@181))
))) (forall ((o2_30@@152 T@Ref) (f_13@@182 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@152 f_13@@182) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@53) o2_30@@152 f_13@@182) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@152 f_13@@182)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@152 f_13@@182))
))) (forall ((o2_30@@153 T@Ref) (f_13@@183 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@153 f_13@@183) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) o2_30@@153 f_13@@183) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@153 f_13@@183)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@153 f_13@@183))
))) (forall ((o2_30@@154 T@Ref) (f_13@@184 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@154 f_13@@184) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@53) o2_30@@154 f_13@@184) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@154 f_13@@184)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@154 f_13@@184))
))) (forall ((o2_30@@155 T@Ref) (f_13@@185 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@155 f_13@@185) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@53) o2_30@@155 f_13@@185) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@155 f_13@@185)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@155 f_13@@185))
))) (forall ((o2_30@@156 T@Ref) (f_13@@186 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@156 f_13@@186) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@156 f_13@@186) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@156 f_13@@186)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@156 f_13@@186))
))) (forall ((o2_30@@157 T@Ref) (f_13@@187 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@157 f_13@@187) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@53) o2_30@@157 f_13@@187) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@157 f_13@@187)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@157 f_13@@187))
))) (forall ((o2_30@@158 T@Ref) (f_13@@188 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@158 f_13@@188) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@53) o2_30@@158 f_13@@188) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@158 f_13@@188)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@158 f_13@@188))
))) (forall ((o2_30@@159 T@Ref) (f_13@@189 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@159 f_13@@189) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@53) o2_30@@159 f_13@@189) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@159 f_13@@189)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@159 f_13@@189))
))) (forall ((o2_30@@160 T@Ref) (f_13@@190 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@160 f_13@@190) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@53) o2_30@@160 f_13@@190) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@160 f_13@@190)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@160 f_13@@190))
))) (forall ((o2_30@@161 T@Ref) (f_13@@191 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@161 f_13@@191) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@161 f_13@@191) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@161 f_13@@191)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@161 f_13@@191))
))) (forall ((o2_30@@162 T@Ref) (f_13@@192 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@162 f_13@@192) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@53) o2_30@@162 f_13@@192) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@162 f_13@@192)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@162 f_13@@192))
))) (forall ((o2_30@@163 T@Ref) (f_13@@193 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@163 f_13@@193) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@53) o2_30@@163 f_13@@193) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@163 f_13@@193)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@163 f_13@@193))
))) (forall ((o2_30@@164 T@Ref) (f_13@@194 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@164 f_13@@194) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@53) o2_30@@164 f_13@@194) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@164 f_13@@194)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@164 f_13@@194))
))) (forall ((o2_30@@165 T@Ref) (f_13@@195 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@165 f_13@@195) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@53) o2_30@@165 f_13@@195) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@165 f_13@@195)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@165 f_13@@195))
))) (forall ((o2_30@@166 T@Ref) (f_13@@196 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@166 f_13@@196) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@166 f_13@@196) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@166 f_13@@196)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@166 f_13@@196))
))) (forall ((o2_30@@167 T@Ref) (f_13@@197 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@167 f_13@@197) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@53) o2_30@@167 f_13@@197) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@167 f_13@@197)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@167 f_13@@197))
))) (forall ((o2_30@@168 T@Ref) (f_13@@198 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@168 f_13@@198) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@53) o2_30@@168 f_13@@198) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@168 f_13@@198)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@168 f_13@@198))
))) (forall ((o2_30@@169 T@Ref) (f_13@@199 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@169 f_13@@199) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@53) o2_30@@169 f_13@@199) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@169 f_13@@199)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@169 f_13@@199))
))) (forall ((o2_30@@170 T@Ref) (f_13@@200 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@170 f_13@@200) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@53) o2_30@@170 f_13@@200) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@170 f_13@@200)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@170 f_13@@200))
))) (forall ((o2_30@@171 T@Ref) (f_13@@201 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@171 f_13@@201) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@171 f_13@@201) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@171 f_13@@201)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@171 f_13@@201))
))) (forall ((o2_30@@172 T@Ref) (f_13@@202 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@172 f_13@@202) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@53) o2_30@@172 f_13@@202) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@172 f_13@@202)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@172 f_13@@202))
))) (forall ((o2_30@@173 T@Ref) (f_13@@203 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@173 f_13@@203) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@53) o2_30@@173 f_13@@203) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@173 f_13@@203)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@173 f_13@@203))
))) (forall ((o2_30@@174 T@Ref) (f_13@@204 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@174 f_13@@204) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@53) o2_30@@174 f_13@@204) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@174 f_13@@204)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@174 f_13@@204))
))) (forall ((o2_30@@175 T@Ref) (f_13@@205 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@175 f_13@@205) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@53) o2_30@@175 f_13@@205) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@175 f_13@@205)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@175 f_13@@205))
))) (forall ((o2_30@@176 T@Ref) (f_13@@206 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@176 f_13@@206) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@53) o2_30@@176 f_13@@206) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@176 f_13@@206)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@176 f_13@@206))
))) (forall ((o2_30@@177 T@Ref) (f_13@@207 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@177 f_13@@207) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@53) o2_30@@177 f_13@@207) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@177 f_13@@207)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@177 f_13@@207))
))) (forall ((o2_30@@178 T@Ref) (f_13@@208 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@53) null (PredicateMaskField_9821 pm_f_30@@16))) o2_30@@178 f_13@@208) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@53) o2_30@@178 f_13@@208) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@178 f_13@@208)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@48) o2_30@@178 f_13@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@48 Mask@@109) (IsPredicateField_9821_54969 pm_f_30@@16))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_15954) (ExhaleHeap@@49 T@PolymorphicMapType_15954) (Mask@@110 T@PolymorphicMapType_15975) (pm_f_30@@17 T@Field_22143_22144) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@49 Mask@@110) (=> (and (HasDirectPerm_22143_9839 Mask@@110 null pm_f_30@@17) (IsWandField_22143_66710 pm_f_30@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@179 T@Ref) (f_13@@209 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@179 f_13@@209) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@54) o2_30@@179 f_13@@209) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@179 f_13@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@179 f_13@@209))
)) (forall ((o2_30@@180 T@Ref) (f_13@@210 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@180 f_13@@210) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@54) o2_30@@180 f_13@@210) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@180 f_13@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@180 f_13@@210))
))) (forall ((o2_30@@181 T@Ref) (f_13@@211 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@181 f_13@@211) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@181 f_13@@211) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@181 f_13@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@181 f_13@@211))
))) (forall ((o2_30@@182 T@Ref) (f_13@@212 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@182 f_13@@212) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@54) o2_30@@182 f_13@@212) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@182 f_13@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@182 f_13@@212))
))) (forall ((o2_30@@183 T@Ref) (f_13@@213 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@183 f_13@@213) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@54) o2_30@@183 f_13@@213) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@183 f_13@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@183 f_13@@213))
))) (forall ((o2_30@@184 T@Ref) (f_13@@214 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@184 f_13@@214) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@54) o2_30@@184 f_13@@214) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@184 f_13@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@184 f_13@@214))
))) (forall ((o2_30@@185 T@Ref) (f_13@@215 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@185 f_13@@215) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@54) o2_30@@185 f_13@@215) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@185 f_13@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@185 f_13@@215))
))) (forall ((o2_30@@186 T@Ref) (f_13@@216 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@186 f_13@@216) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@186 f_13@@216) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@186 f_13@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@186 f_13@@216))
))) (forall ((o2_30@@187 T@Ref) (f_13@@217 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@187 f_13@@217) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@54) o2_30@@187 f_13@@217) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@187 f_13@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@187 f_13@@217))
))) (forall ((o2_30@@188 T@Ref) (f_13@@218 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@188 f_13@@218) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) o2_30@@188 f_13@@218) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@188 f_13@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@188 f_13@@218))
))) (forall ((o2_30@@189 T@Ref) (f_13@@219 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@189 f_13@@219) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@54) o2_30@@189 f_13@@219) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@189 f_13@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@189 f_13@@219))
))) (forall ((o2_30@@190 T@Ref) (f_13@@220 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@190 f_13@@220) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@54) o2_30@@190 f_13@@220) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@190 f_13@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@190 f_13@@220))
))) (forall ((o2_30@@191 T@Ref) (f_13@@221 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@191 f_13@@221) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@191 f_13@@221) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@191 f_13@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@191 f_13@@221))
))) (forall ((o2_30@@192 T@Ref) (f_13@@222 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@192 f_13@@222) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@54) o2_30@@192 f_13@@222) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@192 f_13@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@192 f_13@@222))
))) (forall ((o2_30@@193 T@Ref) (f_13@@223 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@193 f_13@@223) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@54) o2_30@@193 f_13@@223) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@193 f_13@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@193 f_13@@223))
))) (forall ((o2_30@@194 T@Ref) (f_13@@224 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@194 f_13@@224) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@54) o2_30@@194 f_13@@224) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@194 f_13@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@194 f_13@@224))
))) (forall ((o2_30@@195 T@Ref) (f_13@@225 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@195 f_13@@225) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@54) o2_30@@195 f_13@@225) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@195 f_13@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@195 f_13@@225))
))) (forall ((o2_30@@196 T@Ref) (f_13@@226 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@196 f_13@@226) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@196 f_13@@226) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@196 f_13@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@196 f_13@@226))
))) (forall ((o2_30@@197 T@Ref) (f_13@@227 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@197 f_13@@227) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@54) o2_30@@197 f_13@@227) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@197 f_13@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@197 f_13@@227))
))) (forall ((o2_30@@198 T@Ref) (f_13@@228 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@198 f_13@@228) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@54) o2_30@@198 f_13@@228) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@198 f_13@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@198 f_13@@228))
))) (forall ((o2_30@@199 T@Ref) (f_13@@229 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@199 f_13@@229) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@54) o2_30@@199 f_13@@229) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@199 f_13@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@199 f_13@@229))
))) (forall ((o2_30@@200 T@Ref) (f_13@@230 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@200 f_13@@230) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@54) o2_30@@200 f_13@@230) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@200 f_13@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@200 f_13@@230))
))) (forall ((o2_30@@201 T@Ref) (f_13@@231 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@201 f_13@@231) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@201 f_13@@231) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@201 f_13@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@201 f_13@@231))
))) (forall ((o2_30@@202 T@Ref) (f_13@@232 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@202 f_13@@232) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@54) o2_30@@202 f_13@@232) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@202 f_13@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@202 f_13@@232))
))) (forall ((o2_30@@203 T@Ref) (f_13@@233 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@203 f_13@@233) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@54) o2_30@@203 f_13@@233) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@203 f_13@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@203 f_13@@233))
))) (forall ((o2_30@@204 T@Ref) (f_13@@234 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@204 f_13@@234) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@54) o2_30@@204 f_13@@234) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@204 f_13@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@204 f_13@@234))
))) (forall ((o2_30@@205 T@Ref) (f_13@@235 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@205 f_13@@235) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@54) o2_30@@205 f_13@@235) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@205 f_13@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@205 f_13@@235))
))) (forall ((o2_30@@206 T@Ref) (f_13@@236 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@206 f_13@@236) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@54) o2_30@@206 f_13@@236) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@206 f_13@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@206 f_13@@236))
))) (forall ((o2_30@@207 T@Ref) (f_13@@237 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@207 f_13@@237) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@54) o2_30@@207 f_13@@237) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@207 f_13@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@207 f_13@@237))
))) (forall ((o2_30@@208 T@Ref) (f_13@@238 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@54) null (WandMaskField_22143 pm_f_30@@17))) o2_30@@208 f_13@@238) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@54) o2_30@@208 f_13@@238) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@208 f_13@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@49) o2_30@@208 f_13@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@49 Mask@@110) (IsWandField_22143_66710 pm_f_30@@17))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_15954) (ExhaleHeap@@50 T@PolymorphicMapType_15954) (Mask@@111 T@PolymorphicMapType_15975) (pm_f_30@@18 T@Field_25463_25464) ) (!  (=> (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@50 Mask@@111) (=> (and (HasDirectPerm_9913_9914 Mask@@111 null pm_f_30@@18) (IsWandField_9913_66353 pm_f_30@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@209 T@Ref) (f_13@@239 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@209 f_13@@239) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@55) o2_30@@209 f_13@@239) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@209 f_13@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@209 f_13@@239))
)) (forall ((o2_30@@210 T@Ref) (f_13@@240 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@210 f_13@@240) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@55) o2_30@@210 f_13@@240) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@210 f_13@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@210 f_13@@240))
))) (forall ((o2_30@@211 T@Ref) (f_13@@241 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@211 f_13@@241) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@211 f_13@@241) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@211 f_13@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@211 f_13@@241))
))) (forall ((o2_30@@212 T@Ref) (f_13@@242 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@212 f_13@@242) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@55) o2_30@@212 f_13@@242) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@212 f_13@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@212 f_13@@242))
))) (forall ((o2_30@@213 T@Ref) (f_13@@243 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@213 f_13@@243) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@55) o2_30@@213 f_13@@243) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@213 f_13@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@213 f_13@@243))
))) (forall ((o2_30@@214 T@Ref) (f_13@@244 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@214 f_13@@244) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@55) o2_30@@214 f_13@@244) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@214 f_13@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@214 f_13@@244))
))) (forall ((o2_30@@215 T@Ref) (f_13@@245 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@215 f_13@@245) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@55) o2_30@@215 f_13@@245) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@215 f_13@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@215 f_13@@245))
))) (forall ((o2_30@@216 T@Ref) (f_13@@246 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@216 f_13@@246) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@216 f_13@@246) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@216 f_13@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@216 f_13@@246))
))) (forall ((o2_30@@217 T@Ref) (f_13@@247 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@217 f_13@@247) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@55) o2_30@@217 f_13@@247) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@217 f_13@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@217 f_13@@247))
))) (forall ((o2_30@@218 T@Ref) (f_13@@248 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@218 f_13@@248) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@55) o2_30@@218 f_13@@248) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@218 f_13@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@218 f_13@@248))
))) (forall ((o2_30@@219 T@Ref) (f_13@@249 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@219 f_13@@249) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@55) o2_30@@219 f_13@@249) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@219 f_13@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@219 f_13@@249))
))) (forall ((o2_30@@220 T@Ref) (f_13@@250 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@220 f_13@@250) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@55) o2_30@@220 f_13@@250) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@220 f_13@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@220 f_13@@250))
))) (forall ((o2_30@@221 T@Ref) (f_13@@251 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@221 f_13@@251) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@221 f_13@@251) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@221 f_13@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@221 f_13@@251))
))) (forall ((o2_30@@222 T@Ref) (f_13@@252 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@222 f_13@@252) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@55) o2_30@@222 f_13@@252) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@222 f_13@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@222 f_13@@252))
))) (forall ((o2_30@@223 T@Ref) (f_13@@253 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@223 f_13@@253) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@55) o2_30@@223 f_13@@253) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@223 f_13@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@223 f_13@@253))
))) (forall ((o2_30@@224 T@Ref) (f_13@@254 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@224 f_13@@254) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@55) o2_30@@224 f_13@@254) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@224 f_13@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@224 f_13@@254))
))) (forall ((o2_30@@225 T@Ref) (f_13@@255 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@225 f_13@@255) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@55) o2_30@@225 f_13@@255) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@225 f_13@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@225 f_13@@255))
))) (forall ((o2_30@@226 T@Ref) (f_13@@256 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@226 f_13@@256) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@226 f_13@@256) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@226 f_13@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@226 f_13@@256))
))) (forall ((o2_30@@227 T@Ref) (f_13@@257 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@227 f_13@@257) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@55) o2_30@@227 f_13@@257) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@227 f_13@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@227 f_13@@257))
))) (forall ((o2_30@@228 T@Ref) (f_13@@258 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@228 f_13@@258) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@55) o2_30@@228 f_13@@258) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@228 f_13@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@228 f_13@@258))
))) (forall ((o2_30@@229 T@Ref) (f_13@@259 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@229 f_13@@259) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@55) o2_30@@229 f_13@@259) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@229 f_13@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@229 f_13@@259))
))) (forall ((o2_30@@230 T@Ref) (f_13@@260 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@230 f_13@@260) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@55) o2_30@@230 f_13@@260) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@230 f_13@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@230 f_13@@260))
))) (forall ((o2_30@@231 T@Ref) (f_13@@261 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@231 f_13@@261) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@231 f_13@@261) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@231 f_13@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@231 f_13@@261))
))) (forall ((o2_30@@232 T@Ref) (f_13@@262 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@232 f_13@@262) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@55) o2_30@@232 f_13@@262) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@232 f_13@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@232 f_13@@262))
))) (forall ((o2_30@@233 T@Ref) (f_13@@263 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@233 f_13@@263) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@55) o2_30@@233 f_13@@263) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@233 f_13@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@233 f_13@@263))
))) (forall ((o2_30@@234 T@Ref) (f_13@@264 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@234 f_13@@264) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@55) o2_30@@234 f_13@@264) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@234 f_13@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@234 f_13@@264))
))) (forall ((o2_30@@235 T@Ref) (f_13@@265 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@235 f_13@@265) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@55) o2_30@@235 f_13@@265) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@235 f_13@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@235 f_13@@265))
))) (forall ((o2_30@@236 T@Ref) (f_13@@266 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@236 f_13@@266) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@55) o2_30@@236 f_13@@266) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@236 f_13@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@236 f_13@@266))
))) (forall ((o2_30@@237 T@Ref) (f_13@@267 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@237 f_13@@267) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@55) o2_30@@237 f_13@@267) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@237 f_13@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@237 f_13@@267))
))) (forall ((o2_30@@238 T@Ref) (f_13@@268 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) null (WandMaskField_9913 pm_f_30@@18))) o2_30@@238 f_13@@268) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@55) o2_30@@238 f_13@@268) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@238 f_13@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@50) o2_30@@238 f_13@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@55 ExhaleHeap@@50 Mask@@111) (IsWandField_9913_66353 pm_f_30@@18))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_15954) (ExhaleHeap@@51 T@PolymorphicMapType_15954) (Mask@@112 T@PolymorphicMapType_15975) (pm_f_30@@19 T@Field_24489_24490) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@51 Mask@@112) (=> (and (HasDirectPerm_9888_9889 Mask@@112 null pm_f_30@@19) (IsWandField_9888_65996 pm_f_30@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@239 T@Ref) (f_13@@269 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@239 f_13@@269) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@56) o2_30@@239 f_13@@269) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@239 f_13@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@239 f_13@@269))
)) (forall ((o2_30@@240 T@Ref) (f_13@@270 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@240 f_13@@270) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@56) o2_30@@240 f_13@@270) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@240 f_13@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@240 f_13@@270))
))) (forall ((o2_30@@241 T@Ref) (f_13@@271 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@241 f_13@@271) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@241 f_13@@271) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@241 f_13@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@241 f_13@@271))
))) (forall ((o2_30@@242 T@Ref) (f_13@@272 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@242 f_13@@272) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@56) o2_30@@242 f_13@@272) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@242 f_13@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@242 f_13@@272))
))) (forall ((o2_30@@243 T@Ref) (f_13@@273 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@243 f_13@@273) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@56) o2_30@@243 f_13@@273) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@243 f_13@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@243 f_13@@273))
))) (forall ((o2_30@@244 T@Ref) (f_13@@274 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@244 f_13@@274) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@56) o2_30@@244 f_13@@274) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@244 f_13@@274)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@244 f_13@@274))
))) (forall ((o2_30@@245 T@Ref) (f_13@@275 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@245 f_13@@275) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@56) o2_30@@245 f_13@@275) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@245 f_13@@275)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@245 f_13@@275))
))) (forall ((o2_30@@246 T@Ref) (f_13@@276 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@246 f_13@@276) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@246 f_13@@276) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@246 f_13@@276)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@246 f_13@@276))
))) (forall ((o2_30@@247 T@Ref) (f_13@@277 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@247 f_13@@277) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@56) o2_30@@247 f_13@@277) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@247 f_13@@277)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@247 f_13@@277))
))) (forall ((o2_30@@248 T@Ref) (f_13@@278 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@248 f_13@@278) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@56) o2_30@@248 f_13@@278) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@248 f_13@@278)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@248 f_13@@278))
))) (forall ((o2_30@@249 T@Ref) (f_13@@279 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@249 f_13@@279) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@56) o2_30@@249 f_13@@279) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@249 f_13@@279)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@249 f_13@@279))
))) (forall ((o2_30@@250 T@Ref) (f_13@@280 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@250 f_13@@280) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@56) o2_30@@250 f_13@@280) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@250 f_13@@280)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@250 f_13@@280))
))) (forall ((o2_30@@251 T@Ref) (f_13@@281 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@251 f_13@@281) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@251 f_13@@281) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@251 f_13@@281)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@251 f_13@@281))
))) (forall ((o2_30@@252 T@Ref) (f_13@@282 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@252 f_13@@282) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@56) o2_30@@252 f_13@@282) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@252 f_13@@282)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@252 f_13@@282))
))) (forall ((o2_30@@253 T@Ref) (f_13@@283 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@253 f_13@@283) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@56) o2_30@@253 f_13@@283) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@253 f_13@@283)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@253 f_13@@283))
))) (forall ((o2_30@@254 T@Ref) (f_13@@284 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@254 f_13@@284) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@56) o2_30@@254 f_13@@284) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@254 f_13@@284)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@254 f_13@@284))
))) (forall ((o2_30@@255 T@Ref) (f_13@@285 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@255 f_13@@285) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@56) o2_30@@255 f_13@@285) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@255 f_13@@285)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@255 f_13@@285))
))) (forall ((o2_30@@256 T@Ref) (f_13@@286 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@256 f_13@@286) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@256 f_13@@286) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@256 f_13@@286)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@256 f_13@@286))
))) (forall ((o2_30@@257 T@Ref) (f_13@@287 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@257 f_13@@287) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@56) o2_30@@257 f_13@@287) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@257 f_13@@287)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@257 f_13@@287))
))) (forall ((o2_30@@258 T@Ref) (f_13@@288 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@258 f_13@@288) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@56) o2_30@@258 f_13@@288) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@258 f_13@@288)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@258 f_13@@288))
))) (forall ((o2_30@@259 T@Ref) (f_13@@289 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@259 f_13@@289) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@56) o2_30@@259 f_13@@289) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@259 f_13@@289)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@259 f_13@@289))
))) (forall ((o2_30@@260 T@Ref) (f_13@@290 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@260 f_13@@290) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@56) o2_30@@260 f_13@@290) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@260 f_13@@290)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@260 f_13@@290))
))) (forall ((o2_30@@261 T@Ref) (f_13@@291 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@261 f_13@@291) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@261 f_13@@291) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@261 f_13@@291)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@261 f_13@@291))
))) (forall ((o2_30@@262 T@Ref) (f_13@@292 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@262 f_13@@292) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@56) o2_30@@262 f_13@@292) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@262 f_13@@292)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@262 f_13@@292))
))) (forall ((o2_30@@263 T@Ref) (f_13@@293 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@263 f_13@@293) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) o2_30@@263 f_13@@293) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@263 f_13@@293)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@263 f_13@@293))
))) (forall ((o2_30@@264 T@Ref) (f_13@@294 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@264 f_13@@294) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@56) o2_30@@264 f_13@@294) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@264 f_13@@294)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@264 f_13@@294))
))) (forall ((o2_30@@265 T@Ref) (f_13@@295 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@265 f_13@@295) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@56) o2_30@@265 f_13@@295) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@265 f_13@@295)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@265 f_13@@295))
))) (forall ((o2_30@@266 T@Ref) (f_13@@296 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@266 f_13@@296) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@56) o2_30@@266 f_13@@296) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@266 f_13@@296)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@266 f_13@@296))
))) (forall ((o2_30@@267 T@Ref) (f_13@@297 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@267 f_13@@297) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@56) o2_30@@267 f_13@@297) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@267 f_13@@297)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@267 f_13@@297))
))) (forall ((o2_30@@268 T@Ref) (f_13@@298 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@56) null (WandMaskField_9888 pm_f_30@@19))) o2_30@@268 f_13@@298) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@56) o2_30@@268 f_13@@298) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@268 f_13@@298)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@51) o2_30@@268 f_13@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@51 Mask@@112) (IsWandField_9888_65996 pm_f_30@@19))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_15954) (ExhaleHeap@@52 T@PolymorphicMapType_15954) (Mask@@113 T@PolymorphicMapType_15975) (pm_f_30@@20 T@Field_23481_23482) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@52 Mask@@113) (=> (and (HasDirectPerm_9863_9864 Mask@@113 null pm_f_30@@20) (IsWandField_9863_65639 pm_f_30@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@269 T@Ref) (f_13@@299 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@269 f_13@@299) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@57) o2_30@@269 f_13@@299) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@269 f_13@@299)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@269 f_13@@299))
)) (forall ((o2_30@@270 T@Ref) (f_13@@300 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@270 f_13@@300) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@57) o2_30@@270 f_13@@300) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@270 f_13@@300)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@270 f_13@@300))
))) (forall ((o2_30@@271 T@Ref) (f_13@@301 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@271 f_13@@301) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@271 f_13@@301) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@271 f_13@@301)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@271 f_13@@301))
))) (forall ((o2_30@@272 T@Ref) (f_13@@302 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@272 f_13@@302) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@57) o2_30@@272 f_13@@302) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@272 f_13@@302)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@272 f_13@@302))
))) (forall ((o2_30@@273 T@Ref) (f_13@@303 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@273 f_13@@303) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@57) o2_30@@273 f_13@@303) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@273 f_13@@303)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@273 f_13@@303))
))) (forall ((o2_30@@274 T@Ref) (f_13@@304 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@274 f_13@@304) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@57) o2_30@@274 f_13@@304) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@274 f_13@@304)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@274 f_13@@304))
))) (forall ((o2_30@@275 T@Ref) (f_13@@305 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@275 f_13@@305) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@57) o2_30@@275 f_13@@305) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@275 f_13@@305)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@275 f_13@@305))
))) (forall ((o2_30@@276 T@Ref) (f_13@@306 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@276 f_13@@306) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@276 f_13@@306) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@276 f_13@@306)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@276 f_13@@306))
))) (forall ((o2_30@@277 T@Ref) (f_13@@307 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@277 f_13@@307) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@57) o2_30@@277 f_13@@307) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@277 f_13@@307)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@277 f_13@@307))
))) (forall ((o2_30@@278 T@Ref) (f_13@@308 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@278 f_13@@308) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@57) o2_30@@278 f_13@@308) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@278 f_13@@308)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@278 f_13@@308))
))) (forall ((o2_30@@279 T@Ref) (f_13@@309 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@279 f_13@@309) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@57) o2_30@@279 f_13@@309) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@279 f_13@@309)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@279 f_13@@309))
))) (forall ((o2_30@@280 T@Ref) (f_13@@310 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@280 f_13@@310) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@57) o2_30@@280 f_13@@310) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@280 f_13@@310)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@280 f_13@@310))
))) (forall ((o2_30@@281 T@Ref) (f_13@@311 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@281 f_13@@311) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@281 f_13@@311) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@281 f_13@@311)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@281 f_13@@311))
))) (forall ((o2_30@@282 T@Ref) (f_13@@312 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@282 f_13@@312) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@57) o2_30@@282 f_13@@312) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@282 f_13@@312)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@282 f_13@@312))
))) (forall ((o2_30@@283 T@Ref) (f_13@@313 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@283 f_13@@313) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@57) o2_30@@283 f_13@@313) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@283 f_13@@313)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@283 f_13@@313))
))) (forall ((o2_30@@284 T@Ref) (f_13@@314 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@284 f_13@@314) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@57) o2_30@@284 f_13@@314) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@284 f_13@@314)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@284 f_13@@314))
))) (forall ((o2_30@@285 T@Ref) (f_13@@315 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@285 f_13@@315) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@57) o2_30@@285 f_13@@315) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@285 f_13@@315)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@285 f_13@@315))
))) (forall ((o2_30@@286 T@Ref) (f_13@@316 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@286 f_13@@316) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@286 f_13@@316) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@286 f_13@@316)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@286 f_13@@316))
))) (forall ((o2_30@@287 T@Ref) (f_13@@317 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@287 f_13@@317) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@57) o2_30@@287 f_13@@317) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@287 f_13@@317)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@287 f_13@@317))
))) (forall ((o2_30@@288 T@Ref) (f_13@@318 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@288 f_13@@318) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) o2_30@@288 f_13@@318) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@288 f_13@@318)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@288 f_13@@318))
))) (forall ((o2_30@@289 T@Ref) (f_13@@319 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@289 f_13@@319) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@57) o2_30@@289 f_13@@319) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@289 f_13@@319)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@289 f_13@@319))
))) (forall ((o2_30@@290 T@Ref) (f_13@@320 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@290 f_13@@320) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@57) o2_30@@290 f_13@@320) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@290 f_13@@320)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@290 f_13@@320))
))) (forall ((o2_30@@291 T@Ref) (f_13@@321 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@291 f_13@@321) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@291 f_13@@321) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@291 f_13@@321)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@291 f_13@@321))
))) (forall ((o2_30@@292 T@Ref) (f_13@@322 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@292 f_13@@322) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@57) o2_30@@292 f_13@@322) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@292 f_13@@322)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@292 f_13@@322))
))) (forall ((o2_30@@293 T@Ref) (f_13@@323 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@293 f_13@@323) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@57) o2_30@@293 f_13@@323) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@293 f_13@@323)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@293 f_13@@323))
))) (forall ((o2_30@@294 T@Ref) (f_13@@324 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@294 f_13@@324) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@57) o2_30@@294 f_13@@324) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@294 f_13@@324)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@294 f_13@@324))
))) (forall ((o2_30@@295 T@Ref) (f_13@@325 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@295 f_13@@325) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@57) o2_30@@295 f_13@@325) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@295 f_13@@325)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@295 f_13@@325))
))) (forall ((o2_30@@296 T@Ref) (f_13@@326 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@296 f_13@@326) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@57) o2_30@@296 f_13@@326) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@296 f_13@@326)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@296 f_13@@326))
))) (forall ((o2_30@@297 T@Ref) (f_13@@327 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@297 f_13@@327) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@57) o2_30@@297 f_13@@327) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@297 f_13@@327)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@297 f_13@@327))
))) (forall ((o2_30@@298 T@Ref) (f_13@@328 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@57) null (WandMaskField_9863 pm_f_30@@20))) o2_30@@298 f_13@@328) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@57) o2_30@@298 f_13@@328) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@298 f_13@@328)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@52) o2_30@@298 f_13@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@52 Mask@@113) (IsWandField_9863_65639 pm_f_30@@20))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_15954) (ExhaleHeap@@53 T@PolymorphicMapType_15954) (Mask@@114 T@PolymorphicMapType_15975) (pm_f_30@@21 T@Field_22561_22562) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@53 Mask@@114) (=> (and (HasDirectPerm_9838_9839 Mask@@114 null pm_f_30@@21) (IsWandField_9838_65282 pm_f_30@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@299 T@Ref) (f_13@@329 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@299 f_13@@329) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@58) o2_30@@299 f_13@@329) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@299 f_13@@329)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@299 f_13@@329))
)) (forall ((o2_30@@300 T@Ref) (f_13@@330 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@300 f_13@@330) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@58) o2_30@@300 f_13@@330) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@300 f_13@@330)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@300 f_13@@330))
))) (forall ((o2_30@@301 T@Ref) (f_13@@331 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@301 f_13@@331) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@301 f_13@@331) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@301 f_13@@331)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@301 f_13@@331))
))) (forall ((o2_30@@302 T@Ref) (f_13@@332 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@302 f_13@@332) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@58) o2_30@@302 f_13@@332) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@302 f_13@@332)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@302 f_13@@332))
))) (forall ((o2_30@@303 T@Ref) (f_13@@333 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@303 f_13@@333) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@58) o2_30@@303 f_13@@333) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@303 f_13@@333)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@303 f_13@@333))
))) (forall ((o2_30@@304 T@Ref) (f_13@@334 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@304 f_13@@334) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@58) o2_30@@304 f_13@@334) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@304 f_13@@334)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@304 f_13@@334))
))) (forall ((o2_30@@305 T@Ref) (f_13@@335 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@305 f_13@@335) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@58) o2_30@@305 f_13@@335) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@305 f_13@@335)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@305 f_13@@335))
))) (forall ((o2_30@@306 T@Ref) (f_13@@336 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@306 f_13@@336) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@306 f_13@@336) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@306 f_13@@336)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@306 f_13@@336))
))) (forall ((o2_30@@307 T@Ref) (f_13@@337 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@307 f_13@@337) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@58) o2_30@@307 f_13@@337) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@307 f_13@@337)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@307 f_13@@337))
))) (forall ((o2_30@@308 T@Ref) (f_13@@338 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@308 f_13@@338) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@58) o2_30@@308 f_13@@338) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@308 f_13@@338)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@308 f_13@@338))
))) (forall ((o2_30@@309 T@Ref) (f_13@@339 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@309 f_13@@339) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@58) o2_30@@309 f_13@@339) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@309 f_13@@339)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@309 f_13@@339))
))) (forall ((o2_30@@310 T@Ref) (f_13@@340 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@310 f_13@@340) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@58) o2_30@@310 f_13@@340) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@310 f_13@@340)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@310 f_13@@340))
))) (forall ((o2_30@@311 T@Ref) (f_13@@341 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@311 f_13@@341) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@311 f_13@@341) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@311 f_13@@341)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@311 f_13@@341))
))) (forall ((o2_30@@312 T@Ref) (f_13@@342 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@312 f_13@@342) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@58) o2_30@@312 f_13@@342) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@312 f_13@@342)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@312 f_13@@342))
))) (forall ((o2_30@@313 T@Ref) (f_13@@343 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@313 f_13@@343) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) o2_30@@313 f_13@@343) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@313 f_13@@343)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@313 f_13@@343))
))) (forall ((o2_30@@314 T@Ref) (f_13@@344 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@314 f_13@@344) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@58) o2_30@@314 f_13@@344) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@314 f_13@@344)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@314 f_13@@344))
))) (forall ((o2_30@@315 T@Ref) (f_13@@345 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@315 f_13@@345) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@58) o2_30@@315 f_13@@345) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@315 f_13@@345)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@315 f_13@@345))
))) (forall ((o2_30@@316 T@Ref) (f_13@@346 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@316 f_13@@346) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@316 f_13@@346) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@316 f_13@@346)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@316 f_13@@346))
))) (forall ((o2_30@@317 T@Ref) (f_13@@347 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@317 f_13@@347) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@58) o2_30@@317 f_13@@347) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@317 f_13@@347)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@317 f_13@@347))
))) (forall ((o2_30@@318 T@Ref) (f_13@@348 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@318 f_13@@348) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@58) o2_30@@318 f_13@@348) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@318 f_13@@348)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@318 f_13@@348))
))) (forall ((o2_30@@319 T@Ref) (f_13@@349 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@319 f_13@@349) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@58) o2_30@@319 f_13@@349) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@319 f_13@@349)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@319 f_13@@349))
))) (forall ((o2_30@@320 T@Ref) (f_13@@350 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@320 f_13@@350) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@58) o2_30@@320 f_13@@350) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@320 f_13@@350)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@320 f_13@@350))
))) (forall ((o2_30@@321 T@Ref) (f_13@@351 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@321 f_13@@351) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@321 f_13@@351) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@321 f_13@@351)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@321 f_13@@351))
))) (forall ((o2_30@@322 T@Ref) (f_13@@352 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@322 f_13@@352) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@58) o2_30@@322 f_13@@352) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@322 f_13@@352)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@322 f_13@@352))
))) (forall ((o2_30@@323 T@Ref) (f_13@@353 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@323 f_13@@353) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@58) o2_30@@323 f_13@@353) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@323 f_13@@353)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@323 f_13@@353))
))) (forall ((o2_30@@324 T@Ref) (f_13@@354 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@324 f_13@@354) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@58) o2_30@@324 f_13@@354) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@324 f_13@@354)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@324 f_13@@354))
))) (forall ((o2_30@@325 T@Ref) (f_13@@355 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@325 f_13@@355) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@58) o2_30@@325 f_13@@355) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@325 f_13@@355)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@325 f_13@@355))
))) (forall ((o2_30@@326 T@Ref) (f_13@@356 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@326 f_13@@356) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@58) o2_30@@326 f_13@@356) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@326 f_13@@356)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@326 f_13@@356))
))) (forall ((o2_30@@327 T@Ref) (f_13@@357 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@327 f_13@@357) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@58) o2_30@@327 f_13@@357) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@327 f_13@@357)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@327 f_13@@357))
))) (forall ((o2_30@@328 T@Ref) (f_13@@358 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@58) null (WandMaskField_9838 pm_f_30@@21))) o2_30@@328 f_13@@358) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@58) o2_30@@328 f_13@@358) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@328 f_13@@358)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@53) o2_30@@328 f_13@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@53 Mask@@114) (IsWandField_9838_65282 pm_f_30@@21))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_15954) (ExhaleHeap@@54 T@PolymorphicMapType_15954) (Mask@@115 T@PolymorphicMapType_15975) (pm_f_30@@22 T@Field_9821_9839) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@54 Mask@@115) (=> (and (HasDirectPerm_9821_9839 Mask@@115 null pm_f_30@@22) (IsWandField_9821_64925 pm_f_30@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_30@@329 T@Ref) (f_13@@359 T@Field_16014_53) ) (!  (=> (select (|PolymorphicMapType_16503_16014_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@329 f_13@@359) (= (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@59) o2_30@@329 f_13@@359) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@329 f_13@@359)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@329 f_13@@359))
)) (forall ((o2_30@@330 T@Ref) (f_13@@360 T@Field_16027_16028) ) (!  (=> (select (|PolymorphicMapType_16503_16014_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@330 f_13@@360) (= (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@59) o2_30@@330 f_13@@360) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@330 f_13@@360)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@330 f_13@@360))
))) (forall ((o2_30@@331 T@Ref) (f_13@@361 T@Field_22067_3242) ) (!  (=> (select (|PolymorphicMapType_16503_16014_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@331 f_13@@361) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@331 f_13@@361) (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@331 f_13@@361)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@331 f_13@@361))
))) (forall ((o2_30@@332 T@Ref) (f_13@@362 T@Field_9821_9839) ) (!  (=> (select (|PolymorphicMapType_16503_16014_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@332 f_13@@362) (= (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@59) o2_30@@332 f_13@@362) (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@332 f_13@@362)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@332 f_13@@362))
))) (forall ((o2_30@@333 T@Ref) (f_13@@363 T@Field_9821_22160) ) (!  (=> (select (|PolymorphicMapType_16503_16014_57753#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@333 f_13@@363) (= (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) o2_30@@333 f_13@@363) (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@333 f_13@@363)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@333 f_13@@363))
))) (forall ((o2_30@@334 T@Ref) (f_13@@364 T@Field_22143_53) ) (!  (=> (select (|PolymorphicMapType_16503_22143_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@334 f_13@@364) (= (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@59) o2_30@@334 f_13@@364) (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@334 f_13@@364)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@334 f_13@@364))
))) (forall ((o2_30@@335 T@Ref) (f_13@@365 T@Field_22143_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22143_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@335 f_13@@365) (= (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@59) o2_30@@335 f_13@@365) (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@335 f_13@@365)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@335 f_13@@365))
))) (forall ((o2_30@@336 T@Ref) (f_13@@366 T@Field_22143_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22143_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@336 f_13@@366) (= (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@336 f_13@@366) (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@336 f_13@@366)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@336 f_13@@366))
))) (forall ((o2_30@@337 T@Ref) (f_13@@367 T@Field_22143_22144) ) (!  (=> (select (|PolymorphicMapType_16503_22143_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@337 f_13@@367) (= (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@59) o2_30@@337 f_13@@367) (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@337 f_13@@367)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@337 f_13@@367))
))) (forall ((o2_30@@338 T@Ref) (f_13@@368 T@Field_22155_22160) ) (!  (=> (select (|PolymorphicMapType_16503_22143_58801#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@338 f_13@@368) (= (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@59) o2_30@@338 f_13@@368) (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@338 f_13@@368)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@338 f_13@@368))
))) (forall ((o2_30@@339 T@Ref) (f_13@@369 T@Field_9838_53) ) (!  (=> (select (|PolymorphicMapType_16503_22561_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@339 f_13@@369) (= (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@59) o2_30@@339 f_13@@369) (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@339 f_13@@369)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@339 f_13@@369))
))) (forall ((o2_30@@340 T@Ref) (f_13@@370 T@Field_9838_16028) ) (!  (=> (select (|PolymorphicMapType_16503_22561_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@340 f_13@@370) (= (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@59) o2_30@@340 f_13@@370) (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@340 f_13@@370)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@340 f_13@@370))
))) (forall ((o2_30@@341 T@Ref) (f_13@@371 T@Field_9838_3242) ) (!  (=> (select (|PolymorphicMapType_16503_22561_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@341 f_13@@371) (= (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@341 f_13@@371) (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@341 f_13@@371)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@341 f_13@@371))
))) (forall ((o2_30@@342 T@Ref) (f_13@@372 T@Field_22561_22562) ) (!  (=> (select (|PolymorphicMapType_16503_22561_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@342 f_13@@372) (= (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@59) o2_30@@342 f_13@@372) (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@342 f_13@@372)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@342 f_13@@372))
))) (forall ((o2_30@@343 T@Ref) (f_13@@373 T@Field_22574_22579) ) (!  (=> (select (|PolymorphicMapType_16503_22561_59849#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@343 f_13@@373) (= (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@59) o2_30@@343 f_13@@373) (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@343 f_13@@373)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@343 f_13@@373))
))) (forall ((o2_30@@344 T@Ref) (f_13@@374 T@Field_9863_53) ) (!  (=> (select (|PolymorphicMapType_16503_23481_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@344 f_13@@374) (= (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@59) o2_30@@344 f_13@@374) (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@344 f_13@@374)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@344 f_13@@374))
))) (forall ((o2_30@@345 T@Ref) (f_13@@375 T@Field_9863_16028) ) (!  (=> (select (|PolymorphicMapType_16503_23481_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@345 f_13@@375) (= (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@59) o2_30@@345 f_13@@375) (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@345 f_13@@375)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@345 f_13@@375))
))) (forall ((o2_30@@346 T@Ref) (f_13@@376 T@Field_9863_3242) ) (!  (=> (select (|PolymorphicMapType_16503_23481_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@346 f_13@@376) (= (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@346 f_13@@376) (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@346 f_13@@376)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@346 f_13@@376))
))) (forall ((o2_30@@347 T@Ref) (f_13@@377 T@Field_23481_23482) ) (!  (=> (select (|PolymorphicMapType_16503_23481_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@347 f_13@@377) (= (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@59) o2_30@@347 f_13@@377) (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@347 f_13@@377)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@347 f_13@@377))
))) (forall ((o2_30@@348 T@Ref) (f_13@@378 T@Field_23494_23499) ) (!  (=> (select (|PolymorphicMapType_16503_23481_60897#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@348 f_13@@378) (= (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@59) o2_30@@348 f_13@@378) (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@348 f_13@@378)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@348 f_13@@378))
))) (forall ((o2_30@@349 T@Ref) (f_13@@379 T@Field_9888_53) ) (!  (=> (select (|PolymorphicMapType_16503_24489_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@349 f_13@@379) (= (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@59) o2_30@@349 f_13@@379) (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@349 f_13@@379)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@349 f_13@@379))
))) (forall ((o2_30@@350 T@Ref) (f_13@@380 T@Field_9888_16028) ) (!  (=> (select (|PolymorphicMapType_16503_24489_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@350 f_13@@380) (= (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@59) o2_30@@350 f_13@@380) (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@350 f_13@@380)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@350 f_13@@380))
))) (forall ((o2_30@@351 T@Ref) (f_13@@381 T@Field_9888_3242) ) (!  (=> (select (|PolymorphicMapType_16503_24489_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@351 f_13@@381) (= (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@351 f_13@@381) (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@351 f_13@@381)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@351 f_13@@381))
))) (forall ((o2_30@@352 T@Ref) (f_13@@382 T@Field_24489_24490) ) (!  (=> (select (|PolymorphicMapType_16503_24489_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@352 f_13@@382) (= (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@59) o2_30@@352 f_13@@382) (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@352 f_13@@382)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@352 f_13@@382))
))) (forall ((o2_30@@353 T@Ref) (f_13@@383 T@Field_24502_24507) ) (!  (=> (select (|PolymorphicMapType_16503_24489_61945#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@353 f_13@@383) (= (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@59) o2_30@@353 f_13@@383) (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@353 f_13@@383)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@353 f_13@@383))
))) (forall ((o2_30@@354 T@Ref) (f_13@@384 T@Field_9913_53) ) (!  (=> (select (|PolymorphicMapType_16503_25463_53#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@354 f_13@@384) (= (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@59) o2_30@@354 f_13@@384) (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@354 f_13@@384)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@354 f_13@@384))
))) (forall ((o2_30@@355 T@Ref) (f_13@@385 T@Field_9913_16028) ) (!  (=> (select (|PolymorphicMapType_16503_25463_16028#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@355 f_13@@385) (= (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@59) o2_30@@355 f_13@@385) (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@355 f_13@@385)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@355 f_13@@385))
))) (forall ((o2_30@@356 T@Ref) (f_13@@386 T@Field_9913_3242) ) (!  (=> (select (|PolymorphicMapType_16503_25463_3242#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@356 f_13@@386) (= (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@59) o2_30@@356 f_13@@386) (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@356 f_13@@386)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@356 f_13@@386))
))) (forall ((o2_30@@357 T@Ref) (f_13@@387 T@Field_25463_25464) ) (!  (=> (select (|PolymorphicMapType_16503_25463_22144#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@357 f_13@@387) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@59) o2_30@@357 f_13@@387) (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@357 f_13@@387)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@357 f_13@@387))
))) (forall ((o2_30@@358 T@Ref) (f_13@@388 T@Field_25476_25481) ) (!  (=> (select (|PolymorphicMapType_16503_25463_62993#PolymorphicMapType_16503| (select (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@59) null (WandMaskField_9821 pm_f_30@@22))) o2_30@@358 f_13@@388) (= (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@59) o2_30@@358 f_13@@388) (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@358 f_13@@388)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| ExhaleHeap@@54) o2_30@@358 f_13@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@54 Mask@@115) (IsWandField_9821_64925 pm_f_30@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15975) (SummandMask1 T@PolymorphicMapType_15975) (SummandMask2 T@PolymorphicMapType_15975) (o_2@@119 T@Ref) (f_4@@119 T@Field_22155_22160) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15975) (SummandMask1@@0 T@PolymorphicMapType_15975) (SummandMask2@@0 T@PolymorphicMapType_15975) (o_2@@120 T@Ref) (f_4@@120 T@Field_22143_16028) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15975) (SummandMask1@@1 T@PolymorphicMapType_15975) (SummandMask2@@1 T@PolymorphicMapType_15975) (o_2@@121 T@Ref) (f_4@@121 T@Field_22143_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15975) (SummandMask1@@2 T@PolymorphicMapType_15975) (SummandMask2@@2 T@PolymorphicMapType_15975) (o_2@@122 T@Ref) (f_4@@122 T@Field_22143_22144) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15975) (SummandMask1@@3 T@PolymorphicMapType_15975) (SummandMask2@@3 T@PolymorphicMapType_15975) (o_2@@123 T@Ref) (f_4@@123 T@Field_22143_3242) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15975) (SummandMask1@@4 T@PolymorphicMapType_15975) (SummandMask2@@4 T@PolymorphicMapType_15975) (o_2@@124 T@Ref) (f_4@@124 T@Field_25476_25481) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15975) (SummandMask1@@5 T@PolymorphicMapType_15975) (SummandMask2@@5 T@PolymorphicMapType_15975) (o_2@@125 T@Ref) (f_4@@125 T@Field_9913_16028) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15975) (SummandMask1@@6 T@PolymorphicMapType_15975) (SummandMask2@@6 T@PolymorphicMapType_15975) (o_2@@126 T@Ref) (f_4@@126 T@Field_9913_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15975) (SummandMask1@@7 T@PolymorphicMapType_15975) (SummandMask2@@7 T@PolymorphicMapType_15975) (o_2@@127 T@Ref) (f_4@@127 T@Field_25463_25464) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15975) (SummandMask1@@8 T@PolymorphicMapType_15975) (SummandMask2@@8 T@PolymorphicMapType_15975) (o_2@@128 T@Ref) (f_4@@128 T@Field_9913_3242) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15975) (SummandMask1@@9 T@PolymorphicMapType_15975) (SummandMask2@@9 T@PolymorphicMapType_15975) (o_2@@129 T@Ref) (f_4@@129 T@Field_24502_24507) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15975) (SummandMask1@@10 T@PolymorphicMapType_15975) (SummandMask2@@10 T@PolymorphicMapType_15975) (o_2@@130 T@Ref) (f_4@@130 T@Field_9888_16028) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15975) (SummandMask1@@11 T@PolymorphicMapType_15975) (SummandMask2@@11 T@PolymorphicMapType_15975) (o_2@@131 T@Ref) (f_4@@131 T@Field_9888_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15975) (SummandMask1@@12 T@PolymorphicMapType_15975) (SummandMask2@@12 T@PolymorphicMapType_15975) (o_2@@132 T@Ref) (f_4@@132 T@Field_24489_24490) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15975) (SummandMask1@@13 T@PolymorphicMapType_15975) (SummandMask2@@13 T@PolymorphicMapType_15975) (o_2@@133 T@Ref) (f_4@@133 T@Field_9888_3242) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_15975) (SummandMask1@@14 T@PolymorphicMapType_15975) (SummandMask2@@14 T@PolymorphicMapType_15975) (o_2@@134 T@Ref) (f_4@@134 T@Field_23494_23499) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_15975) (SummandMask1@@15 T@PolymorphicMapType_15975) (SummandMask2@@15 T@PolymorphicMapType_15975) (o_2@@135 T@Ref) (f_4@@135 T@Field_9863_16028) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_15975) (SummandMask1@@16 T@PolymorphicMapType_15975) (SummandMask2@@16 T@PolymorphicMapType_15975) (o_2@@136 T@Ref) (f_4@@136 T@Field_9863_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_15975) (SummandMask1@@17 T@PolymorphicMapType_15975) (SummandMask2@@17 T@PolymorphicMapType_15975) (o_2@@137 T@Ref) (f_4@@137 T@Field_23481_23482) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_15975) (SummandMask1@@18 T@PolymorphicMapType_15975) (SummandMask2@@18 T@PolymorphicMapType_15975) (o_2@@138 T@Ref) (f_4@@138 T@Field_9863_3242) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_15975) (SummandMask1@@19 T@PolymorphicMapType_15975) (SummandMask2@@19 T@PolymorphicMapType_15975) (o_2@@139 T@Ref) (f_4@@139 T@Field_22574_22579) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_15975) (SummandMask1@@20 T@PolymorphicMapType_15975) (SummandMask2@@20 T@PolymorphicMapType_15975) (o_2@@140 T@Ref) (f_4@@140 T@Field_9838_16028) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_15975) (SummandMask1@@21 T@PolymorphicMapType_15975) (SummandMask2@@21 T@PolymorphicMapType_15975) (o_2@@141 T@Ref) (f_4@@141 T@Field_9838_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_15975) (SummandMask1@@22 T@PolymorphicMapType_15975) (SummandMask2@@22 T@PolymorphicMapType_15975) (o_2@@142 T@Ref) (f_4@@142 T@Field_22561_22562) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_15975) (SummandMask1@@23 T@PolymorphicMapType_15975) (SummandMask2@@23 T@PolymorphicMapType_15975) (o_2@@143 T@Ref) (f_4@@143 T@Field_9838_3242) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_15975) (SummandMask1@@24 T@PolymorphicMapType_15975) (SummandMask2@@24 T@PolymorphicMapType_15975) (o_2@@144 T@Ref) (f_4@@144 T@Field_9821_22160) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_15975) (SummandMask1@@25 T@PolymorphicMapType_15975) (SummandMask2@@25 T@PolymorphicMapType_15975) (o_2@@145 T@Ref) (f_4@@145 T@Field_16027_16028) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_15975) (SummandMask1@@26 T@PolymorphicMapType_15975) (SummandMask2@@26 T@PolymorphicMapType_15975) (o_2@@146 T@Ref) (f_4@@146 T@Field_16014_53) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_15975) (SummandMask1@@27 T@PolymorphicMapType_15975) (SummandMask2@@27 T@PolymorphicMapType_15975) (o_2@@147 T@Ref) (f_4@@147 T@Field_9821_9839) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_15975) (SummandMask1@@28 T@PolymorphicMapType_15975) (SummandMask2@@28 T@PolymorphicMapType_15975) (o_2@@148 T@Ref) (f_4@@148 T@Field_22067_3242) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3120| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3120| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.570:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3120| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_26504) (b T@Seq_26504) ) (!  (=> (|Seq#Equal_26504| a b) (= a b))
 :qid |stdinbpl.543:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_26504| a b))
)))
(assert (forall ((a@@0 T@Seq_3120) (b@@0 T@Seq_3120) ) (!  (=> (|Seq#Equal_3120| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.543:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3120| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_26504) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_26504| s@@17))) (|Seq#ContainsTrigger_9941| s@@17 (|Seq#Index_26504| s@@17 i@@11)))
 :qid |stdinbpl.436:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_26504| s@@17 i@@11))
)))
(assert (forall ((s@@18 T@Seq_3120) (i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3120| s@@18))) (|Seq#ContainsTrigger_3120| s@@18 (|Seq#Index_3120| s@@18 i@@12)))
 :qid |stdinbpl.436:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3120| s@@18 i@@12))
)))
(assert (forall ((s0@@3 T@Seq_26504) (s1@@3 T@Seq_26504) ) (!  (and (=> (= s0@@3 |Seq#Empty_26504|) (= (|Seq#Append_26504| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_26504|) (= (|Seq#Append_26504| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.254:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_26504| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3120) (s1@@4 T@Seq_3120) ) (!  (and (=> (= s0@@4 |Seq#Empty_3120|) (= (|Seq#Append_3120| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3120|) (= (|Seq#Append_3120| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.254:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3120| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_26504| (|Seq#Singleton_26504| t@@3) 0) t@@3)
 :qid |stdinbpl.258:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_26504| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3120| (|Seq#Singleton_3120| t@@4) 0) t@@4)
 :qid |stdinbpl.258:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3120| t@@4))
)))
(assert (forall ((s@@19 T@Seq_26504) ) (! (<= 0 (|Seq#Length_26504| s@@19))
 :qid |stdinbpl.237:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_26504| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3120) ) (! (<= 0 (|Seq#Length_3120| s@@20))
 :qid |stdinbpl.237:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3120| s@@20))
)))
(assert (forall ((r_1@@15 T@Ref) (i@@13 Int) ) (! (= (getPredWandId_9888_9889 (p4 r_1@@15 i@@13)) 3)
 :qid |stdinbpl.749:15|
 :skolemid |73|
 :pattern ( (p4 r_1@@15 i@@13))
)))
(assert (forall ((r_1@@16 T@Ref) (i@@14 Int) ) (! (= (getPredWandId_9913_9914 (p5 r_1@@16 i@@14)) 4)
 :qid |stdinbpl.803:15|
 :skolemid |79|
 :pattern ( (p5 r_1@@16 i@@14))
)))
(assert (forall ((s0@@5 T@Seq_26504) (s1@@5 T@Seq_26504) ) (!  (=> (|Seq#Equal_26504| s0@@5 s1@@5) (and (= (|Seq#Length_26504| s0@@5) (|Seq#Length_26504| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_26504| s0@@5))) (= (|Seq#Index_26504| s0@@5 j@@6) (|Seq#Index_26504| s1@@5 j@@6)))
 :qid |stdinbpl.533:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_26504| s0@@5 j@@6))
 :pattern ( (|Seq#Index_26504| s1@@5 j@@6))
))))
 :qid |stdinbpl.530:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_26504| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3120) (s1@@6 T@Seq_3120) ) (!  (=> (|Seq#Equal_3120| s0@@6 s1@@6) (and (= (|Seq#Length_3120| s0@@6) (|Seq#Length_3120| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3120| s0@@6))) (= (|Seq#Index_3120| s0@@6 j@@7) (|Seq#Index_3120| s1@@6 j@@7)))
 :qid |stdinbpl.533:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3120| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3120| s1@@6 j@@7))
))))
 :qid |stdinbpl.530:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3120| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_26504| (|Seq#Singleton_26504| t@@5)) 1)
 :qid |stdinbpl.245:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_26504| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3120| (|Seq#Singleton_3120| t@@6)) 1)
 :qid |stdinbpl.245:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3120| t@@6))
)))
(assert (forall ((r_1@@17 T@Ref) ) (! (= (getPredWandId_9838_9839 (p2 r_1@@17)) 1)
 :qid |stdinbpl.636:15|
 :skolemid |61|
 :pattern ( (p2 r_1@@17))
)))
(assert (forall ((r_1@@18 T@Ref) ) (! (= (getPredWandId_9863_9864 (p3_1 r_1@@18)) 2)
 :qid |stdinbpl.690:15|
 :skolemid |67|
 :pattern ( (p3_1 r_1@@18))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_15954) ) (! (|p1#everUsed_9825| p1)
 :qid |stdinbpl.603:15|
 :skolemid |58|
 :pattern ( (|p1#trigger_9825| Heap@@60 p1))
)))
(assert (forall ((r_1@@19 T@Ref) (i@@15 Int) ) (! (= (PredicateMaskField_9888 (p4 r_1@@19 i@@15)) (|p4#sm| r_1@@19 i@@15))
 :qid |stdinbpl.741:15|
 :skolemid |71|
 :pattern ( (PredicateMaskField_9888 (p4 r_1@@19 i@@15)))
)))
(assert (forall ((r_1@@20 T@Ref) (i@@16 Int) ) (! (= (PredicateMaskField_9913 (p5 r_1@@20 i@@16)) (|p5#sm| r_1@@20 i@@16))
 :qid |stdinbpl.795:15|
 :skolemid |77|
 :pattern ( (PredicateMaskField_9913 (p5 r_1@@20 i@@16)))
)))
(assert (forall ((s@@21 T@Seq_26504) (t@@7 T@Seq_26504) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_26504| s@@21))) (= (|Seq#Take_26504| (|Seq#Append_26504| s@@21 t@@7) n@@17) (|Seq#Take_26504| s@@21 n@@17)))
 :qid |stdinbpl.387:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_26504| (|Seq#Append_26504| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3120) (t@@8 T@Seq_3120) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3120| s@@22))) (= (|Seq#Take_3120| (|Seq#Append_3120| s@@22 t@@8) n@@18) (|Seq#Take_3120| s@@22 n@@18)))
 :qid |stdinbpl.387:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3120| (|Seq#Append_3120| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_26504) (i@@17 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@17) (< i@@17 (|Seq#Length_26504| s@@23))) (= (|Seq#Length_26504| (|Seq#Update_26504| s@@23 i@@17 v@@2)) (|Seq#Length_26504| s@@23)))
 :qid |stdinbpl.286:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_26504| (|Seq#Update_26504| s@@23 i@@17 v@@2)))
 :pattern ( (|Seq#Length_26504| s@@23) (|Seq#Update_26504| s@@23 i@@17 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3120) (i@@18 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_3120| s@@24))) (= (|Seq#Length_3120| (|Seq#Update_3120| s@@24 i@@18 v@@3)) (|Seq#Length_3120| s@@24)))
 :qid |stdinbpl.286:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3120| (|Seq#Update_3120| s@@24 i@@18 v@@3)))
 :pattern ( (|Seq#Length_3120| s@@24) (|Seq#Update_3120| s@@24 i@@18 v@@3))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_15954) (o_55 T@Ref) (f_9 T@Field_22155_22160) (v@@4 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@61 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@61) (store (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@61) o_55 f_9 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@61) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@61) (store (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@61) o_55 f_9 v@@4)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_15954) (o_55@@0 T@Ref) (f_9@@0 T@Field_22143_22144) (v@@5 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@62) (store (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@62) o_55@@0 f_9@@0 v@@5) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@62) (store (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@62) o_55@@0 f_9@@0 v@@5) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@62) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_15954) (o_55@@1 T@Ref) (f_9@@1 T@Field_22143_3242) (v@@6 Int) ) (! (succHeap Heap@@63 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@63) (store (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@63) o_55@@1 f_9@@1 v@@6) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@63) (store (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@63) o_55@@1 f_9@@1 v@@6) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@63) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_15954) (o_55@@2 T@Ref) (f_9@@2 T@Field_22143_16028) (v@@7 T@Ref) ) (! (succHeap Heap@@64 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@64) (store (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@64) o_55@@2 f_9@@2 v@@7) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@64) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@64) (store (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@64) o_55@@2 f_9@@2 v@@7) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_15954) (o_55@@3 T@Ref) (f_9@@3 T@Field_22143_53) (v@@8 Bool) ) (! (succHeap Heap@@65 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@65) (store (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@65) o_55@@3 f_9@@3 v@@8) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@65) (store (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@65) o_55@@3 f_9@@3 v@@8) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@65) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_15954) (o_55@@4 T@Ref) (f_9@@4 T@Field_25476_25481) (v@@9 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@66 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@66) (store (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@66) o_55@@4 f_9@@4 v@@9) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@66) (store (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@66) o_55@@4 f_9@@4 v@@9) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@66) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_15954) (o_55@@5 T@Ref) (f_9@@5 T@Field_25463_25464) (v@@10 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@67) (store (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@67) o_55@@5 f_9@@5 v@@10) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@67) (store (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@67) o_55@@5 f_9@@5 v@@10) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@67) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_15954) (o_55@@6 T@Ref) (f_9@@6 T@Field_9913_3242) (v@@11 Int) ) (! (succHeap Heap@@68 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@68) (store (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@68) o_55@@6 f_9@@6 v@@11) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@68) (store (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@68) o_55@@6 f_9@@6 v@@11) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@68) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_15954) (o_55@@7 T@Ref) (f_9@@7 T@Field_9913_16028) (v@@12 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@69) (store (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@69) o_55@@7 f_9@@7 v@@12) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@69) (store (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@69) o_55@@7 f_9@@7 v@@12) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@69) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_15954) (o_55@@8 T@Ref) (f_9@@8 T@Field_9913_53) (v@@13 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@70) (store (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@70) o_55@@8 f_9@@8 v@@13) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@70) (store (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@70) o_55@@8 f_9@@8 v@@13) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@70) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_15954) (o_55@@9 T@Ref) (f_9@@9 T@Field_24502_24507) (v@@14 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@71 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@71) (store (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@71) o_55@@9 f_9@@9 v@@14) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@71) (store (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@71) o_55@@9 f_9@@9 v@@14) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@71) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_15954) (o_55@@10 T@Ref) (f_9@@10 T@Field_24489_24490) (v@@15 T@FrameType) ) (! (succHeap Heap@@72 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@72) (store (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@72) o_55@@10 f_9@@10 v@@15) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@72) (store (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@72) o_55@@10 f_9@@10 v@@15) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@72) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_15954) (o_55@@11 T@Ref) (f_9@@11 T@Field_9888_3242) (v@@16 Int) ) (! (succHeap Heap@@73 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@73) (store (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@73) o_55@@11 f_9@@11 v@@16) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@73) (store (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@73) o_55@@11 f_9@@11 v@@16) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@73) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_15954) (o_55@@12 T@Ref) (f_9@@12 T@Field_9888_16028) (v@@17 T@Ref) ) (! (succHeap Heap@@74 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@74) (store (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@74) o_55@@12 f_9@@12 v@@17) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@74) (store (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@74) o_55@@12 f_9@@12 v@@17) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@74) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_15954) (o_55@@13 T@Ref) (f_9@@13 T@Field_9888_53) (v@@18 Bool) ) (! (succHeap Heap@@75 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@75) (store (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@75) o_55@@13 f_9@@13 v@@18) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@75) (store (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@75) o_55@@13 f_9@@13 v@@18) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@75) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_15954) (o_55@@14 T@Ref) (f_9@@14 T@Field_23494_23499) (v@@19 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@76 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@76) (store (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@76) o_55@@14 f_9@@14 v@@19) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@76) (store (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@76) o_55@@14 f_9@@14 v@@19) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@76) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_15954) (o_55@@15 T@Ref) (f_9@@15 T@Field_23481_23482) (v@@20 T@FrameType) ) (! (succHeap Heap@@77 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@77) (store (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@77) o_55@@15 f_9@@15 v@@20) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@77)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@77) (store (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@77) o_55@@15 f_9@@15 v@@20) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@77) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@77)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_15954) (o_55@@16 T@Ref) (f_9@@16 T@Field_9863_3242) (v@@21 Int) ) (! (succHeap Heap@@78 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@78) (store (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@78) o_55@@16 f_9@@16 v@@21) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@78) (store (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@78) o_55@@16 f_9@@16 v@@21) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@78) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_15954) (o_55@@17 T@Ref) (f_9@@17 T@Field_9863_16028) (v@@22 T@Ref) ) (! (succHeap Heap@@79 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@79) (store (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@79) o_55@@17 f_9@@17 v@@22) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@79) (store (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@79) o_55@@17 f_9@@17 v@@22) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@79) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_15954) (o_55@@18 T@Ref) (f_9@@18 T@Field_9863_53) (v@@23 Bool) ) (! (succHeap Heap@@80 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@80) (store (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@80) o_55@@18 f_9@@18 v@@23) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@80) (store (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@80) o_55@@18 f_9@@18 v@@23) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@80) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_15954) (o_55@@19 T@Ref) (f_9@@19 T@Field_22574_22579) (v@@24 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@81 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@81) (store (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@81) o_55@@19 f_9@@19 v@@24) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@81) (store (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@81) o_55@@19 f_9@@19 v@@24) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@81) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_15954) (o_55@@20 T@Ref) (f_9@@20 T@Field_22561_22562) (v@@25 T@FrameType) ) (! (succHeap Heap@@82 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@82) (store (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@82) o_55@@20 f_9@@20 v@@25) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@82) (store (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@82) o_55@@20 f_9@@20 v@@25) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@82) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_15954) (o_55@@21 T@Ref) (f_9@@21 T@Field_9838_3242) (v@@26 Int) ) (! (succHeap Heap@@83 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@83) (store (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@83) o_55@@21 f_9@@21 v@@26) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@83) (store (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@83) o_55@@21 f_9@@21 v@@26) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@83) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_15954) (o_55@@22 T@Ref) (f_9@@22 T@Field_9838_16028) (v@@27 T@Ref) ) (! (succHeap Heap@@84 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@84) (store (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@84) o_55@@22 f_9@@22 v@@27) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@84) (store (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@84) o_55@@22 f_9@@22 v@@27) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@84) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_15954) (o_55@@23 T@Ref) (f_9@@23 T@Field_9838_53) (v@@28 Bool) ) (! (succHeap Heap@@85 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@85) (store (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@85) o_55@@23 f_9@@23 v@@28) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@85) (store (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@85) o_55@@23 f_9@@23 v@@28) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@85) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_15954) (o_55@@24 T@Ref) (f_9@@24 T@Field_9821_22160) (v@@29 T@PolymorphicMapType_16503) ) (! (succHeap Heap@@86 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@86) (store (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@86) o_55@@24 f_9@@24 v@@29) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@86) (store (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@86) o_55@@24 f_9@@24 v@@29) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@86) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_15954) (o_55@@25 T@Ref) (f_9@@25 T@Field_9821_9839) (v@@30 T@FrameType) ) (! (succHeap Heap@@87 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@87) (store (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@87) o_55@@25 f_9@@25 v@@30) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@87) (store (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@87) o_55@@25 f_9@@25 v@@30) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@87) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_15954) (o_55@@26 T@Ref) (f_9@@26 T@Field_22067_3242) (v@@31 Int) ) (! (succHeap Heap@@88 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@88) (store (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@88) o_55@@26 f_9@@26 v@@31) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@88) (store (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@88) o_55@@26 f_9@@26 v@@31) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@88) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_15954) (o_55@@27 T@Ref) (f_9@@27 T@Field_16027_16028) (v@@32 T@Ref) ) (! (succHeap Heap@@89 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@89) (store (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@89) o_55@@27 f_9@@27 v@@32) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@89) (store (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@89) o_55@@27 f_9@@27 v@@32) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@89) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_15954) (o_55@@28 T@Ref) (f_9@@28 T@Field_16014_53) (v@@33 Bool) ) (! (succHeap Heap@@90 (PolymorphicMapType_15954 (store (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@90) o_55@@28 f_9@@28 v@@33) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15954 (store (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@90) o_55@@28 f_9@@28 v@@33) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@90) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@90)))
)))
(assert (forall ((r_1@@21 T@Ref) ) (! (= (PredicateMaskField_9838 (p2 r_1@@21)) (|p2#sm| r_1@@21))
 :qid |stdinbpl.628:15|
 :skolemid |59|
 :pattern ( (PredicateMaskField_9838 (p2 r_1@@21)))
)))
(assert (forall ((r_1@@22 T@Ref) ) (! (= (PredicateMaskField_9863 (p3_1 r_1@@22)) (|p3#sm| r_1@@22))
 :qid |stdinbpl.682:15|
 :skolemid |65|
 :pattern ( (PredicateMaskField_9863 (p3_1 r_1@@22)))
)))
(assert (forall ((s@@25 T@Seq_26504) (t@@9 T@Seq_26504) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_26504| s@@25))) (= (|Seq#Drop_26504| (|Seq#Append_26504| s@@25 t@@9) n@@19) (|Seq#Append_26504| (|Seq#Drop_26504| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.401:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_26504| (|Seq#Append_26504| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3120) (t@@10 T@Seq_3120) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3120| s@@26))) (= (|Seq#Drop_3120| (|Seq#Append_3120| s@@26 t@@10) n@@20) (|Seq#Append_3120| (|Seq#Drop_3120| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.401:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3120| (|Seq#Append_3120| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_26504) (n@@21 Int) (i@@19 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@19)) (< i@@19 (|Seq#Length_26504| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@19 n@@21) n@@21) i@@19) (= (|Seq#Index_26504| (|Seq#Drop_26504| s@@27 n@@21) (|Seq#Sub| i@@19 n@@21)) (|Seq#Index_26504| s@@27 i@@19))))
 :qid |stdinbpl.337:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_26504| s@@27 n@@21) (|Seq#Index_26504| s@@27 i@@19))
)))
(assert (forall ((s@@28 T@Seq_3120) (n@@22 Int) (i@@20 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@20)) (< i@@20 (|Seq#Length_3120| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@20 n@@22) n@@22) i@@20) (= (|Seq#Index_3120| (|Seq#Drop_3120| s@@28 n@@22) (|Seq#Sub| i@@20 n@@22)) (|Seq#Index_3120| s@@28 i@@20))))
 :qid |stdinbpl.337:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3120| s@@28 n@@22) (|Seq#Index_3120| s@@28 i@@20))
)))
(assert (= (PredicateMaskField_9825 p1) |p1#sm|))
(assert (forall ((s0@@7 T@Seq_26504) (s1@@7 T@Seq_26504) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_26504|)) (not (= s1@@7 |Seq#Empty_26504|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_26504| s0@@7))) (= (|Seq#Index_26504| (|Seq#Append_26504| s0@@7 s1@@7) n@@23) (|Seq#Index_26504| s0@@7 n@@23)))
 :qid |stdinbpl.277:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_26504| (|Seq#Append_26504| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_26504| s0@@7 n@@23) (|Seq#Append_26504| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3120) (s1@@8 T@Seq_3120) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3120|)) (not (= s1@@8 |Seq#Empty_3120|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3120| s0@@8))) (= (|Seq#Index_3120| (|Seq#Append_3120| s0@@8 s1@@8) n@@24) (|Seq#Index_3120| s0@@8 n@@24)))
 :qid |stdinbpl.277:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3120| (|Seq#Append_3120| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3120| s0@@8 n@@24) (|Seq#Append_3120| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_26504) (s1@@9 T@Seq_26504) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_26504|)) (not (= s1@@9 |Seq#Empty_26504|))) (<= 0 m)) (< m (|Seq#Length_26504| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_26504| s0@@9)) (|Seq#Length_26504| s0@@9)) m) (= (|Seq#Index_26504| (|Seq#Append_26504| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_26504| s0@@9))) (|Seq#Index_26504| s1@@9 m))))
 :qid |stdinbpl.282:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_26504| s1@@9 m) (|Seq#Append_26504| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3120) (s1@@10 T@Seq_3120) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3120|)) (not (= s1@@10 |Seq#Empty_3120|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3120| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3120| s0@@10)) (|Seq#Length_3120| s0@@10)) m@@0) (= (|Seq#Index_3120| (|Seq#Append_3120| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3120| s0@@10))) (|Seq#Index_3120| s1@@10 m@@0))))
 :qid |stdinbpl.282:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3120| s1@@10 m@@0) (|Seq#Append_3120| s0@@10 s1@@10))
)))
(assert (forall ((o_55@@29 T@Ref) (f_54 T@Field_16027_16028) (Heap@@91 T@PolymorphicMapType_15954) ) (!  (=> (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@91) o_55@@29 $allocated) (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@91) (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@91) o_55@@29 f_54) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@91) o_55@@29 f_54))
)))
(assert (forall ((s@@29 T@Seq_26504) (x@@3 T@Ref) (i@@21 Int) ) (!  (=> (and (and (<= 0 i@@21) (< i@@21 (|Seq#Length_26504| s@@29))) (= (|Seq#Index_26504| s@@29 i@@21) x@@3)) (|Seq#Contains_9941| s@@29 x@@3))
 :qid |stdinbpl.434:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_9941| s@@29 x@@3) (|Seq#Index_26504| s@@29 i@@21))
)))
(assert (forall ((s@@30 T@Seq_3120) (x@@4 Int) (i@@22 Int) ) (!  (=> (and (and (<= 0 i@@22) (< i@@22 (|Seq#Length_3120| s@@30))) (= (|Seq#Index_3120| s@@30 i@@22) x@@4)) (|Seq#Contains_3120| s@@30 x@@4))
 :qid |stdinbpl.434:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3120| s@@30 x@@4) (|Seq#Index_3120| s@@30 i@@22))
)))
(assert (forall ((s0@@11 T@Seq_26504) (s1@@11 T@Seq_26504) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_26504| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26504| s0@@11 s1@@11))) (not (= (|Seq#Length_26504| s0@@11) (|Seq#Length_26504| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26504| s0@@11 s1@@11))) (= (|Seq#Length_26504| s0@@11) (|Seq#Length_26504| s1@@11))) (= (|Seq#SkolemDiff_26504| s0@@11 s1@@11) (|Seq#SkolemDiff_26504| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_26504| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_26504| s0@@11 s1@@11) (|Seq#Length_26504| s0@@11))) (not (= (|Seq#Index_26504| s0@@11 (|Seq#SkolemDiff_26504| s0@@11 s1@@11)) (|Seq#Index_26504| s1@@11 (|Seq#SkolemDiff_26504| s0@@11 s1@@11))))))
 :qid |stdinbpl.538:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_26504| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3120) (s1@@12 T@Seq_3120) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3120| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3120| s0@@12 s1@@12))) (not (= (|Seq#Length_3120| s0@@12) (|Seq#Length_3120| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3120| s0@@12 s1@@12))) (= (|Seq#Length_3120| s0@@12) (|Seq#Length_3120| s1@@12))) (= (|Seq#SkolemDiff_3120| s0@@12 s1@@12) (|Seq#SkolemDiff_3120| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3120| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3120| s0@@12 s1@@12) (|Seq#Length_3120| s0@@12))) (not (= (|Seq#Index_3120| s0@@12 (|Seq#SkolemDiff_3120| s0@@12 s1@@12)) (|Seq#Index_3120| s1@@12 (|Seq#SkolemDiff_3120| s0@@12 s1@@12))))))
 :qid |stdinbpl.538:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3120| s0@@12 s1@@12))
)))
(assert (forall ((p@@6 T@Field_25463_25464) (v_1@@5 T@FrameType) (q T@Field_25463_25464) (w@@5 T@FrameType) (r T@Field_25463_25464) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@6 v_1@@5 q w@@5) (InsidePredicate_25463_25463 q w@@5 r u)) (InsidePredicate_25463_25463 p@@6 v_1@@5 r u))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@6 v_1@@5 q w@@5) (InsidePredicate_25463_25463 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_25463_25464) (v_1@@6 T@FrameType) (q@@0 T@Field_25463_25464) (w@@6 T@FrameType) (r@@0 T@Field_24489_24490) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25463_24489 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_25463_24489 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25463_24489 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_25463_25464) (v_1@@7 T@FrameType) (q@@1 T@Field_25463_25464) (w@@7 T@FrameType) (r@@1 T@Field_23481_23482) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25463_23481 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_25463_23481 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25463_23481 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_25463_25464) (v_1@@8 T@FrameType) (q@@2 T@Field_25463_25464) (w@@8 T@FrameType) (r@@2 T@Field_22561_22562) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25463_22561 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_25463_22561 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25463_22561 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_25463_25464) (v_1@@9 T@FrameType) (q@@3 T@Field_25463_25464) (w@@9 T@FrameType) (r@@3 T@Field_22143_22144) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25463_22143 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_25463_22143 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25463_22143 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_25463_25464) (v_1@@10 T@FrameType) (q@@4 T@Field_25463_25464) (w@@10 T@FrameType) (r@@4 T@Field_9821_9839) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_25463 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25463_16014 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_25463_16014 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_25463 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25463_16014 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_25463_25464) (v_1@@11 T@FrameType) (q@@5 T@Field_24489_24490) (w@@11 T@FrameType) (r@@5 T@Field_25463_25464) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24489_25463 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_25463_25463 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24489_25463 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_25463_25464) (v_1@@12 T@FrameType) (q@@6 T@Field_24489_24490) (w@@12 T@FrameType) (r@@6 T@Field_24489_24490) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24489_24489 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_25463_24489 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24489_24489 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_25463_25464) (v_1@@13 T@FrameType) (q@@7 T@Field_24489_24490) (w@@13 T@FrameType) (r@@7 T@Field_23481_23482) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24489_23481 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_25463_23481 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24489_23481 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_25463_25464) (v_1@@14 T@FrameType) (q@@8 T@Field_24489_24490) (w@@14 T@FrameType) (r@@8 T@Field_22561_22562) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24489_22561 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_25463_22561 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24489_22561 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_25463_25464) (v_1@@15 T@FrameType) (q@@9 T@Field_24489_24490) (w@@15 T@FrameType) (r@@9 T@Field_22143_22144) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24489_22143 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_25463_22143 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24489_22143 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_25463_25464) (v_1@@16 T@FrameType) (q@@10 T@Field_24489_24490) (w@@16 T@FrameType) (r@@10 T@Field_9821_9839) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_24489 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24489_16014 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_25463_16014 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_24489 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24489_16014 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_25463_25464) (v_1@@17 T@FrameType) (q@@11 T@Field_23481_23482) (w@@17 T@FrameType) (r@@11 T@Field_25463_25464) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_23481_25463 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_25463_25463 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_23481_25463 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_25463_25464) (v_1@@18 T@FrameType) (q@@12 T@Field_23481_23482) (w@@18 T@FrameType) (r@@12 T@Field_24489_24490) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_23481_24489 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_25463_24489 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_23481_24489 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_25463_25464) (v_1@@19 T@FrameType) (q@@13 T@Field_23481_23482) (w@@19 T@FrameType) (r@@13 T@Field_23481_23482) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_23481_23481 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_25463_23481 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_23481_23481 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_25463_25464) (v_1@@20 T@FrameType) (q@@14 T@Field_23481_23482) (w@@20 T@FrameType) (r@@14 T@Field_22561_22562) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_23481_22561 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_25463_22561 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_23481_22561 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_25463_25464) (v_1@@21 T@FrameType) (q@@15 T@Field_23481_23482) (w@@21 T@FrameType) (r@@15 T@Field_22143_22144) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_23481_22143 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_25463_22143 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_23481_22143 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_25463_25464) (v_1@@22 T@FrameType) (q@@16 T@Field_23481_23482) (w@@22 T@FrameType) (r@@16 T@Field_9821_9839) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_23481 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_23481_16014 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_25463_16014 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_23481 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_23481_16014 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_25463_25464) (v_1@@23 T@FrameType) (q@@17 T@Field_22561_22562) (w@@23 T@FrameType) (r@@17 T@Field_25463_25464) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_22561_25463 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_25463_25463 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_22561_25463 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_25463_25464) (v_1@@24 T@FrameType) (q@@18 T@Field_22561_22562) (w@@24 T@FrameType) (r@@18 T@Field_24489_24490) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_22561_24489 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_25463_24489 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_22561_24489 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_25463_25464) (v_1@@25 T@FrameType) (q@@19 T@Field_22561_22562) (w@@25 T@FrameType) (r@@19 T@Field_23481_23482) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_22561_23481 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_25463_23481 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_22561_23481 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_25463_25464) (v_1@@26 T@FrameType) (q@@20 T@Field_22561_22562) (w@@26 T@FrameType) (r@@20 T@Field_22561_22562) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_22561_22561 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_25463_22561 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_22561_22561 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_25463_25464) (v_1@@27 T@FrameType) (q@@21 T@Field_22561_22562) (w@@27 T@FrameType) (r@@21 T@Field_22143_22144) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_22561_22143 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_25463_22143 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_22561_22143 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_25463_25464) (v_1@@28 T@FrameType) (q@@22 T@Field_22561_22562) (w@@28 T@FrameType) (r@@22 T@Field_9821_9839) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22561 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_22561_16014 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_25463_16014 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22561 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_22561_16014 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_25463_25464) (v_1@@29 T@FrameType) (q@@23 T@Field_22143_22144) (w@@29 T@FrameType) (r@@23 T@Field_25463_25464) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_22143_25463 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_25463_25463 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_22143_25463 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_25463_25464) (v_1@@30 T@FrameType) (q@@24 T@Field_22143_22144) (w@@30 T@FrameType) (r@@24 T@Field_24489_24490) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_22143_24489 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_25463_24489 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_22143_24489 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_25463_25464) (v_1@@31 T@FrameType) (q@@25 T@Field_22143_22144) (w@@31 T@FrameType) (r@@25 T@Field_23481_23482) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_22143_23481 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_25463_23481 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_22143_23481 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_25463_25464) (v_1@@32 T@FrameType) (q@@26 T@Field_22143_22144) (w@@32 T@FrameType) (r@@26 T@Field_22561_22562) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_22143_22561 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_25463_22561 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_22143_22561 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_25463_25464) (v_1@@33 T@FrameType) (q@@27 T@Field_22143_22144) (w@@33 T@FrameType) (r@@27 T@Field_22143_22144) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_22143_22143 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_25463_22143 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_22143_22143 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_25463_25464) (v_1@@34 T@FrameType) (q@@28 T@Field_22143_22144) (w@@34 T@FrameType) (r@@28 T@Field_9821_9839) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_22143 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_22143_16014 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_25463_16014 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_22143 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_22143_16014 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_25463_25464) (v_1@@35 T@FrameType) (q@@29 T@Field_9821_9839) (w@@35 T@FrameType) (r@@29 T@Field_25463_25464) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_16014_25463 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_25463_25463 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_16014_25463 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_25463_25464) (v_1@@36 T@FrameType) (q@@30 T@Field_9821_9839) (w@@36 T@FrameType) (r@@30 T@Field_24489_24490) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_16014_24489 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_25463_24489 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_16014_24489 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_25463_25464) (v_1@@37 T@FrameType) (q@@31 T@Field_9821_9839) (w@@37 T@FrameType) (r@@31 T@Field_23481_23482) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_16014_23481 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_25463_23481 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_16014_23481 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_25463_25464) (v_1@@38 T@FrameType) (q@@32 T@Field_9821_9839) (w@@38 T@FrameType) (r@@32 T@Field_22561_22562) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_16014_22561 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_25463_22561 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_16014_22561 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_25463_25464) (v_1@@39 T@FrameType) (q@@33 T@Field_9821_9839) (w@@39 T@FrameType) (r@@33 T@Field_22143_22144) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_16014_22143 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_25463_22143 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_16014_22143 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_25463_25464) (v_1@@40 T@FrameType) (q@@34 T@Field_9821_9839) (w@@40 T@FrameType) (r@@34 T@Field_9821_9839) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25463_16014 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_16014_16014 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_25463_16014 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25463_16014 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_16014_16014 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_24489_24490) (v_1@@41 T@FrameType) (q@@35 T@Field_25463_25464) (w@@41 T@FrameType) (r@@35 T@Field_25463_25464) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25463_25463 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_24489_25463 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25463_25463 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_24489_24490) (v_1@@42 T@FrameType) (q@@36 T@Field_25463_25464) (w@@42 T@FrameType) (r@@36 T@Field_24489_24490) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25463_24489 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_24489_24489 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25463_24489 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_24489_24490) (v_1@@43 T@FrameType) (q@@37 T@Field_25463_25464) (w@@43 T@FrameType) (r@@37 T@Field_23481_23482) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25463_23481 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_24489_23481 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25463_23481 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_24489_24490) (v_1@@44 T@FrameType) (q@@38 T@Field_25463_25464) (w@@44 T@FrameType) (r@@38 T@Field_22561_22562) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25463_22561 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_24489_22561 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25463_22561 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_24489_24490) (v_1@@45 T@FrameType) (q@@39 T@Field_25463_25464) (w@@45 T@FrameType) (r@@39 T@Field_22143_22144) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25463_22143 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_24489_22143 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25463_22143 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_24489_24490) (v_1@@46 T@FrameType) (q@@40 T@Field_25463_25464) (w@@46 T@FrameType) (r@@40 T@Field_9821_9839) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_25463 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25463_16014 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_24489_16014 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_25463 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25463_16014 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_24489_24490) (v_1@@47 T@FrameType) (q@@41 T@Field_24489_24490) (w@@47 T@FrameType) (r@@41 T@Field_25463_25464) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24489_25463 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_24489_25463 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24489_25463 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_24489_24490) (v_1@@48 T@FrameType) (q@@42 T@Field_24489_24490) (w@@48 T@FrameType) (r@@42 T@Field_24489_24490) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24489_24489 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_24489_24489 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24489_24489 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_24489_24490) (v_1@@49 T@FrameType) (q@@43 T@Field_24489_24490) (w@@49 T@FrameType) (r@@43 T@Field_23481_23482) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24489_23481 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_24489_23481 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24489_23481 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_24489_24490) (v_1@@50 T@FrameType) (q@@44 T@Field_24489_24490) (w@@50 T@FrameType) (r@@44 T@Field_22561_22562) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24489_22561 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_24489_22561 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24489_22561 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_24489_24490) (v_1@@51 T@FrameType) (q@@45 T@Field_24489_24490) (w@@51 T@FrameType) (r@@45 T@Field_22143_22144) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24489_22143 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_24489_22143 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24489_22143 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_24489_24490) (v_1@@52 T@FrameType) (q@@46 T@Field_24489_24490) (w@@52 T@FrameType) (r@@46 T@Field_9821_9839) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_24489 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24489_16014 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_24489_16014 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_24489 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24489_16014 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_24489_24490) (v_1@@53 T@FrameType) (q@@47 T@Field_23481_23482) (w@@53 T@FrameType) (r@@47 T@Field_25463_25464) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_23481_25463 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_24489_25463 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_23481_25463 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_24489_24490) (v_1@@54 T@FrameType) (q@@48 T@Field_23481_23482) (w@@54 T@FrameType) (r@@48 T@Field_24489_24490) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_23481_24489 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_24489_24489 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_23481_24489 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_24489_24490) (v_1@@55 T@FrameType) (q@@49 T@Field_23481_23482) (w@@55 T@FrameType) (r@@49 T@Field_23481_23482) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_23481_23481 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_24489_23481 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_23481_23481 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_24489_24490) (v_1@@56 T@FrameType) (q@@50 T@Field_23481_23482) (w@@56 T@FrameType) (r@@50 T@Field_22561_22562) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_23481_22561 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_24489_22561 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_23481_22561 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_24489_24490) (v_1@@57 T@FrameType) (q@@51 T@Field_23481_23482) (w@@57 T@FrameType) (r@@51 T@Field_22143_22144) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_23481_22143 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_24489_22143 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_23481_22143 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_24489_24490) (v_1@@58 T@FrameType) (q@@52 T@Field_23481_23482) (w@@58 T@FrameType) (r@@52 T@Field_9821_9839) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_23481 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_23481_16014 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_24489_16014 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_23481 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_23481_16014 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_24489_24490) (v_1@@59 T@FrameType) (q@@53 T@Field_22561_22562) (w@@59 T@FrameType) (r@@53 T@Field_25463_25464) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_22561_25463 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_24489_25463 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_22561_25463 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_24489_24490) (v_1@@60 T@FrameType) (q@@54 T@Field_22561_22562) (w@@60 T@FrameType) (r@@54 T@Field_24489_24490) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_22561_24489 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_24489_24489 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_22561_24489 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_24489_24490) (v_1@@61 T@FrameType) (q@@55 T@Field_22561_22562) (w@@61 T@FrameType) (r@@55 T@Field_23481_23482) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_22561_23481 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_24489_23481 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_22561_23481 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_24489_24490) (v_1@@62 T@FrameType) (q@@56 T@Field_22561_22562) (w@@62 T@FrameType) (r@@56 T@Field_22561_22562) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_22561_22561 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_24489_22561 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_22561_22561 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_24489_24490) (v_1@@63 T@FrameType) (q@@57 T@Field_22561_22562) (w@@63 T@FrameType) (r@@57 T@Field_22143_22144) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_22561_22143 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_24489_22143 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_22561_22143 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_24489_24490) (v_1@@64 T@FrameType) (q@@58 T@Field_22561_22562) (w@@64 T@FrameType) (r@@58 T@Field_9821_9839) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22561 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_22561_16014 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_24489_16014 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22561 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_22561_16014 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_24489_24490) (v_1@@65 T@FrameType) (q@@59 T@Field_22143_22144) (w@@65 T@FrameType) (r@@59 T@Field_25463_25464) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_22143_25463 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_24489_25463 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_22143_25463 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_24489_24490) (v_1@@66 T@FrameType) (q@@60 T@Field_22143_22144) (w@@66 T@FrameType) (r@@60 T@Field_24489_24490) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_22143_24489 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_24489_24489 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_22143_24489 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_24489_24490) (v_1@@67 T@FrameType) (q@@61 T@Field_22143_22144) (w@@67 T@FrameType) (r@@61 T@Field_23481_23482) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_22143_23481 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_24489_23481 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_22143_23481 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_24489_24490) (v_1@@68 T@FrameType) (q@@62 T@Field_22143_22144) (w@@68 T@FrameType) (r@@62 T@Field_22561_22562) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_22143_22561 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_24489_22561 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_22143_22561 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_24489_24490) (v_1@@69 T@FrameType) (q@@63 T@Field_22143_22144) (w@@69 T@FrameType) (r@@63 T@Field_22143_22144) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_22143_22143 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_24489_22143 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_22143_22143 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_24489_24490) (v_1@@70 T@FrameType) (q@@64 T@Field_22143_22144) (w@@70 T@FrameType) (r@@64 T@Field_9821_9839) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_22143 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_22143_16014 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_24489_16014 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_22143 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_22143_16014 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_24489_24490) (v_1@@71 T@FrameType) (q@@65 T@Field_9821_9839) (w@@71 T@FrameType) (r@@65 T@Field_25463_25464) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_16014_25463 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_24489_25463 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_16014_25463 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_24489_24490) (v_1@@72 T@FrameType) (q@@66 T@Field_9821_9839) (w@@72 T@FrameType) (r@@66 T@Field_24489_24490) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_16014_24489 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_24489_24489 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_16014_24489 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_24489_24490) (v_1@@73 T@FrameType) (q@@67 T@Field_9821_9839) (w@@73 T@FrameType) (r@@67 T@Field_23481_23482) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_16014_23481 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_24489_23481 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_16014_23481 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_24489_24490) (v_1@@74 T@FrameType) (q@@68 T@Field_9821_9839) (w@@74 T@FrameType) (r@@68 T@Field_22561_22562) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_16014_22561 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_24489_22561 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_16014_22561 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_24489_24490) (v_1@@75 T@FrameType) (q@@69 T@Field_9821_9839) (w@@75 T@FrameType) (r@@69 T@Field_22143_22144) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_16014_22143 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_24489_22143 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_16014_22143 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_24489_24490) (v_1@@76 T@FrameType) (q@@70 T@Field_9821_9839) (w@@76 T@FrameType) (r@@70 T@Field_9821_9839) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_24489_16014 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_16014_16014 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_24489_16014 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24489_16014 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_16014_16014 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_23481_23482) (v_1@@77 T@FrameType) (q@@71 T@Field_25463_25464) (w@@77 T@FrameType) (r@@71 T@Field_25463_25464) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25463_25463 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_23481_25463 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25463_25463 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_23481_23482) (v_1@@78 T@FrameType) (q@@72 T@Field_25463_25464) (w@@78 T@FrameType) (r@@72 T@Field_24489_24490) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25463_24489 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_23481_24489 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25463_24489 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_23481_23482) (v_1@@79 T@FrameType) (q@@73 T@Field_25463_25464) (w@@79 T@FrameType) (r@@73 T@Field_23481_23482) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25463_23481 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_23481_23481 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25463_23481 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_23481_23482) (v_1@@80 T@FrameType) (q@@74 T@Field_25463_25464) (w@@80 T@FrameType) (r@@74 T@Field_22561_22562) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25463_22561 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_23481_22561 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25463_22561 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_23481_23482) (v_1@@81 T@FrameType) (q@@75 T@Field_25463_25464) (w@@81 T@FrameType) (r@@75 T@Field_22143_22144) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25463_22143 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_23481_22143 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25463_22143 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_23481_23482) (v_1@@82 T@FrameType) (q@@76 T@Field_25463_25464) (w@@82 T@FrameType) (r@@76 T@Field_9821_9839) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_25463 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25463_16014 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_23481_16014 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_25463 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25463_16014 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_23481_23482) (v_1@@83 T@FrameType) (q@@77 T@Field_24489_24490) (w@@83 T@FrameType) (r@@77 T@Field_25463_25464) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24489_25463 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_23481_25463 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24489_25463 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_23481_23482) (v_1@@84 T@FrameType) (q@@78 T@Field_24489_24490) (w@@84 T@FrameType) (r@@78 T@Field_24489_24490) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24489_24489 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_23481_24489 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24489_24489 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_23481_23482) (v_1@@85 T@FrameType) (q@@79 T@Field_24489_24490) (w@@85 T@FrameType) (r@@79 T@Field_23481_23482) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24489_23481 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_23481_23481 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24489_23481 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_23481_23482) (v_1@@86 T@FrameType) (q@@80 T@Field_24489_24490) (w@@86 T@FrameType) (r@@80 T@Field_22561_22562) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24489_22561 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_23481_22561 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24489_22561 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_23481_23482) (v_1@@87 T@FrameType) (q@@81 T@Field_24489_24490) (w@@87 T@FrameType) (r@@81 T@Field_22143_22144) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24489_22143 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_23481_22143 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24489_22143 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_23481_23482) (v_1@@88 T@FrameType) (q@@82 T@Field_24489_24490) (w@@88 T@FrameType) (r@@82 T@Field_9821_9839) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_24489 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24489_16014 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_23481_16014 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_24489 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24489_16014 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_23481_23482) (v_1@@89 T@FrameType) (q@@83 T@Field_23481_23482) (w@@89 T@FrameType) (r@@83 T@Field_25463_25464) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_23481_25463 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_23481_25463 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_23481_25463 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_23481_23482) (v_1@@90 T@FrameType) (q@@84 T@Field_23481_23482) (w@@90 T@FrameType) (r@@84 T@Field_24489_24490) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_23481_24489 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_23481_24489 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_23481_24489 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_23481_23482) (v_1@@91 T@FrameType) (q@@85 T@Field_23481_23482) (w@@91 T@FrameType) (r@@85 T@Field_23481_23482) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_23481_23481 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_23481_23481 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_23481_23481 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_23481_23482) (v_1@@92 T@FrameType) (q@@86 T@Field_23481_23482) (w@@92 T@FrameType) (r@@86 T@Field_22561_22562) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_23481_22561 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_23481_22561 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_23481_22561 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_23481_23482) (v_1@@93 T@FrameType) (q@@87 T@Field_23481_23482) (w@@93 T@FrameType) (r@@87 T@Field_22143_22144) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_23481_22143 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_23481_22143 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_23481_22143 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_23481_23482) (v_1@@94 T@FrameType) (q@@88 T@Field_23481_23482) (w@@94 T@FrameType) (r@@88 T@Field_9821_9839) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_23481 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_23481_16014 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_23481_16014 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_23481 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_23481_16014 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_23481_23482) (v_1@@95 T@FrameType) (q@@89 T@Field_22561_22562) (w@@95 T@FrameType) (r@@89 T@Field_25463_25464) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_22561_25463 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_23481_25463 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_22561_25463 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_23481_23482) (v_1@@96 T@FrameType) (q@@90 T@Field_22561_22562) (w@@96 T@FrameType) (r@@90 T@Field_24489_24490) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_22561_24489 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_23481_24489 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_22561_24489 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_23481_23482) (v_1@@97 T@FrameType) (q@@91 T@Field_22561_22562) (w@@97 T@FrameType) (r@@91 T@Field_23481_23482) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_22561_23481 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_23481_23481 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_22561_23481 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_23481_23482) (v_1@@98 T@FrameType) (q@@92 T@Field_22561_22562) (w@@98 T@FrameType) (r@@92 T@Field_22561_22562) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_22561_22561 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_23481_22561 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_22561_22561 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_23481_23482) (v_1@@99 T@FrameType) (q@@93 T@Field_22561_22562) (w@@99 T@FrameType) (r@@93 T@Field_22143_22144) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_22561_22143 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_23481_22143 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_22561_22143 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_23481_23482) (v_1@@100 T@FrameType) (q@@94 T@Field_22561_22562) (w@@100 T@FrameType) (r@@94 T@Field_9821_9839) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22561 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_22561_16014 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_23481_16014 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22561 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_22561_16014 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_23481_23482) (v_1@@101 T@FrameType) (q@@95 T@Field_22143_22144) (w@@101 T@FrameType) (r@@95 T@Field_25463_25464) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_22143_25463 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_23481_25463 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_22143_25463 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_23481_23482) (v_1@@102 T@FrameType) (q@@96 T@Field_22143_22144) (w@@102 T@FrameType) (r@@96 T@Field_24489_24490) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_22143_24489 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_23481_24489 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_22143_24489 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_23481_23482) (v_1@@103 T@FrameType) (q@@97 T@Field_22143_22144) (w@@103 T@FrameType) (r@@97 T@Field_23481_23482) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_22143_23481 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_23481_23481 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_22143_23481 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_23481_23482) (v_1@@104 T@FrameType) (q@@98 T@Field_22143_22144) (w@@104 T@FrameType) (r@@98 T@Field_22561_22562) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_22143_22561 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_23481_22561 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_22143_22561 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_23481_23482) (v_1@@105 T@FrameType) (q@@99 T@Field_22143_22144) (w@@105 T@FrameType) (r@@99 T@Field_22143_22144) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_22143_22143 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_23481_22143 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_22143_22143 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_23481_23482) (v_1@@106 T@FrameType) (q@@100 T@Field_22143_22144) (w@@106 T@FrameType) (r@@100 T@Field_9821_9839) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_22143 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_22143_16014 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_23481_16014 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_22143 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_22143_16014 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_23481_23482) (v_1@@107 T@FrameType) (q@@101 T@Field_9821_9839) (w@@107 T@FrameType) (r@@101 T@Field_25463_25464) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_16014_25463 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_23481_25463 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_16014_25463 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_23481_23482) (v_1@@108 T@FrameType) (q@@102 T@Field_9821_9839) (w@@108 T@FrameType) (r@@102 T@Field_24489_24490) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_16014_24489 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_23481_24489 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_16014_24489 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_23481_23482) (v_1@@109 T@FrameType) (q@@103 T@Field_9821_9839) (w@@109 T@FrameType) (r@@103 T@Field_23481_23482) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_16014_23481 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_23481_23481 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_16014_23481 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_23481_23482) (v_1@@110 T@FrameType) (q@@104 T@Field_9821_9839) (w@@110 T@FrameType) (r@@104 T@Field_22561_22562) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_16014_22561 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_23481_22561 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_16014_22561 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_23481_23482) (v_1@@111 T@FrameType) (q@@105 T@Field_9821_9839) (w@@111 T@FrameType) (r@@105 T@Field_22143_22144) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_16014_22143 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_23481_22143 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_16014_22143 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_23481_23482) (v_1@@112 T@FrameType) (q@@106 T@Field_9821_9839) (w@@112 T@FrameType) (r@@106 T@Field_9821_9839) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_23481_16014 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_16014_16014 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_23481_16014 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23481_16014 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_16014_16014 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_22561_22562) (v_1@@113 T@FrameType) (q@@107 T@Field_25463_25464) (w@@113 T@FrameType) (r@@107 T@Field_25463_25464) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25463_25463 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_22561_25463 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25463_25463 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_22561_22562) (v_1@@114 T@FrameType) (q@@108 T@Field_25463_25464) (w@@114 T@FrameType) (r@@108 T@Field_24489_24490) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25463_24489 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_22561_24489 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25463_24489 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_22561_22562) (v_1@@115 T@FrameType) (q@@109 T@Field_25463_25464) (w@@115 T@FrameType) (r@@109 T@Field_23481_23482) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25463_23481 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_22561_23481 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25463_23481 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_22561_22562) (v_1@@116 T@FrameType) (q@@110 T@Field_25463_25464) (w@@116 T@FrameType) (r@@110 T@Field_22561_22562) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25463_22561 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_22561_22561 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25463_22561 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_22561_22562) (v_1@@117 T@FrameType) (q@@111 T@Field_25463_25464) (w@@117 T@FrameType) (r@@111 T@Field_22143_22144) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25463_22143 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_22561_22143 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25463_22143 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_22561_22562) (v_1@@118 T@FrameType) (q@@112 T@Field_25463_25464) (w@@118 T@FrameType) (r@@112 T@Field_9821_9839) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_25463 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25463_16014 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_22561_16014 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_25463 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25463_16014 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_22561_22562) (v_1@@119 T@FrameType) (q@@113 T@Field_24489_24490) (w@@119 T@FrameType) (r@@113 T@Field_25463_25464) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24489_25463 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_22561_25463 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24489_25463 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_22561_22562) (v_1@@120 T@FrameType) (q@@114 T@Field_24489_24490) (w@@120 T@FrameType) (r@@114 T@Field_24489_24490) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24489_24489 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_22561_24489 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24489_24489 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_22561_22562) (v_1@@121 T@FrameType) (q@@115 T@Field_24489_24490) (w@@121 T@FrameType) (r@@115 T@Field_23481_23482) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24489_23481 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_22561_23481 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24489_23481 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_22561_22562) (v_1@@122 T@FrameType) (q@@116 T@Field_24489_24490) (w@@122 T@FrameType) (r@@116 T@Field_22561_22562) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24489_22561 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_22561_22561 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24489_22561 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_22561_22562) (v_1@@123 T@FrameType) (q@@117 T@Field_24489_24490) (w@@123 T@FrameType) (r@@117 T@Field_22143_22144) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24489_22143 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_22561_22143 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24489_22143 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_22561_22562) (v_1@@124 T@FrameType) (q@@118 T@Field_24489_24490) (w@@124 T@FrameType) (r@@118 T@Field_9821_9839) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_24489 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24489_16014 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_22561_16014 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_24489 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24489_16014 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_22561_22562) (v_1@@125 T@FrameType) (q@@119 T@Field_23481_23482) (w@@125 T@FrameType) (r@@119 T@Field_25463_25464) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_23481_25463 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_22561_25463 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_23481_25463 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_22561_22562) (v_1@@126 T@FrameType) (q@@120 T@Field_23481_23482) (w@@126 T@FrameType) (r@@120 T@Field_24489_24490) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_23481_24489 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_22561_24489 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_23481_24489 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_22561_22562) (v_1@@127 T@FrameType) (q@@121 T@Field_23481_23482) (w@@127 T@FrameType) (r@@121 T@Field_23481_23482) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_23481_23481 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_22561_23481 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_23481_23481 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_22561_22562) (v_1@@128 T@FrameType) (q@@122 T@Field_23481_23482) (w@@128 T@FrameType) (r@@122 T@Field_22561_22562) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_23481_22561 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_22561_22561 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_23481_22561 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_22561_22562) (v_1@@129 T@FrameType) (q@@123 T@Field_23481_23482) (w@@129 T@FrameType) (r@@123 T@Field_22143_22144) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_23481_22143 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_22561_22143 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_23481_22143 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_22561_22562) (v_1@@130 T@FrameType) (q@@124 T@Field_23481_23482) (w@@130 T@FrameType) (r@@124 T@Field_9821_9839) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_23481 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_23481_16014 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_22561_16014 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_23481 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_23481_16014 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_22561_22562) (v_1@@131 T@FrameType) (q@@125 T@Field_22561_22562) (w@@131 T@FrameType) (r@@125 T@Field_25463_25464) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_22561_25463 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_22561_25463 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_22561_25463 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_22561_22562) (v_1@@132 T@FrameType) (q@@126 T@Field_22561_22562) (w@@132 T@FrameType) (r@@126 T@Field_24489_24490) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_22561_24489 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_22561_24489 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_22561_24489 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_22561_22562) (v_1@@133 T@FrameType) (q@@127 T@Field_22561_22562) (w@@133 T@FrameType) (r@@127 T@Field_23481_23482) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_22561_23481 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_22561_23481 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_22561_23481 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_22561_22562) (v_1@@134 T@FrameType) (q@@128 T@Field_22561_22562) (w@@134 T@FrameType) (r@@128 T@Field_22561_22562) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_22561_22561 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_22561_22561 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_22561_22561 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_22561_22562) (v_1@@135 T@FrameType) (q@@129 T@Field_22561_22562) (w@@135 T@FrameType) (r@@129 T@Field_22143_22144) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_22561_22143 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_22561_22143 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_22561_22143 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_22561_22562) (v_1@@136 T@FrameType) (q@@130 T@Field_22561_22562) (w@@136 T@FrameType) (r@@130 T@Field_9821_9839) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22561 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_22561_16014 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_22561_16014 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22561 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_22561_16014 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_22561_22562) (v_1@@137 T@FrameType) (q@@131 T@Field_22143_22144) (w@@137 T@FrameType) (r@@131 T@Field_25463_25464) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_22143_25463 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_22561_25463 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_22143_25463 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_22561_22562) (v_1@@138 T@FrameType) (q@@132 T@Field_22143_22144) (w@@138 T@FrameType) (r@@132 T@Field_24489_24490) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_22143_24489 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_22561_24489 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_22143_24489 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_22561_22562) (v_1@@139 T@FrameType) (q@@133 T@Field_22143_22144) (w@@139 T@FrameType) (r@@133 T@Field_23481_23482) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_22143_23481 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_22561_23481 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_22143_23481 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_22561_22562) (v_1@@140 T@FrameType) (q@@134 T@Field_22143_22144) (w@@140 T@FrameType) (r@@134 T@Field_22561_22562) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_22143_22561 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_22561_22561 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_22143_22561 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_22561_22562) (v_1@@141 T@FrameType) (q@@135 T@Field_22143_22144) (w@@141 T@FrameType) (r@@135 T@Field_22143_22144) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_22143_22143 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_22561_22143 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_22143_22143 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_22561_22562) (v_1@@142 T@FrameType) (q@@136 T@Field_22143_22144) (w@@142 T@FrameType) (r@@136 T@Field_9821_9839) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_22143 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_22143_16014 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_22561_16014 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_22143 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_22143_16014 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_22561_22562) (v_1@@143 T@FrameType) (q@@137 T@Field_9821_9839) (w@@143 T@FrameType) (r@@137 T@Field_25463_25464) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_16014_25463 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_22561_25463 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_16014_25463 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_22561_22562) (v_1@@144 T@FrameType) (q@@138 T@Field_9821_9839) (w@@144 T@FrameType) (r@@138 T@Field_24489_24490) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_16014_24489 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_22561_24489 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_16014_24489 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_22561_22562) (v_1@@145 T@FrameType) (q@@139 T@Field_9821_9839) (w@@145 T@FrameType) (r@@139 T@Field_23481_23482) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_16014_23481 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_22561_23481 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_16014_23481 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_22561_22562) (v_1@@146 T@FrameType) (q@@140 T@Field_9821_9839) (w@@146 T@FrameType) (r@@140 T@Field_22561_22562) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_16014_22561 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_22561_22561 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_16014_22561 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_22561_22562) (v_1@@147 T@FrameType) (q@@141 T@Field_9821_9839) (w@@147 T@FrameType) (r@@141 T@Field_22143_22144) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_16014_22143 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_22561_22143 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_16014_22143 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_22561_22562) (v_1@@148 T@FrameType) (q@@142 T@Field_9821_9839) (w@@148 T@FrameType) (r@@142 T@Field_9821_9839) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_22561_16014 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_16014_16014 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_22561_16014 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22561_16014 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_16014_16014 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_22143_22144) (v_1@@149 T@FrameType) (q@@143 T@Field_25463_25464) (w@@149 T@FrameType) (r@@143 T@Field_25463_25464) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25463_25463 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_22143_25463 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25463_25463 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_22143_22144) (v_1@@150 T@FrameType) (q@@144 T@Field_25463_25464) (w@@150 T@FrameType) (r@@144 T@Field_24489_24490) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25463_24489 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_22143_24489 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25463_24489 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_22143_22144) (v_1@@151 T@FrameType) (q@@145 T@Field_25463_25464) (w@@151 T@FrameType) (r@@145 T@Field_23481_23482) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25463_23481 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_22143_23481 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25463_23481 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_22143_22144) (v_1@@152 T@FrameType) (q@@146 T@Field_25463_25464) (w@@152 T@FrameType) (r@@146 T@Field_22561_22562) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25463_22561 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_22143_22561 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25463_22561 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_22143_22144) (v_1@@153 T@FrameType) (q@@147 T@Field_25463_25464) (w@@153 T@FrameType) (r@@147 T@Field_22143_22144) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25463_22143 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_22143_22143 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25463_22143 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_22143_22144) (v_1@@154 T@FrameType) (q@@148 T@Field_25463_25464) (w@@154 T@FrameType) (r@@148 T@Field_9821_9839) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_25463 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25463_16014 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_22143_16014 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_25463 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25463_16014 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_22143_22144) (v_1@@155 T@FrameType) (q@@149 T@Field_24489_24490) (w@@155 T@FrameType) (r@@149 T@Field_25463_25464) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24489_25463 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_22143_25463 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24489_25463 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_22143_22144) (v_1@@156 T@FrameType) (q@@150 T@Field_24489_24490) (w@@156 T@FrameType) (r@@150 T@Field_24489_24490) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24489_24489 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_22143_24489 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24489_24489 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_22143_22144) (v_1@@157 T@FrameType) (q@@151 T@Field_24489_24490) (w@@157 T@FrameType) (r@@151 T@Field_23481_23482) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24489_23481 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_22143_23481 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24489_23481 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_22143_22144) (v_1@@158 T@FrameType) (q@@152 T@Field_24489_24490) (w@@158 T@FrameType) (r@@152 T@Field_22561_22562) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24489_22561 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_22143_22561 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24489_22561 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_22143_22144) (v_1@@159 T@FrameType) (q@@153 T@Field_24489_24490) (w@@159 T@FrameType) (r@@153 T@Field_22143_22144) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24489_22143 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_22143_22143 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24489_22143 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_22143_22144) (v_1@@160 T@FrameType) (q@@154 T@Field_24489_24490) (w@@160 T@FrameType) (r@@154 T@Field_9821_9839) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_24489 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24489_16014 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_22143_16014 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_24489 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24489_16014 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_22143_22144) (v_1@@161 T@FrameType) (q@@155 T@Field_23481_23482) (w@@161 T@FrameType) (r@@155 T@Field_25463_25464) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_23481_25463 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_22143_25463 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_23481_25463 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_22143_22144) (v_1@@162 T@FrameType) (q@@156 T@Field_23481_23482) (w@@162 T@FrameType) (r@@156 T@Field_24489_24490) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_23481_24489 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_22143_24489 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_23481_24489 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_22143_22144) (v_1@@163 T@FrameType) (q@@157 T@Field_23481_23482) (w@@163 T@FrameType) (r@@157 T@Field_23481_23482) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_23481_23481 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_22143_23481 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_23481_23481 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_22143_22144) (v_1@@164 T@FrameType) (q@@158 T@Field_23481_23482) (w@@164 T@FrameType) (r@@158 T@Field_22561_22562) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_23481_22561 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_22143_22561 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_23481_22561 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_22143_22144) (v_1@@165 T@FrameType) (q@@159 T@Field_23481_23482) (w@@165 T@FrameType) (r@@159 T@Field_22143_22144) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_23481_22143 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_22143_22143 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_23481_22143 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_22143_22144) (v_1@@166 T@FrameType) (q@@160 T@Field_23481_23482) (w@@166 T@FrameType) (r@@160 T@Field_9821_9839) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_23481 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_23481_16014 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_22143_16014 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_23481 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_23481_16014 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_22143_22144) (v_1@@167 T@FrameType) (q@@161 T@Field_22561_22562) (w@@167 T@FrameType) (r@@161 T@Field_25463_25464) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_22561_25463 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_22143_25463 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_22561_25463 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_22143_22144) (v_1@@168 T@FrameType) (q@@162 T@Field_22561_22562) (w@@168 T@FrameType) (r@@162 T@Field_24489_24490) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_22561_24489 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_22143_24489 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_22561_24489 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_22143_22144) (v_1@@169 T@FrameType) (q@@163 T@Field_22561_22562) (w@@169 T@FrameType) (r@@163 T@Field_23481_23482) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_22561_23481 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_22143_23481 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_22561_23481 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_22143_22144) (v_1@@170 T@FrameType) (q@@164 T@Field_22561_22562) (w@@170 T@FrameType) (r@@164 T@Field_22561_22562) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_22561_22561 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_22143_22561 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_22561_22561 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_22143_22144) (v_1@@171 T@FrameType) (q@@165 T@Field_22561_22562) (w@@171 T@FrameType) (r@@165 T@Field_22143_22144) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_22561_22143 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_22143_22143 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_22561_22143 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_22143_22144) (v_1@@172 T@FrameType) (q@@166 T@Field_22561_22562) (w@@172 T@FrameType) (r@@166 T@Field_9821_9839) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22561 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_22561_16014 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_22143_16014 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22561 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_22561_16014 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_22143_22144) (v_1@@173 T@FrameType) (q@@167 T@Field_22143_22144) (w@@173 T@FrameType) (r@@167 T@Field_25463_25464) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_22143_25463 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_22143_25463 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_22143_25463 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_22143_22144) (v_1@@174 T@FrameType) (q@@168 T@Field_22143_22144) (w@@174 T@FrameType) (r@@168 T@Field_24489_24490) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_22143_24489 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_22143_24489 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_22143_24489 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_22143_22144) (v_1@@175 T@FrameType) (q@@169 T@Field_22143_22144) (w@@175 T@FrameType) (r@@169 T@Field_23481_23482) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_22143_23481 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_22143_23481 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_22143_23481 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_22143_22144) (v_1@@176 T@FrameType) (q@@170 T@Field_22143_22144) (w@@176 T@FrameType) (r@@170 T@Field_22561_22562) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_22143_22561 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_22143_22561 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_22143_22561 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_22143_22144) (v_1@@177 T@FrameType) (q@@171 T@Field_22143_22144) (w@@177 T@FrameType) (r@@171 T@Field_22143_22144) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_22143_22143 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_22143_22143 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_22143_22143 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_22143_22144) (v_1@@178 T@FrameType) (q@@172 T@Field_22143_22144) (w@@178 T@FrameType) (r@@172 T@Field_9821_9839) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_22143 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_22143_16014 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_22143_16014 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_22143 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_22143_16014 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_22143_22144) (v_1@@179 T@FrameType) (q@@173 T@Field_9821_9839) (w@@179 T@FrameType) (r@@173 T@Field_25463_25464) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_16014_25463 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_22143_25463 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_16014_25463 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_22143_22144) (v_1@@180 T@FrameType) (q@@174 T@Field_9821_9839) (w@@180 T@FrameType) (r@@174 T@Field_24489_24490) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_16014_24489 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_22143_24489 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_16014_24489 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_22143_22144) (v_1@@181 T@FrameType) (q@@175 T@Field_9821_9839) (w@@181 T@FrameType) (r@@175 T@Field_23481_23482) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_16014_23481 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_22143_23481 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_16014_23481 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_22143_22144) (v_1@@182 T@FrameType) (q@@176 T@Field_9821_9839) (w@@182 T@FrameType) (r@@176 T@Field_22561_22562) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_16014_22561 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_22143_22561 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_16014_22561 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_22143_22144) (v_1@@183 T@FrameType) (q@@177 T@Field_9821_9839) (w@@183 T@FrameType) (r@@177 T@Field_22143_22144) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_16014_22143 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_22143_22143 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_16014_22143 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_22143_22144) (v_1@@184 T@FrameType) (q@@178 T@Field_9821_9839) (w@@184 T@FrameType) (r@@178 T@Field_9821_9839) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_22143_16014 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_16014_16014 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_22143_16014 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22143_16014 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_16014_16014 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_9821_9839) (v_1@@185 T@FrameType) (q@@179 T@Field_25463_25464) (w@@185 T@FrameType) (r@@179 T@Field_25463_25464) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25463_25463 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_16014_25463 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25463_25463 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_9821_9839) (v_1@@186 T@FrameType) (q@@180 T@Field_25463_25464) (w@@186 T@FrameType) (r@@180 T@Field_24489_24490) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25463_24489 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_16014_24489 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25463_24489 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_9821_9839) (v_1@@187 T@FrameType) (q@@181 T@Field_25463_25464) (w@@187 T@FrameType) (r@@181 T@Field_23481_23482) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25463_23481 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_16014_23481 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25463_23481 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_9821_9839) (v_1@@188 T@FrameType) (q@@182 T@Field_25463_25464) (w@@188 T@FrameType) (r@@182 T@Field_22561_22562) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25463_22561 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_16014_22561 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25463_22561 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_9821_9839) (v_1@@189 T@FrameType) (q@@183 T@Field_25463_25464) (w@@189 T@FrameType) (r@@183 T@Field_22143_22144) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25463_22143 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_16014_22143 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25463_22143 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_9821_9839) (v_1@@190 T@FrameType) (q@@184 T@Field_25463_25464) (w@@190 T@FrameType) (r@@184 T@Field_9821_9839) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_25463 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25463_16014 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_16014_16014 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_25463 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25463_16014 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_9821_9839) (v_1@@191 T@FrameType) (q@@185 T@Field_24489_24490) (w@@191 T@FrameType) (r@@185 T@Field_25463_25464) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24489_25463 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_16014_25463 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24489_25463 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_9821_9839) (v_1@@192 T@FrameType) (q@@186 T@Field_24489_24490) (w@@192 T@FrameType) (r@@186 T@Field_24489_24490) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24489_24489 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_16014_24489 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24489_24489 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_9821_9839) (v_1@@193 T@FrameType) (q@@187 T@Field_24489_24490) (w@@193 T@FrameType) (r@@187 T@Field_23481_23482) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24489_23481 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_16014_23481 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24489_23481 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_9821_9839) (v_1@@194 T@FrameType) (q@@188 T@Field_24489_24490) (w@@194 T@FrameType) (r@@188 T@Field_22561_22562) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24489_22561 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_16014_22561 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24489_22561 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_9821_9839) (v_1@@195 T@FrameType) (q@@189 T@Field_24489_24490) (w@@195 T@FrameType) (r@@189 T@Field_22143_22144) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24489_22143 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_16014_22143 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24489_22143 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_9821_9839) (v_1@@196 T@FrameType) (q@@190 T@Field_24489_24490) (w@@196 T@FrameType) (r@@190 T@Field_9821_9839) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_24489 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24489_16014 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_16014_16014 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_24489 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24489_16014 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_9821_9839) (v_1@@197 T@FrameType) (q@@191 T@Field_23481_23482) (w@@197 T@FrameType) (r@@191 T@Field_25463_25464) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_23481_25463 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_16014_25463 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_23481_25463 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_9821_9839) (v_1@@198 T@FrameType) (q@@192 T@Field_23481_23482) (w@@198 T@FrameType) (r@@192 T@Field_24489_24490) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_23481_24489 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_16014_24489 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_23481_24489 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_9821_9839) (v_1@@199 T@FrameType) (q@@193 T@Field_23481_23482) (w@@199 T@FrameType) (r@@193 T@Field_23481_23482) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_23481_23481 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_16014_23481 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_23481_23481 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_9821_9839) (v_1@@200 T@FrameType) (q@@194 T@Field_23481_23482) (w@@200 T@FrameType) (r@@194 T@Field_22561_22562) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_23481_22561 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_16014_22561 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_23481_22561 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_9821_9839) (v_1@@201 T@FrameType) (q@@195 T@Field_23481_23482) (w@@201 T@FrameType) (r@@195 T@Field_22143_22144) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_23481_22143 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_16014_22143 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_23481_22143 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_9821_9839) (v_1@@202 T@FrameType) (q@@196 T@Field_23481_23482) (w@@202 T@FrameType) (r@@196 T@Field_9821_9839) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_23481 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_23481_16014 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_16014_16014 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_23481 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_23481_16014 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_9821_9839) (v_1@@203 T@FrameType) (q@@197 T@Field_22561_22562) (w@@203 T@FrameType) (r@@197 T@Field_25463_25464) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_22561_25463 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_16014_25463 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_22561_25463 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_9821_9839) (v_1@@204 T@FrameType) (q@@198 T@Field_22561_22562) (w@@204 T@FrameType) (r@@198 T@Field_24489_24490) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_22561_24489 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_16014_24489 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_22561_24489 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_9821_9839) (v_1@@205 T@FrameType) (q@@199 T@Field_22561_22562) (w@@205 T@FrameType) (r@@199 T@Field_23481_23482) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_22561_23481 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_16014_23481 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_22561_23481 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_9821_9839) (v_1@@206 T@FrameType) (q@@200 T@Field_22561_22562) (w@@206 T@FrameType) (r@@200 T@Field_22561_22562) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_22561_22561 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_16014_22561 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_22561_22561 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_9821_9839) (v_1@@207 T@FrameType) (q@@201 T@Field_22561_22562) (w@@207 T@FrameType) (r@@201 T@Field_22143_22144) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_22561_22143 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_16014_22143 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_22561_22143 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_9821_9839) (v_1@@208 T@FrameType) (q@@202 T@Field_22561_22562) (w@@208 T@FrameType) (r@@202 T@Field_9821_9839) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22561 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_22561_16014 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_16014_16014 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22561 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_22561_16014 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_9821_9839) (v_1@@209 T@FrameType) (q@@203 T@Field_22143_22144) (w@@209 T@FrameType) (r@@203 T@Field_25463_25464) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_22143_25463 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_16014_25463 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_22143_25463 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_9821_9839) (v_1@@210 T@FrameType) (q@@204 T@Field_22143_22144) (w@@210 T@FrameType) (r@@204 T@Field_24489_24490) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_22143_24489 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_16014_24489 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_22143_24489 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_9821_9839) (v_1@@211 T@FrameType) (q@@205 T@Field_22143_22144) (w@@211 T@FrameType) (r@@205 T@Field_23481_23482) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_22143_23481 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_16014_23481 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_22143_23481 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_9821_9839) (v_1@@212 T@FrameType) (q@@206 T@Field_22143_22144) (w@@212 T@FrameType) (r@@206 T@Field_22561_22562) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_22143_22561 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_16014_22561 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_22143_22561 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_9821_9839) (v_1@@213 T@FrameType) (q@@207 T@Field_22143_22144) (w@@213 T@FrameType) (r@@207 T@Field_22143_22144) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_22143_22143 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_16014_22143 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_22143_22143 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_9821_9839) (v_1@@214 T@FrameType) (q@@208 T@Field_22143_22144) (w@@214 T@FrameType) (r@@208 T@Field_9821_9839) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_22143 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_22143_16014 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_16014_16014 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_22143 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_22143_16014 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_9821_9839) (v_1@@215 T@FrameType) (q@@209 T@Field_9821_9839) (w@@215 T@FrameType) (r@@209 T@Field_25463_25464) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_16014_25463 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_16014_25463 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_16014_25463 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_9821_9839) (v_1@@216 T@FrameType) (q@@210 T@Field_9821_9839) (w@@216 T@FrameType) (r@@210 T@Field_24489_24490) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_16014_24489 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_16014_24489 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_16014_24489 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_9821_9839) (v_1@@217 T@FrameType) (q@@211 T@Field_9821_9839) (w@@217 T@FrameType) (r@@211 T@Field_23481_23482) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_16014_23481 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_16014_23481 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_16014_23481 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_9821_9839) (v_1@@218 T@FrameType) (q@@212 T@Field_9821_9839) (w@@218 T@FrameType) (r@@212 T@Field_22561_22562) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_16014_22561 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_16014_22561 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_16014_22561 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_9821_9839) (v_1@@219 T@FrameType) (q@@213 T@Field_9821_9839) (w@@219 T@FrameType) (r@@213 T@Field_22143_22144) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_16014_22143 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_16014_22143 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_16014_22143 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_9821_9839) (v_1@@220 T@FrameType) (q@@214 T@Field_9821_9839) (w@@220 T@FrameType) (r@@214 T@Field_9821_9839) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_16014_16014 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_16014_16014 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_16014_16014 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16014_16014 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_16014_16014 q@@214 w@@220 r@@214 u@@214))
)))
(assert (forall ((s@@31 T@Seq_26504) ) (!  (=> (= (|Seq#Length_26504| s@@31) 0) (= s@@31 |Seq#Empty_26504|))
 :qid |stdinbpl.241:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_26504| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3120) ) (!  (=> (= (|Seq#Length_3120| s@@32) 0) (= s@@32 |Seq#Empty_3120|))
 :qid |stdinbpl.241:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3120| s@@32))
)))
(assert (forall ((s@@33 T@Seq_26504) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_26504| s@@33 n@@25) |Seq#Empty_26504|))
 :qid |stdinbpl.417:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_26504| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3120) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3120| s@@34 n@@26) |Seq#Empty_3120|))
 :qid |stdinbpl.417:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3120| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@5 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_15975)
(declare-fun Mask@0 () T@PolymorphicMapType_15975)
(declare-fun Heap@1 () T@PolymorphicMapType_15954)
(declare-fun i@@23 () Int)
(declare-fun Heap@@92 () T@PolymorphicMapType_15954)
(declare-fun Heap@0 () T@PolymorphicMapType_15954)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_15975)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun xs () T@Seq_26504)
(declare-fun invRecv8 (T@Ref Int) T@Ref)
(declare-fun qpRange8 (T@Ref Int) Bool)
(declare-fun getPredWandId_9821_3242 (T@Field_22067_3242) Int)
(declare-fun getPredWandId_9821_9826 (T@Field_9821_9839) Int)
(declare-fun getPredWandId_9821_53 (T@Field_16014_53) Int)
(declare-fun getPredWandId_9821_16028 (T@Field_16027_16028) Int)
(declare-fun getPredWandId_9821_129652 (T@Field_9821_22160) Int)
(declare-fun getPredWandId_9825_3242 (T@Field_22143_3242) Int)
(declare-fun getPredWandId_9825_53 (T@Field_22143_53) Int)
(declare-fun getPredWandId_9825_16028 (T@Field_22143_16028) Int)
(declare-fun getPredWandId_9825_130461 (T@Field_22155_22160) Int)
(declare-fun getPredWandId_9838_3242 (T@Field_9838_3242) Int)
(declare-fun getPredWandId_9838_53 (T@Field_9838_53) Int)
(declare-fun getPredWandId_9838_16028 (T@Field_9838_16028) Int)
(declare-fun getPredWandId_9838_131270 (T@Field_22574_22579) Int)
(declare-fun getPredWandId_9863_3242 (T@Field_9863_3242) Int)
(declare-fun getPredWandId_9863_53 (T@Field_9863_53) Int)
(declare-fun getPredWandId_9863_16028 (T@Field_9863_16028) Int)
(declare-fun getPredWandId_9863_132079 (T@Field_23494_23499) Int)
(declare-fun getPredWandId_9888_3242 (T@Field_9888_3242) Int)
(declare-fun getPredWandId_9888_53 (T@Field_9888_53) Int)
(declare-fun getPredWandId_9888_16028 (T@Field_9888_16028) Int)
(declare-fun getPredWandId_9888_132888 (T@Field_24502_24507) Int)
(declare-fun getPredWandId_9913_3242 (T@Field_9913_3242) Int)
(declare-fun getPredWandId_9913_53 (T@Field_9913_53) Int)
(declare-fun getPredWandId_9913_16028 (T@Field_9913_16028) Int)
(declare-fun getPredWandId_9913_133697 (T@Field_25476_25481) Int)
(declare-fun FrameFragment_3242 (Int) T@FrameType)
(set-info :boogie-vc-id m9)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon6_correct  (=> (and (not (= x@@5 null)) (= Mask@1 (PolymorphicMapType_15975 (store (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@0) x@@5 f_7 (+ (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@0) x@@5 f_7) FullPerm)) (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| Mask@0) (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| Mask@0)))) (=> (and (and (state Heap@1 Mask@1) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@1) x@@5 f_7) i@@23)) (and (state Heap@1 Mask@1) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_9821_3242 Mask@1 x@@5 f_7)) (=> (HasDirectPerm_9821_3242 Mask@1 x@@5 f_7) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@1) x@@5 f_7) 0)) (=> (= (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@1) x@@5 f_7) 0) (=> (and (state Heap@1 Mask@1) (= (ControlFlow 0 3) (- 0 2))) (= FullPerm (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| Mask@1) x@@5 f_7)))))))))))
(let ((anon9_Else_correct  (=> (HasDirectPerm_9913_9914 Mask@0 null (p5 x@@5 i@@23)) (=> (and (= Heap@1 Heap@@92) (= (ControlFlow 0 7) 3)) anon6_correct))))
(let ((anon9_Then_correct  (=> (and (and (not (HasDirectPerm_9913_9914 Mask@0 null (p5 x@@5 i@@23))) (= Heap@0 (PolymorphicMapType_15954 (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9600_9601#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9838_9839#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9863_9864#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9888_9889#PolymorphicMapType_15954| Heap@@92) (store (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@92) null (p5 x@@5 i@@23) newVersion@0) (|PolymorphicMapType_15954_9821_9839#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9821_48981#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9838_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9838_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9838_16028#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9838_50122#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9863_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9863_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9863_16028#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9863_51263#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9888_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9888_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9888_16028#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9888_52404#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9913_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9913_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9913_16028#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_9913_53545#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_22143_3242#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_22143_9839#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_22143_53#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_22143_16028#PolymorphicMapType_15954| Heap@@92) (|PolymorphicMapType_15954_22143_54723#PolymorphicMapType_15954| Heap@@92)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 6) 3))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@0 (PolymorphicMapType_15975 (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| QPMask@0) (store (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 x@@5 i@@23) (- (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 x@@5 i@@23)) FullPerm)) (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| QPMask@0) (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| QPMask@0))) (and (=> (= (ControlFlow 0 8) 6) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 11) 8)) anon4_correct)))
(let ((anon8_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= FullPerm (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 x@@5 i@@23)))) (=> (<= FullPerm (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 x@@5 i@@23))) (=> (= (ControlFlow 0 9) 8) anon4_correct))))))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (|Seq#Contains_9941| xs r_1_1)) (|Seq#Contains_9941| xs r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1 r_1_2)) (not (= i@@23 i@@23))))
 :qid |stdinbpl.1679:17|
 :skolemid |125|
 :pattern ( (neverTriggered8 r_1_1) (neverTriggered8 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (|Seq#Contains_9941| xs r_1_1@@0)) (|Seq#Contains_9941| xs r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1@@0 r_1_2@@0)) (not (= i@@23 i@@23))))
 :qid |stdinbpl.1679:17|
 :skolemid |125|
 :pattern ( (neverTriggered8 r_1_1@@0) (neverTriggered8 r_1_2@@0))
)) (=> (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_9941| xs r_1_1@@1) (< NoPerm FullPerm)) (and (= (invRecv8 r_1_1@@1 i@@23) r_1_1@@1) (qpRange8 r_1_1@@1 i@@23)))
 :qid |stdinbpl.1685:22|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@92) null (p5 r_1_1@@1 i@@23)))
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) null (p5 r_1_1@@1 i@@23)))
 :pattern ( (|Seq#ContainsTrigger_9941| xs r_1_1@@1))
 :pattern ( (|Seq#Contains_9941| xs r_1_1@@1))
)) (=> (and (forall ((r_2_1 T@Ref) (i_1_1_1 Int) ) (!  (=> (and (and (|Seq#Contains_9941| xs (invRecv8 r_2_1 i_1_1_1)) (< NoPerm FullPerm)) (qpRange8 r_2_1 i_1_1_1)) (and (= (invRecv8 r_2_1 i_1_1_1) r_2_1) (= i@@23 i_1_1_1)))
 :qid |stdinbpl.1689:22|
 :skolemid |127|
 :pattern ( (invRecv8 r_2_1 i_1_1_1))
)) (forall ((r_2_1@@0 T@Ref) (i_1_1_1@@0 Int) ) (!  (=> (and (and (|Seq#Contains_9941| xs (invRecv8 r_2_1@@0 i_1_1_1@@0)) (< NoPerm FullPerm)) (qpRange8 r_2_1@@0 i_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv8 r_2_1@@0 i_1_1_1@@0) r_2_1@@0) (= i@@23 i_1_1_1@@0))) (= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 r_2_1@@0 i_1_1_1@@0)) (+ (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) null (p5 r_2_1@@0 i_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.1695:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 r_2_1@@0 i_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_22067_3242) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_9821_3242 f_5))) (not (= (getPredWandId_9821_3242 f_5) 4))) (= (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_15975_9821_3242#PolymorphicMapType_15975| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_9821_9839) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_9821_54969 f_5@@0))) (not (= (getPredWandId_9821_9826 f_5@@0) 4))) (= (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15975_9821_9839#PolymorphicMapType_15975| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_16014_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_9821_53 f_5@@1))) (not (= (getPredWandId_9821_53 f_5@@1) 4))) (= (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15975_9821_53#PolymorphicMapType_15975| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_16027_16028) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_9821_16028 f_5@@2))) (not (= (getPredWandId_9821_16028 f_5@@2) 4))) (= (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15975_9821_16028#PolymorphicMapType_15975| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_9821_22160) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_9821_83046 f_5@@3))) (not (= (getPredWandId_9821_129652 f_5@@3) 4))) (= (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15975_9821_78187#PolymorphicMapType_15975| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_22143_3242) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_22143_3242 f_5@@4))) (not (= (getPredWandId_9825_3242 f_5@@4) 4))) (= (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15975_22143_3242#PolymorphicMapType_15975| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_22143_22144) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_9825_9826 f_5@@5))) (not (= (getPredWandId_9825_9826 f_5@@5) 4))) (= (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_15975_22143_9839#PolymorphicMapType_15975| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_22143_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_22143_53 f_5@@6))) (not (= (getPredWandId_9825_53 f_5@@6) 4))) (= (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_15975_22143_53#PolymorphicMapType_15975| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_22143_16028) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_22143_16028 f_5@@7))) (not (= (getPredWandId_9825_16028 f_5@@7) 4))) (= (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_15975_22143_16028#PolymorphicMapType_15975| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_22155_22160) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_22143_87201 f_5@@8))) (not (= (getPredWandId_9825_130461 f_5@@8) 4))) (= (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_15975_22143_80257#PolymorphicMapType_15975| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_9838_3242) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_9838_3242 f_5@@9))) (not (= (getPredWandId_9838_3242 f_5@@9) 4))) (= (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ZeroMask) o_9@@9 f_5@@9) (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| QPMask@0) o_9@@9 f_5@@9)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| ZeroMask) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_15975_9838_3242#PolymorphicMapType_15975| QPMask@0) o_9@@9 f_5@@9))
))) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_22561_22562) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_9838_9839 f_5@@10))) (not (= (getPredWandId_9838_9839 f_5@@10) 4))) (= (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ZeroMask) o_9@@10 f_5@@10) (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| QPMask@0) o_9@@10 f_5@@10)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| ZeroMask) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_15975_9838_9839#PolymorphicMapType_15975| QPMask@0) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_9838_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_9838_53 f_5@@11))) (not (= (getPredWandId_9838_53 f_5@@11) 4))) (= (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ZeroMask) o_9@@11 f_5@@11) (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| QPMask@0) o_9@@11 f_5@@11)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| ZeroMask) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_15975_9838_53#PolymorphicMapType_15975| QPMask@0) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_9838_16028) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_9838_16028 f_5@@12))) (not (= (getPredWandId_9838_16028 f_5@@12) 4))) (= (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ZeroMask) o_9@@12 f_5@@12) (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| QPMask@0) o_9@@12 f_5@@12)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| ZeroMask) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_15975_9838_16028#PolymorphicMapType_15975| QPMask@0) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_22574_22579) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_9838_83877 f_5@@13))) (not (= (getPredWandId_9838_131270 f_5@@13) 4))) (= (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ZeroMask) o_9@@13 f_5@@13) (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| QPMask@0) o_9@@13 f_5@@13)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| ZeroMask) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_15975_9838_78598#PolymorphicMapType_15975| QPMask@0) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_9863_3242) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_9863_3242 f_5@@14))) (not (= (getPredWandId_9863_3242 f_5@@14) 4))) (= (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ZeroMask) o_9@@14 f_5@@14) (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| QPMask@0) o_9@@14 f_5@@14)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| ZeroMask) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_15975_9863_3242#PolymorphicMapType_15975| QPMask@0) o_9@@14 f_5@@14))
))) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_23481_23482) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_9863_9864 f_5@@15))) (not (= (getPredWandId_9863_9864 f_5@@15) 4))) (= (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ZeroMask) o_9@@15 f_5@@15) (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| QPMask@0) o_9@@15 f_5@@15)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| ZeroMask) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_15975_9863_9864#PolymorphicMapType_15975| QPMask@0) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_9863_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_9863_53 f_5@@16))) (not (= (getPredWandId_9863_53 f_5@@16) 4))) (= (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ZeroMask) o_9@@16 f_5@@16) (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| QPMask@0) o_9@@16 f_5@@16)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| ZeroMask) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_15975_9863_53#PolymorphicMapType_15975| QPMask@0) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_9863_16028) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_9863_16028 f_5@@17))) (not (= (getPredWandId_9863_16028 f_5@@17) 4))) (= (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ZeroMask) o_9@@17 f_5@@17) (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| QPMask@0) o_9@@17 f_5@@17)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| ZeroMask) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_15975_9863_16028#PolymorphicMapType_15975| QPMask@0) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_23494_23499) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_9863_84708 f_5@@18))) (not (= (getPredWandId_9863_132079 f_5@@18) 4))) (= (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ZeroMask) o_9@@18 f_5@@18) (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| QPMask@0) o_9@@18 f_5@@18)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| ZeroMask) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_15975_9863_79009#PolymorphicMapType_15975| QPMask@0) o_9@@18 f_5@@18))
))) (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_9888_3242) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_9888_3242 f_5@@19))) (not (= (getPredWandId_9888_3242 f_5@@19) 4))) (= (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ZeroMask) o_9@@19 f_5@@19) (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| QPMask@0) o_9@@19 f_5@@19)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| ZeroMask) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_15975_9888_3242#PolymorphicMapType_15975| QPMask@0) o_9@@19 f_5@@19))
))) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_24489_24490) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_9888_9889 f_5@@20))) (not (= (getPredWandId_9888_9889 f_5@@20) 4))) (= (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ZeroMask) o_9@@20 f_5@@20) (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| QPMask@0) o_9@@20 f_5@@20)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| ZeroMask) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_15975_9888_9889#PolymorphicMapType_15975| QPMask@0) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_9888_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_9888_53 f_5@@21))) (not (= (getPredWandId_9888_53 f_5@@21) 4))) (= (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ZeroMask) o_9@@21 f_5@@21) (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| QPMask@0) o_9@@21 f_5@@21)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| ZeroMask) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_15975_9888_53#PolymorphicMapType_15975| QPMask@0) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_9888_16028) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_9888_16028 f_5@@22))) (not (= (getPredWandId_9888_16028 f_5@@22) 4))) (= (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ZeroMask) o_9@@22 f_5@@22) (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| QPMask@0) o_9@@22 f_5@@22)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| ZeroMask) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_15975_9888_16028#PolymorphicMapType_15975| QPMask@0) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_24502_24507) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_9888_85539 f_5@@23))) (not (= (getPredWandId_9888_132888 f_5@@23) 4))) (= (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ZeroMask) o_9@@23 f_5@@23) (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| QPMask@0) o_9@@23 f_5@@23)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| ZeroMask) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_15975_9888_79420#PolymorphicMapType_15975| QPMask@0) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_9913_3242) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_9913_3242 f_5@@24))) (not (= (getPredWandId_9913_3242 f_5@@24) 4))) (= (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ZeroMask) o_9@@24 f_5@@24) (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| QPMask@0) o_9@@24 f_5@@24)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| ZeroMask) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_15975_9913_3242#PolymorphicMapType_15975| QPMask@0) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_25463_25464) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_9913_9914 f_5@@25))) (not (= (getPredWandId_9913_9914 f_5@@25) 4))) (= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) o_9@@25 f_5@@25) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) o_9@@25 f_5@@25)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_9913_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_9913_53 f_5@@26))) (not (= (getPredWandId_9913_53 f_5@@26) 4))) (= (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ZeroMask) o_9@@26 f_5@@26) (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| QPMask@0) o_9@@26 f_5@@26)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| ZeroMask) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_15975_9913_53#PolymorphicMapType_15975| QPMask@0) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_9913_16028) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_9913_16028 f_5@@27))) (not (= (getPredWandId_9913_16028 f_5@@27) 4))) (= (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ZeroMask) o_9@@27 f_5@@27) (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| QPMask@0) o_9@@27 f_5@@27)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| ZeroMask) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_15975_9913_16028#PolymorphicMapType_15975| QPMask@0) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_25476_25481) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_9913_86370 f_5@@28))) (not (= (getPredWandId_9913_133697 f_5@@28) 4))) (= (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ZeroMask) o_9@@28 f_5@@28) (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| QPMask@0) o_9@@28 f_5@@28)))
 :qid |stdinbpl.1701:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| ZeroMask) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_15975_9913_79831#PolymorphicMapType_15975| QPMask@0) o_9@@28 f_5@@28))
))) (forall ((r_2_1@@1 T@Ref) (i_1_1_1@@1 Int) ) (!  (=> (not (and (and (|Seq#Contains_9941| xs (invRecv8 r_2_1@@1 i_1_1_1@@1)) (< NoPerm FullPerm)) (qpRange8 r_2_1@@1 i_1_1_1@@1))) (= (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 r_2_1@@1 i_1_1_1@@1)) (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| ZeroMask) null (p5 r_2_1@@1 i_1_1_1@@1))))
 :qid |stdinbpl.1705:22|
 :skolemid |130|
 :pattern ( (select (|PolymorphicMapType_15975_9913_9914#PolymorphicMapType_15975| QPMask@0) null (p5 r_2_1@@1 i_1_1_1@@1)))
))) (and (and (state Heap@@92 QPMask@0) (state Heap@@92 QPMask@0)) (and (|p5#trigger_9913| Heap@@92 (p5 x@@5 i@@23)) (= (select (|PolymorphicMapType_15954_9913_9914#PolymorphicMapType_15954| Heap@@92) null (p5 x@@5 i@@23)) (FrameFragment_3242 (select (|PolymorphicMapType_15954_9821_3242#PolymorphicMapType_15954| Heap@@92) x@@5 f_7)))))) (and (=> (= (ControlFlow 0 12) 9) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct)))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@92 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_15954_9597_53#PolymorphicMapType_15954| Heap@@92) x@@5 $allocated)) (and (|Seq#Contains_9941| xs x@@5) (state Heap@@92 ZeroMask))) (and (=> (= (ControlFlow 0 14) 1) anon7_Then_correct) (=> (= (ControlFlow 0 14) 12) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15) 14) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
