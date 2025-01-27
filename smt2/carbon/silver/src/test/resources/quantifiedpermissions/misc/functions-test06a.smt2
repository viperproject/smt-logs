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
(declare-sort T@Field_57366_53 0)
(declare-sort T@Field_57379_57380 0)
(declare-sort T@Field_63506_4453 0)
(declare-sort T@Field_74101_74102 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_77189_77194 0)
(declare-sort T@Field_63553_63558 0)
(declare-sort T@Seq_63556 0)
(declare-sort T@Field_78383_78384 0)
(declare-sort T@Field_82896_82901 0)
(declare-sort T@Field_37945_38291 0)
(declare-sort T@Field_37945_77194 0)
(declare-sort T@Field_38290_4453 0)
(declare-sort T@Field_38290_82680 0)
(declare-sort T@Field_38290_53 0)
(declare-sort T@Field_38290_57380 0)
(declare-sort T@Field_38348_4453 0)
(declare-sort T@Field_38348_82680 0)
(declare-sort T@Field_38348_53 0)
(declare-sort T@Field_38348_57380 0)
(declare-datatypes ((T@PolymorphicMapType_57327 0)) (((PolymorphicMapType_57327 (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| (Array T@Ref T@Field_63506_4453 Real)) (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| (Array T@Ref T@Field_74101_74102 Real)) (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| (Array T@Ref T@Field_78383_78384 Real)) (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| (Array T@Ref T@Field_63553_63558 Real)) (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| (Array T@Ref T@Field_37945_38291 Real)) (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| (Array T@Ref T@Field_57366_53 Real)) (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| (Array T@Ref T@Field_57379_57380 Real)) (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| (Array T@Ref T@Field_37945_77194 Real)) (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| (Array T@Ref T@Field_38290_4453 Real)) (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| (Array T@Ref T@Field_38290_82680 Real)) (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| (Array T@Ref T@Field_38290_53 Real)) (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| (Array T@Ref T@Field_38290_57380 Real)) (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| (Array T@Ref T@Field_77189_77194 Real)) (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| (Array T@Ref T@Field_38348_4453 Real)) (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| (Array T@Ref T@Field_38348_82680 Real)) (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| (Array T@Ref T@Field_38348_53 Real)) (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| (Array T@Ref T@Field_38348_57380 Real)) (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| (Array T@Ref T@Field_82896_82901 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_57855 0)) (((PolymorphicMapType_57855 (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (Array T@Ref T@Field_63506_4453 Bool)) (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (Array T@Ref T@Field_63553_63558 Bool)) (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (Array T@Ref T@Field_57366_53 Bool)) (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (Array T@Ref T@Field_57379_57380 Bool)) (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (Array T@Ref T@Field_37945_38291 Bool)) (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (Array T@Ref T@Field_37945_77194 Bool)) (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (Array T@Ref T@Field_38290_4453 Bool)) (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (Array T@Ref T@Field_38290_82680 Bool)) (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (Array T@Ref T@Field_38290_53 Bool)) (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (Array T@Ref T@Field_38290_57380 Bool)) (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (Array T@Ref T@Field_74101_74102 Bool)) (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (Array T@Ref T@Field_77189_77194 Bool)) (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (Array T@Ref T@Field_38348_4453 Bool)) (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (Array T@Ref T@Field_38348_82680 Bool)) (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (Array T@Ref T@Field_38348_53 Bool)) (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (Array T@Ref T@Field_38348_57380 Bool)) (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (Array T@Ref T@Field_78383_78384 Bool)) (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (Array T@Ref T@Field_82896_82901 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_57306 0)) (((PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| (Array T@Ref T@Field_57366_53 Bool)) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| (Array T@Ref T@Field_57379_57380 T@Ref)) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| (Array T@Ref T@Field_63506_4453 Int)) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| (Array T@Ref T@Field_74101_74102 T@FrameType)) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| (Array T@Ref T@Field_77189_77194 T@PolymorphicMapType_57855)) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| (Array T@Ref T@Field_63553_63558 T@Seq_63556)) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| (Array T@Ref T@Field_78383_78384 T@FrameType)) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| (Array T@Ref T@Field_82896_82901 T@PolymorphicMapType_57855)) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| (Array T@Ref T@Field_37945_38291 T@FrameType)) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| (Array T@Ref T@Field_37945_77194 T@PolymorphicMapType_57855)) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| (Array T@Ref T@Field_38290_4453 Int)) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| (Array T@Ref T@Field_38290_82680 T@Seq_63556)) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| (Array T@Ref T@Field_38290_53 Bool)) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| (Array T@Ref T@Field_38290_57380 T@Ref)) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| (Array T@Ref T@Field_38348_4453 Int)) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| (Array T@Ref T@Field_38348_82680 T@Seq_63556)) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| (Array T@Ref T@Field_38348_53 Bool)) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| (Array T@Ref T@Field_38348_57380 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_57366_53)
(declare-fun f_7 () T@Field_63506_4453)
(declare-fun ss_1 () T@Field_63553_63558)
(declare-fun |Seq#Length_37965| (T@Seq_63556) Int)
(declare-fun |Seq#Drop_37965| (T@Seq_63556 Int) T@Seq_63556)
(declare-sort T@Seq_4331 0)
(declare-fun |Seq#Length_4331| (T@Seq_4331) Int)
(declare-fun |Seq#Drop_4331| (T@Seq_4331 Int) T@Seq_4331)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_57306 T@PolymorphicMapType_57306 T@PolymorphicMapType_57327) Bool)
(declare-fun IsPredicateField_38348_38349 (T@Field_78383_78384) Bool)
(declare-fun HasDirectPerm_38348_38349 (T@PolymorphicMapType_57327 T@Ref T@Field_78383_78384) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_38348 (T@Field_78383_78384) T@Field_82896_82901)
(declare-fun IsPredicateField_38290_38291 (T@Field_74101_74102) Bool)
(declare-fun HasDirectPerm_38290_38291 (T@PolymorphicMapType_57327 T@Ref T@Field_74101_74102) Bool)
(declare-fun PredicateMaskField_38290 (T@Field_74101_74102) T@Field_77189_77194)
(declare-fun IsPredicateField_37945_180339 (T@Field_37945_38291) Bool)
(declare-fun HasDirectPerm_37945_38291 (T@PolymorphicMapType_57327 T@Ref T@Field_37945_38291) Bool)
(declare-fun PredicateMaskField_37945 (T@Field_37945_38291) T@Field_37945_77194)
(declare-fun IsWandField_38348_186632 (T@Field_78383_78384) Bool)
(declare-fun WandMaskField_38348 (T@Field_78383_78384) T@Field_82896_82901)
(declare-fun IsWandField_38290_186275 (T@Field_74101_74102) Bool)
(declare-fun WandMaskField_38290 (T@Field_74101_74102) T@Field_77189_77194)
(declare-fun IsWandField_37945_185918 (T@Field_37945_38291) Bool)
(declare-fun WandMaskField_37945 (T@Field_37945_38291) T@Field_37945_77194)
(declare-fun succHeap (T@PolymorphicMapType_57306 T@PolymorphicMapType_57306) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_57306 T@PolymorphicMapType_57306) Bool)
(declare-fun state (T@PolymorphicMapType_57306 T@PolymorphicMapType_57327) Bool)
(declare-fun fun07 (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Index_37965| (T@Seq_63556 Int) T@Ref)
(declare-fun |fun07'| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun GoodMask (T@PolymorphicMapType_57327) Bool)
(declare-fun |fun06'| (T@PolymorphicMapType_57306 T@Seq_63556 Int Int) Int)
(declare-fun dummyFunction_4915 (Int) Bool)
(declare-fun |fun06#triggerStateless| (T@Seq_63556 Int Int) Int)
(declare-fun |fun04'| (T@PolymorphicMapType_57306 T@Ref Int Int) Int)
(declare-fun |fun04#triggerStateless| (T@Ref Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_57855)
(declare-fun P02 (T@Seq_63556 Int) T@Field_74101_74102)
(declare-fun P01 (T@Ref Int) T@Field_78383_78384)
(declare-fun |fun03'| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |fun03#triggerStateless| (T@Seq_63556 Int) Int)
(declare-fun |fun07#triggerStateless| (T@Seq_63556 Int) Int)
(declare-fun |fun08'| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |fun08#triggerStateless| (T@Seq_63556 Int) Int)
(declare-fun |P02#trigger_38290| (T@PolymorphicMapType_57306 T@Field_74101_74102) Bool)
(declare-fun |P02#everUsed_38290| (T@Field_74101_74102) Bool)
(declare-fun |P01#trigger_38348| (T@PolymorphicMapType_57306 T@Field_78383_78384) Bool)
(declare-fun |P01#everUsed_38348| (T@Field_78383_78384) Bool)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_4331| (T@Seq_4331 Int) Int)
(declare-fun |Seq#Empty_37965| () T@Seq_63556)
(declare-fun |Seq#Empty_4331| () T@Seq_4331)
(declare-fun |fun01'| (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun |fun01#triggerStateless| (T@Seq_63556) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun |fun02#triggerStateless| (T@Seq_63556) Int)
(declare-fun |Seq#Update_37965| (T@Seq_63556 Int T@Ref) T@Seq_63556)
(declare-fun |Seq#Update_4331| (T@Seq_4331 Int Int) T@Seq_4331)
(declare-fun |Seq#Take_37965| (T@Seq_63556 Int) T@Seq_63556)
(declare-fun |Seq#Take_4331| (T@Seq_4331 Int) T@Seq_4331)
(declare-fun |fun08#trigger| (T@FrameType T@Seq_63556 Int) Bool)
(declare-fun FrameFragment_4717 (Int) T@FrameType)
(declare-fun |fun08#condqp10| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |Seq#Contains_4331| (T@Seq_4331 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_4331)
(declare-fun fun04 (T@PolymorphicMapType_57306 T@Ref Int Int) Int)
(declare-fun |Seq#Contains_63556| (T@Seq_63556 T@Ref) Bool)
(declare-fun |Seq#Skolem_63556| (T@Seq_63556 T@Ref) Int)
(declare-fun |Seq#Skolem_4331| (T@Seq_4331 Int) Int)
(declare-fun fun01 (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun fun02 (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun |Seq#Singleton_37965| (T@Ref) T@Seq_63556)
(declare-fun |Seq#Singleton_4331| (Int) T@Seq_4331)
(declare-fun |P02#sm| (T@Seq_63556 Int) T@Field_77189_77194)
(declare-fun |P01#sm| (T@Ref Int) T@Field_82896_82901)
(declare-fun |Seq#Append_63556| (T@Seq_63556 T@Seq_63556) T@Seq_63556)
(declare-fun |Seq#Append_4331| (T@Seq_4331 T@Seq_4331) T@Seq_4331)
(declare-fun fun08 (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |P02#condqp6| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |sk_P02#condqp6| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun dummyHeap () T@PolymorphicMapType_57306)
(declare-fun ZeroMask () T@PolymorphicMapType_57327)
(declare-fun InsidePredicate_78383_78383 (T@Field_78383_78384 T@FrameType T@Field_78383_78384 T@FrameType) Bool)
(declare-fun InsidePredicate_74101_74101 (T@Field_74101_74102 T@FrameType T@Field_74101_74102 T@FrameType) Bool)
(declare-fun InsidePredicate_57366_57366 (T@Field_37945_38291 T@FrameType T@Field_37945_38291 T@FrameType) Bool)
(declare-fun IsPredicateField_37945_4453 (T@Field_63506_4453) Bool)
(declare-fun IsWandField_37945_4453 (T@Field_63506_4453) Bool)
(declare-fun IsPredicateField_37947_63580 (T@Field_63553_63558) Bool)
(declare-fun IsWandField_37947_63606 (T@Field_63553_63558) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_38348_198772 (T@Field_82896_82901) Bool)
(declare-fun IsWandField_38348_198788 (T@Field_82896_82901) Bool)
(declare-fun IsPredicateField_38348_57380 (T@Field_38348_57380) Bool)
(declare-fun IsWandField_38348_57380 (T@Field_38348_57380) Bool)
(declare-fun IsPredicateField_38348_53 (T@Field_38348_53) Bool)
(declare-fun IsWandField_38348_53 (T@Field_38348_53) Bool)
(declare-fun IsPredicateField_38348_79607 (T@Field_38348_82680) Bool)
(declare-fun IsWandField_38348_79607 (T@Field_38348_82680) Bool)
(declare-fun IsPredicateField_38348_4453 (T@Field_38348_4453) Bool)
(declare-fun IsWandField_38348_4453 (T@Field_38348_4453) Bool)
(declare-fun IsPredicateField_38290_197773 (T@Field_77189_77194) Bool)
(declare-fun IsWandField_38290_197789 (T@Field_77189_77194) Bool)
(declare-fun IsPredicateField_38290_57380 (T@Field_38290_57380) Bool)
(declare-fun IsWandField_38290_57380 (T@Field_38290_57380) Bool)
(declare-fun IsPredicateField_38290_53 (T@Field_38290_53) Bool)
(declare-fun IsWandField_38290_53 (T@Field_38290_53) Bool)
(declare-fun IsPredicateField_38290_79607 (T@Field_38290_82680) Bool)
(declare-fun IsWandField_38290_79607 (T@Field_38290_82680) Bool)
(declare-fun IsPredicateField_38290_4453 (T@Field_38290_4453) Bool)
(declare-fun IsWandField_38290_4453 (T@Field_38290_4453) Bool)
(declare-fun IsPredicateField_37945_196774 (T@Field_37945_77194) Bool)
(declare-fun IsWandField_37945_196790 (T@Field_37945_77194) Bool)
(declare-fun IsPredicateField_37945_57380 (T@Field_57379_57380) Bool)
(declare-fun IsWandField_37945_57380 (T@Field_57379_57380) Bool)
(declare-fun IsPredicateField_37945_53 (T@Field_57366_53) Bool)
(declare-fun IsWandField_37945_53 (T@Field_57366_53) Bool)
(declare-fun HasDirectPerm_38348_180094 (T@PolymorphicMapType_57327 T@Ref T@Field_82896_82901) Bool)
(declare-fun HasDirectPerm_38348_57380 (T@PolymorphicMapType_57327 T@Ref T@Field_38348_57380) Bool)
(declare-fun HasDirectPerm_38348_53 (T@PolymorphicMapType_57327 T@Ref T@Field_38348_53) Bool)
(declare-fun HasDirectPerm_38348_82680 (T@PolymorphicMapType_57327 T@Ref T@Field_38348_82680) Bool)
(declare-fun HasDirectPerm_38348_4453 (T@PolymorphicMapType_57327 T@Ref T@Field_38348_4453) Bool)
(declare-fun HasDirectPerm_38290_178767 (T@PolymorphicMapType_57327 T@Ref T@Field_77189_77194) Bool)
(declare-fun HasDirectPerm_38290_57380 (T@PolymorphicMapType_57327 T@Ref T@Field_38290_57380) Bool)
(declare-fun HasDirectPerm_38290_53 (T@PolymorphicMapType_57327 T@Ref T@Field_38290_53) Bool)
(declare-fun HasDirectPerm_38290_82680 (T@PolymorphicMapType_57327 T@Ref T@Field_38290_82680) Bool)
(declare-fun HasDirectPerm_38290_4453 (T@PolymorphicMapType_57327 T@Ref T@Field_38290_4453) Bool)
(declare-fun HasDirectPerm_37945_177397 (T@PolymorphicMapType_57327 T@Ref T@Field_37945_77194) Bool)
(declare-fun HasDirectPerm_37945_57380 (T@PolymorphicMapType_57327 T@Ref T@Field_57379_57380) Bool)
(declare-fun HasDirectPerm_37945_53 (T@PolymorphicMapType_57327 T@Ref T@Field_57366_53) Bool)
(declare-fun HasDirectPerm_37947_82680 (T@PolymorphicMapType_57327 T@Ref T@Field_63553_63558) Bool)
(declare-fun HasDirectPerm_37945_4453 (T@PolymorphicMapType_57327 T@Ref T@Field_63506_4453) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun fun03 (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |fun07#frame| (T@FrameType T@Seq_63556 Int) Int)
(declare-fun |fun07#condqp9| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |fun08#frame| (T@FrameType T@Seq_63556 Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_57327 T@PolymorphicMapType_57327 T@PolymorphicMapType_57327) Bool)
(declare-fun |P01#condqp8| (T@PolymorphicMapType_57306 T@Ref Int) Int)
(declare-fun |sk_P01#condqp8| (Int Int) Int)
(declare-fun |fun03#condqp4| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |sk_fun03#condqp4| (Int Int) Int)
(declare-fun |Seq#Equal_63556| (T@Seq_63556 T@Seq_63556) Bool)
(declare-fun |Seq#Equal_4331| (T@Seq_4331 T@Seq_4331) Bool)
(declare-fun fun06 (T@PolymorphicMapType_57306 T@Seq_63556 Int Int) Int)
(declare-fun |fun06#frame| (T@FrameType T@Seq_63556 Int Int) Int)
(declare-fun |fun04#frame| (T@FrameType T@Ref Int Int) Int)
(declare-fun |Seq#ContainsTrigger_37965| (T@Seq_63556 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_4331| (T@Seq_4331 Int) Bool)
(declare-fun |fun03#condqp3| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |sk_fun03#condqp3| (Int Int) Int)
(declare-fun |P02#condqp5| (T@PolymorphicMapType_57306 T@Seq_63556 Int) Int)
(declare-fun |sk_P02#condqp5| (Int Int) Int)
(declare-fun getPredWandId_38290_38291 (T@Field_74101_74102) Int)
(declare-fun getPredWandId_38348_38349 (T@Field_78383_78384) Int)
(declare-fun |fun01#condqp1| (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun |sk_fun01#condqp1| (Int Int) Int)
(declare-fun |fun02#condqp2| (T@PolymorphicMapType_57306 T@Seq_63556) Int)
(declare-fun |sk_fun02#condqp2| (Int Int) Int)
(declare-fun |fun07#trigger| (T@FrameType T@Seq_63556 Int) Bool)
(declare-fun |fun01#frame| (T@FrameType T@Seq_63556) Int)
(declare-fun |fun02#frame| (T@FrameType T@Seq_63556) Int)
(declare-fun |Seq#SkolemDiff_63556| (T@Seq_63556 T@Seq_63556) Int)
(declare-fun |Seq#SkolemDiff_4331| (T@Seq_4331 T@Seq_4331) Int)
(declare-fun InsidePredicate_78383_74101 (T@Field_78383_78384 T@FrameType T@Field_74101_74102 T@FrameType) Bool)
(declare-fun InsidePredicate_78383_57366 (T@Field_78383_78384 T@FrameType T@Field_37945_38291 T@FrameType) Bool)
(declare-fun InsidePredicate_74101_78383 (T@Field_74101_74102 T@FrameType T@Field_78383_78384 T@FrameType) Bool)
(declare-fun InsidePredicate_74101_57366 (T@Field_74101_74102 T@FrameType T@Field_37945_38291 T@FrameType) Bool)
(declare-fun InsidePredicate_57366_78383 (T@Field_37945_38291 T@FrameType T@Field_78383_78384 T@FrameType) Bool)
(declare-fun InsidePredicate_57366_74101 (T@Field_37945_38291 T@FrameType T@Field_74101_74102 T@FrameType) Bool)
(declare-fun |P01#condqp7| (T@PolymorphicMapType_57306 T@Ref Int) Int)
(declare-fun |sk_P01#condqp7| (Int Int) Int)
(declare-fun |sk_fun07#condqp9| (Int Int) Int)
(declare-fun |sk_fun08#condqp10| (Int Int) Int)
(declare-fun |fun03#frame| (T@FrameType T@Seq_63556 Int) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(assert (forall ((s T@Seq_63556) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_37965| s)) (= (|Seq#Length_37965| (|Seq#Drop_37965| s n)) (- (|Seq#Length_37965| s) n))) (=> (< (|Seq#Length_37965| s) n) (= (|Seq#Length_37965| (|Seq#Drop_37965| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_37965| (|Seq#Drop_37965| s n)) (|Seq#Length_37965| s))))
 :qid |stdinbpl.477:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_37965| (|Seq#Drop_37965| s n)))
 :pattern ( (|Seq#Length_37965| s) (|Seq#Drop_37965| s n))
)))
(assert (forall ((s@@0 T@Seq_4331) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_4331| s@@0)) (= (|Seq#Length_4331| (|Seq#Drop_4331| s@@0 n@@0)) (- (|Seq#Length_4331| s@@0) n@@0))) (=> (< (|Seq#Length_4331| s@@0) n@@0) (= (|Seq#Length_4331| (|Seq#Drop_4331| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_4331| (|Seq#Drop_4331| s@@0 n@@0)) (|Seq#Length_4331| s@@0))))
 :qid |stdinbpl.477:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_4331| (|Seq#Drop_4331| s@@0 n@@0)))
 :pattern ( (|Seq#Length_4331| s@@0) (|Seq#Drop_4331| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_57306) (ExhaleHeap T@PolymorphicMapType_57306) (Mask T@PolymorphicMapType_57327) (pm_f_57 T@Field_78383_78384) ) (!  (=> (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (=> (and (HasDirectPerm_38348_38349 Mask null pm_f_57) (IsPredicateField_38348_38349 pm_f_57)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58 T@Ref) (f_91 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58 f_91) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap) o2_58 f_91) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58 f_91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58 f_91))
)) (forall ((o2_58@@0 T@Ref) (f_91@@0 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@0 f_91@@0) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap) o2_58@@0 f_91@@0) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap) o2_58@@0 f_91@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap) o2_58@@0 f_91@@0))
))) (forall ((o2_58@@1 T@Ref) (f_91@@1 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@1 f_91@@1) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap) o2_58@@1 f_91@@1) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@1 f_91@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@1 f_91@@1))
))) (forall ((o2_58@@2 T@Ref) (f_91@@2 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@2 f_91@@2) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap) o2_58@@2 f_91@@2) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap) o2_58@@2 f_91@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap) o2_58@@2 f_91@@2))
))) (forall ((o2_58@@3 T@Ref) (f_91@@3 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@3 f_91@@3) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap) o2_58@@3 f_91@@3) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap) o2_58@@3 f_91@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap) o2_58@@3 f_91@@3))
))) (forall ((o2_58@@4 T@Ref) (f_91@@4 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@4 f_91@@4) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap) o2_58@@4 f_91@@4) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap) o2_58@@4 f_91@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap) o2_58@@4 f_91@@4))
))) (forall ((o2_58@@5 T@Ref) (f_91@@5 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@5 f_91@@5) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap) o2_58@@5 f_91@@5) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58@@5 f_91@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58@@5 f_91@@5))
))) (forall ((o2_58@@6 T@Ref) (f_91@@6 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@6 f_91@@6) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap) o2_58@@6 f_91@@6) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap) o2_58@@6 f_91@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap) o2_58@@6 f_91@@6))
))) (forall ((o2_58@@7 T@Ref) (f_91@@7 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@7 f_91@@7) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap) o2_58@@7 f_91@@7) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@7 f_91@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@7 f_91@@7))
))) (forall ((o2_58@@8 T@Ref) (f_91@@8 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@8 f_91@@8) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap) o2_58@@8 f_91@@8) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap) o2_58@@8 f_91@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap) o2_58@@8 f_91@@8))
))) (forall ((o2_58@@9 T@Ref) (f_91@@9 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@9 f_91@@9) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap) o2_58@@9 f_91@@9) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap) o2_58@@9 f_91@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap) o2_58@@9 f_91@@9))
))) (forall ((o2_58@@10 T@Ref) (f_91@@10 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@10 f_91@@10) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap) o2_58@@10 f_91@@10) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap) o2_58@@10 f_91@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap) o2_58@@10 f_91@@10))
))) (forall ((o2_58@@11 T@Ref) (f_91@@11 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@11 f_91@@11) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap) o2_58@@11 f_91@@11) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58@@11 f_91@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap) o2_58@@11 f_91@@11))
))) (forall ((o2_58@@12 T@Ref) (f_91@@12 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@12 f_91@@12) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap) o2_58@@12 f_91@@12) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap) o2_58@@12 f_91@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap) o2_58@@12 f_91@@12))
))) (forall ((o2_58@@13 T@Ref) (f_91@@13 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@13 f_91@@13) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap) o2_58@@13 f_91@@13) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@13 f_91@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap) o2_58@@13 f_91@@13))
))) (forall ((o2_58@@14 T@Ref) (f_91@@14 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@14 f_91@@14) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap) o2_58@@14 f_91@@14) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap) o2_58@@14 f_91@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap) o2_58@@14 f_91@@14))
))) (forall ((o2_58@@15 T@Ref) (f_91@@15 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@15 f_91@@15) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap) o2_58@@15 f_91@@15) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap) o2_58@@15 f_91@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap) o2_58@@15 f_91@@15))
))) (forall ((o2_58@@16 T@Ref) (f_91@@16 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) null (PredicateMaskField_38348 pm_f_57))) o2_58@@16 f_91@@16) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap) o2_58@@16 f_91@@16) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap) o2_58@@16 f_91@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap) o2_58@@16 f_91@@16))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap ExhaleHeap Mask) (IsPredicateField_38348_38349 pm_f_57))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_57306) (ExhaleHeap@@0 T@PolymorphicMapType_57306) (Mask@@0 T@PolymorphicMapType_57327) (pm_f_57@@0 T@Field_74101_74102) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (=> (and (HasDirectPerm_38290_38291 Mask@@0 null pm_f_57@@0) (IsPredicateField_38290_38291 pm_f_57@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@17 T@Ref) (f_91@@17 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@17 f_91@@17) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@0) o2_58@@17 f_91@@17) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@17 f_91@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@17 f_91@@17))
)) (forall ((o2_58@@18 T@Ref) (f_91@@18 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@18 f_91@@18) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@0) o2_58@@18 f_91@@18) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@18 f_91@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@18 f_91@@18))
))) (forall ((o2_58@@19 T@Ref) (f_91@@19 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@19 f_91@@19) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@0) o2_58@@19 f_91@@19) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@19 f_91@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@19 f_91@@19))
))) (forall ((o2_58@@20 T@Ref) (f_91@@20 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@20 f_91@@20) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@0) o2_58@@20 f_91@@20) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@20 f_91@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@20 f_91@@20))
))) (forall ((o2_58@@21 T@Ref) (f_91@@21 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@21 f_91@@21) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@0) o2_58@@21 f_91@@21) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@21 f_91@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@21 f_91@@21))
))) (forall ((o2_58@@22 T@Ref) (f_91@@22 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@22 f_91@@22) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@0) o2_58@@22 f_91@@22) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@22 f_91@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@22 f_91@@22))
))) (forall ((o2_58@@23 T@Ref) (f_91@@23 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@23 f_91@@23) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@0) o2_58@@23 f_91@@23) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@23 f_91@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@23 f_91@@23))
))) (forall ((o2_58@@24 T@Ref) (f_91@@24 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@24 f_91@@24) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@0) o2_58@@24 f_91@@24) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@24 f_91@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@24 f_91@@24))
))) (forall ((o2_58@@25 T@Ref) (f_91@@25 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@25 f_91@@25) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@0) o2_58@@25 f_91@@25) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@25 f_91@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@25 f_91@@25))
))) (forall ((o2_58@@26 T@Ref) (f_91@@26 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@26 f_91@@26) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@0) o2_58@@26 f_91@@26) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@26 f_91@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@26 f_91@@26))
))) (forall ((o2_58@@27 T@Ref) (f_91@@27 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@27 f_91@@27) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@0) o2_58@@27 f_91@@27) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@27 f_91@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@27 f_91@@27))
))) (forall ((o2_58@@28 T@Ref) (f_91@@28 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@28 f_91@@28) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) o2_58@@28 f_91@@28) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@28 f_91@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@28 f_91@@28))
))) (forall ((o2_58@@29 T@Ref) (f_91@@29 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@29 f_91@@29) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@0) o2_58@@29 f_91@@29) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@29 f_91@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@29 f_91@@29))
))) (forall ((o2_58@@30 T@Ref) (f_91@@30 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@30 f_91@@30) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@0) o2_58@@30 f_91@@30) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@30 f_91@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@30 f_91@@30))
))) (forall ((o2_58@@31 T@Ref) (f_91@@31 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@31 f_91@@31) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@0) o2_58@@31 f_91@@31) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@31 f_91@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@31 f_91@@31))
))) (forall ((o2_58@@32 T@Ref) (f_91@@32 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@32 f_91@@32) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@0) o2_58@@32 f_91@@32) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@32 f_91@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@32 f_91@@32))
))) (forall ((o2_58@@33 T@Ref) (f_91@@33 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@33 f_91@@33) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@0) o2_58@@33 f_91@@33) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@33 f_91@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@33 f_91@@33))
))) (forall ((o2_58@@34 T@Ref) (f_91@@34 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@0) null (PredicateMaskField_38290 pm_f_57@@0))) o2_58@@34 f_91@@34) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@0) o2_58@@34 f_91@@34) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@34 f_91@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@0) o2_58@@34 f_91@@34))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap@@0 Mask@@0) (IsPredicateField_38290_38291 pm_f_57@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_57306) (ExhaleHeap@@1 T@PolymorphicMapType_57306) (Mask@@1 T@PolymorphicMapType_57327) (pm_f_57@@1 T@Field_37945_38291) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (=> (and (HasDirectPerm_37945_38291 Mask@@1 null pm_f_57@@1) (IsPredicateField_37945_180339 pm_f_57@@1)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@35 T@Ref) (f_91@@35 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@35 f_91@@35) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@1) o2_58@@35 f_91@@35) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@35 f_91@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@35 f_91@@35))
)) (forall ((o2_58@@36 T@Ref) (f_91@@36 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@36 f_91@@36) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@1) o2_58@@36 f_91@@36) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@36 f_91@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@36 f_91@@36))
))) (forall ((o2_58@@37 T@Ref) (f_91@@37 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@37 f_91@@37) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@1) o2_58@@37 f_91@@37) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@37 f_91@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@37 f_91@@37))
))) (forall ((o2_58@@38 T@Ref) (f_91@@38 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@38 f_91@@38) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@1) o2_58@@38 f_91@@38) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@38 f_91@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@38 f_91@@38))
))) (forall ((o2_58@@39 T@Ref) (f_91@@39 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@39 f_91@@39) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@1) o2_58@@39 f_91@@39) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@39 f_91@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@39 f_91@@39))
))) (forall ((o2_58@@40 T@Ref) (f_91@@40 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@40 f_91@@40) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) o2_58@@40 f_91@@40) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@40 f_91@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@40 f_91@@40))
))) (forall ((o2_58@@41 T@Ref) (f_91@@41 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@41 f_91@@41) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@1) o2_58@@41 f_91@@41) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@41 f_91@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@41 f_91@@41))
))) (forall ((o2_58@@42 T@Ref) (f_91@@42 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@42 f_91@@42) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@1) o2_58@@42 f_91@@42) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@42 f_91@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@42 f_91@@42))
))) (forall ((o2_58@@43 T@Ref) (f_91@@43 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@43 f_91@@43) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@1) o2_58@@43 f_91@@43) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@43 f_91@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@43 f_91@@43))
))) (forall ((o2_58@@44 T@Ref) (f_91@@44 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@44 f_91@@44) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@1) o2_58@@44 f_91@@44) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@44 f_91@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@44 f_91@@44))
))) (forall ((o2_58@@45 T@Ref) (f_91@@45 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@45 f_91@@45) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@1) o2_58@@45 f_91@@45) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@45 f_91@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@45 f_91@@45))
))) (forall ((o2_58@@46 T@Ref) (f_91@@46 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@46 f_91@@46) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@1) o2_58@@46 f_91@@46) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@46 f_91@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@46 f_91@@46))
))) (forall ((o2_58@@47 T@Ref) (f_91@@47 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@47 f_91@@47) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@1) o2_58@@47 f_91@@47) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@47 f_91@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@47 f_91@@47))
))) (forall ((o2_58@@48 T@Ref) (f_91@@48 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@48 f_91@@48) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@1) o2_58@@48 f_91@@48) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@48 f_91@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@48 f_91@@48))
))) (forall ((o2_58@@49 T@Ref) (f_91@@49 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@49 f_91@@49) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@1) o2_58@@49 f_91@@49) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@49 f_91@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@49 f_91@@49))
))) (forall ((o2_58@@50 T@Ref) (f_91@@50 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@50 f_91@@50) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@1) o2_58@@50 f_91@@50) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@50 f_91@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@50 f_91@@50))
))) (forall ((o2_58@@51 T@Ref) (f_91@@51 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@51 f_91@@51) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@1) o2_58@@51 f_91@@51) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@51 f_91@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@51 f_91@@51))
))) (forall ((o2_58@@52 T@Ref) (f_91@@52 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@1) null (PredicateMaskField_37945 pm_f_57@@1))) o2_58@@52 f_91@@52) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@1) o2_58@@52 f_91@@52) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@52 f_91@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@1) o2_58@@52 f_91@@52))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@1 Mask@@1) (IsPredicateField_37945_180339 pm_f_57@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_57306) (ExhaleHeap@@2 T@PolymorphicMapType_57306) (Mask@@2 T@PolymorphicMapType_57327) (pm_f_57@@2 T@Field_78383_78384) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (=> (and (HasDirectPerm_38348_38349 Mask@@2 null pm_f_57@@2) (IsWandField_38348_186632 pm_f_57@@2)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@53 T@Ref) (f_91@@53 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@53 f_91@@53) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@2) o2_58@@53 f_91@@53) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@53 f_91@@53)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@53 f_91@@53))
)) (forall ((o2_58@@54 T@Ref) (f_91@@54 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@54 f_91@@54) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@2) o2_58@@54 f_91@@54) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@54 f_91@@54)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@54 f_91@@54))
))) (forall ((o2_58@@55 T@Ref) (f_91@@55 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@55 f_91@@55) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@2) o2_58@@55 f_91@@55) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@55 f_91@@55)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@55 f_91@@55))
))) (forall ((o2_58@@56 T@Ref) (f_91@@56 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@56 f_91@@56) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@2) o2_58@@56 f_91@@56) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@56 f_91@@56)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@56 f_91@@56))
))) (forall ((o2_58@@57 T@Ref) (f_91@@57 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@57 f_91@@57) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@2) o2_58@@57 f_91@@57) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@57 f_91@@57)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@57 f_91@@57))
))) (forall ((o2_58@@58 T@Ref) (f_91@@58 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@58 f_91@@58) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@2) o2_58@@58 f_91@@58) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@58 f_91@@58)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@58 f_91@@58))
))) (forall ((o2_58@@59 T@Ref) (f_91@@59 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@59 f_91@@59) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@2) o2_58@@59 f_91@@59) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@59 f_91@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@59 f_91@@59))
))) (forall ((o2_58@@60 T@Ref) (f_91@@60 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@60 f_91@@60) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@2) o2_58@@60 f_91@@60) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@60 f_91@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@60 f_91@@60))
))) (forall ((o2_58@@61 T@Ref) (f_91@@61 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@61 f_91@@61) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@2) o2_58@@61 f_91@@61) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@61 f_91@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@61 f_91@@61))
))) (forall ((o2_58@@62 T@Ref) (f_91@@62 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@62 f_91@@62) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@2) o2_58@@62 f_91@@62) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@62 f_91@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@62 f_91@@62))
))) (forall ((o2_58@@63 T@Ref) (f_91@@63 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@63 f_91@@63) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@2) o2_58@@63 f_91@@63) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@63 f_91@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@63 f_91@@63))
))) (forall ((o2_58@@64 T@Ref) (f_91@@64 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@64 f_91@@64) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@2) o2_58@@64 f_91@@64) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@64 f_91@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@64 f_91@@64))
))) (forall ((o2_58@@65 T@Ref) (f_91@@65 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@65 f_91@@65) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@2) o2_58@@65 f_91@@65) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@65 f_91@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@65 f_91@@65))
))) (forall ((o2_58@@66 T@Ref) (f_91@@66 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@66 f_91@@66) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@2) o2_58@@66 f_91@@66) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@66 f_91@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@66 f_91@@66))
))) (forall ((o2_58@@67 T@Ref) (f_91@@67 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@67 f_91@@67) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@2) o2_58@@67 f_91@@67) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@67 f_91@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@67 f_91@@67))
))) (forall ((o2_58@@68 T@Ref) (f_91@@68 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@68 f_91@@68) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@2) o2_58@@68 f_91@@68) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@68 f_91@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@68 f_91@@68))
))) (forall ((o2_58@@69 T@Ref) (f_91@@69 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@69 f_91@@69) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@2) o2_58@@69 f_91@@69) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@69 f_91@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@69 f_91@@69))
))) (forall ((o2_58@@70 T@Ref) (f_91@@70 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) null (WandMaskField_38348 pm_f_57@@2))) o2_58@@70 f_91@@70) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@2) o2_58@@70 f_91@@70) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@70 f_91@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@2) o2_58@@70 f_91@@70))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@2 Mask@@2) (IsWandField_38348_186632 pm_f_57@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_57306) (ExhaleHeap@@3 T@PolymorphicMapType_57306) (Mask@@3 T@PolymorphicMapType_57327) (pm_f_57@@3 T@Field_74101_74102) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (=> (and (HasDirectPerm_38290_38291 Mask@@3 null pm_f_57@@3) (IsWandField_38290_186275 pm_f_57@@3)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@71 T@Ref) (f_91@@71 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@71 f_91@@71) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@3) o2_58@@71 f_91@@71) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@71 f_91@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@71 f_91@@71))
)) (forall ((o2_58@@72 T@Ref) (f_91@@72 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@72 f_91@@72) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@3) o2_58@@72 f_91@@72) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@72 f_91@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@72 f_91@@72))
))) (forall ((o2_58@@73 T@Ref) (f_91@@73 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@73 f_91@@73) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@3) o2_58@@73 f_91@@73) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@73 f_91@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@73 f_91@@73))
))) (forall ((o2_58@@74 T@Ref) (f_91@@74 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@74 f_91@@74) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@3) o2_58@@74 f_91@@74) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@74 f_91@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@74 f_91@@74))
))) (forall ((o2_58@@75 T@Ref) (f_91@@75 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@75 f_91@@75) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@3) o2_58@@75 f_91@@75) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@75 f_91@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@75 f_91@@75))
))) (forall ((o2_58@@76 T@Ref) (f_91@@76 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@76 f_91@@76) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@3) o2_58@@76 f_91@@76) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@76 f_91@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@76 f_91@@76))
))) (forall ((o2_58@@77 T@Ref) (f_91@@77 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@77 f_91@@77) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@3) o2_58@@77 f_91@@77) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@77 f_91@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@77 f_91@@77))
))) (forall ((o2_58@@78 T@Ref) (f_91@@78 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@78 f_91@@78) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@3) o2_58@@78 f_91@@78) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@78 f_91@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@78 f_91@@78))
))) (forall ((o2_58@@79 T@Ref) (f_91@@79 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@79 f_91@@79) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@3) o2_58@@79 f_91@@79) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@79 f_91@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@79 f_91@@79))
))) (forall ((o2_58@@80 T@Ref) (f_91@@80 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@80 f_91@@80) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@3) o2_58@@80 f_91@@80) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@80 f_91@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@80 f_91@@80))
))) (forall ((o2_58@@81 T@Ref) (f_91@@81 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@81 f_91@@81) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@3) o2_58@@81 f_91@@81) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@81 f_91@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@81 f_91@@81))
))) (forall ((o2_58@@82 T@Ref) (f_91@@82 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@82 f_91@@82) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) o2_58@@82 f_91@@82) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@82 f_91@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@82 f_91@@82))
))) (forall ((o2_58@@83 T@Ref) (f_91@@83 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@83 f_91@@83) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@3) o2_58@@83 f_91@@83) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@83 f_91@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@83 f_91@@83))
))) (forall ((o2_58@@84 T@Ref) (f_91@@84 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@84 f_91@@84) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@3) o2_58@@84 f_91@@84) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@84 f_91@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@84 f_91@@84))
))) (forall ((o2_58@@85 T@Ref) (f_91@@85 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@85 f_91@@85) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@3) o2_58@@85 f_91@@85) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@85 f_91@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@85 f_91@@85))
))) (forall ((o2_58@@86 T@Ref) (f_91@@86 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@86 f_91@@86) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@3) o2_58@@86 f_91@@86) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@86 f_91@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@86 f_91@@86))
))) (forall ((o2_58@@87 T@Ref) (f_91@@87 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@87 f_91@@87) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@3) o2_58@@87 f_91@@87) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@87 f_91@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@87 f_91@@87))
))) (forall ((o2_58@@88 T@Ref) (f_91@@88 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@3) null (WandMaskField_38290 pm_f_57@@3))) o2_58@@88 f_91@@88) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@3) o2_58@@88 f_91@@88) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@88 f_91@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@3) o2_58@@88 f_91@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@3 Mask@@3) (IsWandField_38290_186275 pm_f_57@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_57306) (ExhaleHeap@@4 T@PolymorphicMapType_57306) (Mask@@4 T@PolymorphicMapType_57327) (pm_f_57@@4 T@Field_37945_38291) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (=> (and (HasDirectPerm_37945_38291 Mask@@4 null pm_f_57@@4) (IsWandField_37945_185918 pm_f_57@@4)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@89 T@Ref) (f_91@@89 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@89 f_91@@89) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@4) o2_58@@89 f_91@@89) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@89 f_91@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@89 f_91@@89))
)) (forall ((o2_58@@90 T@Ref) (f_91@@90 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@90 f_91@@90) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@4) o2_58@@90 f_91@@90) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@90 f_91@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@90 f_91@@90))
))) (forall ((o2_58@@91 T@Ref) (f_91@@91 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@91 f_91@@91) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@4) o2_58@@91 f_91@@91) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@91 f_91@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@91 f_91@@91))
))) (forall ((o2_58@@92 T@Ref) (f_91@@92 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@92 f_91@@92) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@4) o2_58@@92 f_91@@92) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@92 f_91@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@92 f_91@@92))
))) (forall ((o2_58@@93 T@Ref) (f_91@@93 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@93 f_91@@93) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@4) o2_58@@93 f_91@@93) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@93 f_91@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@93 f_91@@93))
))) (forall ((o2_58@@94 T@Ref) (f_91@@94 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@94 f_91@@94) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) o2_58@@94 f_91@@94) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@94 f_91@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@94 f_91@@94))
))) (forall ((o2_58@@95 T@Ref) (f_91@@95 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@95 f_91@@95) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@4) o2_58@@95 f_91@@95) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@95 f_91@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@95 f_91@@95))
))) (forall ((o2_58@@96 T@Ref) (f_91@@96 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@96 f_91@@96) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@4) o2_58@@96 f_91@@96) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@96 f_91@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@96 f_91@@96))
))) (forall ((o2_58@@97 T@Ref) (f_91@@97 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@97 f_91@@97) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@4) o2_58@@97 f_91@@97) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@97 f_91@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@97 f_91@@97))
))) (forall ((o2_58@@98 T@Ref) (f_91@@98 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@98 f_91@@98) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@4) o2_58@@98 f_91@@98) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@98 f_91@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@98 f_91@@98))
))) (forall ((o2_58@@99 T@Ref) (f_91@@99 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@99 f_91@@99) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@4) o2_58@@99 f_91@@99) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@99 f_91@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@99 f_91@@99))
))) (forall ((o2_58@@100 T@Ref) (f_91@@100 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@100 f_91@@100) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@4) o2_58@@100 f_91@@100) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@100 f_91@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@100 f_91@@100))
))) (forall ((o2_58@@101 T@Ref) (f_91@@101 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@101 f_91@@101) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@4) o2_58@@101 f_91@@101) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@101 f_91@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@101 f_91@@101))
))) (forall ((o2_58@@102 T@Ref) (f_91@@102 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@102 f_91@@102) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@4) o2_58@@102 f_91@@102) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@102 f_91@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@102 f_91@@102))
))) (forall ((o2_58@@103 T@Ref) (f_91@@103 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@103 f_91@@103) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@4) o2_58@@103 f_91@@103) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@103 f_91@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@103 f_91@@103))
))) (forall ((o2_58@@104 T@Ref) (f_91@@104 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@104 f_91@@104) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@4) o2_58@@104 f_91@@104) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@104 f_91@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@104 f_91@@104))
))) (forall ((o2_58@@105 T@Ref) (f_91@@105 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@105 f_91@@105) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@4) o2_58@@105 f_91@@105) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@105 f_91@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@105 f_91@@105))
))) (forall ((o2_58@@106 T@Ref) (f_91@@106 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@4) null (WandMaskField_37945 pm_f_57@@4))) o2_58@@106 f_91@@106) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@4) o2_58@@106 f_91@@106) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@106 f_91@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@4) o2_58@@106 f_91@@106))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@4 Mask@@4) (IsWandField_37945_185918 pm_f_57@@4))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_57306) (Heap1 T@PolymorphicMapType_57306) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_57306) (Mask@@5 T@PolymorphicMapType_57327) (xs T@Seq_63556) (j Int) ) (!  (=> (and (state Heap@@5 Mask@@5) (< AssumeFunctionsAbove 3)) (=> (forall ((k Int) (i Int) ) (!  (=> (and (>= k 0) (and (< k (|Seq#Length_37965| xs)) (and (>= i 0) (and (< i (|Seq#Length_37965| xs)) (not (= k i)))))) (not (= (|Seq#Index_37965| xs k) (|Seq#Index_37965| xs i))))
 :qid |stdinbpl.1653:61|
 :skolemid |148|
 :pattern ( (|Seq#Index_37965| xs k) (|Seq#Index_37965| xs i))
)) (= (fun07 Heap@@5 xs j) (ite (< j 0) (|fun07'| Heap@@5 xs (+ j 1)) (ite (<= (|Seq#Length_37965| xs) j) (|fun07'| Heap@@5 xs (- j 1)) (* (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@5) (|Seq#Index_37965| xs j) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@5) (|Seq#Index_37965| xs j) f_7)))))))
 :qid |stdinbpl.1651:15|
 :skolemid |149|
 :pattern ( (state Heap@@5 Mask@@5) (fun07 Heap@@5 xs j))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_57306) (Mask@@6 T@PolymorphicMapType_57327) ) (!  (=> (state Heap@@6 Mask@@6) (GoodMask Mask@@6))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@6 Mask@@6))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_57306) (Heap1@@0 T@PolymorphicMapType_57306) (Heap2 T@PolymorphicMapType_57306) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_57306) (xs@@0 T@Seq_63556) (n@@1 Int) (i@@0 Int) ) (! (dummyFunction_4915 (|fun06#triggerStateless| xs@@0 n@@1 i@@0))
 :qid |stdinbpl.1267:15|
 :skolemid |105|
 :pattern ( (|fun06'| Heap@@7 xs@@0 n@@1 i@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_57306) (x T@Ref) (n@@2 Int) (i@@1 Int) ) (! (dummyFunction_4915 (|fun04#triggerStateless| x n@@2 i@@1))
 :qid |stdinbpl.1452:15|
 :skolemid |126|
 :pattern ( (|fun04'| Heap@@8 x n@@2 i@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_82896_82901) ) (!  (not (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_78383_78384) ) (!  (not (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_38348_57380) ) (!  (not (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_38348_53) ) (!  (not (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_38348_82680) ) (!  (not (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_38348_4453) ) (!  (not (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_77189_77194) ) (!  (not (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_74101_74102) ) (!  (not (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_38290_57380) ) (!  (not (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_38290_53) ) (!  (not (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_38290_82680) ) (!  (not (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_38290_4453) ) (!  (not (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_37945_77194) ) (!  (not (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_37945_38291) ) (!  (not (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_57379_57380) ) (!  (not (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_57366_53) ) (!  (not (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_63553_63558) ) (!  (not (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_63506_4453) ) (!  (not (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((xs@@1 T@Seq_63556) (n@@3 Int) ) (! (IsPredicateField_38290_38291 (P02 xs@@1 n@@3))
 :qid |stdinbpl.2103:15|
 :skolemid |187|
 :pattern ( (P02 xs@@1 n@@3))
)))
(assert (forall ((x@@0 T@Ref) (n@@4 Int) ) (! (IsPredicateField_38348_38349 (P01 x@@0 n@@4))
 :qid |stdinbpl.2290:15|
 :skolemid |208|
 :pattern ( (P01 x@@0 n@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_57306) (xs@@2 T@Seq_63556) (i@@2 Int) ) (! (dummyFunction_4915 (|fun03#triggerStateless| xs@@2 i@@2))
 :qid |stdinbpl.1060:15|
 :skolemid |85|
 :pattern ( (|fun03'| Heap@@9 xs@@2 i@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_57306) (xs@@3 T@Seq_63556) (j@@0 Int) ) (! (dummyFunction_4915 (|fun07#triggerStateless| xs@@3 j@@0))
 :qid |stdinbpl.1645:15|
 :skolemid |147|
 :pattern ( (|fun07'| Heap@@10 xs@@3 j@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_57306) (xs@@4 T@Seq_63556) (i@@3 Int) ) (! (dummyFunction_4915 (|fun08#triggerStateless| xs@@4 i@@3))
 :qid |stdinbpl.1930:15|
 :skolemid |172|
 :pattern ( (|fun08'| Heap@@11 xs@@4 i@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_57306) (xs@@5 T@Seq_63556) (n@@5 Int) ) (! (|P02#everUsed_38290| (P02 xs@@5 n@@5))
 :qid |stdinbpl.2122:15|
 :skolemid |191|
 :pattern ( (|P02#trigger_38290| Heap@@12 (P02 xs@@5 n@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_57306) (x@@1 T@Ref) (n@@6 Int) ) (! (|P01#everUsed_38348| (P01 x@@1 n@@6))
 :qid |stdinbpl.2309:15|
 :skolemid |212|
 :pattern ( (|P01#trigger_38348| Heap@@13 (P01 x@@1 n@@6)))
)))
(assert (forall ((s@@1 T@Seq_63556) (n@@7 Int) (j@@1 Int) ) (!  (=> (and (and (< 0 n@@7) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length_37965| s@@1) n@@7))) (and (= (|Seq#Sub| (|Seq#Add| j@@1 n@@7) n@@7) j@@1) (= (|Seq#Index_37965| (|Seq#Drop_37965| s@@1 n@@7) j@@1) (|Seq#Index_37965| s@@1 (|Seq#Add| j@@1 n@@7)))))
 :qid |stdinbpl.498:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_37965| (|Seq#Drop_37965| s@@1 n@@7) j@@1))
)))
(assert (forall ((s@@2 T@Seq_4331) (n@@8 Int) (j@@2 Int) ) (!  (=> (and (and (< 0 n@@8) (<= 0 j@@2)) (< j@@2 (- (|Seq#Length_4331| s@@2) n@@8))) (and (= (|Seq#Sub| (|Seq#Add| j@@2 n@@8) n@@8) j@@2) (= (|Seq#Index_4331| (|Seq#Drop_4331| s@@2 n@@8) j@@2) (|Seq#Index_4331| s@@2 (|Seq#Add| j@@2 n@@8)))))
 :qid |stdinbpl.498:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_4331| (|Seq#Drop_4331| s@@2 n@@8) j@@2))
)))
(assert (= (|Seq#Length_37965| |Seq#Empty_37965|) 0))
(assert (= (|Seq#Length_4331| |Seq#Empty_4331|) 0))
(assert (forall ((Heap@@14 T@PolymorphicMapType_57306) (xs@@6 T@Seq_63556) ) (! (dummyFunction_4915 (|fun01#triggerStateless| xs@@6))
 :qid |stdinbpl.766:15|
 :skolemid |59|
 :pattern ( (|fun01'| Heap@@14 xs@@6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_57306) (xs@@7 T@Seq_63556) ) (! (dummyFunction_4915 (|fun02#triggerStateless| xs@@7))
 :qid |stdinbpl.911:15|
 :skolemid |72|
 :pattern ( (|fun02'| Heap@@15 xs@@7))
)))
(assert (forall ((s@@3 T@Seq_63556) (i@@4 Int) (v T@Ref) (n@@9 Int) ) (!  (=> (and (<= 0 n@@9) (< n@@9 (|Seq#Length_37965| s@@3))) (and (=> (= i@@4 n@@9) (= (|Seq#Index_37965| (|Seq#Update_37965| s@@3 i@@4 v) n@@9) v)) (=> (not (= i@@4 n@@9)) (= (|Seq#Index_37965| (|Seq#Update_37965| s@@3 i@@4 v) n@@9) (|Seq#Index_37965| s@@3 n@@9)))))
 :qid |stdinbpl.453:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_37965| (|Seq#Update_37965| s@@3 i@@4 v) n@@9))
 :pattern ( (|Seq#Index_37965| s@@3 n@@9) (|Seq#Update_37965| s@@3 i@@4 v))
)))
(assert (forall ((s@@4 T@Seq_4331) (i@@5 Int) (v@@0 Int) (n@@10 Int) ) (!  (=> (and (<= 0 n@@10) (< n@@10 (|Seq#Length_4331| s@@4))) (and (=> (= i@@5 n@@10) (= (|Seq#Index_4331| (|Seq#Update_4331| s@@4 i@@5 v@@0) n@@10) v@@0)) (=> (not (= i@@5 n@@10)) (= (|Seq#Index_4331| (|Seq#Update_4331| s@@4 i@@5 v@@0) n@@10) (|Seq#Index_4331| s@@4 n@@10)))))
 :qid |stdinbpl.453:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_4331| (|Seq#Update_4331| s@@4 i@@5 v@@0) n@@10))
 :pattern ( (|Seq#Index_4331| s@@4 n@@10) (|Seq#Update_4331| s@@4 i@@5 v@@0))
)))
(assert (forall ((s@@5 T@Seq_63556) (n@@11 Int) ) (!  (and (=> (<= 0 n@@11) (and (=> (<= n@@11 (|Seq#Length_37965| s@@5)) (= (|Seq#Length_37965| (|Seq#Take_37965| s@@5 n@@11)) n@@11)) (=> (< (|Seq#Length_37965| s@@5) n@@11) (= (|Seq#Length_37965| (|Seq#Take_37965| s@@5 n@@11)) (|Seq#Length_37965| s@@5))))) (=> (< n@@11 0) (= (|Seq#Length_37965| (|Seq#Take_37965| s@@5 n@@11)) 0)))
 :qid |stdinbpl.464:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_37965| (|Seq#Take_37965| s@@5 n@@11)))
 :pattern ( (|Seq#Take_37965| s@@5 n@@11) (|Seq#Length_37965| s@@5))
)))
(assert (forall ((s@@6 T@Seq_4331) (n@@12 Int) ) (!  (and (=> (<= 0 n@@12) (and (=> (<= n@@12 (|Seq#Length_4331| s@@6)) (= (|Seq#Length_4331| (|Seq#Take_4331| s@@6 n@@12)) n@@12)) (=> (< (|Seq#Length_4331| s@@6) n@@12) (= (|Seq#Length_4331| (|Seq#Take_4331| s@@6 n@@12)) (|Seq#Length_4331| s@@6))))) (=> (< n@@12 0) (= (|Seq#Length_4331| (|Seq#Take_4331| s@@6 n@@12)) 0)))
 :qid |stdinbpl.464:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_4331| (|Seq#Take_4331| s@@6 n@@12)))
 :pattern ( (|Seq#Take_4331| s@@6 n@@12) (|Seq#Length_4331| s@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_57306) (Mask@@7 T@PolymorphicMapType_57327) (xs@@8 T@Seq_63556) (i@@6 Int) ) (!  (=> (and (state Heap@@16 Mask@@7) (or (< AssumeFunctionsAbove 0) (|fun08#trigger| (FrameFragment_4717 (|fun08#condqp10| Heap@@16 xs@@8 i@@6)) xs@@8 i@@6))) (=> (and (forall ((k_1 Int) (j_3 Int) ) (!  (=> (and (>= k_1 0) (and (< k_1 (|Seq#Length_37965| xs@@8)) (and (>= j_3 0) (and (< j_3 (|Seq#Length_37965| xs@@8)) (not (= k_1 j_3)))))) (not (= (|Seq#Index_37965| xs@@8 k_1) (|Seq#Index_37965| xs@@8 j_3))))
 :qid |stdinbpl.1964:131|
 :skolemid |177|
 :pattern ( (|Seq#Index_37965| xs@@8 k_1) (|Seq#Index_37965| xs@@8 j_3))
)) (and (<= 0 i@@6) (< i@@6 (|Seq#Length_37965| xs@@8)))) (> (|fun08'| Heap@@16 xs@@8 i@@6) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@16) (|Seq#Index_37965| xs@@8 i@@6) f_7))))
 :qid |stdinbpl.1962:15|
 :skolemid |178|
 :pattern ( (state Heap@@16 Mask@@7) (|fun08'| Heap@@16 xs@@8 i@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_4331| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.738:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_4331| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_57306) (Mask@@8 T@PolymorphicMapType_57327) (x@@2 T@Ref) (n@@13 Int) (i@@7 Int) ) (!  (=> (and (state Heap@@17 Mask@@8) (< AssumeFunctionsAbove 2)) (=> (and (< 0 i@@7) (< i@@7 n@@13)) (= (fun04 Heap@@17 x@@2 n@@13 i@@7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@17) (|Seq#Index_37965| (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@17) x@@2 ss_1) i@@7) f_7))))
 :qid |stdinbpl.1458:15|
 :skolemid |127|
 :pattern ( (state Heap@@17 Mask@@8) (fun04 Heap@@17 x@@2 n@@13 i@@7))
 :pattern ( (state Heap@@17 Mask@@8) (|fun04#triggerStateless| x@@2 n@@13 i@@7) (|P01#trigger_38348| Heap@@17 (P01 x@@2 n@@13)))
)))
(assert (forall ((s@@7 T@Seq_63556) (x@@3 T@Ref) ) (!  (=> (|Seq#Contains_63556| s@@7 x@@3) (and (and (<= 0 (|Seq#Skolem_63556| s@@7 x@@3)) (< (|Seq#Skolem_63556| s@@7 x@@3) (|Seq#Length_37965| s@@7))) (= (|Seq#Index_37965| s@@7 (|Seq#Skolem_63556| s@@7 x@@3)) x@@3)))
 :qid |stdinbpl.596:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_63556| s@@7 x@@3))
)))
(assert (forall ((s@@8 T@Seq_4331) (x@@4 Int) ) (!  (=> (|Seq#Contains_4331| s@@8 x@@4) (and (and (<= 0 (|Seq#Skolem_4331| s@@8 x@@4)) (< (|Seq#Skolem_4331| s@@8 x@@4) (|Seq#Length_4331| s@@8))) (= (|Seq#Index_4331| s@@8 (|Seq#Skolem_4331| s@@8 x@@4)) x@@4)))
 :qid |stdinbpl.596:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_4331| s@@8 x@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_57306) (xs@@9 T@Seq_63556) ) (!  (and (= (fun01 Heap@@18 xs@@9) (|fun01'| Heap@@18 xs@@9)) (dummyFunction_4915 (|fun01#triggerStateless| xs@@9)))
 :qid |stdinbpl.762:15|
 :skolemid |58|
 :pattern ( (fun01 Heap@@18 xs@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_57306) (xs@@10 T@Seq_63556) ) (!  (and (= (fun02 Heap@@19 xs@@10) (|fun02'| Heap@@19 xs@@10)) (dummyFunction_4915 (|fun02#triggerStateless| xs@@10)))
 :qid |stdinbpl.907:15|
 :skolemid |71|
 :pattern ( (fun02 Heap@@19 xs@@10))
)))
(assert (forall ((s@@9 T@Seq_63556) (n@@14 Int) ) (!  (=> (<= n@@14 0) (= (|Seq#Drop_37965| s@@9 n@@14) s@@9))
 :qid |stdinbpl.580:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_37965| s@@9 n@@14))
)))
(assert (forall ((s@@10 T@Seq_4331) (n@@15 Int) ) (!  (=> (<= n@@15 0) (= (|Seq#Drop_4331| s@@10 n@@15) s@@10))
 :qid |stdinbpl.580:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4331| s@@10 n@@15))
)))
(assert (forall ((i@@8 Int) (j@@3 Int) ) (! (= (|Seq#Sub| i@@8 j@@3) (- i@@8 j@@3))
 :qid |stdinbpl.433:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@8 j@@3))
)))
(assert (forall ((i@@9 Int) (j@@4 Int) ) (! (= (|Seq#Add| i@@9 j@@4) (+ i@@9 j@@4))
 :qid |stdinbpl.431:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@9 j@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_57306) (ExhaleHeap@@5 T@PolymorphicMapType_57306) (Mask@@9 T@PolymorphicMapType_57327) (pm_f_57@@5 T@Field_78383_78384) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_38348_38349 Mask@@9 null pm_f_57@@5) (IsPredicateField_38348_38349 pm_f_57@@5)) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@20) null (PredicateMaskField_38348 pm_f_57@@5)) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@5) null (PredicateMaskField_38348 pm_f_57@@5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@9) (IsPredicateField_38348_38349 pm_f_57@@5) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@5) null (PredicateMaskField_38348 pm_f_57@@5)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_57306) (ExhaleHeap@@6 T@PolymorphicMapType_57306) (Mask@@10 T@PolymorphicMapType_57327) (pm_f_57@@6 T@Field_74101_74102) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_38290_38291 Mask@@10 null pm_f_57@@6) (IsPredicateField_38290_38291 pm_f_57@@6)) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@21) null (PredicateMaskField_38290 pm_f_57@@6)) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@6) null (PredicateMaskField_38290 pm_f_57@@6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@10) (IsPredicateField_38290_38291 pm_f_57@@6) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@6) null (PredicateMaskField_38290 pm_f_57@@6)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_57306) (ExhaleHeap@@7 T@PolymorphicMapType_57306) (Mask@@11 T@PolymorphicMapType_57327) (pm_f_57@@7 T@Field_37945_38291) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@11) (=> (and (HasDirectPerm_37945_38291 Mask@@11 null pm_f_57@@7) (IsPredicateField_37945_180339 pm_f_57@@7)) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@22) null (PredicateMaskField_37945 pm_f_57@@7)) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@7) null (PredicateMaskField_37945 pm_f_57@@7)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@11) (IsPredicateField_37945_180339 pm_f_57@@7) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@7) null (PredicateMaskField_37945 pm_f_57@@7)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_57306) (ExhaleHeap@@8 T@PolymorphicMapType_57306) (Mask@@12 T@PolymorphicMapType_57327) (pm_f_57@@8 T@Field_78383_78384) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@12) (=> (and (HasDirectPerm_38348_38349 Mask@@12 null pm_f_57@@8) (IsWandField_38348_186632 pm_f_57@@8)) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@23) null (WandMaskField_38348 pm_f_57@@8)) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@8) null (WandMaskField_38348 pm_f_57@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@12) (IsWandField_38348_186632 pm_f_57@@8) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@8) null (WandMaskField_38348 pm_f_57@@8)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_57306) (ExhaleHeap@@9 T@PolymorphicMapType_57306) (Mask@@13 T@PolymorphicMapType_57327) (pm_f_57@@9 T@Field_74101_74102) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@13) (=> (and (HasDirectPerm_38290_38291 Mask@@13 null pm_f_57@@9) (IsWandField_38290_186275 pm_f_57@@9)) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@24) null (WandMaskField_38290 pm_f_57@@9)) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@9) null (WandMaskField_38290 pm_f_57@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@13) (IsWandField_38290_186275 pm_f_57@@9) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@9) null (WandMaskField_38290 pm_f_57@@9)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_57306) (ExhaleHeap@@10 T@PolymorphicMapType_57306) (Mask@@14 T@PolymorphicMapType_57327) (pm_f_57@@10 T@Field_37945_38291) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@10 Mask@@14) (=> (and (HasDirectPerm_37945_38291 Mask@@14 null pm_f_57@@10) (IsWandField_37945_185918 pm_f_57@@10)) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@25) null (WandMaskField_37945 pm_f_57@@10)) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@10) null (WandMaskField_37945 pm_f_57@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@10 Mask@@14) (IsWandField_37945_185918 pm_f_57@@10) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@10) null (WandMaskField_37945 pm_f_57@@10)))
)))
(assert (forall ((x@@5 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_63556| (|Seq#Singleton_37965| x@@5) y) (= x@@5 y))
 :qid |stdinbpl.721:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_63556| (|Seq#Singleton_37965| x@@5) y))
)))
(assert (forall ((x@@6 Int) (y@@0 Int) ) (! (= (|Seq#Contains_4331| (|Seq#Singleton_4331| x@@6) y@@0) (= x@@6 y@@0))
 :qid |stdinbpl.721:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_4331| (|Seq#Singleton_4331| x@@6) y@@0))
)))
(assert (forall ((xs@@11 T@Seq_63556) (n@@16 Int) (xs2 T@Seq_63556) (n2 Int) ) (!  (=> (= (P02 xs@@11 n@@16) (P02 xs2 n2)) (and (= xs@@11 xs2) (= n@@16 n2)))
 :qid |stdinbpl.2113:15|
 :skolemid |189|
 :pattern ( (P02 xs@@11 n@@16) (P02 xs2 n2))
)))
(assert (forall ((xs@@12 T@Seq_63556) (n@@17 Int) (xs2@@0 T@Seq_63556) (n2@@0 Int) ) (!  (=> (= (|P02#sm| xs@@12 n@@17) (|P02#sm| xs2@@0 n2@@0)) (and (= xs@@12 xs2@@0) (= n@@17 n2@@0)))
 :qid |stdinbpl.2117:15|
 :skolemid |190|
 :pattern ( (|P02#sm| xs@@12 n@@17) (|P02#sm| xs2@@0 n2@@0))
)))
(assert (forall ((x@@7 T@Ref) (n@@18 Int) (x2 T@Ref) (n2@@1 Int) ) (!  (=> (= (P01 x@@7 n@@18) (P01 x2 n2@@1)) (and (= x@@7 x2) (= n@@18 n2@@1)))
 :qid |stdinbpl.2300:15|
 :skolemid |210|
 :pattern ( (P01 x@@7 n@@18) (P01 x2 n2@@1))
)))
(assert (forall ((x@@8 T@Ref) (n@@19 Int) (x2@@0 T@Ref) (n2@@2 Int) ) (!  (=> (= (|P01#sm| x@@8 n@@19) (|P01#sm| x2@@0 n2@@2)) (and (= x@@8 x2@@0) (= n@@19 n2@@2)))
 :qid |stdinbpl.2304:15|
 :skolemid |211|
 :pattern ( (|P01#sm| x@@8 n@@19) (|P01#sm| x2@@0 n2@@2))
)))
(assert (forall ((s@@11 T@Seq_63556) (n@@20 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@20)) (< j@@5 (|Seq#Length_37965| s@@11))) (= (|Seq#Index_37965| (|Seq#Take_37965| s@@11 n@@20) j@@5) (|Seq#Index_37965| s@@11 j@@5)))
 :qid |stdinbpl.472:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_37965| (|Seq#Take_37965| s@@11 n@@20) j@@5))
 :pattern ( (|Seq#Index_37965| s@@11 j@@5) (|Seq#Take_37965| s@@11 n@@20))
)))
(assert (forall ((s@@12 T@Seq_4331) (n@@21 Int) (j@@6 Int) ) (!  (=> (and (and (<= 0 j@@6) (< j@@6 n@@21)) (< j@@6 (|Seq#Length_4331| s@@12))) (= (|Seq#Index_4331| (|Seq#Take_4331| s@@12 n@@21) j@@6) (|Seq#Index_4331| s@@12 j@@6)))
 :qid |stdinbpl.472:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_4331| (|Seq#Take_4331| s@@12 n@@21) j@@6))
 :pattern ( (|Seq#Index_4331| s@@12 j@@6) (|Seq#Take_4331| s@@12 n@@21))
)))
(assert (forall ((s@@13 T@Seq_63556) (t T@Seq_63556) (n@@22 Int) ) (!  (=> (and (and (> n@@22 0) (> n@@22 (|Seq#Length_37965| s@@13))) (< n@@22 (|Seq#Length_37965| (|Seq#Append_63556| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@22 (|Seq#Length_37965| s@@13)) (|Seq#Length_37965| s@@13)) n@@22) (= (|Seq#Take_37965| (|Seq#Append_63556| s@@13 t) n@@22) (|Seq#Append_63556| s@@13 (|Seq#Take_37965| t (|Seq#Sub| n@@22 (|Seq#Length_37965| s@@13)))))))
 :qid |stdinbpl.557:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_37965| (|Seq#Append_63556| s@@13 t) n@@22))
)))
(assert (forall ((s@@14 T@Seq_4331) (t@@0 T@Seq_4331) (n@@23 Int) ) (!  (=> (and (and (> n@@23 0) (> n@@23 (|Seq#Length_4331| s@@14))) (< n@@23 (|Seq#Length_4331| (|Seq#Append_4331| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@23 (|Seq#Length_4331| s@@14)) (|Seq#Length_4331| s@@14)) n@@23) (= (|Seq#Take_4331| (|Seq#Append_4331| s@@14 t@@0) n@@23) (|Seq#Append_4331| s@@14 (|Seq#Take_4331| t@@0 (|Seq#Sub| n@@23 (|Seq#Length_4331| s@@14)))))))
 :qid |stdinbpl.557:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_4331| (|Seq#Append_4331| s@@14 t@@0) n@@23))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_57306) (Mask@@15 T@PolymorphicMapType_57327) (xs@@13 T@Seq_63556) (i@@10 Int) ) (!  (=> (and (state Heap@@26 Mask@@15) (< AssumeFunctionsAbove 0)) (=> (and (forall ((k@@0 Int) (j@@7 Int) ) (!  (=> (and (>= k@@0 0) (and (< k@@0 (|Seq#Length_37965| xs@@13)) (and (>= j@@7 0) (and (< j@@7 (|Seq#Length_37965| xs@@13)) (not (= k@@0 j@@7)))))) (not (= (|Seq#Index_37965| xs@@13 k@@0) (|Seq#Index_37965| xs@@13 j@@7))))
 :qid |stdinbpl.1938:61|
 :skolemid |173|
 :pattern ( (|Seq#Index_37965| xs@@13 k@@0) (|Seq#Index_37965| xs@@13 j@@7))
)) (and (<= 0 i@@10) (< i@@10 (|Seq#Length_37965| xs@@13)))) (= (fun08 Heap@@26 xs@@13 i@@10) (+ (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@26) (|Seq#Index_37965| xs@@13 i@@10) f_7) 1))))
 :qid |stdinbpl.1936:15|
 :skolemid |174|
 :pattern ( (state Heap@@26 Mask@@15) (fun08 Heap@@26 xs@@13 i@@10))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_57306) (Heap1Heap T@PolymorphicMapType_57306) (xs@@14 T@Seq_63556) (n@@24 Int) ) (!  (=> (and (=  (and (and (<= 3 (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24))) (< (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24)) n@@24)) (< NoPerm FullPerm))  (and (and (<= 3 (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24))) (< (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24)) n@@24)) (< NoPerm FullPerm))) (=> (and (and (<= 3 (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24))) (< (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24)) n@@24)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap) (|Seq#Index_37965| xs@@14 (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap) (|Seq#Index_37965| xs@@14 (|sk_P02#condqp6| (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24))) f_7)))) (= (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24)))
 :qid |stdinbpl.2144:15|
 :skolemid |193|
 :pattern ( (|P02#condqp6| Heap2Heap xs@@14 n@@24) (|P02#condqp6| Heap1Heap xs@@14 n@@24) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@27 T@PolymorphicMapType_57306) (ExhaleHeap@@11 T@PolymorphicMapType_57306) (Mask@@16 T@PolymorphicMapType_57327) (o_147 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@16) (=> (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@27) o_147 $allocated) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@11) o_147 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@11 Mask@@16) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@11) o_147 $allocated))
)))
(assert (forall ((p T@Field_78383_78384) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_78383_78383 p v_1 p w))
 :qid |stdinbpl.375:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_78383_78383 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_74101_74102) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_74101_74101 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.375:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_74101_74101 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_37945_38291) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_57366_57366 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.375:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_57366_57366 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_63556) (s1 T@Seq_63556) (n@@25 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_37965|)) (not (= s1 |Seq#Empty_37965|))) (<= (|Seq#Length_37965| s0) n@@25)) (< n@@25 (|Seq#Length_37965| (|Seq#Append_63556| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@25 (|Seq#Length_37965| s0)) (|Seq#Length_37965| s0)) n@@25) (= (|Seq#Index_37965| (|Seq#Append_63556| s0 s1) n@@25) (|Seq#Index_37965| s1 (|Seq#Sub| n@@25 (|Seq#Length_37965| s0))))))
 :qid |stdinbpl.444:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_37965| (|Seq#Append_63556| s0 s1) n@@25))
)))
(assert (forall ((s0@@0 T@Seq_4331) (s1@@0 T@Seq_4331) (n@@26 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_4331|)) (not (= s1@@0 |Seq#Empty_4331|))) (<= (|Seq#Length_4331| s0@@0) n@@26)) (< n@@26 (|Seq#Length_4331| (|Seq#Append_4331| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@26 (|Seq#Length_4331| s0@@0)) (|Seq#Length_4331| s0@@0)) n@@26) (= (|Seq#Index_4331| (|Seq#Append_4331| s0@@0 s1@@0) n@@26) (|Seq#Index_4331| s1@@0 (|Seq#Sub| n@@26 (|Seq#Length_4331| s0@@0))))))
 :qid |stdinbpl.444:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_4331| (|Seq#Append_4331| s0@@0 s1@@0) n@@26))
)))
(assert  (not (IsPredicateField_37945_4453 f_7)))
(assert  (not (IsWandField_37945_4453 f_7)))
(assert  (not (IsPredicateField_37947_63580 ss_1)))
(assert  (not (IsWandField_37947_63606 ss_1)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_57306) (ExhaleHeap@@12 T@PolymorphicMapType_57306) (Mask@@17 T@PolymorphicMapType_57327) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@17) (succHeap Heap@@28 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@12 Mask@@17))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_57327) (o_2@@17 T@Ref) (f_4@@17 T@Field_82896_82901) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_38348_198772 f_4@@17))) (not (IsWandField_38348_198788 f_4@@17))) (<= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_57327) (o_2@@18 T@Ref) (f_4@@18 T@Field_38348_57380) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_38348_57380 f_4@@18))) (not (IsWandField_38348_57380 f_4@@18))) (<= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_57327) (o_2@@19 T@Ref) (f_4@@19 T@Field_38348_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_38348_53 f_4@@19))) (not (IsWandField_38348_53 f_4@@19))) (<= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_57327) (o_2@@20 T@Ref) (f_4@@20 T@Field_38348_82680) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_38348_79607 f_4@@20))) (not (IsWandField_38348_79607 f_4@@20))) (<= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_57327) (o_2@@21 T@Ref) (f_4@@21 T@Field_78383_78384) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_38348_38349 f_4@@21))) (not (IsWandField_38348_186632 f_4@@21))) (<= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_57327) (o_2@@22 T@Ref) (f_4@@22 T@Field_38348_4453) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_38348_4453 f_4@@22))) (not (IsWandField_38348_4453 f_4@@22))) (<= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_57327) (o_2@@23 T@Ref) (f_4@@23 T@Field_77189_77194) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@@24) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_38290_197773 f_4@@23))) (not (IsWandField_38290_197789 f_4@@23))) (<= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@@24) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@@24) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_57327) (o_2@@24 T@Ref) (f_4@@24 T@Field_38290_57380) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@@25) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_38290_57380 f_4@@24))) (not (IsWandField_38290_57380 f_4@@24))) (<= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@@25) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@@25) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_57327) (o_2@@25 T@Ref) (f_4@@25 T@Field_38290_53) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@@26) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_38290_53 f_4@@25))) (not (IsWandField_38290_53 f_4@@25))) (<= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@@26) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@@26) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_57327) (o_2@@26 T@Ref) (f_4@@26 T@Field_38290_82680) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@@27) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_38290_79607 f_4@@26))) (not (IsWandField_38290_79607 f_4@@26))) (<= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@@27) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@@27) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_57327) (o_2@@27 T@Ref) (f_4@@27 T@Field_74101_74102) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@@28) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_38290_38291 f_4@@27))) (not (IsWandField_38290_186275 f_4@@27))) (<= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@@28) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@@28) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_57327) (o_2@@28 T@Ref) (f_4@@28 T@Field_38290_4453) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@@29) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_38290_4453 f_4@@28))) (not (IsWandField_38290_4453 f_4@@28))) (<= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@@29) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@@29) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_57327) (o_2@@29 T@Ref) (f_4@@29 T@Field_37945_77194) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@@30) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_37945_196774 f_4@@29))) (not (IsWandField_37945_196790 f_4@@29))) (<= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@@30) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@@30) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_57327) (o_2@@30 T@Ref) (f_4@@30 T@Field_57379_57380) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@@31) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_37945_57380 f_4@@30))) (not (IsWandField_37945_57380 f_4@@30))) (<= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@@31) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@@31) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_57327) (o_2@@31 T@Ref) (f_4@@31 T@Field_57366_53) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@@32) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_37945_53 f_4@@31))) (not (IsWandField_37945_53 f_4@@31))) (<= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@@32) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@@32) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_57327) (o_2@@32 T@Ref) (f_4@@32 T@Field_63553_63558) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@@33) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_37947_63580 f_4@@32))) (not (IsWandField_37947_63606 f_4@@32))) (<= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@@33) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@@33) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_57327) (o_2@@33 T@Ref) (f_4@@33 T@Field_37945_38291) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@@34) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_37945_180339 f_4@@33))) (not (IsWandField_37945_185918 f_4@@33))) (<= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@@34) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@@34) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_57327) (o_2@@34 T@Ref) (f_4@@34 T@Field_63506_4453) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@@35) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_37945_4453 f_4@@34))) (not (IsWandField_37945_4453 f_4@@34))) (<= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@@35) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@@35) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_57327) (o_2@@35 T@Ref) (f_4@@35 T@Field_82896_82901) ) (! (= (HasDirectPerm_38348_180094 Mask@@36 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@@36) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_180094 Mask@@36 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_57327) (o_2@@36 T@Ref) (f_4@@36 T@Field_38348_57380) ) (! (= (HasDirectPerm_38348_57380 Mask@@37 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@@37) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_57380 Mask@@37 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_57327) (o_2@@37 T@Ref) (f_4@@37 T@Field_38348_53) ) (! (= (HasDirectPerm_38348_53 Mask@@38 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@@38) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_53 Mask@@38 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_57327) (o_2@@38 T@Ref) (f_4@@38 T@Field_78383_78384) ) (! (= (HasDirectPerm_38348_38349 Mask@@39 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@@39) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_38349 Mask@@39 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_57327) (o_2@@39 T@Ref) (f_4@@39 T@Field_38348_82680) ) (! (= (HasDirectPerm_38348_82680 Mask@@40 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@@40) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_82680 Mask@@40 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_57327) (o_2@@40 T@Ref) (f_4@@40 T@Field_38348_4453) ) (! (= (HasDirectPerm_38348_4453 Mask@@41 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@@41) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38348_4453 Mask@@41 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_57327) (o_2@@41 T@Ref) (f_4@@41 T@Field_77189_77194) ) (! (= (HasDirectPerm_38290_178767 Mask@@42 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@@42) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_178767 Mask@@42 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_57327) (o_2@@42 T@Ref) (f_4@@42 T@Field_38290_57380) ) (! (= (HasDirectPerm_38290_57380 Mask@@43 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@@43) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_57380 Mask@@43 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_57327) (o_2@@43 T@Ref) (f_4@@43 T@Field_38290_53) ) (! (= (HasDirectPerm_38290_53 Mask@@44 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@@44) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_53 Mask@@44 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_57327) (o_2@@44 T@Ref) (f_4@@44 T@Field_74101_74102) ) (! (= (HasDirectPerm_38290_38291 Mask@@45 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@@45) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_38291 Mask@@45 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_57327) (o_2@@45 T@Ref) (f_4@@45 T@Field_38290_82680) ) (! (= (HasDirectPerm_38290_82680 Mask@@46 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@@46) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_82680 Mask@@46 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_57327) (o_2@@46 T@Ref) (f_4@@46 T@Field_38290_4453) ) (! (= (HasDirectPerm_38290_4453 Mask@@47 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@@47) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_38290_4453 Mask@@47 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_57327) (o_2@@47 T@Ref) (f_4@@47 T@Field_37945_77194) ) (! (= (HasDirectPerm_37945_177397 Mask@@48 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@@48) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37945_177397 Mask@@48 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_57327) (o_2@@48 T@Ref) (f_4@@48 T@Field_57379_57380) ) (! (= (HasDirectPerm_37945_57380 Mask@@49 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@@49) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37945_57380 Mask@@49 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_57327) (o_2@@49 T@Ref) (f_4@@49 T@Field_57366_53) ) (! (= (HasDirectPerm_37945_53 Mask@@50 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@@50) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37945_53 Mask@@50 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_57327) (o_2@@50 T@Ref) (f_4@@50 T@Field_37945_38291) ) (! (= (HasDirectPerm_37945_38291 Mask@@51 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@@51) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37945_38291 Mask@@51 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_57327) (o_2@@51 T@Ref) (f_4@@51 T@Field_63553_63558) ) (! (= (HasDirectPerm_37947_82680 Mask@@52 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@@52) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37947_82680 Mask@@52 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_57327) (o_2@@52 T@Ref) (f_4@@52 T@Field_63506_4453) ) (! (= (HasDirectPerm_37945_4453 Mask@@53 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@@53) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_37945_4453 Mask@@53 o_2@@52 f_4@@52))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.363:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (- q@max@@0 q@min@@0))) (= (|Seq#Index_4331| (|Seq#Range| q@min@@0 q@max@@0) j@@8) (+ q@min@@0 j@@8)))
 :qid |stdinbpl.736:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_4331| (|Seq#Range| q@min@@0 q@max@@0) j@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_57306) (ExhaleHeap@@13 T@PolymorphicMapType_57306) (Mask@@54 T@PolymorphicMapType_57327) (o_147@@0 T@Ref) (f_91@@107 T@Field_82896_82901) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@54) (=> (HasDirectPerm_38348_180094 Mask@@54 o_147@@0 f_91@@107) (= (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@29) o_147@@0 f_91@@107) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@13) o_147@@0 f_91@@107))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@13 Mask@@54) (select (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| ExhaleHeap@@13) o_147@@0 f_91@@107))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_57306) (ExhaleHeap@@14 T@PolymorphicMapType_57306) (Mask@@55 T@PolymorphicMapType_57327) (o_147@@1 T@Ref) (f_91@@108 T@Field_38348_57380) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@55) (=> (HasDirectPerm_38348_57380 Mask@@55 o_147@@1 f_91@@108) (= (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@30) o_147@@1 f_91@@108) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@14) o_147@@1 f_91@@108))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@14 Mask@@55) (select (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| ExhaleHeap@@14) o_147@@1 f_91@@108))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_57306) (ExhaleHeap@@15 T@PolymorphicMapType_57306) (Mask@@56 T@PolymorphicMapType_57327) (o_147@@2 T@Ref) (f_91@@109 T@Field_38348_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@15 Mask@@56) (=> (HasDirectPerm_38348_53 Mask@@56 o_147@@2 f_91@@109) (= (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@31) o_147@@2 f_91@@109) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@15) o_147@@2 f_91@@109))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@15 Mask@@56) (select (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| ExhaleHeap@@15) o_147@@2 f_91@@109))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_57306) (ExhaleHeap@@16 T@PolymorphicMapType_57306) (Mask@@57 T@PolymorphicMapType_57327) (o_147@@3 T@Ref) (f_91@@110 T@Field_78383_78384) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@16 Mask@@57) (=> (HasDirectPerm_38348_38349 Mask@@57 o_147@@3 f_91@@110) (= (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@32) o_147@@3 f_91@@110) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@16) o_147@@3 f_91@@110))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@16 Mask@@57) (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| ExhaleHeap@@16) o_147@@3 f_91@@110))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_57306) (ExhaleHeap@@17 T@PolymorphicMapType_57306) (Mask@@58 T@PolymorphicMapType_57327) (o_147@@4 T@Ref) (f_91@@111 T@Field_38348_82680) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@17 Mask@@58) (=> (HasDirectPerm_38348_82680 Mask@@58 o_147@@4 f_91@@111) (= (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@33) o_147@@4 f_91@@111) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@17) o_147@@4 f_91@@111))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@17 Mask@@58) (select (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| ExhaleHeap@@17) o_147@@4 f_91@@111))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_57306) (ExhaleHeap@@18 T@PolymorphicMapType_57306) (Mask@@59 T@PolymorphicMapType_57327) (o_147@@5 T@Ref) (f_91@@112 T@Field_38348_4453) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@18 Mask@@59) (=> (HasDirectPerm_38348_4453 Mask@@59 o_147@@5 f_91@@112) (= (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@34) o_147@@5 f_91@@112) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@18) o_147@@5 f_91@@112))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@18 Mask@@59) (select (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| ExhaleHeap@@18) o_147@@5 f_91@@112))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_57306) (ExhaleHeap@@19 T@PolymorphicMapType_57306) (Mask@@60 T@PolymorphicMapType_57327) (o_147@@6 T@Ref) (f_91@@113 T@Field_77189_77194) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@19 Mask@@60) (=> (HasDirectPerm_38290_178767 Mask@@60 o_147@@6 f_91@@113) (= (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@35) o_147@@6 f_91@@113) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@19) o_147@@6 f_91@@113))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@19 Mask@@60) (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| ExhaleHeap@@19) o_147@@6 f_91@@113))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_57306) (ExhaleHeap@@20 T@PolymorphicMapType_57306) (Mask@@61 T@PolymorphicMapType_57327) (o_147@@7 T@Ref) (f_91@@114 T@Field_38290_57380) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@20 Mask@@61) (=> (HasDirectPerm_38290_57380 Mask@@61 o_147@@7 f_91@@114) (= (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@36) o_147@@7 f_91@@114) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@20) o_147@@7 f_91@@114))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@20 Mask@@61) (select (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| ExhaleHeap@@20) o_147@@7 f_91@@114))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_57306) (ExhaleHeap@@21 T@PolymorphicMapType_57306) (Mask@@62 T@PolymorphicMapType_57327) (o_147@@8 T@Ref) (f_91@@115 T@Field_38290_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@21 Mask@@62) (=> (HasDirectPerm_38290_53 Mask@@62 o_147@@8 f_91@@115) (= (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@37) o_147@@8 f_91@@115) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@21) o_147@@8 f_91@@115))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@21 Mask@@62) (select (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| ExhaleHeap@@21) o_147@@8 f_91@@115))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_57306) (ExhaleHeap@@22 T@PolymorphicMapType_57306) (Mask@@63 T@PolymorphicMapType_57327) (o_147@@9 T@Ref) (f_91@@116 T@Field_74101_74102) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@22 Mask@@63) (=> (HasDirectPerm_38290_38291 Mask@@63 o_147@@9 f_91@@116) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@38) o_147@@9 f_91@@116) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@22) o_147@@9 f_91@@116))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@22 Mask@@63) (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| ExhaleHeap@@22) o_147@@9 f_91@@116))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_57306) (ExhaleHeap@@23 T@PolymorphicMapType_57306) (Mask@@64 T@PolymorphicMapType_57327) (o_147@@10 T@Ref) (f_91@@117 T@Field_38290_82680) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@23 Mask@@64) (=> (HasDirectPerm_38290_82680 Mask@@64 o_147@@10 f_91@@117) (= (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@39) o_147@@10 f_91@@117) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@23) o_147@@10 f_91@@117))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@23 Mask@@64) (select (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| ExhaleHeap@@23) o_147@@10 f_91@@117))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_57306) (ExhaleHeap@@24 T@PolymorphicMapType_57306) (Mask@@65 T@PolymorphicMapType_57327) (o_147@@11 T@Ref) (f_91@@118 T@Field_38290_4453) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@24 Mask@@65) (=> (HasDirectPerm_38290_4453 Mask@@65 o_147@@11 f_91@@118) (= (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@40) o_147@@11 f_91@@118) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@24) o_147@@11 f_91@@118))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@24 Mask@@65) (select (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| ExhaleHeap@@24) o_147@@11 f_91@@118))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_57306) (ExhaleHeap@@25 T@PolymorphicMapType_57306) (Mask@@66 T@PolymorphicMapType_57327) (o_147@@12 T@Ref) (f_91@@119 T@Field_37945_77194) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@25 Mask@@66) (=> (HasDirectPerm_37945_177397 Mask@@66 o_147@@12 f_91@@119) (= (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@41) o_147@@12 f_91@@119) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@25) o_147@@12 f_91@@119))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@25 Mask@@66) (select (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| ExhaleHeap@@25) o_147@@12 f_91@@119))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_57306) (ExhaleHeap@@26 T@PolymorphicMapType_57306) (Mask@@67 T@PolymorphicMapType_57327) (o_147@@13 T@Ref) (f_91@@120 T@Field_57379_57380) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@26 Mask@@67) (=> (HasDirectPerm_37945_57380 Mask@@67 o_147@@13 f_91@@120) (= (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@42) o_147@@13 f_91@@120) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@26) o_147@@13 f_91@@120))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@26 Mask@@67) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| ExhaleHeap@@26) o_147@@13 f_91@@120))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_57306) (ExhaleHeap@@27 T@PolymorphicMapType_57306) (Mask@@68 T@PolymorphicMapType_57327) (o_147@@14 T@Ref) (f_91@@121 T@Field_57366_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@27 Mask@@68) (=> (HasDirectPerm_37945_53 Mask@@68 o_147@@14 f_91@@121) (= (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@43) o_147@@14 f_91@@121) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@27) o_147@@14 f_91@@121))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@27 Mask@@68) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| ExhaleHeap@@27) o_147@@14 f_91@@121))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_57306) (ExhaleHeap@@28 T@PolymorphicMapType_57306) (Mask@@69 T@PolymorphicMapType_57327) (o_147@@15 T@Ref) (f_91@@122 T@Field_37945_38291) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@28 Mask@@69) (=> (HasDirectPerm_37945_38291 Mask@@69 o_147@@15 f_91@@122) (= (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@44) o_147@@15 f_91@@122) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@28) o_147@@15 f_91@@122))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@28 Mask@@69) (select (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| ExhaleHeap@@28) o_147@@15 f_91@@122))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_57306) (ExhaleHeap@@29 T@PolymorphicMapType_57306) (Mask@@70 T@PolymorphicMapType_57327) (o_147@@16 T@Ref) (f_91@@123 T@Field_63553_63558) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@29 Mask@@70) (=> (HasDirectPerm_37947_82680 Mask@@70 o_147@@16 f_91@@123) (= (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@45) o_147@@16 f_91@@123) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@29) o_147@@16 f_91@@123))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@29 Mask@@70) (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| ExhaleHeap@@29) o_147@@16 f_91@@123))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_57306) (ExhaleHeap@@30 T@PolymorphicMapType_57306) (Mask@@71 T@PolymorphicMapType_57327) (o_147@@17 T@Ref) (f_91@@124 T@Field_63506_4453) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@30 Mask@@71) (=> (HasDirectPerm_37945_4453 Mask@@71 o_147@@17 f_91@@124) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@46) o_147@@17 f_91@@124) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@30) o_147@@17 f_91@@124))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@30 Mask@@71) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| ExhaleHeap@@30) o_147@@17 f_91@@124))
)))
(assert (forall ((s0@@1 T@Seq_63556) (s1@@1 T@Seq_63556) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_37965|)) (not (= s1@@1 |Seq#Empty_37965|))) (= (|Seq#Length_37965| (|Seq#Append_63556| s0@@1 s1@@1)) (+ (|Seq#Length_37965| s0@@1) (|Seq#Length_37965| s1@@1))))
 :qid |stdinbpl.413:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_37965| (|Seq#Append_63556| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_4331) (s1@@2 T@Seq_4331) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_4331|)) (not (= s1@@2 |Seq#Empty_4331|))) (= (|Seq#Length_4331| (|Seq#Append_4331| s0@@2 s1@@2)) (+ (|Seq#Length_4331| s0@@2) (|Seq#Length_4331| s1@@2))))
 :qid |stdinbpl.413:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_4331| (|Seq#Append_4331| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_82896_82901) ) (! (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_38348_57380) ) (! (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_38348_53) ) (! (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_38348_82680) ) (! (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_78383_78384) ) (! (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_38348_4453) ) (! (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_77189_77194) ) (! (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_38290_57380) ) (! (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_38290_53) ) (! (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_38290_82680) ) (! (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_74101_74102) ) (! (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_38290_4453) ) (! (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_37945_77194) ) (! (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_57379_57380) ) (! (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_57366_53) ) (! (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_63553_63558) ) (! (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_37945_38291) ) (! (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_63506_4453) ) (! (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((s@@15 T@Seq_63556) (t@@1 T@Seq_63556) (n@@27 Int) ) (!  (=> (and (> n@@27 0) (> n@@27 (|Seq#Length_37965| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@27 (|Seq#Length_37965| s@@15)) (|Seq#Length_37965| s@@15)) n@@27) (= (|Seq#Drop_37965| (|Seq#Append_63556| s@@15 t@@1) n@@27) (|Seq#Drop_37965| t@@1 (|Seq#Sub| n@@27 (|Seq#Length_37965| s@@15))))))
 :qid |stdinbpl.570:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_37965| (|Seq#Append_63556| s@@15 t@@1) n@@27))
)))
(assert (forall ((s@@16 T@Seq_4331) (t@@2 T@Seq_4331) (n@@28 Int) ) (!  (=> (and (> n@@28 0) (> n@@28 (|Seq#Length_4331| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@28 (|Seq#Length_4331| s@@16)) (|Seq#Length_4331| s@@16)) n@@28) (= (|Seq#Drop_4331| (|Seq#Append_4331| s@@16 t@@2) n@@28) (|Seq#Drop_4331| t@@2 (|Seq#Sub| n@@28 (|Seq#Length_4331| s@@16))))))
 :qid |stdinbpl.570:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4331| (|Seq#Append_4331| s@@16 t@@2) n@@28))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_57306) (xs@@15 T@Seq_63556) (i@@11 Int) ) (!  (and (= (fun03 Heap@@47 xs@@15 i@@11) (|fun03'| Heap@@47 xs@@15 i@@11)) (dummyFunction_4915 (|fun03#triggerStateless| xs@@15 i@@11)))
 :qid |stdinbpl.1056:15|
 :skolemid |84|
 :pattern ( (fun03 Heap@@47 xs@@15 i@@11))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_57306) (xs@@16 T@Seq_63556) (j@@9 Int) ) (!  (and (= (fun07 Heap@@48 xs@@16 j@@9) (|fun07'| Heap@@48 xs@@16 j@@9)) (dummyFunction_4915 (|fun07#triggerStateless| xs@@16 j@@9)))
 :qid |stdinbpl.1641:15|
 :skolemid |146|
 :pattern ( (fun07 Heap@@48 xs@@16 j@@9))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_57306) (xs@@17 T@Seq_63556) (i@@12 Int) ) (!  (and (= (fun08 Heap@@49 xs@@17 i@@12) (|fun08'| Heap@@49 xs@@17 i@@12)) (dummyFunction_4915 (|fun08#triggerStateless| xs@@17 i@@12)))
 :qid |stdinbpl.1926:15|
 :skolemid |171|
 :pattern ( (fun08 Heap@@49 xs@@17 i@@12))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_57306) (Mask@@72 T@PolymorphicMapType_57327) (xs@@18 T@Seq_63556) (j@@10 Int) ) (!  (=> (state Heap@@50 Mask@@72) (= (|fun07'| Heap@@50 xs@@18 j@@10) (|fun07#frame| (FrameFragment_4717 (|fun07#condqp9| Heap@@50 xs@@18 j@@10)) xs@@18 j@@10)))
 :qid |stdinbpl.1661:15|
 :skolemid |150|
 :pattern ( (state Heap@@50 Mask@@72) (|fun07'| Heap@@50 xs@@18 j@@10))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_57306) (Mask@@73 T@PolymorphicMapType_57327) (xs@@19 T@Seq_63556) (i@@13 Int) ) (!  (=> (state Heap@@51 Mask@@73) (= (|fun08'| Heap@@51 xs@@19 i@@13) (|fun08#frame| (FrameFragment_4717 (|fun08#condqp10| Heap@@51 xs@@19 i@@13)) xs@@19 i@@13)))
 :qid |stdinbpl.1946:15|
 :skolemid |175|
 :pattern ( (state Heap@@51 Mask@@73) (|fun08'| Heap@@51 xs@@19 i@@13))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_57327) (SummandMask1 T@PolymorphicMapType_57327) (SummandMask2 T@PolymorphicMapType_57327) (o_2@@71 T@Ref) (f_4@@71 T@Field_82896_82901) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ResultMask) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| SummandMask1) o_2@@71 f_4@@71) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| SummandMask2) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ResultMask) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| SummandMask1) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| SummandMask2) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_57327) (SummandMask1@@0 T@PolymorphicMapType_57327) (SummandMask2@@0 T@PolymorphicMapType_57327) (o_2@@72 T@Ref) (f_4@@72 T@Field_38348_57380) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ResultMask@@0) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| SummandMask1@@0) o_2@@72 f_4@@72) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| SummandMask2@@0) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ResultMask@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| SummandMask1@@0) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| SummandMask2@@0) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_57327) (SummandMask1@@1 T@PolymorphicMapType_57327) (SummandMask2@@1 T@PolymorphicMapType_57327) (o_2@@73 T@Ref) (f_4@@73 T@Field_38348_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ResultMask@@1) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| SummandMask1@@1) o_2@@73 f_4@@73) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| SummandMask2@@1) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ResultMask@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| SummandMask1@@1) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| SummandMask2@@1) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_57327) (SummandMask1@@2 T@PolymorphicMapType_57327) (SummandMask2@@2 T@PolymorphicMapType_57327) (o_2@@74 T@Ref) (f_4@@74 T@Field_38348_82680) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ResultMask@@2) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| SummandMask1@@2) o_2@@74 f_4@@74) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| SummandMask2@@2) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ResultMask@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| SummandMask1@@2) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| SummandMask2@@2) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_57327) (SummandMask1@@3 T@PolymorphicMapType_57327) (SummandMask2@@3 T@PolymorphicMapType_57327) (o_2@@75 T@Ref) (f_4@@75 T@Field_78383_78384) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ResultMask@@3) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| SummandMask1@@3) o_2@@75 f_4@@75) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| SummandMask2@@3) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ResultMask@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| SummandMask1@@3) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| SummandMask2@@3) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_57327) (SummandMask1@@4 T@PolymorphicMapType_57327) (SummandMask2@@4 T@PolymorphicMapType_57327) (o_2@@76 T@Ref) (f_4@@76 T@Field_38348_4453) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ResultMask@@4) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| SummandMask1@@4) o_2@@76 f_4@@76) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| SummandMask2@@4) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ResultMask@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| SummandMask1@@4) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| SummandMask2@@4) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_57327) (SummandMask1@@5 T@PolymorphicMapType_57327) (SummandMask2@@5 T@PolymorphicMapType_57327) (o_2@@77 T@Ref) (f_4@@77 T@Field_77189_77194) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ResultMask@@5) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| SummandMask1@@5) o_2@@77 f_4@@77) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| SummandMask2@@5) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ResultMask@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| SummandMask1@@5) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| SummandMask2@@5) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_57327) (SummandMask1@@6 T@PolymorphicMapType_57327) (SummandMask2@@6 T@PolymorphicMapType_57327) (o_2@@78 T@Ref) (f_4@@78 T@Field_38290_57380) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ResultMask@@6) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| SummandMask1@@6) o_2@@78 f_4@@78) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| SummandMask2@@6) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ResultMask@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| SummandMask1@@6) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| SummandMask2@@6) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_57327) (SummandMask1@@7 T@PolymorphicMapType_57327) (SummandMask2@@7 T@PolymorphicMapType_57327) (o_2@@79 T@Ref) (f_4@@79 T@Field_38290_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ResultMask@@7) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| SummandMask1@@7) o_2@@79 f_4@@79) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| SummandMask2@@7) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ResultMask@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| SummandMask1@@7) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| SummandMask2@@7) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_57327) (SummandMask1@@8 T@PolymorphicMapType_57327) (SummandMask2@@8 T@PolymorphicMapType_57327) (o_2@@80 T@Ref) (f_4@@80 T@Field_38290_82680) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ResultMask@@8) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| SummandMask1@@8) o_2@@80 f_4@@80) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| SummandMask2@@8) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ResultMask@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| SummandMask1@@8) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| SummandMask2@@8) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_57327) (SummandMask1@@9 T@PolymorphicMapType_57327) (SummandMask2@@9 T@PolymorphicMapType_57327) (o_2@@81 T@Ref) (f_4@@81 T@Field_74101_74102) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ResultMask@@9) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| SummandMask1@@9) o_2@@81 f_4@@81) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| SummandMask2@@9) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ResultMask@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| SummandMask1@@9) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| SummandMask2@@9) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_57327) (SummandMask1@@10 T@PolymorphicMapType_57327) (SummandMask2@@10 T@PolymorphicMapType_57327) (o_2@@82 T@Ref) (f_4@@82 T@Field_38290_4453) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ResultMask@@10) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| SummandMask1@@10) o_2@@82 f_4@@82) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| SummandMask2@@10) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ResultMask@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| SummandMask1@@10) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| SummandMask2@@10) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_57327) (SummandMask1@@11 T@PolymorphicMapType_57327) (SummandMask2@@11 T@PolymorphicMapType_57327) (o_2@@83 T@Ref) (f_4@@83 T@Field_37945_77194) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ResultMask@@11) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| SummandMask1@@11) o_2@@83 f_4@@83) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| SummandMask2@@11) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ResultMask@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| SummandMask1@@11) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| SummandMask2@@11) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_57327) (SummandMask1@@12 T@PolymorphicMapType_57327) (SummandMask2@@12 T@PolymorphicMapType_57327) (o_2@@84 T@Ref) (f_4@@84 T@Field_57379_57380) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ResultMask@@12) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| SummandMask1@@12) o_2@@84 f_4@@84) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| SummandMask2@@12) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ResultMask@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| SummandMask1@@12) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| SummandMask2@@12) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_57327) (SummandMask1@@13 T@PolymorphicMapType_57327) (SummandMask2@@13 T@PolymorphicMapType_57327) (o_2@@85 T@Ref) (f_4@@85 T@Field_57366_53) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ResultMask@@13) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| SummandMask1@@13) o_2@@85 f_4@@85) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| SummandMask2@@13) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ResultMask@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| SummandMask1@@13) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| SummandMask2@@13) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_57327) (SummandMask1@@14 T@PolymorphicMapType_57327) (SummandMask2@@14 T@PolymorphicMapType_57327) (o_2@@86 T@Ref) (f_4@@86 T@Field_63553_63558) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ResultMask@@14) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| SummandMask1@@14) o_2@@86 f_4@@86) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| SummandMask2@@14) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ResultMask@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| SummandMask1@@14) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| SummandMask2@@14) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_57327) (SummandMask1@@15 T@PolymorphicMapType_57327) (SummandMask2@@15 T@PolymorphicMapType_57327) (o_2@@87 T@Ref) (f_4@@87 T@Field_37945_38291) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ResultMask@@15) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| SummandMask1@@15) o_2@@87 f_4@@87) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| SummandMask2@@15) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ResultMask@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| SummandMask1@@15) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| SummandMask2@@15) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_57327) (SummandMask1@@16 T@PolymorphicMapType_57327) (SummandMask2@@16 T@PolymorphicMapType_57327) (o_2@@88 T@Ref) (f_4@@88 T@Field_63506_4453) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ResultMask@@16) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| SummandMask1@@16) o_2@@88 f_4@@88) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| SummandMask2@@16) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ResultMask@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| SummandMask1@@16) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| SummandMask2@@16) o_2@@88 f_4@@88))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_57306) (Mask@@74 T@PolymorphicMapType_57327) (xs@@20 T@Seq_63556) (i@@14 Int) ) (!  (=> (and (state Heap@@52 Mask@@74) (< AssumeFunctionsAbove 5)) (=> (and (and (> (|Seq#Length_37965| xs@@20) 6) (forall ((k@@1 Int) (j@@11 Int) ) (!  (=> (and (>= k@@1 0) (and (< k@@1 (|Seq#Length_37965| xs@@20)) (and (>= j@@11 0) (and (< j@@11 (|Seq#Length_37965| xs@@20)) (not (= k@@1 j@@11)))))) (not (= (|Seq#Index_37965| xs@@20 k@@1) (|Seq#Index_37965| xs@@20 j@@11))))
 :qid |stdinbpl.1068:84|
 :skolemid |86|
 :pattern ( (|Seq#Index_37965| xs@@20 k@@1) (|Seq#Index_37965| xs@@20 j@@11))
))) (and (<= 0 i@@14) (< i@@14 (|Seq#Length_37965| xs@@20)))) (= (fun03 Heap@@52 xs@@20 i@@14) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@52) (|Seq#Index_37965| xs@@20 i@@14) f_7))))
 :qid |stdinbpl.1066:15|
 :skolemid |87|
 :pattern ( (state Heap@@52 Mask@@74) (fun03 Heap@@52 xs@@20 i@@14))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_57306) (Heap1Heap@@0 T@PolymorphicMapType_57306) (x@@9 T@Ref) (n@@29 Int) ) (!  (=> (and (=  (and (and (<= 3 (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29))) (< (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29)) n@@29)) (< NoPerm FullPerm))  (and (and (<= 3 (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29))) (< (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29)) n@@29)) (< NoPerm FullPerm))) (=> (and (and (<= 3 (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29))) (< (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29)) n@@29)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@0) (|Seq#Index_37965| (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap2Heap@@0) x@@9 ss_1) (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@0) (|Seq#Index_37965| (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap1Heap@@0) x@@9 ss_1) (|sk_P01#condqp8| (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29))) f_7)))) (= (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29)))
 :qid |stdinbpl.2331:15|
 :skolemid |214|
 :pattern ( (|P01#condqp8| Heap2Heap@@0 x@@9 n@@29) (|P01#condqp8| Heap1Heap@@0 x@@9 n@@29) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_4331| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_4331| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.735:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_4331| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_57306) (Heap1Heap@@1 T@PolymorphicMapType_57306) (xs@@21 T@Seq_63556) (i@@15 Int) ) (!  (=> (and (=  (and (and (<= 3 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15)) (|Seq#Length_37965| xs@@21))) (< NoPerm FullPerm))  (and (and (<= 3 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15)) (|Seq#Length_37965| xs@@21))) (< NoPerm FullPerm))) (=> (and (and (<= 3 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15))) (< (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15)) (|Seq#Length_37965| xs@@21))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@1) (|Seq#Index_37965| xs@@21 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@1) (|Seq#Index_37965| xs@@21 (|sk_fun03#condqp4| (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15))) f_7)))) (= (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15)))
 :qid |stdinbpl.1096:15|
 :skolemid |90|
 :pattern ( (|fun03#condqp4| Heap2Heap@@1 xs@@21 i@@15) (|fun03#condqp4| Heap1Heap@@1 xs@@21 i@@15) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((a T@Seq_63556) (b T@Seq_63556) ) (!  (=> (|Seq#Equal_63556| a b) (= a b))
 :qid |stdinbpl.708:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_63556| a b))
)))
(assert (forall ((a@@0 T@Seq_4331) (b@@0 T@Seq_4331) ) (!  (=> (|Seq#Equal_4331| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.708:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_4331| a@@0 b@@0))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_57306) (xs@@22 T@Seq_63556) (n@@30 Int) (i@@16 Int) ) (!  (and (= (fun06 Heap@@53 xs@@22 n@@30 i@@16) (|fun06'| Heap@@53 xs@@22 n@@30 i@@16)) (dummyFunction_4915 (|fun06#triggerStateless| xs@@22 n@@30 i@@16)))
 :qid |stdinbpl.1263:15|
 :skolemid |104|
 :pattern ( (fun06 Heap@@53 xs@@22 n@@30 i@@16))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_57306) (x@@10 T@Ref) (n@@31 Int) (i@@17 Int) ) (!  (and (= (fun04 Heap@@54 x@@10 n@@31 i@@17) (|fun04'| Heap@@54 x@@10 n@@31 i@@17)) (dummyFunction_4915 (|fun04#triggerStateless| x@@10 n@@31 i@@17)))
 :qid |stdinbpl.1448:15|
 :skolemid |125|
 :pattern ( (fun04 Heap@@54 x@@10 n@@31 i@@17))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_57306) (Mask@@75 T@PolymorphicMapType_57327) (xs@@23 T@Seq_63556) (n@@32 Int) (i@@18 Int) ) (!  (=> (state Heap@@55 Mask@@75) (= (|fun06'| Heap@@55 xs@@23 n@@32 i@@18) (|fun06#frame| (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@55) null (P02 xs@@23 n@@32)) xs@@23 n@@32 i@@18)))
 :qid |stdinbpl.1280:15|
 :skolemid |107|
 :pattern ( (state Heap@@55 Mask@@75) (|fun06'| Heap@@55 xs@@23 n@@32 i@@18))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_57306) (Mask@@76 T@PolymorphicMapType_57327) (x@@11 T@Ref) (n@@33 Int) (i@@19 Int) ) (!  (=> (state Heap@@56 Mask@@76) (= (|fun04'| Heap@@56 x@@11 n@@33 i@@19) (|fun04#frame| (select (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@56) null (P01 x@@11 n@@33)) x@@11 n@@33 i@@19)))
 :qid |stdinbpl.1465:15|
 :skolemid |128|
 :pattern ( (state Heap@@56 Mask@@76) (|fun04'| Heap@@56 x@@11 n@@33 i@@19))
)))
(assert (forall ((s@@17 T@Seq_63556) (i@@20 Int) ) (!  (=> (and (<= 0 i@@20) (< i@@20 (|Seq#Length_37965| s@@17))) (|Seq#ContainsTrigger_37965| s@@17 (|Seq#Index_37965| s@@17 i@@20)))
 :qid |stdinbpl.601:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_37965| s@@17 i@@20))
)))
(assert (forall ((s@@18 T@Seq_4331) (i@@21 Int) ) (!  (=> (and (<= 0 i@@21) (< i@@21 (|Seq#Length_4331| s@@18))) (|Seq#ContainsTrigger_4331| s@@18 (|Seq#Index_4331| s@@18 i@@21)))
 :qid |stdinbpl.601:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_4331| s@@18 i@@21))
)))
(assert (forall ((s0@@3 T@Seq_63556) (s1@@3 T@Seq_63556) ) (!  (and (=> (= s0@@3 |Seq#Empty_37965|) (= (|Seq#Append_63556| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_37965|) (= (|Seq#Append_63556| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.419:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_63556| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_4331) (s1@@4 T@Seq_4331) ) (!  (and (=> (= s0@@4 |Seq#Empty_4331|) (= (|Seq#Append_4331| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_4331|) (= (|Seq#Append_4331| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.419:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4331| s0@@4 s1@@4))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_57306) (Mask@@77 T@PolymorphicMapType_57327) (xs@@24 T@Seq_63556) (n@@34 Int) (i@@22 Int) ) (!  (=> (and (state Heap@@57 Mask@@77) (< AssumeFunctionsAbove 1)) (=> (and (< 0 i@@22) (< i@@22 n@@34)) (= (fun06 Heap@@57 xs@@24 n@@34 i@@22) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@57) (|Seq#Index_37965| xs@@24 i@@22) f_7))))
 :qid |stdinbpl.1273:15|
 :skolemid |106|
 :pattern ( (state Heap@@57 Mask@@77) (fun06 Heap@@57 xs@@24 n@@34 i@@22))
 :pattern ( (state Heap@@57 Mask@@77) (|fun06#triggerStateless| xs@@24 n@@34 i@@22) (|P02#trigger_38290| Heap@@57 (P02 xs@@24 n@@34)))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_37965| (|Seq#Singleton_37965| t@@3) 0) t@@3)
 :qid |stdinbpl.423:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_37965| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_4331| (|Seq#Singleton_4331| t@@4) 0) t@@4)
 :qid |stdinbpl.423:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4331| t@@4))
)))
(assert (forall ((s@@19 T@Seq_63556) ) (! (<= 0 (|Seq#Length_37965| s@@19))
 :qid |stdinbpl.402:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_37965| s@@19))
)))
(assert (forall ((s@@20 T@Seq_4331) ) (! (<= 0 (|Seq#Length_4331| s@@20))
 :qid |stdinbpl.402:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_4331| s@@20))
)))
(assert (forall ((Heap2Heap@@2 T@PolymorphicMapType_57306) (Heap1Heap@@2 T@PolymorphicMapType_57306) (xs@@25 T@Seq_63556) (i@@23 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23))) (< (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23))) (< (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23))) (< (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@2) (|Seq#Index_37965| xs@@25 (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@2) (|Seq#Index_37965| xs@@25 (|sk_fun03#condqp3| (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23))) f_7)))) (= (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23)))
 :qid |stdinbpl.1086:15|
 :skolemid |89|
 :pattern ( (|fun03#condqp3| Heap2Heap@@2 xs@@25 i@@23) (|fun03#condqp3| Heap1Heap@@2 xs@@25 i@@23) (succHeapTrans Heap2Heap@@2 Heap1Heap@@2))
)))
(assert (forall ((Heap2Heap@@3 T@PolymorphicMapType_57306) (Heap1Heap@@3 T@PolymorphicMapType_57306) (xs@@26 T@Seq_63556) (n@@35 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35))) (< (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35))) (< (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35))) (< (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@3) (|Seq#Index_37965| xs@@26 (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@3) (|Seq#Index_37965| xs@@26 (|sk_P02#condqp5| (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35))) f_7)))) (= (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35)))
 :qid |stdinbpl.2133:15|
 :skolemid |192|
 :pattern ( (|P02#condqp5| Heap2Heap@@3 xs@@26 n@@35) (|P02#condqp5| Heap1Heap@@3 xs@@26 n@@35) (succHeapTrans Heap2Heap@@3 Heap1Heap@@3))
)))
(assert (forall ((xs@@27 T@Seq_63556) (n@@36 Int) ) (! (= (getPredWandId_38290_38291 (P02 xs@@27 n@@36)) 0)
 :qid |stdinbpl.2107:15|
 :skolemid |188|
 :pattern ( (P02 xs@@27 n@@36))
)))
(assert (forall ((x@@12 T@Ref) (n@@37 Int) ) (! (= (getPredWandId_38348_38349 (P01 x@@12 n@@37)) 1)
 :qid |stdinbpl.2294:15|
 :skolemid |209|
 :pattern ( (P01 x@@12 n@@37))
)))
(assert (forall ((s0@@5 T@Seq_63556) (s1@@5 T@Seq_63556) ) (!  (=> (|Seq#Equal_63556| s0@@5 s1@@5) (and (= (|Seq#Length_37965| s0@@5) (|Seq#Length_37965| s1@@5)) (forall ((j@@12 Int) ) (!  (=> (and (<= 0 j@@12) (< j@@12 (|Seq#Length_37965| s0@@5))) (= (|Seq#Index_37965| s0@@5 j@@12) (|Seq#Index_37965| s1@@5 j@@12)))
 :qid |stdinbpl.698:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_37965| s0@@5 j@@12))
 :pattern ( (|Seq#Index_37965| s1@@5 j@@12))
))))
 :qid |stdinbpl.695:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_63556| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_4331) (s1@@6 T@Seq_4331) ) (!  (=> (|Seq#Equal_4331| s0@@6 s1@@6) (and (= (|Seq#Length_4331| s0@@6) (|Seq#Length_4331| s1@@6)) (forall ((j@@13 Int) ) (!  (=> (and (<= 0 j@@13) (< j@@13 (|Seq#Length_4331| s0@@6))) (= (|Seq#Index_4331| s0@@6 j@@13) (|Seq#Index_4331| s1@@6 j@@13)))
 :qid |stdinbpl.698:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_4331| s0@@6 j@@13))
 :pattern ( (|Seq#Index_4331| s1@@6 j@@13))
))))
 :qid |stdinbpl.695:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_4331| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_37965| (|Seq#Singleton_37965| t@@5)) 1)
 :qid |stdinbpl.410:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_37965| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_4331| (|Seq#Singleton_4331| t@@6)) 1)
 :qid |stdinbpl.410:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4331| t@@6))
)))
(assert (forall ((Heap2Heap@@4 T@PolymorphicMapType_57306) (Heap1Heap@@4 T@PolymorphicMapType_57306) (xs@@28 T@Seq_63556) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28)) (|Seq#Length_37965| xs@@28))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28)) (|Seq#Length_37965| xs@@28))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28))) (< (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28)) (|Seq#Length_37965| xs@@28))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@4) (|Seq#Index_37965| xs@@28 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@4) (|Seq#Index_37965| xs@@28 (|sk_fun01#condqp1| (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28))) f_7)))) (= (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28)))
 :qid |stdinbpl.792:15|
 :skolemid |63|
 :pattern ( (|fun01#condqp1| Heap2Heap@@4 xs@@28) (|fun01#condqp1| Heap1Heap@@4 xs@@28) (succHeapTrans Heap2Heap@@4 Heap1Heap@@4))
)))
(assert (forall ((Heap2Heap@@5 T@PolymorphicMapType_57306) (Heap1Heap@@5 T@PolymorphicMapType_57306) (xs@@29 T@Seq_63556) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29)) (|Seq#Length_37965| xs@@29))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29)) (|Seq#Length_37965| xs@@29))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29))) (< (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29)) (|Seq#Length_37965| xs@@29))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@5) (|Seq#Index_37965| xs@@29 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@5) (|Seq#Index_37965| xs@@29 (|sk_fun02#condqp2| (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29))) f_7)))) (= (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29)))
 :qid |stdinbpl.937:15|
 :skolemid |76|
 :pattern ( (|fun02#condqp2| Heap2Heap@@5 xs@@29) (|fun02#condqp2| Heap1Heap@@5 xs@@29) (succHeapTrans Heap2Heap@@5 Heap1Heap@@5))
)))
(assert (forall ((xs@@30 T@Seq_63556) (n@@38 Int) ) (! (= (PredicateMaskField_38290 (P02 xs@@30 n@@38)) (|P02#sm| xs@@30 n@@38))
 :qid |stdinbpl.2099:15|
 :skolemid |186|
 :pattern ( (PredicateMaskField_38290 (P02 xs@@30 n@@38)))
)))
(assert (forall ((x@@13 T@Ref) (n@@39 Int) ) (! (= (PredicateMaskField_38348 (P01 x@@13 n@@39)) (|P01#sm| x@@13 n@@39))
 :qid |stdinbpl.2286:15|
 :skolemid |207|
 :pattern ( (PredicateMaskField_38348 (P01 x@@13 n@@39)))
)))
(assert (forall ((s@@21 T@Seq_63556) (t@@7 T@Seq_63556) (n@@40 Int) ) (!  (=> (and (< 0 n@@40) (<= n@@40 (|Seq#Length_37965| s@@21))) (= (|Seq#Take_37965| (|Seq#Append_63556| s@@21 t@@7) n@@40) (|Seq#Take_37965| s@@21 n@@40)))
 :qid |stdinbpl.552:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_37965| (|Seq#Append_63556| s@@21 t@@7) n@@40))
)))
(assert (forall ((s@@22 T@Seq_4331) (t@@8 T@Seq_4331) (n@@41 Int) ) (!  (=> (and (< 0 n@@41) (<= n@@41 (|Seq#Length_4331| s@@22))) (= (|Seq#Take_4331| (|Seq#Append_4331| s@@22 t@@8) n@@41) (|Seq#Take_4331| s@@22 n@@41)))
 :qid |stdinbpl.552:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_4331| (|Seq#Append_4331| s@@22 t@@8) n@@41))
)))
(assert (forall ((s@@23 T@Seq_63556) (i@@24 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@24) (< i@@24 (|Seq#Length_37965| s@@23))) (= (|Seq#Length_37965| (|Seq#Update_37965| s@@23 i@@24 v@@2)) (|Seq#Length_37965| s@@23)))
 :qid |stdinbpl.451:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_37965| (|Seq#Update_37965| s@@23 i@@24 v@@2)))
 :pattern ( (|Seq#Length_37965| s@@23) (|Seq#Update_37965| s@@23 i@@24 v@@2))
)))
(assert (forall ((s@@24 T@Seq_4331) (i@@25 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@25) (< i@@25 (|Seq#Length_4331| s@@24))) (= (|Seq#Length_4331| (|Seq#Update_4331| s@@24 i@@25 v@@3)) (|Seq#Length_4331| s@@24)))
 :qid |stdinbpl.451:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_4331| (|Seq#Update_4331| s@@24 i@@25 v@@3)))
 :pattern ( (|Seq#Length_4331| s@@24) (|Seq#Update_4331| s@@24 i@@25 v@@3))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_57306) (Mask@@78 T@PolymorphicMapType_57327) (xs@@31 T@Seq_63556) (j@@14 Int) ) (!  (=> (and (state Heap@@58 Mask@@78) (or (< AssumeFunctionsAbove 3) (|fun07#trigger| (FrameFragment_4717 (|fun07#condqp9| Heap@@58 xs@@31 j@@14)) xs@@31 j@@14))) (=> (forall ((k_1@@0 Int) (i_3_2 Int) ) (!  (=> (and (>= k_1@@0 0) (and (< k_1@@0 (|Seq#Length_37965| xs@@31)) (and (>= i_3_2 0) (and (< i_3_2 (|Seq#Length_37965| xs@@31)) (not (= k_1@@0 i_3_2)))))) (not (= (|Seq#Index_37965| xs@@31 k_1@@0) (|Seq#Index_37965| xs@@31 i_3_2))))
 :qid |stdinbpl.1679:130|
 :skolemid |152|
 :pattern ( (|Seq#Index_37965| xs@@31 k_1@@0) (|Seq#Index_37965| xs@@31 i_3_2))
)) (>= (|fun07'| Heap@@58 xs@@31 j@@14) 0)))
 :qid |stdinbpl.1677:15|
 :skolemid |153|
 :pattern ( (state Heap@@58 Mask@@78) (|fun07'| Heap@@58 xs@@31 j@@14))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_57306) (o_146 T@Ref) (f_101 T@Field_38348_82680) (v@@4 T@Seq_63556) ) (! (succHeap Heap@@59 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@59) (store (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@59) o_146 f_101 v@@4) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@59) (store (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@59) o_146 f_101 v@@4) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@59) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_57306) (o_146@@0 T@Ref) (f_101@@0 T@Field_82896_82901) (v@@5 T@PolymorphicMapType_57855) ) (! (succHeap Heap@@60 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@60) (store (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@60) o_146@@0 f_101@@0 v@@5) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@60) (store (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@60) o_146@@0 f_101@@0 v@@5) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@60) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_57306) (o_146@@1 T@Ref) (f_101@@1 T@Field_78383_78384) (v@@6 T@FrameType) ) (! (succHeap Heap@@61 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@61) (store (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@61) o_146@@1 f_101@@1 v@@6) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@61) (store (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@61) o_146@@1 f_101@@1 v@@6) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@61) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_57306) (o_146@@2 T@Ref) (f_101@@2 T@Field_38348_4453) (v@@7 Int) ) (! (succHeap Heap@@62 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@62) (store (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@62) o_146@@2 f_101@@2 v@@7) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@62) (store (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@62) o_146@@2 f_101@@2 v@@7) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@62) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_57306) (o_146@@3 T@Ref) (f_101@@3 T@Field_38348_57380) (v@@8 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@63) (store (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@63) o_146@@3 f_101@@3 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@63) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@63) (store (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@63) o_146@@3 f_101@@3 v@@8)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_57306) (o_146@@4 T@Ref) (f_101@@4 T@Field_38348_53) (v@@9 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@64) (store (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@64) o_146@@4 f_101@@4 v@@9) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@64) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@64) (store (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@64) o_146@@4 f_101@@4 v@@9) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_57306) (o_146@@5 T@Ref) (f_101@@5 T@Field_38290_82680) (v@@10 T@Seq_63556) ) (! (succHeap Heap@@65 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@65) (store (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@65) o_146@@5 f_101@@5 v@@10) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@65) (store (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@65) o_146@@5 f_101@@5 v@@10) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@65) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_57306) (o_146@@6 T@Ref) (f_101@@6 T@Field_77189_77194) (v@@11 T@PolymorphicMapType_57855) ) (! (succHeap Heap@@66 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@66) (store (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@66) o_146@@6 f_101@@6 v@@11) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@66) (store (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@66) o_146@@6 f_101@@6 v@@11) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@66) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_57306) (o_146@@7 T@Ref) (f_101@@7 T@Field_74101_74102) (v@@12 T@FrameType) ) (! (succHeap Heap@@67 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@67) (store (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@67) o_146@@7 f_101@@7 v@@12) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@67) (store (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@67) o_146@@7 f_101@@7 v@@12) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@67) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@67)))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_57306) (o_146@@8 T@Ref) (f_101@@8 T@Field_38290_4453) (v@@13 Int) ) (! (succHeap Heap@@68 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@68) (store (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@68) o_146@@8 f_101@@8 v@@13) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@68)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@68) (store (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@68) o_146@@8 f_101@@8 v@@13) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@68) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@68)))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_57306) (o_146@@9 T@Ref) (f_101@@9 T@Field_38290_57380) (v@@14 T@Ref) ) (! (succHeap Heap@@69 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@69) (store (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@69) o_146@@9 f_101@@9 v@@14) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@69)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@69) (store (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@69) o_146@@9 f_101@@9 v@@14) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@69) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@69)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_57306) (o_146@@10 T@Ref) (f_101@@10 T@Field_38290_53) (v@@15 Bool) ) (! (succHeap Heap@@70 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@70) (store (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@70) o_146@@10 f_101@@10 v@@15) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@70) (store (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@70) o_146@@10 f_101@@10 v@@15) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@70) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_57306) (o_146@@11 T@Ref) (f_101@@11 T@Field_63553_63558) (v@@16 T@Seq_63556) ) (! (succHeap Heap@@71 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@71) (store (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@71) o_146@@11 f_101@@11 v@@16) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@71) (store (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@71) o_146@@11 f_101@@11 v@@16) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@71) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_57306) (o_146@@12 T@Ref) (f_101@@12 T@Field_37945_77194) (v@@17 T@PolymorphicMapType_57855) ) (! (succHeap Heap@@72 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@72) (store (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@72) o_146@@12 f_101@@12 v@@17) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@72) (store (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@72) o_146@@12 f_101@@12 v@@17) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@72) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@72)))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_57306) (o_146@@13 T@Ref) (f_101@@13 T@Field_37945_38291) (v@@18 T@FrameType) ) (! (succHeap Heap@@73 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@73) (store (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@73) o_146@@13 f_101@@13 v@@18) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@73) (store (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@73) o_146@@13 f_101@@13 v@@18) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@73) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_57306) (o_146@@14 T@Ref) (f_101@@14 T@Field_63506_4453) (v@@19 Int) ) (! (succHeap Heap@@74 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@74) (store (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@74) o_146@@14 f_101@@14 v@@19) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@74) (store (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@74) o_146@@14 f_101@@14 v@@19) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@74) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_57306) (o_146@@15 T@Ref) (f_101@@15 T@Field_57379_57380) (v@@20 T@Ref) ) (! (succHeap Heap@@75 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@75) (store (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@75) o_146@@15 f_101@@15 v@@20) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@75) (store (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@75) o_146@@15 f_101@@15 v@@20) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@75) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_57306) (o_146@@16 T@Ref) (f_101@@16 T@Field_57366_53) (v@@21 Bool) ) (! (succHeap Heap@@76 (PolymorphicMapType_57306 (store (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@76) o_146@@16 f_101@@16 v@@21) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_57306 (store (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@76) o_146@@16 f_101@@16 v@@21) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@76) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@76)))
)))
(assert (forall ((s@@25 T@Seq_63556) (t@@9 T@Seq_63556) (n@@42 Int) ) (!  (=> (and (< 0 n@@42) (<= n@@42 (|Seq#Length_37965| s@@25))) (= (|Seq#Drop_37965| (|Seq#Append_63556| s@@25 t@@9) n@@42) (|Seq#Append_63556| (|Seq#Drop_37965| s@@25 n@@42) t@@9)))
 :qid |stdinbpl.566:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_37965| (|Seq#Append_63556| s@@25 t@@9) n@@42))
)))
(assert (forall ((s@@26 T@Seq_4331) (t@@10 T@Seq_4331) (n@@43 Int) ) (!  (=> (and (< 0 n@@43) (<= n@@43 (|Seq#Length_4331| s@@26))) (= (|Seq#Drop_4331| (|Seq#Append_4331| s@@26 t@@10) n@@43) (|Seq#Append_4331| (|Seq#Drop_4331| s@@26 n@@43) t@@10)))
 :qid |stdinbpl.566:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4331| (|Seq#Append_4331| s@@26 t@@10) n@@43))
)))
(assert (forall ((s@@27 T@Seq_63556) (n@@44 Int) (i@@26 Int) ) (!  (=> (and (and (< 0 n@@44) (<= n@@44 i@@26)) (< i@@26 (|Seq#Length_37965| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@26 n@@44) n@@44) i@@26) (= (|Seq#Index_37965| (|Seq#Drop_37965| s@@27 n@@44) (|Seq#Sub| i@@26 n@@44)) (|Seq#Index_37965| s@@27 i@@26))))
 :qid |stdinbpl.502:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_37965| s@@27 n@@44) (|Seq#Index_37965| s@@27 i@@26))
)))
(assert (forall ((s@@28 T@Seq_4331) (n@@45 Int) (i@@27 Int) ) (!  (=> (and (and (< 0 n@@45) (<= n@@45 i@@27)) (< i@@27 (|Seq#Length_4331| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@27 n@@45) n@@45) i@@27) (= (|Seq#Index_4331| (|Seq#Drop_4331| s@@28 n@@45) (|Seq#Sub| i@@27 n@@45)) (|Seq#Index_4331| s@@28 i@@27))))
 :qid |stdinbpl.502:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4331| s@@28 n@@45) (|Seq#Index_4331| s@@28 i@@27))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_57306) (Mask@@79 T@PolymorphicMapType_57327) (xs@@32 T@Seq_63556) ) (!  (=> (and (state Heap@@77 Mask@@79) (< AssumeFunctionsAbove 4)) (=> (and (forall ((i@@28 Int) (j@@15 Int) ) (!  (=> (and (>= i@@28 0) (and (< i@@28 (|Seq#Length_37965| xs@@32)) (and (>= j@@15 0) (and (< j@@15 (|Seq#Length_37965| xs@@32)) (not (= i@@28 j@@15)))))) (not (= (|Seq#Index_37965| xs@@32 i@@28) (|Seq#Index_37965| xs@@32 j@@15))))
 :qid |stdinbpl.919:61|
 :skolemid |73|
 :pattern ( (|Seq#Index_37965| xs@@32 i@@28) (|Seq#Index_37965| xs@@32 j@@15))
)) (> (|Seq#Length_37965| xs@@32) 3)) (= (fun02 Heap@@77 xs@@32) (+ (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@77) (|Seq#Index_37965| xs@@32 0) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@77) (|Seq#Index_37965| xs@@32 1) f_7)))))
 :qid |stdinbpl.917:15|
 :skolemid |74|
 :pattern ( (state Heap@@77 Mask@@79) (fun02 Heap@@77 xs@@32))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_57306) (Mask@@80 T@PolymorphicMapType_57327) (xs@@33 T@Seq_63556) ) (!  (=> (state Heap@@78 Mask@@80) (= (|fun01'| Heap@@78 xs@@33) (|fun01#frame| (FrameFragment_4717 (|fun01#condqp1| Heap@@78 xs@@33)) xs@@33)))
 :qid |stdinbpl.782:15|
 :skolemid |62|
 :pattern ( (state Heap@@78 Mask@@80) (|fun01'| Heap@@78 xs@@33))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_57306) (Mask@@81 T@PolymorphicMapType_57327) (xs@@34 T@Seq_63556) ) (!  (=> (state Heap@@79 Mask@@81) (= (|fun02'| Heap@@79 xs@@34) (|fun02#frame| (FrameFragment_4717 (|fun02#condqp2| Heap@@79 xs@@34)) xs@@34)))
 :qid |stdinbpl.927:15|
 :skolemid |75|
 :pattern ( (state Heap@@79 Mask@@81) (|fun02'| Heap@@79 xs@@34))
)))
(assert (forall ((s0@@7 T@Seq_63556) (s1@@7 T@Seq_63556) (n@@46 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_37965|)) (not (= s1@@7 |Seq#Empty_37965|))) (<= 0 n@@46)) (< n@@46 (|Seq#Length_37965| s0@@7))) (= (|Seq#Index_37965| (|Seq#Append_63556| s0@@7 s1@@7) n@@46) (|Seq#Index_37965| s0@@7 n@@46)))
 :qid |stdinbpl.442:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_37965| (|Seq#Append_63556| s0@@7 s1@@7) n@@46))
 :pattern ( (|Seq#Index_37965| s0@@7 n@@46) (|Seq#Append_63556| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_4331) (s1@@8 T@Seq_4331) (n@@47 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_4331|)) (not (= s1@@8 |Seq#Empty_4331|))) (<= 0 n@@47)) (< n@@47 (|Seq#Length_4331| s0@@8))) (= (|Seq#Index_4331| (|Seq#Append_4331| s0@@8 s1@@8) n@@47) (|Seq#Index_4331| s0@@8 n@@47)))
 :qid |stdinbpl.442:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_4331| (|Seq#Append_4331| s0@@8 s1@@8) n@@47))
 :pattern ( (|Seq#Index_4331| s0@@8 n@@47) (|Seq#Append_4331| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_63556) (s1@@9 T@Seq_63556) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_37965|)) (not (= s1@@9 |Seq#Empty_37965|))) (<= 0 m)) (< m (|Seq#Length_37965| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_37965| s0@@9)) (|Seq#Length_37965| s0@@9)) m) (= (|Seq#Index_37965| (|Seq#Append_63556| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_37965| s0@@9))) (|Seq#Index_37965| s1@@9 m))))
 :qid |stdinbpl.447:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_37965| s1@@9 m) (|Seq#Append_63556| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_4331) (s1@@10 T@Seq_4331) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_4331|)) (not (= s1@@10 |Seq#Empty_4331|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_4331| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_4331| s0@@10)) (|Seq#Length_4331| s0@@10)) m@@0) (= (|Seq#Index_4331| (|Seq#Append_4331| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_4331| s0@@10))) (|Seq#Index_4331| s1@@10 m@@0))))
 :qid |stdinbpl.447:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_4331| s1@@10 m@@0) (|Seq#Append_4331| s0@@10 s1@@10))
)))
(assert (forall ((o_146@@17 T@Ref) (f_88 T@Field_57379_57380) (Heap@@80 T@PolymorphicMapType_57306) ) (!  (=> (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@80) o_146@@17 $allocated) (select (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@80) (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@80) o_146@@17 f_88) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@80) o_146@@17 f_88))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_57306) (Mask@@82 T@PolymorphicMapType_57327) (xs@@35 T@Seq_63556) ) (!  (=> (and (state Heap@@81 Mask@@82) (< AssumeFunctionsAbove 6)) (=> (and (forall ((i@@29 Int) (j@@16 Int) ) (!  (=> (and (>= i@@29 0) (and (< i@@29 (|Seq#Length_37965| xs@@35)) (and (>= j@@16 0) (and (< j@@16 (|Seq#Length_37965| xs@@35)) (not (= i@@29 j@@16)))))) (not (= (|Seq#Index_37965| xs@@35 i@@29) (|Seq#Index_37965| xs@@35 j@@16))))
 :qid |stdinbpl.774:61|
 :skolemid |60|
 :pattern ( (|Seq#Index_37965| xs@@35 i@@29) (|Seq#Index_37965| xs@@35 j@@16))
)) (> (|Seq#Length_37965| xs@@35) 3)) (= (fun01 Heap@@81 xs@@35) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@81) (|Seq#Index_37965| xs@@35 0) f_7))))
 :qid |stdinbpl.772:15|
 :skolemid |61|
 :pattern ( (state Heap@@81 Mask@@82) (fun01 Heap@@81 xs@@35))
)))
(assert (forall ((s@@29 T@Seq_63556) (x@@14 T@Ref) (i@@30 Int) ) (!  (=> (and (and (<= 0 i@@30) (< i@@30 (|Seq#Length_37965| s@@29))) (= (|Seq#Index_37965| s@@29 i@@30) x@@14)) (|Seq#Contains_63556| s@@29 x@@14))
 :qid |stdinbpl.599:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_63556| s@@29 x@@14) (|Seq#Index_37965| s@@29 i@@30))
)))
(assert (forall ((s@@30 T@Seq_4331) (x@@15 Int) (i@@31 Int) ) (!  (=> (and (and (<= 0 i@@31) (< i@@31 (|Seq#Length_4331| s@@30))) (= (|Seq#Index_4331| s@@30 i@@31) x@@15)) (|Seq#Contains_4331| s@@30 x@@15))
 :qid |stdinbpl.599:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_4331| s@@30 x@@15) (|Seq#Index_4331| s@@30 i@@31))
)))
(assert (forall ((s0@@11 T@Seq_63556) (s1@@11 T@Seq_63556) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_63556| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_63556| s0@@11 s1@@11))) (not (= (|Seq#Length_37965| s0@@11) (|Seq#Length_37965| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_63556| s0@@11 s1@@11))) (= (|Seq#Length_37965| s0@@11) (|Seq#Length_37965| s1@@11))) (= (|Seq#SkolemDiff_63556| s0@@11 s1@@11) (|Seq#SkolemDiff_63556| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_63556| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_63556| s0@@11 s1@@11) (|Seq#Length_37965| s0@@11))) (not (= (|Seq#Index_37965| s0@@11 (|Seq#SkolemDiff_63556| s0@@11 s1@@11)) (|Seq#Index_37965| s1@@11 (|Seq#SkolemDiff_63556| s0@@11 s1@@11))))))
 :qid |stdinbpl.703:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_63556| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_4331) (s1@@12 T@Seq_4331) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_4331| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_4331| s0@@12 s1@@12))) (not (= (|Seq#Length_4331| s0@@12) (|Seq#Length_4331| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_4331| s0@@12 s1@@12))) (= (|Seq#Length_4331| s0@@12) (|Seq#Length_4331| s1@@12))) (= (|Seq#SkolemDiff_4331| s0@@12 s1@@12) (|Seq#SkolemDiff_4331| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_4331| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_4331| s0@@12 s1@@12) (|Seq#Length_4331| s0@@12))) (not (= (|Seq#Index_4331| s0@@12 (|Seq#SkolemDiff_4331| s0@@12 s1@@12)) (|Seq#Index_4331| s1@@12 (|Seq#SkolemDiff_4331| s0@@12 s1@@12))))))
 :qid |stdinbpl.703:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_4331| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_78383_78384) (v_1@@2 T@FrameType) (q T@Field_78383_78384) (w@@2 T@FrameType) (r T@Field_78383_78384) (u T@FrameType) ) (!  (=> (and (InsidePredicate_78383_78383 p@@3 v_1@@2 q w@@2) (InsidePredicate_78383_78383 q w@@2 r u)) (InsidePredicate_78383_78383 p@@3 v_1@@2 r u))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_78383 p@@3 v_1@@2 q w@@2) (InsidePredicate_78383_78383 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_78383_78384) (v_1@@3 T@FrameType) (q@@0 T@Field_78383_78384) (w@@3 T@FrameType) (r@@0 T@Field_74101_74102) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_78383 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_78383_74101 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_78383_74101 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_78383 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_78383_74101 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_78383_78384) (v_1@@4 T@FrameType) (q@@1 T@Field_78383_78384) (w@@4 T@FrameType) (r@@1 T@Field_37945_38291) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_78383 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_78383_57366 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_78383_57366 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_78383 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_78383_57366 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_78383_78384) (v_1@@5 T@FrameType) (q@@2 T@Field_74101_74102) (w@@5 T@FrameType) (r@@2 T@Field_78383_78384) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_74101 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_74101_78383 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_78383_78383 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_74101 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_74101_78383 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_78383_78384) (v_1@@6 T@FrameType) (q@@3 T@Field_74101_74102) (w@@6 T@FrameType) (r@@3 T@Field_74101_74102) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_74101 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_74101_74101 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_78383_74101 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_74101 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_74101_74101 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_78383_78384) (v_1@@7 T@FrameType) (q@@4 T@Field_74101_74102) (w@@7 T@FrameType) (r@@4 T@Field_37945_38291) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_74101 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_74101_57366 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_78383_57366 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_74101 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_74101_57366 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_78383_78384) (v_1@@8 T@FrameType) (q@@5 T@Field_37945_38291) (w@@8 T@FrameType) (r@@5 T@Field_78383_78384) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_57366 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_57366_78383 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_78383_78383 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_57366 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_57366_78383 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_78383_78384) (v_1@@9 T@FrameType) (q@@6 T@Field_37945_38291) (w@@9 T@FrameType) (r@@6 T@Field_74101_74102) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_57366 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_57366_74101 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_78383_74101 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_57366 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_57366_74101 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_78383_78384) (v_1@@10 T@FrameType) (q@@7 T@Field_37945_38291) (w@@10 T@FrameType) (r@@7 T@Field_37945_38291) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_78383_57366 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_57366_57366 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_78383_57366 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_78383_57366 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_57366_57366 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_74101_74102) (v_1@@11 T@FrameType) (q@@8 T@Field_78383_78384) (w@@11 T@FrameType) (r@@8 T@Field_78383_78384) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_78383 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_78383_78383 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_74101_78383 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_78383 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_78383_78383 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_74101_74102) (v_1@@12 T@FrameType) (q@@9 T@Field_78383_78384) (w@@12 T@FrameType) (r@@9 T@Field_74101_74102) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_78383 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_78383_74101 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_74101_74101 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_78383 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_78383_74101 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_74101_74102) (v_1@@13 T@FrameType) (q@@10 T@Field_78383_78384) (w@@13 T@FrameType) (r@@10 T@Field_37945_38291) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_78383 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_78383_57366 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_74101_57366 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_78383 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_78383_57366 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_74101_74102) (v_1@@14 T@FrameType) (q@@11 T@Field_74101_74102) (w@@14 T@FrameType) (r@@11 T@Field_78383_78384) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_74101 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_74101_78383 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_74101_78383 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_74101 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_74101_78383 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_74101_74102) (v_1@@15 T@FrameType) (q@@12 T@Field_74101_74102) (w@@15 T@FrameType) (r@@12 T@Field_74101_74102) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_74101 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_74101_74101 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_74101_74101 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_74101 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_74101_74101 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_74101_74102) (v_1@@16 T@FrameType) (q@@13 T@Field_74101_74102) (w@@16 T@FrameType) (r@@13 T@Field_37945_38291) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_74101 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_74101_57366 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_74101_57366 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_74101 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_74101_57366 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_74101_74102) (v_1@@17 T@FrameType) (q@@14 T@Field_37945_38291) (w@@17 T@FrameType) (r@@14 T@Field_78383_78384) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_57366 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_57366_78383 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_74101_78383 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_57366 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_57366_78383 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_74101_74102) (v_1@@18 T@FrameType) (q@@15 T@Field_37945_38291) (w@@18 T@FrameType) (r@@15 T@Field_74101_74102) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_57366 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_57366_74101 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_74101_74101 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_57366 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_57366_74101 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_74101_74102) (v_1@@19 T@FrameType) (q@@16 T@Field_37945_38291) (w@@19 T@FrameType) (r@@16 T@Field_37945_38291) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_74101_57366 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_57366_57366 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_74101_57366 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_74101_57366 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_57366_57366 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_37945_38291) (v_1@@20 T@FrameType) (q@@17 T@Field_78383_78384) (w@@20 T@FrameType) (r@@17 T@Field_78383_78384) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_78383 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_78383_78383 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_57366_78383 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_78383 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_78383_78383 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_37945_38291) (v_1@@21 T@FrameType) (q@@18 T@Field_78383_78384) (w@@21 T@FrameType) (r@@18 T@Field_74101_74102) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_78383 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_78383_74101 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_57366_74101 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_78383 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_78383_74101 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_37945_38291) (v_1@@22 T@FrameType) (q@@19 T@Field_78383_78384) (w@@22 T@FrameType) (r@@19 T@Field_37945_38291) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_78383 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_78383_57366 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_57366_57366 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_78383 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_78383_57366 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_37945_38291) (v_1@@23 T@FrameType) (q@@20 T@Field_74101_74102) (w@@23 T@FrameType) (r@@20 T@Field_78383_78384) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_74101 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_74101_78383 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_57366_78383 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_74101 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_74101_78383 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_37945_38291) (v_1@@24 T@FrameType) (q@@21 T@Field_74101_74102) (w@@24 T@FrameType) (r@@21 T@Field_74101_74102) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_74101 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_74101_74101 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_57366_74101 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_74101 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_74101_74101 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_37945_38291) (v_1@@25 T@FrameType) (q@@22 T@Field_74101_74102) (w@@25 T@FrameType) (r@@22 T@Field_37945_38291) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_74101 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_74101_57366 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_57366_57366 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_74101 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_74101_57366 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_37945_38291) (v_1@@26 T@FrameType) (q@@23 T@Field_37945_38291) (w@@26 T@FrameType) (r@@23 T@Field_78383_78384) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_57366 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_57366_78383 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_57366_78383 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_57366 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_57366_78383 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_37945_38291) (v_1@@27 T@FrameType) (q@@24 T@Field_37945_38291) (w@@27 T@FrameType) (r@@24 T@Field_74101_74102) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_57366 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_57366_74101 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_57366_74101 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_57366 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_57366_74101 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_37945_38291) (v_1@@28 T@FrameType) (q@@25 T@Field_37945_38291) (w@@28 T@FrameType) (r@@25 T@Field_37945_38291) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_57366_57366 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_57366_57366 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_57366_57366 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.370:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_57366_57366 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_57366_57366 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((Heap2Heap@@6 T@PolymorphicMapType_57306) (Heap1Heap@@6 T@PolymorphicMapType_57306) (x@@16 T@Ref) (n@@48 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48))) (< (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48))) (< (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48))) (< (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@6) (|Seq#Index_37965| (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap2Heap@@6) x@@16 ss_1) (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@6) (|Seq#Index_37965| (select (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap1Heap@@6) x@@16 ss_1) (|sk_P01#condqp7| (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48))) f_7)))) (= (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48)))
 :qid |stdinbpl.2320:15|
 :skolemid |213|
 :pattern ( (|P01#condqp7| Heap2Heap@@6 x@@16 n@@48) (|P01#condqp7| Heap1Heap@@6 x@@16 n@@48) (succHeapTrans Heap2Heap@@6 Heap1Heap@@6))
)))
(assert (forall ((Heap2Heap@@7 T@PolymorphicMapType_57306) (Heap1Heap@@7 T@PolymorphicMapType_57306) (xs@@36 T@Seq_63556) (j@@17 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17))) (< (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17)) (|Seq#Length_37965| xs@@36))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17))) (< (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17)) (|Seq#Length_37965| xs@@36))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17))) (< (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17)) (|Seq#Length_37965| xs@@36))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@7) (|Seq#Index_37965| xs@@36 (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@7) (|Seq#Index_37965| xs@@36 (|sk_fun07#condqp9| (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17))) f_7)))) (= (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17)))
 :qid |stdinbpl.1671:15|
 :skolemid |151|
 :pattern ( (|fun07#condqp9| Heap2Heap@@7 xs@@36 j@@17) (|fun07#condqp9| Heap1Heap@@7 xs@@36 j@@17) (succHeapTrans Heap2Heap@@7 Heap1Heap@@7))
)))
(assert (forall ((Heap2Heap@@8 T@PolymorphicMapType_57306) (Heap1Heap@@8 T@PolymorphicMapType_57306) (xs@@37 T@Seq_63556) (i@@32 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32))) (< (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32)) (|Seq#Length_37965| xs@@37))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32))) (< (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32)) (|Seq#Length_37965| xs@@37))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32))) (< (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32)) (|Seq#Length_37965| xs@@37))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap2Heap@@8) (|Seq#Index_37965| xs@@37 (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32))) f_7) (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap1Heap@@8) (|Seq#Index_37965| xs@@37 (|sk_fun08#condqp10| (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32))) f_7)))) (= (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32)))
 :qid |stdinbpl.1956:15|
 :skolemid |176|
 :pattern ( (|fun08#condqp10| Heap2Heap@@8 xs@@37 i@@32) (|fun08#condqp10| Heap1Heap@@8 xs@@37 i@@32) (succHeapTrans Heap2Heap@@8 Heap1Heap@@8))
)))
(assert (forall ((s@@31 T@Seq_63556) ) (!  (=> (= (|Seq#Length_37965| s@@31) 0) (= s@@31 |Seq#Empty_37965|))
 :qid |stdinbpl.406:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_37965| s@@31))
)))
(assert (forall ((s@@32 T@Seq_4331) ) (!  (=> (= (|Seq#Length_4331| s@@32) 0) (= s@@32 |Seq#Empty_4331|))
 :qid |stdinbpl.406:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_4331| s@@32))
)))
(assert (forall ((s@@33 T@Seq_63556) (n@@49 Int) ) (!  (=> (<= n@@49 0) (= (|Seq#Take_37965| s@@33 n@@49) |Seq#Empty_37965|))
 :qid |stdinbpl.582:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_37965| s@@33 n@@49))
)))
(assert (forall ((s@@34 T@Seq_4331) (n@@50 Int) ) (!  (=> (<= n@@50 0) (= (|Seq#Take_4331| s@@34 n@@50) |Seq#Empty_4331|))
 :qid |stdinbpl.582:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_4331| s@@34 n@@50))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@82 T@PolymorphicMapType_57306) (Mask@@83 T@PolymorphicMapType_57327) (xs@@38 T@Seq_63556) (i@@33 Int) ) (!  (=> (state Heap@@82 Mask@@83) (= (|fun03'| Heap@@82 xs@@38 i@@33) (|fun03#frame| (CombineFrames (FrameFragment_4717 (|fun03#condqp3| Heap@@82 xs@@38 i@@33)) (FrameFragment_4717 (|fun03#condqp4| Heap@@82 xs@@38 i@@33))) xs@@38 i@@33)))
 :qid |stdinbpl.1076:15|
 :skolemid |88|
 :pattern ( (state Heap@@82 Mask@@83) (|fun03'| Heap@@82 xs@@38 i@@33))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@39 () T@Seq_63556)
(declare-fun n@@51 () Int)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_57327)
(declare-fun Mask@1 () T@PolymorphicMapType_57327)
(declare-fun Heap@6 () T@PolymorphicMapType_57306)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_57327)
(declare-fun Heap@4 () T@PolymorphicMapType_57306)
(declare-fun Heap@5 () T@PolymorphicMapType_57306)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_57327)
(declare-fun newPMask@0 () T@PolymorphicMapType_57855)
(declare-fun Heap@2 () T@PolymorphicMapType_57306)
(declare-fun Heap@3 () T@PolymorphicMapType_57306)
(declare-fun newPMask@1 () T@PolymorphicMapType_57855)
(declare-fun Heap@@83 () T@PolymorphicMapType_57306)
(declare-fun Heap@0 () T@PolymorphicMapType_57306)
(declare-fun Heap@1 () T@PolymorphicMapType_57306)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun neverTriggered32 (Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_57327)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_57327)
(declare-fun neverTriggered33 (Int) Bool)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_57327)
(declare-fun k_2_2 () Int)
(declare-fun j_6_2 () Int)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_57327)
(declare-fun v1@0 () Int)
(declare-fun j_46 () Int)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) Int)
(declare-fun j_45 () Int)
(declare-fun k_48 () Int)
(declare-fun j_44 () Int)
(set-info :boogie-vc-id test06a)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon22_correct  (=> (= (|Seq#Length_37965| xs@@39) n@@51) (=> (and (<= 3 n@@51) (forall ((k_4_2 Int) (j_12_2 Int) ) (!  (=> (and (>= k_4_2 0) (and (< k_4_2 (|Seq#Length_37965| xs@@39)) (and (>= j_12_2 0) (and (< j_12_2 (|Seq#Length_37965| xs@@39)) (not (= k_4_2 j_12_2)))))) (not (= (|Seq#Index_37965| xs@@39 k_4_2) (|Seq#Index_37965| xs@@39 j_12_2))))
 :qid |stdinbpl.3775:20|
 :skolemid |328|
 :pattern ( (|Seq#Index_37965| xs@@39 k_4_2) (|Seq#Index_37965| xs@@39 j_12_2))
))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (forall ((j_13_2 Int) (j_13_3 Int) ) (!  (=> (and (and (and (and (not (= j_13_2 j_13_3)) (and (<= 0 j_13_2) (< j_13_2 3))) (and (<= 0 j_13_3) (< j_13_3 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_13_2) (|Seq#Index_37965| xs@@39 j_13_3))))
 :qid |stdinbpl.3781:15|
 :skolemid |329|
))) (=> (forall ((j_13_2@@0 Int) (j_13_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_13_2@@0 j_13_3@@0)) (and (<= 0 j_13_2@@0) (< j_13_2@@0 3))) (and (<= 0 j_13_3@@0) (< j_13_3@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_13_2@@0) (|Seq#Index_37965| xs@@39 j_13_3@@0))))
 :qid |stdinbpl.3781:15|
 :skolemid |329|
)) (=> (and (and (forall ((j_13_2@@1 Int) ) (!  (=> (and (and (<= 0 j_13_2@@1) (< j_13_2@@1 3)) (< NoPerm FullPerm)) (and (qpRange34 (|Seq#Index_37965| xs@@39 j_13_2@@1)) (= (invRecv34 (|Seq#Index_37965| xs@@39 j_13_2@@1)) j_13_2@@1)))
 :qid |stdinbpl.3787:22|
 :skolemid |330|
 :pattern ( (|Seq#Index_37965| xs@@39 j_13_2@@1))
 :pattern ( (|Seq#Index_37965| xs@@39 j_13_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv34 o_9)) (< (invRecv34 o_9) 3)) (< NoPerm FullPerm)) (qpRange34 o_9)) (= (|Seq#Index_37965| xs@@39 (invRecv34 o_9)) o_9))
 :qid |stdinbpl.3791:22|
 :skolemid |331|
 :pattern ( (invRecv34 o_9))
))) (and (forall ((j_13_2@@2 Int) ) (!  (=> (and (<= 0 j_13_2@@2) (< j_13_2@@2 3)) (not (= (|Seq#Index_37965| xs@@39 j_13_2@@2) null)))
 :qid |stdinbpl.3797:22|
 :skolemid |332|
 :pattern ( (|Seq#Index_37965| xs@@39 j_13_2@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_13_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv34 o_9@@0)) (< (invRecv34 o_9@@0) 3)) (< NoPerm FullPerm)) (qpRange34 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_37965| xs@@39 (invRecv34 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@0 f_7) (+ (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@1) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv34 o_9@@0)) (< (invRecv34 o_9@@0) 3)) (< NoPerm FullPerm)) (qpRange34 o_9@@0))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@0 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@1) o_9@@0 f_7))))
 :qid |stdinbpl.3803:22|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@1) o_9@@1 f_5) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_63506_4453) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@4) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@4) o_9@@6 f_5@@4)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@4) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@1) o_9@@7 f_5@@5) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@4) o_9@@7 f_5@@5)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@1) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@4) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@1) o_9@@8 f_5@@6) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@4) o_9@@8 f_5@@6)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@1) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@4) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@1) o_9@@9 f_5@@7) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@4) o_9@@9 f_5@@7)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@1) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@4) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@1) o_9@@10 f_5@@8) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@4) o_9@@10 f_5@@8)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@1) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@4) o_9@@10 f_5@@8))
))) (forall ((o_9@@11 T@Ref) (f_5@@9 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@1) o_9@@11 f_5@@9) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@4) o_9@@11 f_5@@9)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@1) o_9@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@4) o_9@@11 f_5@@9))
))) (forall ((o_9@@12 T@Ref) (f_5@@10 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@1) o_9@@12 f_5@@10) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@4) o_9@@12 f_5@@10)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@1) o_9@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@4) o_9@@12 f_5@@10))
))) (forall ((o_9@@13 T@Ref) (f_5@@11 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@1) o_9@@13 f_5@@11) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@4) o_9@@13 f_5@@11)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@1) o_9@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@4) o_9@@13 f_5@@11))
))) (forall ((o_9@@14 T@Ref) (f_5@@12 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@1) o_9@@14 f_5@@12) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@4) o_9@@14 f_5@@12)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@1) o_9@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@4) o_9@@14 f_5@@12))
))) (forall ((o_9@@15 T@Ref) (f_5@@13 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@1) o_9@@15 f_5@@13) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@4) o_9@@15 f_5@@13)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@1) o_9@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@4) o_9@@15 f_5@@13))
))) (forall ((o_9@@16 T@Ref) (f_5@@14 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@1) o_9@@16 f_5@@14) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@4) o_9@@16 f_5@@14)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@1) o_9@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@4) o_9@@16 f_5@@14))
))) (forall ((o_9@@17 T@Ref) (f_5@@15 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@1) o_9@@17 f_5@@15) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@4) o_9@@17 f_5@@15)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@1) o_9@@17 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@4) o_9@@17 f_5@@15))
))) (forall ((o_9@@18 T@Ref) (f_5@@16 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@1) o_9@@18 f_5@@16) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@4) o_9@@18 f_5@@16)))
 :qid |stdinbpl.3807:29|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@1) o_9@@18 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@4) o_9@@18 f_5@@16))
))) (state Heap@6 QPMask@4)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (forall ((j_14_2 Int) (j_14_3 Int) ) (!  (=> (and (and (and (and (not (= j_14_2 j_14_3)) (and (<= 3 j_14_2) (< j_14_2 n@@51))) (and (<= 3 j_14_3) (< j_14_3 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_14_2) (|Seq#Index_37965| xs@@39 j_14_3))))
 :qid |stdinbpl.3815:15|
 :skolemid |335|
))) (=> (forall ((j_14_2@@0 Int) (j_14_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_14_2@@0 j_14_3@@0)) (and (<= 3 j_14_2@@0) (< j_14_2@@0 n@@51))) (and (<= 3 j_14_3@@0) (< j_14_3@@0 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_14_2@@0) (|Seq#Index_37965| xs@@39 j_14_3@@0))))
 :qid |stdinbpl.3815:15|
 :skolemid |335|
)) (=> (and (and (forall ((j_14_2@@1 Int) ) (!  (=> (and (and (<= 3 j_14_2@@1) (< j_14_2@@1 n@@51)) (< NoPerm FullPerm)) (and (qpRange35 (|Seq#Index_37965| xs@@39 j_14_2@@1)) (= (invRecv35 (|Seq#Index_37965| xs@@39 j_14_2@@1)) j_14_2@@1)))
 :qid |stdinbpl.3821:22|
 :skolemid |336|
 :pattern ( (|Seq#Index_37965| xs@@39 j_14_2@@1))
 :pattern ( (|Seq#Index_37965| xs@@39 j_14_2@@1))
)) (forall ((o_9@@19 T@Ref) ) (!  (=> (and (and (and (<= 3 (invRecv35 o_9@@19)) (< (invRecv35 o_9@@19) n@@51)) (< NoPerm FullPerm)) (qpRange35 o_9@@19)) (= (|Seq#Index_37965| xs@@39 (invRecv35 o_9@@19)) o_9@@19))
 :qid |stdinbpl.3825:22|
 :skolemid |337|
 :pattern ( (invRecv35 o_9@@19))
))) (and (forall ((j_14_2@@2 Int) ) (!  (=> (and (<= 3 j_14_2@@2) (< j_14_2@@2 n@@51)) (not (= (|Seq#Index_37965| xs@@39 j_14_2@@2) null)))
 :qid |stdinbpl.3831:22|
 :skolemid |338|
 :pattern ( (|Seq#Index_37965| xs@@39 j_14_2@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_14_2@@2))
)) (forall ((o_9@@20 T@Ref) ) (!  (and (=> (and (and (and (<= 3 (invRecv35 o_9@@20)) (< (invRecv35 o_9@@20) n@@51)) (< NoPerm FullPerm)) (qpRange35 o_9@@20)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_37965| xs@@39 (invRecv35 o_9@@20)) o_9@@20)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@5) o_9@@20 f_7) (+ (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@20 f_7) FullPerm)))) (=> (not (and (and (and (<= 3 (invRecv35 o_9@@20)) (< (invRecv35 o_9@@20) n@@51)) (< NoPerm FullPerm)) (qpRange35 o_9@@20))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@5) o_9@@20 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@20 f_7))))
 :qid |stdinbpl.3837:22|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@5) o_9@@20 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@4) o_9@@21 f_5@@17) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@5) o_9@@21 f_5@@17)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@4) o_9@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@5) o_9@@21 f_5@@17))
)) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@4) o_9@@22 f_5@@18) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@5) o_9@@22 f_5@@18)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@4) o_9@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@5) o_9@@22 f_5@@18))
))) (forall ((o_9@@23 T@Ref) (f_5@@19 T@Field_63506_4453) ) (!  (=> (not (= f_5@@19 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@23 f_5@@19) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@5) o_9@@23 f_5@@19)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@4) o_9@@23 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@5) o_9@@23 f_5@@19))
))) (forall ((o_9@@24 T@Ref) (f_5@@20 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@4) o_9@@24 f_5@@20) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@5) o_9@@24 f_5@@20)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@4) o_9@@24 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@5) o_9@@24 f_5@@20))
))) (forall ((o_9@@25 T@Ref) (f_5@@21 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@4) o_9@@25 f_5@@21) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@5) o_9@@25 f_5@@21)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@4) o_9@@25 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@5) o_9@@25 f_5@@21))
))) (forall ((o_9@@26 T@Ref) (f_5@@22 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@4) o_9@@26 f_5@@22) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@5) o_9@@26 f_5@@22)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@4) o_9@@26 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@5) o_9@@26 f_5@@22))
))) (forall ((o_9@@27 T@Ref) (f_5@@23 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@4) o_9@@27 f_5@@23) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@5) o_9@@27 f_5@@23)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@4) o_9@@27 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@5) o_9@@27 f_5@@23))
))) (forall ((o_9@@28 T@Ref) (f_5@@24 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@4) o_9@@28 f_5@@24) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@5) o_9@@28 f_5@@24)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@4) o_9@@28 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@5) o_9@@28 f_5@@24))
))) (forall ((o_9@@29 T@Ref) (f_5@@25 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@4) o_9@@29 f_5@@25) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@5) o_9@@29 f_5@@25)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@4) o_9@@29 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@5) o_9@@29 f_5@@25))
))) (forall ((o_9@@30 T@Ref) (f_5@@26 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@4) o_9@@30 f_5@@26) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@5) o_9@@30 f_5@@26)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@4) o_9@@30 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@5) o_9@@30 f_5@@26))
))) (forall ((o_9@@31 T@Ref) (f_5@@27 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@4) o_9@@31 f_5@@27) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@5) o_9@@31 f_5@@27)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@4) o_9@@31 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@5) o_9@@31 f_5@@27))
))) (forall ((o_9@@32 T@Ref) (f_5@@28 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@4) o_9@@32 f_5@@28) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@5) o_9@@32 f_5@@28)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@4) o_9@@32 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@5) o_9@@32 f_5@@28))
))) (forall ((o_9@@33 T@Ref) (f_5@@29 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@4) o_9@@33 f_5@@29) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@5) o_9@@33 f_5@@29)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@4) o_9@@33 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@5) o_9@@33 f_5@@29))
))) (forall ((o_9@@34 T@Ref) (f_5@@30 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@4) o_9@@34 f_5@@30) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@5) o_9@@34 f_5@@30)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@4) o_9@@34 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@5) o_9@@34 f_5@@30))
))) (forall ((o_9@@35 T@Ref) (f_5@@31 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@4) o_9@@35 f_5@@31) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@5) o_9@@35 f_5@@31)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@4) o_9@@35 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@5) o_9@@35 f_5@@31))
))) (forall ((o_9@@36 T@Ref) (f_5@@32 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@4) o_9@@36 f_5@@32) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@5) o_9@@36 f_5@@32)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@4) o_9@@36 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@5) o_9@@36 f_5@@32))
))) (forall ((o_9@@37 T@Ref) (f_5@@33 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@4) o_9@@37 f_5@@33) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@5) o_9@@37 f_5@@33)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@4) o_9@@37 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@5) o_9@@37 f_5@@33))
))) (forall ((o_9@@38 T@Ref) (f_5@@34 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@4) o_9@@38 f_5@@34) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@5) o_9@@38 f_5@@34)))
 :qid |stdinbpl.3841:29|
 :skolemid |340|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@4) o_9@@38 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@5) o_9@@38 f_5@@34))
))) (and (and (state Heap@6 QPMask@5) (state Heap@6 QPMask@5)) (and (state Heap@6 QPMask@5) (= (ControlFlow 0 23) (- 0 22))))) false))))))))))))
(let ((anon33_Else_correct  (=> (HasDirectPerm_38290_38291 Mask@1 null (P02 xs@@39 n@@51)) (=> (and (= Heap@6 Heap@4) (= (ControlFlow 0 27) 23)) anon22_correct))))
(let ((anon33_Then_correct  (=> (and (and (not (HasDirectPerm_38290_38291 Mask@1 null (P02 xs@@39 n@@51))) (= Heap@5 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@4) (store (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@4) null (P02 xs@@39 n@@51) newVersion@0) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@4) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 26) 23))) anon22_correct)))
(let ((anon20_correct  (=> (= Mask@1 (PolymorphicMapType_57327 (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| Mask@0) (store (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@0) null (P02 xs@@39 n@@51) (- (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@0) null (P02 xs@@39 n@@51)) FullPerm)) (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| Mask@0) (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| Mask@0))) (and (=> (= (ControlFlow 0 28) 26) anon33_Then_correct) (=> (= (ControlFlow 0 28) 27) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 31) 28)) anon20_correct)))
(let ((anon32_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= FullPerm (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@0) null (P02 xs@@39 n@@51)))) (=> (<= FullPerm (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| Mask@0) null (P02 xs@@39 n@@51))) (=> (= (ControlFlow 0 29) 28) anon20_correct))))))
(let ((anon18_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_49 T@Ref) (f_29 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49 f_29) (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@0) o_49 f_29))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@0) o_49 f_29))
)) (forall ((o_49@@0 T@Ref) (f_29@@0 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@0 f_29@@0) (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| newPMask@0) o_49@@0 f_29@@0))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| newPMask@0) o_49@@0 f_29@@0))
))) (forall ((o_49@@1 T@Ref) (f_29@@1 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@1 f_29@@1) (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| newPMask@0) o_49@@1 f_29@@1))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| newPMask@0) o_49@@1 f_29@@1))
))) (forall ((o_49@@2 T@Ref) (f_29@@2 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@2 f_29@@2) (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| newPMask@0) o_49@@2 f_29@@2))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| newPMask@0) o_49@@2 f_29@@2))
))) (forall ((o_49@@3 T@Ref) (f_29@@3 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@3 f_29@@3) (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| newPMask@0) o_49@@3 f_29@@3))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| newPMask@0) o_49@@3 f_29@@3))
))) (forall ((o_49@@4 T@Ref) (f_29@@4 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@4 f_29@@4) (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| newPMask@0) o_49@@4 f_29@@4))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| newPMask@0) o_49@@4 f_29@@4))
))) (forall ((o_49@@5 T@Ref) (f_29@@5 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@5 f_29@@5) (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| newPMask@0) o_49@@5 f_29@@5))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| newPMask@0) o_49@@5 f_29@@5))
))) (forall ((o_49@@6 T@Ref) (f_29@@6 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@6 f_29@@6) (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| newPMask@0) o_49@@6 f_29@@6))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| newPMask@0) o_49@@6 f_29@@6))
))) (forall ((o_49@@7 T@Ref) (f_29@@7 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@7 f_29@@7) (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| newPMask@0) o_49@@7 f_29@@7))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| newPMask@0) o_49@@7 f_29@@7))
))) (forall ((o_49@@8 T@Ref) (f_29@@8 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@8 f_29@@8) (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| newPMask@0) o_49@@8 f_29@@8))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| newPMask@0) o_49@@8 f_29@@8))
))) (forall ((o_49@@9 T@Ref) (f_29@@9 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@9 f_29@@9) (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| newPMask@0) o_49@@9 f_29@@9))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| newPMask@0) o_49@@9 f_29@@9))
))) (forall ((o_49@@10 T@Ref) (f_29@@10 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@10 f_29@@10) (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| newPMask@0) o_49@@10 f_29@@10))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| newPMask@0) o_49@@10 f_29@@10))
))) (forall ((o_49@@11 T@Ref) (f_29@@11 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@11 f_29@@11) (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| newPMask@0) o_49@@11 f_29@@11))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| newPMask@0) o_49@@11 f_29@@11))
))) (forall ((o_49@@12 T@Ref) (f_29@@12 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@12 f_29@@12) (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| newPMask@0) o_49@@12 f_29@@12))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| newPMask@0) o_49@@12 f_29@@12))
))) (forall ((o_49@@13 T@Ref) (f_29@@13 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@13 f_29@@13) (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| newPMask@0) o_49@@13 f_29@@13))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| newPMask@0) o_49@@13 f_29@@13))
))) (forall ((o_49@@14 T@Ref) (f_29@@14 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@14 f_29@@14) (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| newPMask@0) o_49@@14 f_29@@14))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| newPMask@0) o_49@@14 f_29@@14))
))) (forall ((o_49@@15 T@Ref) (f_29@@15 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@15 f_29@@15) (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| newPMask@0) o_49@@15 f_29@@15))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| newPMask@0) o_49@@15 f_29@@15))
))) (forall ((o_49@@16 T@Ref) (f_29@@16 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51))) o_49@@16 f_29@@16) (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| newPMask@0) o_49@@16 f_29@@16))
 :qid |stdinbpl.3733:27|
 :skolemid |324|
 :pattern ( (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| newPMask@0) o_49@@16 f_29@@16))
))) (and (forall ((j_10_2 Int) ) (!  (=> (and (<= 0 j_10_2) (< j_10_2 3)) (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@0) (|Seq#Index_37965| xs@@39 j_10_2) f_7))
 :qid |stdinbpl.3737:20|
 :skolemid |325|
)) (= Heap@3 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@2) (store (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@2) null (|P02#sm| xs@@39 n@@51) newPMask@0) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@2) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@2))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_70 T@Field_63506_4453) ) (!  (=> (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53 f_70) (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@1) o_53 f_70))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@1) o_53 f_70))
)) (forall ((o_53@@0 T@Ref) (f_70@@0 T@Field_63553_63558) ) (!  (=> (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@0 f_70@@0) (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| newPMask@1) o_53@@0 f_70@@0))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37947_83070#PolymorphicMapType_57855| newPMask@1) o_53@@0 f_70@@0))
))) (forall ((o_53@@1 T@Ref) (f_70@@1 T@Field_57366_53) ) (!  (=> (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@1 f_70@@1) (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| newPMask@1) o_53@@1 f_70@@1))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37945_53#PolymorphicMapType_57855| newPMask@1) o_53@@1 f_70@@1))
))) (forall ((o_53@@2 T@Ref) (f_70@@2 T@Field_57379_57380) ) (!  (=> (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@2 f_70@@2) (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| newPMask@1) o_53@@2 f_70@@2))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37945_57380#PolymorphicMapType_57855| newPMask@1) o_53@@2 f_70@@2))
))) (forall ((o_53@@3 T@Ref) (f_70@@3 T@Field_37945_38291) ) (!  (=> (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@3 f_70@@3) (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| newPMask@1) o_53@@3 f_70@@3))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37945_74102#PolymorphicMapType_57855| newPMask@1) o_53@@3 f_70@@3))
))) (forall ((o_53@@4 T@Ref) (f_70@@4 T@Field_37945_77194) ) (!  (=> (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@4 f_70@@4) (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| newPMask@1) o_53@@4 f_70@@4))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_37945_182325#PolymorphicMapType_57855| newPMask@1) o_53@@4 f_70@@4))
))) (forall ((o_53@@5 T@Ref) (f_70@@5 T@Field_38290_4453) ) (!  (=> (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@5 f_70@@5) (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| newPMask@1) o_53@@5 f_70@@5))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_4453#PolymorphicMapType_57855| newPMask@1) o_53@@5 f_70@@5))
))) (forall ((o_53@@6 T@Ref) (f_70@@6 T@Field_38290_82680) ) (!  (=> (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@6 f_70@@6) (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| newPMask@1) o_53@@6 f_70@@6))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_83070#PolymorphicMapType_57855| newPMask@1) o_53@@6 f_70@@6))
))) (forall ((o_53@@7 T@Ref) (f_70@@7 T@Field_38290_53) ) (!  (=> (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@7 f_70@@7) (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| newPMask@1) o_53@@7 f_70@@7))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_53#PolymorphicMapType_57855| newPMask@1) o_53@@7 f_70@@7))
))) (forall ((o_53@@8 T@Ref) (f_70@@8 T@Field_38290_57380) ) (!  (=> (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@8 f_70@@8) (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| newPMask@1) o_53@@8 f_70@@8))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_57380#PolymorphicMapType_57855| newPMask@1) o_53@@8 f_70@@8))
))) (forall ((o_53@@9 T@Ref) (f_70@@9 T@Field_74101_74102) ) (!  (=> (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@9 f_70@@9) (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| newPMask@1) o_53@@9 f_70@@9))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_74102#PolymorphicMapType_57855| newPMask@1) o_53@@9 f_70@@9))
))) (forall ((o_53@@10 T@Ref) (f_70@@10 T@Field_77189_77194) ) (!  (=> (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@10 f_70@@10) (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| newPMask@1) o_53@@10 f_70@@10))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_74101_183577#PolymorphicMapType_57855| newPMask@1) o_53@@10 f_70@@10))
))) (forall ((o_53@@11 T@Ref) (f_70@@11 T@Field_38348_4453) ) (!  (=> (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@11 f_70@@11) (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| newPMask@1) o_53@@11 f_70@@11))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_4453#PolymorphicMapType_57855| newPMask@1) o_53@@11 f_70@@11))
))) (forall ((o_53@@12 T@Ref) (f_70@@12 T@Field_38348_82680) ) (!  (=> (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@12 f_70@@12) (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| newPMask@1) o_53@@12 f_70@@12))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_83070#PolymorphicMapType_57855| newPMask@1) o_53@@12 f_70@@12))
))) (forall ((o_53@@13 T@Ref) (f_70@@13 T@Field_38348_53) ) (!  (=> (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@13 f_70@@13) (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| newPMask@1) o_53@@13 f_70@@13))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_53#PolymorphicMapType_57855| newPMask@1) o_53@@13 f_70@@13))
))) (forall ((o_53@@14 T@Ref) (f_70@@14 T@Field_38348_57380) ) (!  (=> (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@14 f_70@@14) (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| newPMask@1) o_53@@14 f_70@@14))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_57380#PolymorphicMapType_57855| newPMask@1) o_53@@14 f_70@@14))
))) (forall ((o_53@@15 T@Ref) (f_70@@15 T@Field_78383_78384) ) (!  (=> (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@15 f_70@@15) (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| newPMask@1) o_53@@15 f_70@@15))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_74102#PolymorphicMapType_57855| newPMask@1) o_53@@15 f_70@@15))
))) (forall ((o_53@@16 T@Ref) (f_70@@16 T@Field_82896_82901) ) (!  (=> (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| (select (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51))) o_53@@16 f_70@@16) (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| newPMask@1) o_53@@16 f_70@@16))
 :qid |stdinbpl.3744:27|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_57855_78383_184829#PolymorphicMapType_57855| newPMask@1) o_53@@16 f_70@@16))
))) (and (forall ((j_11_1 Int) ) (!  (=> (and (<= 3 j_11_1) (< j_11_1 n@@51)) (select (|PolymorphicMapType_57855_37945_4453#PolymorphicMapType_57855| newPMask@1) (|Seq#Index_37965| xs@@39 j_11_1) f_7))
 :qid |stdinbpl.3748:20|
 :skolemid |327|
)) (= Heap@4 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@3) (store (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@3) null (|P02#sm| xs@@39 n@@51) newPMask@1) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@3) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@3))))) (and (and (state Heap@4 Mask@0) (state Heap@4 Mask@0)) (and (|P02#trigger_38290| Heap@4 (P02 xs@@39 n@@51)) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@4) null (P02 xs@@39 n@@51)) (CombineFrames (FrameFragment_4717 (|P02#condqp5| Heap@4 xs@@39 n@@51)) (FrameFragment_4717 (|P02#condqp6| Heap@4 xs@@39 n@@51))))))) (and (=> (= (ControlFlow 0 32) 29) anon32_Then_correct) (=> (= (ControlFlow 0 32) 31) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (HasDirectPerm_38290_38291 Mask@0 null (P02 xs@@39 n@@51)) (=> (and (= Heap@2 Heap@@83) (= (ControlFlow 0 34) 32)) anon18_correct))))
(let ((anon31_Then_correct  (=> (not (HasDirectPerm_38290_38291 Mask@0 null (P02 xs@@39 n@@51))) (=> (and (and (= Heap@0 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@83) (store (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@@83) null (|P02#sm| xs@@39 n@@51) ZeroPMask) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@@83) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@@83))) (= Heap@1 (PolymorphicMapType_57306 (|PolymorphicMapType_57306_37635_53#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_37638_37639#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@0) (store (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@0) null (P02 xs@@39 n@@51) freshVersion@0) (|PolymorphicMapType_57306_38295_77232#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_37947_78293#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38348_38349#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38352_82990#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_37945_38291#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_37945_177439#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38290_4453#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38290_82680#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38290_53#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38290_57380#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38348_4453#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38348_82680#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38348_53#PolymorphicMapType_57306| Heap@0) (|PolymorphicMapType_57306_38348_57380#PolymorphicMapType_57306| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 33) 32))) anon18_correct))))
(let ((anon29_Else_correct  (=> (forall ((k_3_1 Int) (j_7_1_1 Int) ) (!  (=> (and (>= k_3_1 0) (and (< k_3_1 (|Seq#Length_37965| xs@@39)) (and (>= j_7_1_1 0) (and (< j_7_1_1 (|Seq#Length_37965| xs@@39)) (not (= k_3_1 j_7_1_1)))))) (not (= (|Seq#Index_37965| xs@@39 k_3_1) (|Seq#Index_37965| xs@@39 j_7_1_1))))
 :qid |stdinbpl.3634:20|
 :skolemid |311|
 :pattern ( (|Seq#Index_37965| xs@@39 k_3_1) (|Seq#Index_37965| xs@@39 j_7_1_1))
)) (and (=> (= (ControlFlow 0 35) (- 0 39)) (forall ((j_8_2 Int) (j_8_3 Int) ) (!  (=> (and (and (and (and (not (= j_8_2 j_8_3)) (and (<= 0 j_8_2) (< j_8_2 3))) (and (<= 0 j_8_3) (< j_8_3 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_8_2) (|Seq#Index_37965| xs@@39 j_8_3))))
 :qid |stdinbpl.3645:17|
 :skolemid |312|
 :pattern ( (neverTriggered32 j_8_2) (neverTriggered32 j_8_3))
))) (=> (forall ((j_8_2@@0 Int) (j_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_8_2@@0 j_8_3@@0)) (and (<= 0 j_8_2@@0) (< j_8_2@@0 3))) (and (<= 0 j_8_3@@0) (< j_8_3@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_8_2@@0) (|Seq#Index_37965| xs@@39 j_8_3@@0))))
 :qid |stdinbpl.3645:17|
 :skolemid |312|
 :pattern ( (neverTriggered32 j_8_2@@0) (neverTriggered32 j_8_3@@0))
)) (and (=> (= (ControlFlow 0 35) (- 0 38)) (forall ((j_8_2@@1 Int) ) (!  (=> (and (<= 0 j_8_2@@1) (< j_8_2@@1 3)) (>= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) (|Seq#Index_37965| xs@@39 j_8_2@@1) f_7) FullPerm))
 :qid |stdinbpl.3652:17|
 :skolemid |313|
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@1))
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@1))
))) (=> (forall ((j_8_2@@2 Int) ) (!  (=> (and (<= 0 j_8_2@@2) (< j_8_2@@2 3)) (>= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) (|Seq#Index_37965| xs@@39 j_8_2@@2) f_7) FullPerm))
 :qid |stdinbpl.3652:17|
 :skolemid |313|
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@2))
)) (=> (forall ((j_8_2@@3 Int) ) (!  (=> (and (and (<= 0 j_8_2@@3) (< j_8_2@@3 3)) (< NoPerm FullPerm)) (and (qpRange32 (|Seq#Index_37965| xs@@39 j_8_2@@3)) (= (invRecv32 (|Seq#Index_37965| xs@@39 j_8_2@@3)) j_8_2@@3)))
 :qid |stdinbpl.3658:22|
 :skolemid |314|
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@3))
 :pattern ( (|Seq#Index_37965| xs@@39 j_8_2@@3))
)) (=> (and (forall ((o_9@@39 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv32 o_9@@39)) (< (invRecv32 o_9@@39) 3)) (and (< NoPerm FullPerm) (qpRange32 o_9@@39))) (= (|Seq#Index_37965| xs@@39 (invRecv32 o_9@@39)) o_9@@39))
 :qid |stdinbpl.3662:22|
 :skolemid |315|
 :pattern ( (invRecv32 o_9@@39))
)) (forall ((o_9@@40 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv32 o_9@@40)) (< (invRecv32 o_9@@40) 3)) (and (< NoPerm FullPerm) (qpRange32 o_9@@40))) (and (= (|Seq#Index_37965| xs@@39 (invRecv32 o_9@@40)) o_9@@40) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@40 f_7) (- (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@40 f_7) FullPerm)))) (=> (not (and (and (<= 0 (invRecv32 o_9@@40)) (< (invRecv32 o_9@@40) 3)) (and (< NoPerm FullPerm) (qpRange32 o_9@@40)))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@40 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@40 f_7))))
 :qid |stdinbpl.3668:22|
 :skolemid |316|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@40 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@41 T@Ref) (f_5@@35 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@1) o_9@@41 f_5@@35) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@2) o_9@@41 f_5@@35)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@2) o_9@@41 f_5@@35))
)) (forall ((o_9@@42 T@Ref) (f_5@@36 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@1) o_9@@42 f_5@@36) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@2) o_9@@42 f_5@@36)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@2) o_9@@42 f_5@@36))
))) (forall ((o_9@@43 T@Ref) (f_5@@37 T@Field_63506_4453) ) (!  (=> (not (= f_5@@37 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@43 f_5@@37) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@43 f_5@@37)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@43 f_5@@37))
))) (forall ((o_9@@44 T@Ref) (f_5@@38 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@1) o_9@@44 f_5@@38) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@2) o_9@@44 f_5@@38)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@2) o_9@@44 f_5@@38))
))) (forall ((o_9@@45 T@Ref) (f_5@@39 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@1) o_9@@45 f_5@@39) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@2) o_9@@45 f_5@@39)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@2) o_9@@45 f_5@@39))
))) (forall ((o_9@@46 T@Ref) (f_5@@40 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@1) o_9@@46 f_5@@40) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@2) o_9@@46 f_5@@40)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@2) o_9@@46 f_5@@40))
))) (forall ((o_9@@47 T@Ref) (f_5@@41 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@1) o_9@@47 f_5@@41) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@2) o_9@@47 f_5@@41)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@2) o_9@@47 f_5@@41))
))) (forall ((o_9@@48 T@Ref) (f_5@@42 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@1) o_9@@48 f_5@@42) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@2) o_9@@48 f_5@@42)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@2) o_9@@48 f_5@@42))
))) (forall ((o_9@@49 T@Ref) (f_5@@43 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@1) o_9@@49 f_5@@43) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@2) o_9@@49 f_5@@43)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@2) o_9@@49 f_5@@43))
))) (forall ((o_9@@50 T@Ref) (f_5@@44 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@1) o_9@@50 f_5@@44) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@2) o_9@@50 f_5@@44)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@2) o_9@@50 f_5@@44))
))) (forall ((o_9@@51 T@Ref) (f_5@@45 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@1) o_9@@51 f_5@@45) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@2) o_9@@51 f_5@@45)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@2) o_9@@51 f_5@@45))
))) (forall ((o_9@@52 T@Ref) (f_5@@46 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@1) o_9@@52 f_5@@46) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@2) o_9@@52 f_5@@46)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@2) o_9@@52 f_5@@46))
))) (forall ((o_9@@53 T@Ref) (f_5@@47 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@1) o_9@@53 f_5@@47) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@2) o_9@@53 f_5@@47)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@2) o_9@@53 f_5@@47))
))) (forall ((o_9@@54 T@Ref) (f_5@@48 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@1) o_9@@54 f_5@@48) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@2) o_9@@54 f_5@@48)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@2) o_9@@54 f_5@@48))
))) (forall ((o_9@@55 T@Ref) (f_5@@49 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@1) o_9@@55 f_5@@49) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@2) o_9@@55 f_5@@49)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@2) o_9@@55 f_5@@49))
))) (forall ((o_9@@56 T@Ref) (f_5@@50 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@1) o_9@@56 f_5@@50) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@2) o_9@@56 f_5@@50)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@2) o_9@@56 f_5@@50))
))) (forall ((o_9@@57 T@Ref) (f_5@@51 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@1) o_9@@57 f_5@@51) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@2) o_9@@57 f_5@@51)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@2) o_9@@57 f_5@@51))
))) (forall ((o_9@@58 T@Ref) (f_5@@52 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@1) o_9@@58 f_5@@52) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@2) o_9@@58 f_5@@52)))
 :qid |stdinbpl.3674:29|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@2) o_9@@58 f_5@@52))
))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (forall ((j_9_1 Int) (j_9_2 Int) ) (!  (=> (and (and (and (and (not (= j_9_1 j_9_2)) (and (<= 3 j_9_1) (< j_9_1 n@@51))) (and (<= 3 j_9_2) (< j_9_2 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_9_1) (|Seq#Index_37965| xs@@39 j_9_2))))
 :qid |stdinbpl.3686:17|
 :skolemid |318|
 :pattern ( (neverTriggered33 j_9_1) (neverTriggered33 j_9_2))
))) (=> (forall ((j_9_1@@0 Int) (j_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_9_1@@0 j_9_2@@0)) (and (<= 3 j_9_1@@0) (< j_9_1@@0 n@@51))) (and (<= 3 j_9_2@@0) (< j_9_2@@0 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_9_1@@0) (|Seq#Index_37965| xs@@39 j_9_2@@0))))
 :qid |stdinbpl.3686:17|
 :skolemid |318|
 :pattern ( (neverTriggered33 j_9_1@@0) (neverTriggered33 j_9_2@@0))
)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (forall ((j_9_1@@1 Int) ) (!  (=> (and (<= 3 j_9_1@@1) (< j_9_1@@1 n@@51)) (>= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) (|Seq#Index_37965| xs@@39 j_9_1@@1) f_7) FullPerm))
 :qid |stdinbpl.3693:17|
 :skolemid |319|
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@1))
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@1))
))) (=> (forall ((j_9_1@@2 Int) ) (!  (=> (and (<= 3 j_9_1@@2) (< j_9_1@@2 n@@51)) (>= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) (|Seq#Index_37965| xs@@39 j_9_1@@2) f_7) FullPerm))
 :qid |stdinbpl.3693:17|
 :skolemid |319|
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@2))
)) (=> (forall ((j_9_1@@3 Int) ) (!  (=> (and (and (<= 3 j_9_1@@3) (< j_9_1@@3 n@@51)) (< NoPerm FullPerm)) (and (qpRange33 (|Seq#Index_37965| xs@@39 j_9_1@@3)) (= (invRecv33 (|Seq#Index_37965| xs@@39 j_9_1@@3)) j_9_1@@3)))
 :qid |stdinbpl.3699:22|
 :skolemid |320|
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@3))
 :pattern ( (|Seq#Index_37965| xs@@39 j_9_1@@3))
)) (=> (and (forall ((o_9@@59 T@Ref) ) (!  (=> (and (and (<= 3 (invRecv33 o_9@@59)) (< (invRecv33 o_9@@59) n@@51)) (and (< NoPerm FullPerm) (qpRange33 o_9@@59))) (= (|Seq#Index_37965| xs@@39 (invRecv33 o_9@@59)) o_9@@59))
 :qid |stdinbpl.3703:22|
 :skolemid |321|
 :pattern ( (invRecv33 o_9@@59))
)) (forall ((o_9@@60 T@Ref) ) (!  (and (=> (and (and (<= 3 (invRecv33 o_9@@60)) (< (invRecv33 o_9@@60) n@@51)) (and (< NoPerm FullPerm) (qpRange33 o_9@@60))) (and (= (|Seq#Index_37965| xs@@39 (invRecv33 o_9@@60)) o_9@@60) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) o_9@@60 f_7) (- (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@60 f_7) FullPerm)))) (=> (not (and (and (<= 3 (invRecv33 o_9@@60)) (< (invRecv33 o_9@@60) n@@51)) (and (< NoPerm FullPerm) (qpRange33 o_9@@60)))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) o_9@@60 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@60 f_7))))
 :qid |stdinbpl.3709:22|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) o_9@@60 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@61 T@Ref) (f_5@@53 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@2) o_9@@61 f_5@@53) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@3) o_9@@61 f_5@@53)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@3) o_9@@61 f_5@@53))
)) (forall ((o_9@@62 T@Ref) (f_5@@54 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@2) o_9@@62 f_5@@54) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@3) o_9@@62 f_5@@54)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@3) o_9@@62 f_5@@54))
))) (forall ((o_9@@63 T@Ref) (f_5@@55 T@Field_63506_4453) ) (!  (=> (not (= f_5@@55 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@2) o_9@@63 f_5@@55) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) o_9@@63 f_5@@55)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) o_9@@63 f_5@@55))
))) (forall ((o_9@@64 T@Ref) (f_5@@56 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@2) o_9@@64 f_5@@56) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@3) o_9@@64 f_5@@56)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@3) o_9@@64 f_5@@56))
))) (forall ((o_9@@65 T@Ref) (f_5@@57 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@2) o_9@@65 f_5@@57) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@3) o_9@@65 f_5@@57)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@3) o_9@@65 f_5@@57))
))) (forall ((o_9@@66 T@Ref) (f_5@@58 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@2) o_9@@66 f_5@@58) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@3) o_9@@66 f_5@@58)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@3) o_9@@66 f_5@@58))
))) (forall ((o_9@@67 T@Ref) (f_5@@59 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@2) o_9@@67 f_5@@59) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@3) o_9@@67 f_5@@59)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@3) o_9@@67 f_5@@59))
))) (forall ((o_9@@68 T@Ref) (f_5@@60 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@2) o_9@@68 f_5@@60) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@3) o_9@@68 f_5@@60)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@3) o_9@@68 f_5@@60))
))) (forall ((o_9@@69 T@Ref) (f_5@@61 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@2) o_9@@69 f_5@@61) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@3) o_9@@69 f_5@@61)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@3) o_9@@69 f_5@@61))
))) (forall ((o_9@@70 T@Ref) (f_5@@62 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@2) o_9@@70 f_5@@62) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@3) o_9@@70 f_5@@62)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@3) o_9@@70 f_5@@62))
))) (forall ((o_9@@71 T@Ref) (f_5@@63 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@2) o_9@@71 f_5@@63) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@3) o_9@@71 f_5@@63)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@3) o_9@@71 f_5@@63))
))) (forall ((o_9@@72 T@Ref) (f_5@@64 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@2) o_9@@72 f_5@@64) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@3) o_9@@72 f_5@@64)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@3) o_9@@72 f_5@@64))
))) (forall ((o_9@@73 T@Ref) (f_5@@65 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@2) o_9@@73 f_5@@65) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@3) o_9@@73 f_5@@65)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@3) o_9@@73 f_5@@65))
))) (forall ((o_9@@74 T@Ref) (f_5@@66 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@2) o_9@@74 f_5@@66) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@3) o_9@@74 f_5@@66)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@3) o_9@@74 f_5@@66))
))) (forall ((o_9@@75 T@Ref) (f_5@@67 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@2) o_9@@75 f_5@@67) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@3) o_9@@75 f_5@@67)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@3) o_9@@75 f_5@@67))
))) (forall ((o_9@@76 T@Ref) (f_5@@68 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@2) o_9@@76 f_5@@68) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@3) o_9@@76 f_5@@68)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@3) o_9@@76 f_5@@68))
))) (forall ((o_9@@77 T@Ref) (f_5@@69 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@2) o_9@@77 f_5@@69) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@3) o_9@@77 f_5@@69)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@3) o_9@@77 f_5@@69))
))) (forall ((o_9@@78 T@Ref) (f_5@@70 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@2) o_9@@78 f_5@@70) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@3) o_9@@78 f_5@@70)))
 :qid |stdinbpl.3715:29|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@3) o_9@@78 f_5@@70))
))) (= Mask@0 (PolymorphicMapType_57327 (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@3) (store (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@3) null (P02 xs@@39 n@@51) (+ (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@3) null (P02 xs@@39 n@@51)) FullPerm)) (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@3) (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@3)))) (and (and (state Heap@@83 Mask@0) (state Heap@@83 Mask@0)) (and (|P02#trigger_38290| Heap@@83 (P02 xs@@39 n@@51)) (= (select (|PolymorphicMapType_57306_38290_38291#PolymorphicMapType_57306| Heap@@83) null (P02 xs@@39 n@@51)) (CombineFrames (FrameFragment_4717 (|P02#condqp5| Heap@@83 xs@@39 n@@51)) (FrameFragment_4717 (|P02#condqp6| Heap@@83 xs@@39 n@@51))))))) (and (=> (= (ControlFlow 0 35) 33) anon31_Then_correct) (=> (= (ControlFlow 0 35) 34) anon31_Else_correct)))))))))))))))))))
(let ((anon15_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (>= k_2_2 0) (and (< k_2_2 (|Seq#Length_37965| xs@@39)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_37965| xs@@39)) (not (= k_2_2 j_6_2))))))) (= (ControlFlow 0 21) 18)) anon15_correct)))
(let ((anon30_Then_correct  (=> (and (>= k_2_2 0) (and (< k_2_2 (|Seq#Length_37965| xs@@39)) (and (>= j_6_2 0) (and (< j_6_2 (|Seq#Length_37965| xs@@39)) (not (= k_2_2 j_6_2)))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= (|Seq#Index_37965| xs@@39 k_2_2) (|Seq#Index_37965| xs@@39 j_6_2)))) (=> (not (= (|Seq#Index_37965| xs@@39 k_2_2) (|Seq#Index_37965| xs@@39 j_6_2))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 45)) (forall ((j_5 Int) (j_5_1 Int) ) (!  (=> (and (and (and (and (not (= j_5 j_5_1)) (and (<= 3 j_5) (< j_5 n@@51))) (and (<= 3 j_5_1) (< j_5_1 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_5) (|Seq#Index_37965| xs@@39 j_5_1))))
 :qid |stdinbpl.3575:15|
 :skolemid |305|
))) (=> (forall ((j_5@@0 Int) (j_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_5@@0 j_5_1@@0)) (and (<= 3 j_5@@0) (< j_5@@0 n@@51))) (and (<= 3 j_5_1@@0) (< j_5_1@@0 n@@51))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_5@@0) (|Seq#Index_37965| xs@@39 j_5_1@@0))))
 :qid |stdinbpl.3575:15|
 :skolemid |305|
)) (=> (and (and (forall ((j_5@@1 Int) ) (!  (=> (and (and (<= 3 j_5@@1) (< j_5@@1 n@@51)) (< NoPerm FullPerm)) (and (qpRange31 (|Seq#Index_37965| xs@@39 j_5@@1)) (= (invRecv31 (|Seq#Index_37965| xs@@39 j_5@@1)) j_5@@1)))
 :qid |stdinbpl.3581:22|
 :skolemid |306|
 :pattern ( (|Seq#Index_37965| xs@@39 j_5@@1))
 :pattern ( (|Seq#Index_37965| xs@@39 j_5@@1))
)) (forall ((o_9@@79 T@Ref) ) (!  (=> (and (and (and (<= 3 (invRecv31 o_9@@79)) (< (invRecv31 o_9@@79) n@@51)) (< NoPerm FullPerm)) (qpRange31 o_9@@79)) (= (|Seq#Index_37965| xs@@39 (invRecv31 o_9@@79)) o_9@@79))
 :qid |stdinbpl.3585:22|
 :skolemid |307|
 :pattern ( (invRecv31 o_9@@79))
))) (and (forall ((j_5@@2 Int) ) (!  (=> (and (<= 3 j_5@@2) (< j_5@@2 n@@51)) (not (= (|Seq#Index_37965| xs@@39 j_5@@2) null)))
 :qid |stdinbpl.3591:22|
 :skolemid |308|
 :pattern ( (|Seq#Index_37965| xs@@39 j_5@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_5@@2))
)) (forall ((o_9@@80 T@Ref) ) (!  (and (=> (and (and (and (<= 3 (invRecv31 o_9@@80)) (< (invRecv31 o_9@@80) n@@51)) (< NoPerm FullPerm)) (qpRange31 o_9@@80)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_37965| xs@@39 (invRecv31 o_9@@80)) o_9@@80)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@80 f_7) (+ (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@80 f_7) FullPerm)))) (=> (not (and (and (and (<= 3 (invRecv31 o_9@@80)) (< (invRecv31 o_9@@80) n@@51)) (< NoPerm FullPerm)) (qpRange31 o_9@@80))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@80 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@80 f_7))))
 :qid |stdinbpl.3597:22|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@80 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@81 T@Ref) (f_5@@71 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@0) o_9@@81 f_5@@71) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@1) o_9@@81 f_5@@71)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@0) o_9@@81 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@1) o_9@@81 f_5@@71))
)) (forall ((o_9@@82 T@Ref) (f_5@@72 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@0) o_9@@82 f_5@@72) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@1) o_9@@82 f_5@@72)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@0) o_9@@82 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@1) o_9@@82 f_5@@72))
))) (forall ((o_9@@83 T@Ref) (f_5@@73 T@Field_63506_4453) ) (!  (=> (not (= f_5@@73 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@83 f_5@@73) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@83 f_5@@73)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@83 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@1) o_9@@83 f_5@@73))
))) (forall ((o_9@@84 T@Ref) (f_5@@74 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@0) o_9@@84 f_5@@74) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@1) o_9@@84 f_5@@74)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@0) o_9@@84 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@1) o_9@@84 f_5@@74))
))) (forall ((o_9@@85 T@Ref) (f_5@@75 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@0) o_9@@85 f_5@@75) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@1) o_9@@85 f_5@@75)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@0) o_9@@85 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@1) o_9@@85 f_5@@75))
))) (forall ((o_9@@86 T@Ref) (f_5@@76 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@0) o_9@@86 f_5@@76) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@1) o_9@@86 f_5@@76)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@0) o_9@@86 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@1) o_9@@86 f_5@@76))
))) (forall ((o_9@@87 T@Ref) (f_5@@77 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@0) o_9@@87 f_5@@77) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@1) o_9@@87 f_5@@77)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@0) o_9@@87 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@1) o_9@@87 f_5@@77))
))) (forall ((o_9@@88 T@Ref) (f_5@@78 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@0) o_9@@88 f_5@@78) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@1) o_9@@88 f_5@@78)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@0) o_9@@88 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@1) o_9@@88 f_5@@78))
))) (forall ((o_9@@89 T@Ref) (f_5@@79 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@0) o_9@@89 f_5@@79) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@1) o_9@@89 f_5@@79)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@0) o_9@@89 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@1) o_9@@89 f_5@@79))
))) (forall ((o_9@@90 T@Ref) (f_5@@80 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@0) o_9@@90 f_5@@80) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@1) o_9@@90 f_5@@80)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@0) o_9@@90 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@1) o_9@@90 f_5@@80))
))) (forall ((o_9@@91 T@Ref) (f_5@@81 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@0) o_9@@91 f_5@@81) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@1) o_9@@91 f_5@@81)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@0) o_9@@91 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@1) o_9@@91 f_5@@81))
))) (forall ((o_9@@92 T@Ref) (f_5@@82 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@0) o_9@@92 f_5@@82) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@1) o_9@@92 f_5@@82)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@0) o_9@@92 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@1) o_9@@92 f_5@@82))
))) (forall ((o_9@@93 T@Ref) (f_5@@83 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@0) o_9@@93 f_5@@83) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@1) o_9@@93 f_5@@83)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@0) o_9@@93 f_5@@83))
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@1) o_9@@93 f_5@@83))
))) (forall ((o_9@@94 T@Ref) (f_5@@84 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@0) o_9@@94 f_5@@84) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@1) o_9@@94 f_5@@84)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@0) o_9@@94 f_5@@84))
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@1) o_9@@94 f_5@@84))
))) (forall ((o_9@@95 T@Ref) (f_5@@85 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@0) o_9@@95 f_5@@85) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@1) o_9@@95 f_5@@85)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@0) o_9@@95 f_5@@85))
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@1) o_9@@95 f_5@@85))
))) (forall ((o_9@@96 T@Ref) (f_5@@86 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@0) o_9@@96 f_5@@86) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@1) o_9@@96 f_5@@86)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@0) o_9@@96 f_5@@86))
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@1) o_9@@96 f_5@@86))
))) (forall ((o_9@@97 T@Ref) (f_5@@87 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@0) o_9@@97 f_5@@87) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@1) o_9@@97 f_5@@87)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@0) o_9@@97 f_5@@87))
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@1) o_9@@97 f_5@@87))
))) (forall ((o_9@@98 T@Ref) (f_5@@88 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@0) o_9@@98 f_5@@88) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@1) o_9@@98 f_5@@88)))
 :qid |stdinbpl.3601:29|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@0) o_9@@98 f_5@@88))
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@1) o_9@@98 f_5@@88))
))) (state Heap@@83 QPMask@1)) (and (state Heap@@83 QPMask@1) (state Heap@@83 QPMask@1))) (and (=> (= (ControlFlow 0 40) (- 0 44)) (< 2 (|Seq#Length_37965| xs@@39))) (=> (< 2 (|Seq#Length_37965| xs@@39)) (and (=> (= (ControlFlow 0 40) (- 0 43)) (HasDirectPerm_37945_4453 QPMask@1 (|Seq#Index_37965| xs@@39 2) f_7)) (=> (HasDirectPerm_37945_4453 QPMask@1 (|Seq#Index_37965| xs@@39 2) f_7) (=> (and (= v1@0 (select (|PolymorphicMapType_57306_37945_4453#PolymorphicMapType_57306| Heap@@83) (|Seq#Index_37965| xs@@39 2) f_7)) (state Heap@@83 QPMask@1)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (= (|Seq#Length_37965| xs@@39) n@@51)) (=> (= (|Seq#Length_37965| xs@@39) n@@51) (and (=> (= (ControlFlow 0 40) (- 0 41)) (<= 3 n@@51)) (=> (<= 3 n@@51) (and (and (=> (= (ControlFlow 0 40) 35) anon29_Else_correct) (=> (= (ControlFlow 0 40) 19) anon30_Then_correct)) (=> (= (ControlFlow 0 40) 21) anon30_Else_correct)))))))))))))))))
(let ((anon11_correct true))
(let ((anon28_Else_correct  (=> (and (not (and (<= 3 j_46) (< j_46 n@@51))) (= (ControlFlow 0 17) 13)) anon11_correct)))
(let ((anon28_Then_correct  (=> (and (<= 3 j_46) (< j_46 n@@51)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= j_46 0)) (=> (>= j_46 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< j_46 (|Seq#Length_37965| xs@@39))) (=> (< j_46 (|Seq#Length_37965| xs@@39)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((j_3@@0 Int) (j_3_1 Int) ) (!  (=> (and (and (and (and (not (= j_3@@0 j_3_1)) (and (<= 0 j_3@@0) (< j_3@@0 3))) (and (<= 0 j_3_1) (< j_3_1 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_3@@0) (|Seq#Index_37965| xs@@39 j_3_1))))
 :qid |stdinbpl.3526:15|
 :skolemid |299|
))) (=> (forall ((j_3@@1 Int) (j_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3@@1 j_3_1@@0)) (and (<= 0 j_3@@1) (< j_3@@1 3))) (and (<= 0 j_3_1@@0) (< j_3_1@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_37965| xs@@39 j_3@@1) (|Seq#Index_37965| xs@@39 j_3_1@@0))))
 :qid |stdinbpl.3526:15|
 :skolemid |299|
)) (=> (and (and (forall ((j_3@@2 Int) ) (!  (=> (and (and (<= 0 j_3@@2) (< j_3@@2 3)) (< NoPerm FullPerm)) (and (qpRange30 (|Seq#Index_37965| xs@@39 j_3@@2)) (= (invRecv30 (|Seq#Index_37965| xs@@39 j_3@@2)) j_3@@2)))
 :qid |stdinbpl.3532:22|
 :skolemid |300|
 :pattern ( (|Seq#Index_37965| xs@@39 j_3@@2))
 :pattern ( (|Seq#Index_37965| xs@@39 j_3@@2))
)) (forall ((o_9@@99 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv30 o_9@@99)) (< (invRecv30 o_9@@99) 3)) (< NoPerm FullPerm)) (qpRange30 o_9@@99)) (= (|Seq#Index_37965| xs@@39 (invRecv30 o_9@@99)) o_9@@99))
 :qid |stdinbpl.3536:22|
 :skolemid |301|
 :pattern ( (invRecv30 o_9@@99))
))) (and (forall ((j_3@@3 Int) ) (!  (=> (and (<= 0 j_3@@3) (< j_3@@3 3)) (not (= (|Seq#Index_37965| xs@@39 j_3@@3) null)))
 :qid |stdinbpl.3542:22|
 :skolemid |302|
 :pattern ( (|Seq#Index_37965| xs@@39 j_3@@3))
 :pattern ( (|Seq#Index_37965| xs@@39 j_3@@3))
)) (forall ((o_9@@100 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv30 o_9@@100)) (< (invRecv30 o_9@@100) 3)) (< NoPerm FullPerm)) (qpRange30 o_9@@100)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_37965| xs@@39 (invRecv30 o_9@@100)) o_9@@100)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@100 f_7) (+ (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_9@@100 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv30 o_9@@100)) (< (invRecv30 o_9@@100) 3)) (< NoPerm FullPerm)) (qpRange30 o_9@@100))) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@100 f_7) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_9@@100 f_7))))
 :qid |stdinbpl.3548:22|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@100 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@101 T@Ref) (f_5@@89 T@Field_57366_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ZeroMask) o_9@@101 f_5@@89) (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@0) o_9@@101 f_5@@89)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| ZeroMask) o_9@@101 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_57327_37945_53#PolymorphicMapType_57327| QPMask@0) o_9@@101 f_5@@89))
)) (forall ((o_9@@102 T@Ref) (f_5@@90 T@Field_57379_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ZeroMask) o_9@@102 f_5@@90) (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@0) o_9@@102 f_5@@90)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| ZeroMask) o_9@@102 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_57327_37945_57380#PolymorphicMapType_57327| QPMask@0) o_9@@102 f_5@@90))
))) (forall ((o_9@@103 T@Ref) (f_5@@91 T@Field_63506_4453) ) (!  (=> (not (= f_5@@91 f_7)) (= (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_9@@103 f_5@@91) (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@103 f_5@@91)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| ZeroMask) o_9@@103 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_57327_37945_4453#PolymorphicMapType_57327| QPMask@0) o_9@@103 f_5@@91))
))) (forall ((o_9@@104 T@Ref) (f_5@@92 T@Field_63553_63558) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ZeroMask) o_9@@104 f_5@@92) (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@0) o_9@@104 f_5@@92)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| ZeroMask) o_9@@104 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_57327_37947_79607#PolymorphicMapType_57327| QPMask@0) o_9@@104 f_5@@92))
))) (forall ((o_9@@105 T@Ref) (f_5@@93 T@Field_37945_38291) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ZeroMask) o_9@@105 f_5@@93) (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@0) o_9@@105 f_5@@93)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| ZeroMask) o_9@@105 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_57327_37945_38291#PolymorphicMapType_57327| QPMask@0) o_9@@105 f_5@@93))
))) (forall ((o_9@@106 T@Ref) (f_5@@94 T@Field_37945_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ZeroMask) o_9@@106 f_5@@94) (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@0) o_9@@106 f_5@@94)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| ZeroMask) o_9@@106 f_5@@94))
 :pattern ( (select (|PolymorphicMapType_57327_37945_193641#PolymorphicMapType_57327| QPMask@0) o_9@@106 f_5@@94))
))) (forall ((o_9@@107 T@Ref) (f_5@@95 T@Field_38290_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ZeroMask) o_9@@107 f_5@@95) (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@0) o_9@@107 f_5@@95)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| ZeroMask) o_9@@107 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_57327_38290_53#PolymorphicMapType_57327| QPMask@0) o_9@@107 f_5@@95))
))) (forall ((o_9@@108 T@Ref) (f_5@@96 T@Field_38290_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ZeroMask) o_9@@108 f_5@@96) (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@0) o_9@@108 f_5@@96)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| ZeroMask) o_9@@108 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_57327_38290_57380#PolymorphicMapType_57327| QPMask@0) o_9@@108 f_5@@96))
))) (forall ((o_9@@109 T@Ref) (f_5@@97 T@Field_38290_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ZeroMask) o_9@@109 f_5@@97) (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@0) o_9@@109 f_5@@97)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| ZeroMask) o_9@@109 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_57327_38290_4453#PolymorphicMapType_57327| QPMask@0) o_9@@109 f_5@@97))
))) (forall ((o_9@@110 T@Ref) (f_5@@98 T@Field_38290_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ZeroMask) o_9@@110 f_5@@98) (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@0) o_9@@110 f_5@@98)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| ZeroMask) o_9@@110 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_57327_38290_79607#PolymorphicMapType_57327| QPMask@0) o_9@@110 f_5@@98))
))) (forall ((o_9@@111 T@Ref) (f_5@@99 T@Field_74101_74102) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ZeroMask) o_9@@111 f_5@@99) (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@0) o_9@@111 f_5@@99)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| ZeroMask) o_9@@111 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_57327_38290_38291#PolymorphicMapType_57327| QPMask@0) o_9@@111 f_5@@99))
))) (forall ((o_9@@112 T@Ref) (f_5@@100 T@Field_77189_77194) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ZeroMask) o_9@@112 f_5@@100) (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@0) o_9@@112 f_5@@100)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| ZeroMask) o_9@@112 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_57327_38290_194135#PolymorphicMapType_57327| QPMask@0) o_9@@112 f_5@@100))
))) (forall ((o_9@@113 T@Ref) (f_5@@101 T@Field_38348_53) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ZeroMask) o_9@@113 f_5@@101) (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@0) o_9@@113 f_5@@101)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| ZeroMask) o_9@@113 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_57327_38348_53#PolymorphicMapType_57327| QPMask@0) o_9@@113 f_5@@101))
))) (forall ((o_9@@114 T@Ref) (f_5@@102 T@Field_38348_57380) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ZeroMask) o_9@@114 f_5@@102) (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@0) o_9@@114 f_5@@102)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| ZeroMask) o_9@@114 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_57327_38348_57380#PolymorphicMapType_57327| QPMask@0) o_9@@114 f_5@@102))
))) (forall ((o_9@@115 T@Ref) (f_5@@103 T@Field_38348_4453) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ZeroMask) o_9@@115 f_5@@103) (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@0) o_9@@115 f_5@@103)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| ZeroMask) o_9@@115 f_5@@103))
 :pattern ( (select (|PolymorphicMapType_57327_38348_4453#PolymorphicMapType_57327| QPMask@0) o_9@@115 f_5@@103))
))) (forall ((o_9@@116 T@Ref) (f_5@@104 T@Field_38348_82680) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ZeroMask) o_9@@116 f_5@@104) (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@0) o_9@@116 f_5@@104)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| ZeroMask) o_9@@116 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_57327_38348_79607#PolymorphicMapType_57327| QPMask@0) o_9@@116 f_5@@104))
))) (forall ((o_9@@117 T@Ref) (f_5@@105 T@Field_78383_78384) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ZeroMask) o_9@@117 f_5@@105) (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@0) o_9@@117 f_5@@105)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| ZeroMask) o_9@@117 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_57327_38348_38349#PolymorphicMapType_57327| QPMask@0) o_9@@117 f_5@@105))
))) (forall ((o_9@@118 T@Ref) (f_5@@106 T@Field_82896_82901) ) (!  (=> true (= (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ZeroMask) o_9@@118 f_5@@106) (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@0) o_9@@118 f_5@@106)))
 :qid |stdinbpl.3552:29|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| ZeroMask) o_9@@118 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_57327_38348_194629#PolymorphicMapType_57327| QPMask@0) o_9@@118 f_5@@106))
))) (state Heap@@83 QPMask@0)) (and (state Heap@@83 QPMask@0) (state Heap@@83 QPMask@0))) (and (and (=> (= (ControlFlow 0 46) 40) anon27_Else_correct) (=> (= (ControlFlow 0 46) 14) anon28_Then_correct)) (=> (= (ControlFlow 0 46) 17) anon28_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon26_Else_correct  (=> (and (not (and (<= 0 j_45) (< j_45 3))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon26_Then_correct  (=> (and (<= 0 j_45) (< j_45 3)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_45 0)) (=> (>= j_45 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_45 (|Seq#Length_37965| xs@@39))) (=> (< j_45 (|Seq#Length_37965| xs@@39)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon23_Else_correct  (=> (forall ((k_1@@1 Int) (j_1 Int) ) (!  (=> (and (>= k_1@@1 0) (and (< k_1@@1 (|Seq#Length_37965| xs@@39)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_37965| xs@@39)) (not (= k_1@@1 j_1)))))) (not (= (|Seq#Index_37965| xs@@39 k_1@@1) (|Seq#Index_37965| xs@@39 j_1))))
 :qid |stdinbpl.3505:20|
 :skolemid |298|
 :pattern ( (|Seq#Index_37965| xs@@39 k_1@@1) (|Seq#Index_37965| xs@@39 j_1))
)) (=> (and (state Heap@@83 ZeroMask) (state Heap@@83 ZeroMask)) (and (and (=> (= (ControlFlow 0 48) 46) anon25_Else_correct) (=> (= (ControlFlow 0 48) 9) anon26_Then_correct)) (=> (= (ControlFlow 0 48) 12) anon26_Else_correct))))))
(let ((anon3_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (>= k_48 0) (and (< k_48 (|Seq#Length_37965| xs@@39)) (and (>= j_44 0) (and (< j_44 (|Seq#Length_37965| xs@@39)) (not (= k_48 j_44))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon24_Then_correct  (=> (and (>= k_48 0) (and (< k_48 (|Seq#Length_37965| xs@@39)) (and (>= j_44 0) (and (< j_44 (|Seq#Length_37965| xs@@39)) (not (= k_48 j_44)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= k_48 0)) (=> (>= k_48 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< k_48 (|Seq#Length_37965| xs@@39))) (=> (< k_48 (|Seq#Length_37965| xs@@39)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_44 0)) (=> (>= j_44 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_44 (|Seq#Length_37965| xs@@39))) (=> (< j_44 (|Seq#Length_37965| xs@@39)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@83 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (= (|Seq#Length_37965| xs@@39) n@@51) (< 6 n@@51)) (and (state Heap@@83 ZeroMask) (state Heap@@83 ZeroMask))) (and (and (=> (= (ControlFlow 0 49) 48) anon23_Else_correct) (=> (= (ControlFlow 0 49) 2) anon24_Then_correct)) (=> (= (ControlFlow 0 49) 7) anon24_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50) 49) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
))
(check-sat)
