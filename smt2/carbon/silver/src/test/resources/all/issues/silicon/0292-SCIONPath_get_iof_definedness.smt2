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
(declare-sort T@Field_10650_53 0)
(declare-sort T@Field_10663_10664 0)
(declare-sort T@Field_18098_18099 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18908_18909 0)
(declare-sort T@Field_20399_20400 0)
(declare-sort T@Field_21499_21504 0)
(declare-sort T@Field_21888_21893 0)
(declare-sort T@Field_6539_18099 0)
(declare-sort T@Field_6539_21504 0)
(declare-sort T@Field_18098_6540 0)
(declare-sort T@Field_18098_53 0)
(declare-sort T@Field_18908_6540 0)
(declare-sort T@Field_18908_53 0)
(declare-sort T@Field_20399_6540 0)
(declare-sort T@Field_20399_53 0)
(declare-sort T@Field_22275_22280 0)
(declare-datatypes ((T@PolymorphicMapType_10611 0)) (((PolymorphicMapType_10611 (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_18099 Real)) (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_10663_10664 Real)) (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_18909 Real)) (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_20400 Real)) (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_6540 Real)) (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_53 Real)) (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| (Array T@Ref T@Field_21499_21504 Real)) (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| (Array T@Ref T@Field_6539_18099 Real)) (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| (Array T@Ref T@Field_10650_53 Real)) (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| (Array T@Ref T@Field_6539_21504 Real)) (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_6540 Real)) (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_53 Real)) (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| (Array T@Ref T@Field_21888_21893 Real)) (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_6540 Real)) (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_53 Real)) (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| (Array T@Ref T@Field_22275_22280 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11139 0)) (((PolymorphicMapType_11139 (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_10663_10664 Bool)) (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (Array T@Ref T@Field_10650_53 Bool)) (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_6539_18099 Bool)) (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (Array T@Ref T@Field_6539_21504 Bool)) (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_6540 Bool)) (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_53 Bool)) (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_18099 Bool)) (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (Array T@Ref T@Field_21499_21504 Bool)) (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_6540 Bool)) (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_53 Bool)) (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_18909 Bool)) (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (Array T@Ref T@Field_21888_21893 Bool)) (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_6540 Bool)) (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_53 Bool)) (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_20400 Bool)) (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (Array T@Ref T@Field_22275_22280 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10590 0)) (((PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| (Array T@Ref T@Field_10650_53 Bool)) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| (Array T@Ref T@Field_10663_10664 T@Ref)) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_18099 T@FrameType)) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_18909 T@FrameType)) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_20400 T@FrameType)) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| (Array T@Ref T@Field_21499_21504 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| (Array T@Ref T@Field_21888_21893 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| (Array T@Ref T@Field_6539_18099 T@FrameType)) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| (Array T@Ref T@Field_6539_21504 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_6540 T@Ref)) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_53 Bool)) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_6540 T@Ref)) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_53 Bool)) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_6540 T@Ref)) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_53 Bool)) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| (Array T@Ref T@Field_22275_22280 T@PolymorphicMapType_11139)) ) ) ))
(declare-fun $allocated () T@Field_10650_53)
(declare-fun SCIONPath__ofs () T@Field_10663_10664)
(declare-sort T@Seq_16737 0)
(declare-fun |Seq#Length_16737| (T@Seq_16737) Int)
(declare-fun |Seq#Drop_16737| (T@Seq_16737 Int) T@Seq_16737)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590) Bool)
(declare-fun state (T@PolymorphicMapType_10590 T@PolymorphicMapType_10611) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10611) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11139)
(declare-fun SCIONPath_get_iof (T@PolymorphicMapType_10590 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun vis_int (T@PolymorphicMapType_10590 T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun |Seq#Index_16737| (T@Seq_16737 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_16737| () T@Seq_16737)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun OpaqueField_State (T@Ref) T@Field_20399_20400)
(declare-fun IsPredicateField_6635_6636 (T@Field_20399_20400) Bool)
(declare-fun OpaqueFieldList_State (T@Ref) T@Field_18908_18909)
(declare-fun IsPredicateField_6659_6660 (T@Field_18908_18909) Bool)
(declare-fun SCIONPath_State (T@Ref) T@Field_18098_18099)
(declare-fun IsPredicateField_6698_6699 (T@Field_18098_18099) Bool)
(declare-fun |OpaqueFieldList_contents'| (T@PolymorphicMapType_10590 T@Ref) T@Seq_16737)
(declare-fun dummyFunction_16827 (T@Seq_16737) Bool)
(declare-fun |OpaqueFieldList_contents#triggerStateless| (T@Ref) T@Seq_16737)
(declare-fun |is_int'| (T@PolymorphicMapType_10590 T@Ref) Bool)
(declare-fun dummyFunction_3412 (Bool) Bool)
(declare-fun |is_int#triggerStateless| (T@Ref) Bool)
(declare-fun |SCIONPath_get_iof'| (T@PolymorphicMapType_10590 T@Ref) T@Ref)
(declare-fun dummyFunction_6612 (T@Ref) Bool)
(declare-fun |SCIONPath_get_iof#triggerStateless| (T@Ref) T@Ref)
(declare-fun |OpaqueField_State#trigger_6635| (T@PolymorphicMapType_10590 T@Field_20399_20400) Bool)
(declare-fun |OpaqueField_State#everUsed_6635| (T@Field_20399_20400) Bool)
(declare-fun |OpaqueFieldList_State#trigger_6659| (T@PolymorphicMapType_10590 T@Field_18908_18909) Bool)
(declare-fun |OpaqueFieldList_State#everUsed_6659| (T@Field_18908_18909) Bool)
(declare-fun |SCIONPath_State#trigger_6698| (T@PolymorphicMapType_10590 T@Field_18098_18099) Bool)
(declare-fun |SCIONPath_State#everUsed_6698| (T@Field_18098_18099) Bool)
(declare-fun |Seq#Update_16737| (T@Seq_16737 Int T@Ref) T@Seq_16737)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_16737| (T@Seq_16737 Int) T@Seq_16737)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |OpaqueFieldList_State#condqp1| (T@PolymorphicMapType_10590 T@Ref) Int)
(declare-fun |Seq#Contains_6544| (T@Seq_16737 T@Ref) Bool)
(declare-fun OpaqueFieldList_contents (T@PolymorphicMapType_10590 T@Ref) T@Seq_16737)
(declare-fun |sk_OpaqueFieldList_State#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Skolem_6544| (T@Seq_16737 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590 T@PolymorphicMapType_10611) Bool)
(declare-fun PredicateMaskField_6635 (T@Field_20399_20400) T@Field_22275_22280)
(declare-fun HasDirectPerm_20399_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_20400) Bool)
(declare-fun PredicateMaskField_6659 (T@Field_18908_18909) T@Field_21888_21893)
(declare-fun HasDirectPerm_18908_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_18909) Bool)
(declare-fun PredicateMaskField_6698 (T@Field_18098_18099) T@Field_21499_21504)
(declare-fun HasDirectPerm_18098_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_18099) Bool)
(declare-fun IsPredicateField_6539_34013 (T@Field_6539_18099) Bool)
(declare-fun PredicateMaskField_6539 (T@Field_6539_18099) T@Field_6539_21504)
(declare-fun HasDirectPerm_6539_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_6539_18099) Bool)
(declare-fun IsWandField_20399_40925 (T@Field_20399_20400) Bool)
(declare-fun WandMaskField_20399 (T@Field_20399_20400) T@Field_22275_22280)
(declare-fun IsWandField_18908_40568 (T@Field_18908_18909) Bool)
(declare-fun WandMaskField_18908 (T@Field_18908_18909) T@Field_21888_21893)
(declare-fun IsWandField_18098_40211 (T@Field_18098_18099) Bool)
(declare-fun WandMaskField_18098 (T@Field_18098_18099) T@Field_21499_21504)
(declare-fun IsWandField_6539_39854 (T@Field_6539_18099) Bool)
(declare-fun WandMaskField_6539 (T@Field_6539_18099) T@Field_6539_21504)
(declare-fun |Seq#Singleton_16737| (T@Ref) T@Seq_16737)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |OpaqueField_State#sm| (T@Ref) T@Field_22275_22280)
(declare-fun |OpaqueFieldList_State#sm| (T@Ref) T@Field_21888_21893)
(declare-fun |SCIONPath_State#sm| (T@Ref) T@Field_21499_21504)
(declare-fun |Seq#Append_16737| (T@Seq_16737 T@Seq_16737) T@Seq_16737)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_10590)
(declare-fun ZeroMask () T@PolymorphicMapType_10611)
(declare-fun InsidePredicate_20399_20399 (T@Field_20399_20400 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_10650 (T@Field_6539_18099 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_6659 (T@Field_18908_18909 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_18098 (T@Field_18098_18099 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun IsPredicateField_6539_6540 (T@Field_10663_10664) Bool)
(declare-fun IsWandField_6539_6540 (T@Field_10663_10664) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6635_52190 (T@Field_22275_22280) Bool)
(declare-fun IsWandField_6635_52206 (T@Field_22275_22280) Bool)
(declare-fun IsPredicateField_6635_53 (T@Field_20399_53) Bool)
(declare-fun IsWandField_6635_53 (T@Field_20399_53) Bool)
(declare-fun IsPredicateField_6635_6540 (T@Field_20399_6540) Bool)
(declare-fun IsWandField_6635_6540 (T@Field_20399_6540) Bool)
(declare-fun IsPredicateField_6659_51527 (T@Field_21888_21893) Bool)
(declare-fun IsWandField_6659_51543 (T@Field_21888_21893) Bool)
(declare-fun IsPredicateField_6659_53 (T@Field_18908_53) Bool)
(declare-fun IsWandField_6659_53 (T@Field_18908_53) Bool)
(declare-fun IsPredicateField_6659_6540 (T@Field_18908_6540) Bool)
(declare-fun IsWandField_6659_6540 (T@Field_18908_6540) Bool)
(declare-fun IsPredicateField_6539_50864 (T@Field_6539_21504) Bool)
(declare-fun IsWandField_6539_50880 (T@Field_6539_21504) Bool)
(declare-fun IsPredicateField_6539_53 (T@Field_10650_53) Bool)
(declare-fun IsWandField_6539_53 (T@Field_10650_53) Bool)
(declare-fun IsPredicateField_6698_50215 (T@Field_21499_21504) Bool)
(declare-fun IsWandField_6698_50231 (T@Field_21499_21504) Bool)
(declare-fun IsPredicateField_6698_53 (T@Field_18098_53) Bool)
(declare-fun IsWandField_6698_53 (T@Field_18098_53) Bool)
(declare-fun IsPredicateField_6698_6540 (T@Field_18098_6540) Bool)
(declare-fun IsWandField_6698_6540 (T@Field_18098_6540) Bool)
(declare-fun HasDirectPerm_20399_33725 (T@PolymorphicMapType_10611 T@Ref T@Field_22275_22280) Bool)
(declare-fun HasDirectPerm_20399_53 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_53) Bool)
(declare-fun HasDirectPerm_20399_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_6540) Bool)
(declare-fun HasDirectPerm_18908_32828 (T@PolymorphicMapType_10611 T@Ref T@Field_21888_21893) Bool)
(declare-fun HasDirectPerm_18908_53 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_53) Bool)
(declare-fun HasDirectPerm_18908_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_6540) Bool)
(declare-fun HasDirectPerm_18098_31931 (T@PolymorphicMapType_10611 T@Ref T@Field_21499_21504) Bool)
(declare-fun HasDirectPerm_18098_53 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_53) Bool)
(declare-fun HasDirectPerm_18098_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_6540) Bool)
(declare-fun HasDirectPerm_6539_30991 (T@PolymorphicMapType_10611 T@Ref T@Field_6539_21504) Bool)
(declare-fun HasDirectPerm_6539_53 (T@PolymorphicMapType_10611 T@Ref T@Field_10650_53) Bool)
(declare-fun HasDirectPerm_6539_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_10663_10664) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10611 T@PolymorphicMapType_10611 T@PolymorphicMapType_10611) Bool)
(declare-fun |Seq#Equal_16737| (T@Seq_16737 T@Seq_16737) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |is_int#frame| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_6556| (T@Seq_16737 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun |SCIONPath_get_iof#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_6635_6636 (T@Field_20399_20400) Int)
(declare-fun getPredWandId_6659_6660 (T@Field_18908_18909) Int)
(declare-fun getPredWandId_6698_6699 (T@Field_18098_18099) Int)
(declare-fun |OpaqueFieldList_contents#frame| (T@FrameType T@Ref) T@Seq_16737)
(declare-fun |Seq#SkolemDiff_16737| (T@Seq_16737 T@Seq_16737) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun InsidePredicate_20399_18098 (T@Field_20399_20400 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_20399_10650 (T@Field_20399_20400 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_20399_6659 (T@Field_20399_20400 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_20399 (T@Field_6539_18099 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_18098 (T@Field_6539_18099 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_6659 (T@Field_6539_18099 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_20399 (T@Field_18098_18099 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_10650 (T@Field_18098_18099 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_6659 (T@Field_18098_18099 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_20399 (T@Field_18908_18909 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_18098 (T@Field_18908_18909 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_10650 (T@Field_18908_18909 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(assert (forall ((s T@Seq_16737) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16737| s)) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) (- (|Seq#Length_16737| s) n))) (=> (< (|Seq#Length_16737| s) n) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) (|Seq#Length_16737| s))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16737| (|Seq#Drop_16737| s n)))
 :pattern ( (|Seq#Length_16737| s) (|Seq#Drop_16737| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10590) (Heap1 T@PolymorphicMapType_10590) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10590) (Mask T@PolymorphicMapType_10611) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10590) (Heap1@@0 T@PolymorphicMapType_10590) (Heap2 T@PolymorphicMapType_10590) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22275_22280) ) (!  (not (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20399_20400) ) (!  (not (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20399_53) ) (!  (not (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20399_6540) ) (!  (not (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21888_21893) ) (!  (not (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18908_18909) ) (!  (not (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_18908_53) ) (!  (not (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18908_6540) ) (!  (not (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21499_21504) ) (!  (not (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_18098_18099) ) (!  (not (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18098_53) ) (!  (not (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18098_6540) ) (!  (not (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6539_21504) ) (!  (not (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6539_18099) ) (!  (not (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10650_53) ) (!  (not (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10663_10664) ) (!  (not (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10590) (Mask@@0 T@PolymorphicMapType_10611) (self T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (SCIONPath_get_iof Heap@@0 self) (ite  (not (vis_int Heap@@0 null)) null null)))
 :qid |stdinbpl.678:15|
 :skolemid |66|
 :pattern ( (state Heap@@0 Mask@@0) (SCIONPath_get_iof Heap@@0 self))
)))
(assert (forall ((s@@1 T@Seq_16737) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16737| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16737| (|Seq#Drop_16737| s@@1 n@@1) j) (|Seq#Index_16737| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16737| (|Seq#Drop_16737| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16737| |Seq#Empty_16737|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_6635_6636 (OpaqueField_State self@@0))
 :qid |stdinbpl.828:15|
 :skolemid |75|
 :pattern ( (OpaqueField_State self@@0))
)))
(assert (forall ((self@@1 T@Ref) ) (! (IsPredicateField_6659_6660 (OpaqueFieldList_State self@@1))
 :qid |stdinbpl.878:15|
 :skolemid |81|
 :pattern ( (OpaqueFieldList_State self@@1))
)))
(assert (forall ((self@@2 T@Ref) ) (! (IsPredicateField_6698_6699 (SCIONPath_State self@@2))
 :qid |stdinbpl.986:15|
 :skolemid |94|
 :pattern ( (SCIONPath_State self@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10590) (self@@3 T@Ref) ) (! (dummyFunction_16827 (|OpaqueFieldList_contents#triggerStateless| self@@3))
 :qid |stdinbpl.588:15|
 :skolemid |59|
 :pattern ( (|OpaqueFieldList_contents'| Heap@@1 self@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10590) (r_1 T@Ref) ) (! (dummyFunction_3412 (|is_int#triggerStateless| r_1))
 :qid |stdinbpl.630:15|
 :skolemid |62|
 :pattern ( (|is_int'| Heap@@2 r_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10590) (self@@4 T@Ref) ) (! (dummyFunction_6612 (|SCIONPath_get_iof#triggerStateless| self@@4))
 :qid |stdinbpl.672:15|
 :skolemid |65|
 :pattern ( (|SCIONPath_get_iof'| Heap@@3 self@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10590) (self@@5 T@Ref) ) (! (|OpaqueField_State#everUsed_6635| (OpaqueField_State self@@5))
 :qid |stdinbpl.847:15|
 :skolemid |79|
 :pattern ( (|OpaqueField_State#trigger_6635| Heap@@4 (OpaqueField_State self@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10590) (self@@6 T@Ref) ) (! (|OpaqueFieldList_State#everUsed_6659| (OpaqueFieldList_State self@@6))
 :qid |stdinbpl.897:15|
 :skolemid |85|
 :pattern ( (|OpaqueFieldList_State#trigger_6659| Heap@@5 (OpaqueFieldList_State self@@6)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10590) (self@@7 T@Ref) ) (! (|SCIONPath_State#everUsed_6698| (SCIONPath_State self@@7))
 :qid |stdinbpl.1005:15|
 :skolemid |98|
 :pattern ( (|SCIONPath_State#trigger_6698| Heap@@6 (SCIONPath_State self@@7)))
)))
(assert (forall ((s@@3 T@Seq_16737) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16737| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3) (|Seq#Index_16737| s@@3 n@@3)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_16737| s@@3 n@@3) (|Seq#Update_16737| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16737) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16737| s@@5)) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16737| s@@5) n@@5) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) (|Seq#Length_16737| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16737| s@@5 n@@5) (|Seq#Length_16737| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.563:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10590) (Heap1Heap T@PolymorphicMapType_10590) (self@@8 T@Ref) ) (!  (=> (and (=  (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap2Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm))  (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap1Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap2Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap2Heap) null (OpaqueField_State (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8)))) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap1Heap) null (OpaqueField_State (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))))))) (= (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8)))
 :qid |stdinbpl.908:15|
 :skolemid |86|
 :pattern ( (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s@@7 T@Seq_16737) (x T@Ref) ) (!  (=> (|Seq#Contains_6544| s@@7 x) (and (and (<= 0 (|Seq#Skolem_6544| s@@7 x)) (< (|Seq#Skolem_6544| s@@7 x) (|Seq#Length_16737| s@@7))) (= (|Seq#Index_16737| s@@7 (|Seq#Skolem_6544| s@@7 x)) x)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_6544| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10590) (self@@9 T@Ref) ) (!  (and (= (OpaqueFieldList_contents Heap@@7 self@@9) (|OpaqueFieldList_contents'| Heap@@7 self@@9)) (dummyFunction_16827 (|OpaqueFieldList_contents#triggerStateless| self@@9)))
 :qid |stdinbpl.584:15|
 :skolemid |58|
 :pattern ( (OpaqueFieldList_contents Heap@@7 self@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10590) (self@@10 T@Ref) ) (!  (and (= (SCIONPath_get_iof Heap@@8 self@@10) (|SCIONPath_get_iof'| Heap@@8 self@@10)) (dummyFunction_6612 (|SCIONPath_get_iof#triggerStateless| self@@10)))
 :qid |stdinbpl.668:15|
 :skolemid |64|
 :pattern ( (SCIONPath_get_iof Heap@@8 self@@10))
)))
(assert (forall ((s@@9 T@Seq_16737) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16737| s@@9 n@@7) s@@9))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16737| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.258:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10590) (ExhaleHeap T@PolymorphicMapType_10590) (Mask@@1 T@PolymorphicMapType_10611) (pm_f_9 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20399_18099 Mask@@1 null pm_f_9) (IsPredicateField_6635_6636 pm_f_9)) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@9) null (PredicateMaskField_6635 pm_f_9)) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap) null (PredicateMaskField_6635 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@1) (IsPredicateField_6635_6636 pm_f_9) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap) null (PredicateMaskField_6635 pm_f_9)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10590) (ExhaleHeap@@0 T@PolymorphicMapType_10590) (Mask@@2 T@PolymorphicMapType_10611) (pm_f_9@@0 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_18908_18099 Mask@@2 null pm_f_9@@0) (IsPredicateField_6659_6660 pm_f_9@@0)) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@10) null (PredicateMaskField_6659 pm_f_9@@0)) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@0) null (PredicateMaskField_6659 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@2) (IsPredicateField_6659_6660 pm_f_9@@0) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@0) null (PredicateMaskField_6659 pm_f_9@@0)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10590) (ExhaleHeap@@1 T@PolymorphicMapType_10590) (Mask@@3 T@PolymorphicMapType_10611) (pm_f_9@@1 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_18098_18099 Mask@@3 null pm_f_9@@1) (IsPredicateField_6698_6699 pm_f_9@@1)) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@11) null (PredicateMaskField_6698 pm_f_9@@1)) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@1) null (PredicateMaskField_6698 pm_f_9@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@3) (IsPredicateField_6698_6699 pm_f_9@@1) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@1) null (PredicateMaskField_6698 pm_f_9@@1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10590) (ExhaleHeap@@2 T@PolymorphicMapType_10590) (Mask@@4 T@PolymorphicMapType_10611) (pm_f_9@@2 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6539_18099 Mask@@4 null pm_f_9@@2) (IsPredicateField_6539_34013 pm_f_9@@2)) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@12) null (PredicateMaskField_6539 pm_f_9@@2)) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@2) null (PredicateMaskField_6539 pm_f_9@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@4) (IsPredicateField_6539_34013 pm_f_9@@2) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@2) null (PredicateMaskField_6539 pm_f_9@@2)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10590) (ExhaleHeap@@3 T@PolymorphicMapType_10590) (Mask@@5 T@PolymorphicMapType_10611) (pm_f_9@@3 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_20399_18099 Mask@@5 null pm_f_9@@3) (IsWandField_20399_40925 pm_f_9@@3)) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@13) null (WandMaskField_20399 pm_f_9@@3)) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@3) null (WandMaskField_20399 pm_f_9@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@5) (IsWandField_20399_40925 pm_f_9@@3) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@3) null (WandMaskField_20399 pm_f_9@@3)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10590) (ExhaleHeap@@4 T@PolymorphicMapType_10590) (Mask@@6 T@PolymorphicMapType_10611) (pm_f_9@@4 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_18908_18099 Mask@@6 null pm_f_9@@4) (IsWandField_18908_40568 pm_f_9@@4)) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@14) null (WandMaskField_18908 pm_f_9@@4)) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@4) null (WandMaskField_18908 pm_f_9@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@6) (IsWandField_18908_40568 pm_f_9@@4) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@4) null (WandMaskField_18908 pm_f_9@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10590) (ExhaleHeap@@5 T@PolymorphicMapType_10590) (Mask@@7 T@PolymorphicMapType_10611) (pm_f_9@@5 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_18098_18099 Mask@@7 null pm_f_9@@5) (IsWandField_18098_40211 pm_f_9@@5)) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@15) null (WandMaskField_18098 pm_f_9@@5)) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@5) null (WandMaskField_18098 pm_f_9@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@7) (IsWandField_18098_40211 pm_f_9@@5) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@5) null (WandMaskField_18098 pm_f_9@@5)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10590) (ExhaleHeap@@6 T@PolymorphicMapType_10590) (Mask@@8 T@PolymorphicMapType_10611) (pm_f_9@@6 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6539_18099 Mask@@8 null pm_f_9@@6) (IsWandField_6539_39854 pm_f_9@@6)) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@16) null (WandMaskField_6539 pm_f_9@@6)) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@6) null (WandMaskField_6539 pm_f_9@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@8) (IsWandField_6539_39854 pm_f_9@@6) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@6) null (WandMaskField_6539 pm_f_9@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_6544| (|Seq#Singleton_16737| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_6544| (|Seq#Singleton_16737| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16737) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16737| s@@11))) (= (|Seq#Index_16737| (|Seq#Take_16737| s@@11 n@@9) j@@3) (|Seq#Index_16737| s@@11 j@@3)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16737| (|Seq#Take_16737| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16737| s@@11 j@@3) (|Seq#Take_16737| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((self@@11 T@Ref) (self2 T@Ref) ) (!  (=> (= (OpaqueField_State self@@11) (OpaqueField_State self2)) (= self@@11 self2))
 :qid |stdinbpl.838:15|
 :skolemid |77|
 :pattern ( (OpaqueField_State self@@11) (OpaqueField_State self2))
)))
(assert (forall ((self@@12 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|OpaqueField_State#sm| self@@12) (|OpaqueField_State#sm| self2@@0)) (= self@@12 self2@@0))
 :qid |stdinbpl.842:15|
 :skolemid |78|
 :pattern ( (|OpaqueField_State#sm| self@@12) (|OpaqueField_State#sm| self2@@0))
)))
(assert (forall ((self@@13 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (OpaqueFieldList_State self@@13) (OpaqueFieldList_State self2@@1)) (= self@@13 self2@@1))
 :qid |stdinbpl.888:15|
 :skolemid |83|
 :pattern ( (OpaqueFieldList_State self@@13) (OpaqueFieldList_State self2@@1))
)))
(assert (forall ((self@@14 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|OpaqueFieldList_State#sm| self@@14) (|OpaqueFieldList_State#sm| self2@@2)) (= self@@14 self2@@2))
 :qid |stdinbpl.892:15|
 :skolemid |84|
 :pattern ( (|OpaqueFieldList_State#sm| self@@14) (|OpaqueFieldList_State#sm| self2@@2))
)))
(assert (forall ((self@@15 T@Ref) (self2@@3 T@Ref) ) (!  (=> (= (SCIONPath_State self@@15) (SCIONPath_State self2@@3)) (= self@@15 self2@@3))
 :qid |stdinbpl.996:15|
 :skolemid |96|
 :pattern ( (SCIONPath_State self@@15) (SCIONPath_State self2@@3))
)))
(assert (forall ((self@@16 T@Ref) (self2@@4 T@Ref) ) (!  (=> (= (|SCIONPath_State#sm| self@@16) (|SCIONPath_State#sm| self2@@4)) (= self@@16 self2@@4))
 :qid |stdinbpl.1000:15|
 :skolemid |97|
 :pattern ( (|SCIONPath_State#sm| self@@16) (|SCIONPath_State#sm| self2@@4))
)))
(assert (forall ((s@@13 T@Seq_16737) (t T@Seq_16737) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16737| s@@13))) (< n@@11 (|Seq#Length_16737| (|Seq#Append_16737| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16737| s@@13)) (|Seq#Length_16737| s@@13)) n@@11) (= (|Seq#Take_16737| (|Seq#Append_16737| s@@13 t) n@@11) (|Seq#Append_16737| s@@13 (|Seq#Take_16737| t (|Seq#Sub| n@@11 (|Seq#Length_16737| s@@13)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16737| (|Seq#Append_16737| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10590) (ExhaleHeap@@7 T@PolymorphicMapType_10590) (Mask@@9 T@PolymorphicMapType_10611) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@17) o_27 $allocated) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_20399_20400) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20399_20399 p v_1 p w))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20399_20399 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6539_18099) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10650_10650 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10650_10650 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18908_18909) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6659_6659 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6659_6659 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_18098_18099) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_6698_18098 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6698_18098 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_16737) (s1 T@Seq_16737) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16737|)) (not (= s1 |Seq#Empty_16737|))) (<= (|Seq#Length_16737| s0) n@@13)) (< n@@13 (|Seq#Length_16737| (|Seq#Append_16737| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16737| s0)) (|Seq#Length_16737| s0)) n@@13) (= (|Seq#Index_16737| (|Seq#Append_16737| s0 s1) n@@13) (|Seq#Index_16737| s1 (|Seq#Sub| n@@13 (|Seq#Length_16737| s0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16737| (|Seq#Append_16737| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6539_6540 SCIONPath__ofs)))
(assert  (not (IsWandField_6539_6540 SCIONPath__ofs)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10590) (ExhaleHeap@@8 T@PolymorphicMapType_10590) (Mask@@10 T@PolymorphicMapType_10611) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@18 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10611) (o_2@@15 T@Ref) (f_4@@15 T@Field_22275_22280) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6635_52190 f_4@@15))) (not (IsWandField_6635_52206 f_4@@15))) (<= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10611) (o_2@@16 T@Ref) (f_4@@16 T@Field_20399_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6635_53 f_4@@16))) (not (IsWandField_6635_53 f_4@@16))) (<= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10611) (o_2@@17 T@Ref) (f_4@@17 T@Field_20399_6540) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6635_6540 f_4@@17))) (not (IsWandField_6635_6540 f_4@@17))) (<= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10611) (o_2@@18 T@Ref) (f_4@@18 T@Field_20399_20400) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6635_6636 f_4@@18))) (not (IsWandField_20399_40925 f_4@@18))) (<= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10611) (o_2@@19 T@Ref) (f_4@@19 T@Field_21888_21893) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6659_51527 f_4@@19))) (not (IsWandField_6659_51543 f_4@@19))) (<= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10611) (o_2@@20 T@Ref) (f_4@@20 T@Field_18908_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6659_53 f_4@@20))) (not (IsWandField_6659_53 f_4@@20))) (<= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10611) (o_2@@21 T@Ref) (f_4@@21 T@Field_18908_6540) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6659_6540 f_4@@21))) (not (IsWandField_6659_6540 f_4@@21))) (<= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10611) (o_2@@22 T@Ref) (f_4@@22 T@Field_18908_18909) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6659_6660 f_4@@22))) (not (IsWandField_18908_40568 f_4@@22))) (<= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10611) (o_2@@23 T@Ref) (f_4@@23 T@Field_6539_21504) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6539_50864 f_4@@23))) (not (IsWandField_6539_50880 f_4@@23))) (<= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10611) (o_2@@24 T@Ref) (f_4@@24 T@Field_10650_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6539_53 f_4@@24))) (not (IsWandField_6539_53 f_4@@24))) (<= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10611) (o_2@@25 T@Ref) (f_4@@25 T@Field_10663_10664) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6539_6540 f_4@@25))) (not (IsWandField_6539_6540 f_4@@25))) (<= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10611) (o_2@@26 T@Ref) (f_4@@26 T@Field_6539_18099) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6539_34013 f_4@@26))) (not (IsWandField_6539_39854 f_4@@26))) (<= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10611) (o_2@@27 T@Ref) (f_4@@27 T@Field_21499_21504) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6698_50215 f_4@@27))) (not (IsWandField_6698_50231 f_4@@27))) (<= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10611) (o_2@@28 T@Ref) (f_4@@28 T@Field_18098_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6698_53 f_4@@28))) (not (IsWandField_6698_53 f_4@@28))) (<= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10611) (o_2@@29 T@Ref) (f_4@@29 T@Field_18098_6540) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6698_6540 f_4@@29))) (not (IsWandField_6698_6540 f_4@@29))) (<= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10611) (o_2@@30 T@Ref) (f_4@@30 T@Field_18098_18099) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6698_6699 f_4@@30))) (not (IsWandField_18098_40211 f_4@@30))) (<= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10611) (o_2@@31 T@Ref) (f_4@@31 T@Field_22275_22280) ) (! (= (HasDirectPerm_20399_33725 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_33725 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10611) (o_2@@32 T@Ref) (f_4@@32 T@Field_20399_20400) ) (! (= (HasDirectPerm_20399_18099 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_18099 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10611) (o_2@@33 T@Ref) (f_4@@33 T@Field_20399_53) ) (! (= (HasDirectPerm_20399_53 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_53 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10611) (o_2@@34 T@Ref) (f_4@@34 T@Field_20399_6540) ) (! (= (HasDirectPerm_20399_6540 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_6540 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10611) (o_2@@35 T@Ref) (f_4@@35 T@Field_21888_21893) ) (! (= (HasDirectPerm_18908_32828 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_32828 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10611) (o_2@@36 T@Ref) (f_4@@36 T@Field_18908_18909) ) (! (= (HasDirectPerm_18908_18099 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_18099 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10611) (o_2@@37 T@Ref) (f_4@@37 T@Field_18908_53) ) (! (= (HasDirectPerm_18908_53 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_53 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10611) (o_2@@38 T@Ref) (f_4@@38 T@Field_18908_6540) ) (! (= (HasDirectPerm_18908_6540 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_6540 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10611) (o_2@@39 T@Ref) (f_4@@39 T@Field_21499_21504) ) (! (= (HasDirectPerm_18098_31931 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_31931 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10611) (o_2@@40 T@Ref) (f_4@@40 T@Field_18098_18099) ) (! (= (HasDirectPerm_18098_18099 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_18099 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10611) (o_2@@41 T@Ref) (f_4@@41 T@Field_18098_53) ) (! (= (HasDirectPerm_18098_53 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_53 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10611) (o_2@@42 T@Ref) (f_4@@42 T@Field_18098_6540) ) (! (= (HasDirectPerm_18098_6540 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_6540 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10611) (o_2@@43 T@Ref) (f_4@@43 T@Field_6539_21504) ) (! (= (HasDirectPerm_6539_30991 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_30991 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10611) (o_2@@44 T@Ref) (f_4@@44 T@Field_6539_18099) ) (! (= (HasDirectPerm_6539_18099 Mask@@40 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@40) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_18099 Mask@@40 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10611) (o_2@@45 T@Ref) (f_4@@45 T@Field_10650_53) ) (! (= (HasDirectPerm_6539_53 Mask@@41 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@41) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_53 Mask@@41 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10611) (o_2@@46 T@Ref) (f_4@@46 T@Field_10663_10664) ) (! (= (HasDirectPerm_6539_6540 Mask@@42 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@42) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_6540 Mask@@42 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.188:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.561:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10590) (ExhaleHeap@@9 T@PolymorphicMapType_10590) (Mask@@43 T@PolymorphicMapType_10611) (o_27@@0 T@Ref) (f_24 T@Field_22275_22280) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_20399_33725 Mask@@43 o_27@@0 f_24) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@19) o_27@@0 f_24) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@9) o_27@@0 f_24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@9) o_27@@0 f_24))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10590) (ExhaleHeap@@10 T@PolymorphicMapType_10590) (Mask@@44 T@PolymorphicMapType_10611) (o_27@@1 T@Ref) (f_24@@0 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_20399_18099 Mask@@44 o_27@@1 f_24@@0) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@20) o_27@@1 f_24@@0) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@10) o_27@@1 f_24@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@10) o_27@@1 f_24@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10590) (ExhaleHeap@@11 T@PolymorphicMapType_10590) (Mask@@45 T@PolymorphicMapType_10611) (o_27@@2 T@Ref) (f_24@@1 T@Field_20399_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_20399_53 Mask@@45 o_27@@2 f_24@@1) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@21) o_27@@2 f_24@@1) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@11) o_27@@2 f_24@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@11) o_27@@2 f_24@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10590) (ExhaleHeap@@12 T@PolymorphicMapType_10590) (Mask@@46 T@PolymorphicMapType_10611) (o_27@@3 T@Ref) (f_24@@2 T@Field_20399_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_20399_6540 Mask@@46 o_27@@3 f_24@@2) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@22) o_27@@3 f_24@@2) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@12) o_27@@3 f_24@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@12) o_27@@3 f_24@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10590) (ExhaleHeap@@13 T@PolymorphicMapType_10590) (Mask@@47 T@PolymorphicMapType_10611) (o_27@@4 T@Ref) (f_24@@3 T@Field_21888_21893) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_18908_32828 Mask@@47 o_27@@4 f_24@@3) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@23) o_27@@4 f_24@@3) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@13) o_27@@4 f_24@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@13) o_27@@4 f_24@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10590) (ExhaleHeap@@14 T@PolymorphicMapType_10590) (Mask@@48 T@PolymorphicMapType_10611) (o_27@@5 T@Ref) (f_24@@4 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_18908_18099 Mask@@48 o_27@@5 f_24@@4) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@24) o_27@@5 f_24@@4) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@14) o_27@@5 f_24@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@14) o_27@@5 f_24@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10590) (ExhaleHeap@@15 T@PolymorphicMapType_10590) (Mask@@49 T@PolymorphicMapType_10611) (o_27@@6 T@Ref) (f_24@@5 T@Field_18908_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_18908_53 Mask@@49 o_27@@6 f_24@@5) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@25) o_27@@6 f_24@@5) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@15) o_27@@6 f_24@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@15) o_27@@6 f_24@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10590) (ExhaleHeap@@16 T@PolymorphicMapType_10590) (Mask@@50 T@PolymorphicMapType_10611) (o_27@@7 T@Ref) (f_24@@6 T@Field_18908_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_18908_6540 Mask@@50 o_27@@7 f_24@@6) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@26) o_27@@7 f_24@@6) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@16) o_27@@7 f_24@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@16) o_27@@7 f_24@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10590) (ExhaleHeap@@17 T@PolymorphicMapType_10590) (Mask@@51 T@PolymorphicMapType_10611) (o_27@@8 T@Ref) (f_24@@7 T@Field_21499_21504) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_18098_31931 Mask@@51 o_27@@8 f_24@@7) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@27) o_27@@8 f_24@@7) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@17) o_27@@8 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@17) o_27@@8 f_24@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10590) (ExhaleHeap@@18 T@PolymorphicMapType_10590) (Mask@@52 T@PolymorphicMapType_10611) (o_27@@9 T@Ref) (f_24@@8 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_18098_18099 Mask@@52 o_27@@9 f_24@@8) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@28) o_27@@9 f_24@@8) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@18) o_27@@9 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@18) o_27@@9 f_24@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10590) (ExhaleHeap@@19 T@PolymorphicMapType_10590) (Mask@@53 T@PolymorphicMapType_10611) (o_27@@10 T@Ref) (f_24@@9 T@Field_18098_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_18098_53 Mask@@53 o_27@@10 f_24@@9) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@29) o_27@@10 f_24@@9) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@19) o_27@@10 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@19) o_27@@10 f_24@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10590) (ExhaleHeap@@20 T@PolymorphicMapType_10590) (Mask@@54 T@PolymorphicMapType_10611) (o_27@@11 T@Ref) (f_24@@10 T@Field_18098_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_18098_6540 Mask@@54 o_27@@11 f_24@@10) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@30) o_27@@11 f_24@@10) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@20) o_27@@11 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@20) o_27@@11 f_24@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10590) (ExhaleHeap@@21 T@PolymorphicMapType_10590) (Mask@@55 T@PolymorphicMapType_10611) (o_27@@12 T@Ref) (f_24@@11 T@Field_6539_21504) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_6539_30991 Mask@@55 o_27@@12 f_24@@11) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@31) o_27@@12 f_24@@11) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@21) o_27@@12 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@21) o_27@@12 f_24@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10590) (ExhaleHeap@@22 T@PolymorphicMapType_10590) (Mask@@56 T@PolymorphicMapType_10611) (o_27@@13 T@Ref) (f_24@@12 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (=> (HasDirectPerm_6539_18099 Mask@@56 o_27@@13 f_24@@12) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@32) o_27@@13 f_24@@12) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@22) o_27@@13 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@22) o_27@@13 f_24@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10590) (ExhaleHeap@@23 T@PolymorphicMapType_10590) (Mask@@57 T@PolymorphicMapType_10611) (o_27@@14 T@Ref) (f_24@@13 T@Field_10650_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (=> (HasDirectPerm_6539_53 Mask@@57 o_27@@14 f_24@@13) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@33) o_27@@14 f_24@@13) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@23) o_27@@14 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@23) o_27@@14 f_24@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10590) (ExhaleHeap@@24 T@PolymorphicMapType_10590) (Mask@@58 T@PolymorphicMapType_10611) (o_27@@15 T@Ref) (f_24@@14 T@Field_10663_10664) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (=> (HasDirectPerm_6539_6540 Mask@@58 o_27@@15 f_24@@14) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@34) o_27@@15 f_24@@14) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@24) o_27@@15 f_24@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@24) o_27@@15 f_24@@14))
)))
(assert (forall ((s0@@1 T@Seq_16737) (s1@@1 T@Seq_16737) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16737|)) (not (= s1@@1 |Seq#Empty_16737|))) (= (|Seq#Length_16737| (|Seq#Append_16737| s0@@1 s1@@1)) (+ (|Seq#Length_16737| s0@@1) (|Seq#Length_16737| s1@@1))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16737| (|Seq#Append_16737| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22275_22280) ) (! (= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_20399_53) ) (! (= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_20399_6540) ) (! (= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_20399_20400) ) (! (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_21888_21893) ) (! (= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_18908_53) ) (! (= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_18908_6540) ) (! (= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_18908_18909) ) (! (= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_6539_21504) ) (! (= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10650_53) ) (! (= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_10663_10664) ) (! (= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_6539_18099) ) (! (= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_21499_21504) ) (! (= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_18098_53) ) (! (= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_18098_6540) ) (! (= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_18098_18099) ) (! (= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((s@@15 T@Seq_16737) (t@@1 T@Seq_16737) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16737| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16737| s@@15)) (|Seq#Length_16737| s@@15)) n@@15) (= (|Seq#Drop_16737| (|Seq#Append_16737| s@@15 t@@1) n@@15) (|Seq#Drop_16737| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16737| s@@15))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16737| (|Seq#Append_16737| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10611) (SummandMask1 T@PolymorphicMapType_10611) (SummandMask2 T@PolymorphicMapType_10611) (o_2@@63 T@Ref) (f_4@@63 T@Field_22275_22280) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10611) (SummandMask1@@0 T@PolymorphicMapType_10611) (SummandMask2@@0 T@PolymorphicMapType_10611) (o_2@@64 T@Ref) (f_4@@64 T@Field_20399_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10611) (SummandMask1@@1 T@PolymorphicMapType_10611) (SummandMask2@@1 T@PolymorphicMapType_10611) (o_2@@65 T@Ref) (f_4@@65 T@Field_20399_6540) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10611) (SummandMask1@@2 T@PolymorphicMapType_10611) (SummandMask2@@2 T@PolymorphicMapType_10611) (o_2@@66 T@Ref) (f_4@@66 T@Field_20399_20400) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10611) (SummandMask1@@3 T@PolymorphicMapType_10611) (SummandMask2@@3 T@PolymorphicMapType_10611) (o_2@@67 T@Ref) (f_4@@67 T@Field_21888_21893) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10611) (SummandMask1@@4 T@PolymorphicMapType_10611) (SummandMask2@@4 T@PolymorphicMapType_10611) (o_2@@68 T@Ref) (f_4@@68 T@Field_18908_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10611) (SummandMask1@@5 T@PolymorphicMapType_10611) (SummandMask2@@5 T@PolymorphicMapType_10611) (o_2@@69 T@Ref) (f_4@@69 T@Field_18908_6540) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10611) (SummandMask1@@6 T@PolymorphicMapType_10611) (SummandMask2@@6 T@PolymorphicMapType_10611) (o_2@@70 T@Ref) (f_4@@70 T@Field_18908_18909) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10611) (SummandMask1@@7 T@PolymorphicMapType_10611) (SummandMask2@@7 T@PolymorphicMapType_10611) (o_2@@71 T@Ref) (f_4@@71 T@Field_6539_21504) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10611) (SummandMask1@@8 T@PolymorphicMapType_10611) (SummandMask2@@8 T@PolymorphicMapType_10611) (o_2@@72 T@Ref) (f_4@@72 T@Field_10650_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10611) (SummandMask1@@9 T@PolymorphicMapType_10611) (SummandMask2@@9 T@PolymorphicMapType_10611) (o_2@@73 T@Ref) (f_4@@73 T@Field_10663_10664) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10611) (SummandMask1@@10 T@PolymorphicMapType_10611) (SummandMask2@@10 T@PolymorphicMapType_10611) (o_2@@74 T@Ref) (f_4@@74 T@Field_6539_18099) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10611) (SummandMask1@@11 T@PolymorphicMapType_10611) (SummandMask2@@11 T@PolymorphicMapType_10611) (o_2@@75 T@Ref) (f_4@@75 T@Field_21499_21504) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10611) (SummandMask1@@12 T@PolymorphicMapType_10611) (SummandMask2@@12 T@PolymorphicMapType_10611) (o_2@@76 T@Ref) (f_4@@76 T@Field_18098_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10611) (SummandMask1@@13 T@PolymorphicMapType_10611) (SummandMask2@@13 T@PolymorphicMapType_10611) (o_2@@77 T@Ref) (f_4@@77 T@Field_18098_6540) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10611) (SummandMask1@@14 T@PolymorphicMapType_10611) (SummandMask2@@14 T@PolymorphicMapType_10611) (o_2@@78 T@Ref) (f_4@@78 T@Field_18098_18099) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.560:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16737) (b T@Seq_16737) ) (!  (=> (|Seq#Equal_16737| a b) (= a b))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16737| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10590) (Mask@@59 T@PolymorphicMapType_10611) (r_1@@0 T@Ref) ) (!  (=> (state Heap@@35 Mask@@59) (= (|is_int'| Heap@@35 r_1@@0) (|is_int#frame| EmptyFrame r_1@@0)))
 :qid |stdinbpl.637:15|
 :skolemid |63|
 :pattern ( (state Heap@@35 Mask@@59) (|is_int'| Heap@@35 r_1@@0))
)))
(assert (forall ((s@@17 T@Seq_16737) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_16737| s@@17))) (|Seq#ContainsTrigger_6556| s@@17 (|Seq#Index_16737| s@@17 i@@3)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16737| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@4)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16737) (s1@@3 T@Seq_16737) ) (!  (and (=> (= s0@@3 |Seq#Empty_16737|) (= (|Seq#Append_16737| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16737|) (= (|Seq#Append_16737| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16737| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16737| (|Seq#Singleton_16737| t@@3) 0) t@@3)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16737| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16737) ) (! (<= 0 (|Seq#Length_16737| s@@19))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16737| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10590) (r_1@@1 T@Ref) ) (!  (and (= (vis_int Heap@@36 r_1@@1) (|is_int'| Heap@@36 r_1@@1)) (dummyFunction_3412 (|is_int#triggerStateless| r_1@@1)))
 :qid |stdinbpl.626:15|
 :skolemid |61|
 :pattern ( (vis_int Heap@@36 r_1@@1))
)))
(assert (forall ((s0@@5 T@Seq_16737) (s1@@5 T@Seq_16737) ) (!  (=> (|Seq#Equal_16737| s0@@5 s1@@5) (and (= (|Seq#Length_16737| s0@@5) (|Seq#Length_16737| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_16737| s0@@5))) (= (|Seq#Index_16737| s0@@5 j@@6) (|Seq#Index_16737| s1@@5 j@@6)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16737| s0@@5 j@@6))
 :pattern ( (|Seq#Index_16737| s1@@5 j@@6))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16737| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10590) (Mask@@60 T@PolymorphicMapType_10611) (self@@17 T@Ref) ) (!  (=> (state Heap@@37 Mask@@60) (= (|SCIONPath_get_iof'| Heap@@37 self@@17) (|SCIONPath_get_iof#frame| (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@37) null (SCIONPath_State self@@17)) self@@17)))
 :qid |stdinbpl.685:15|
 :skolemid |67|
 :pattern ( (state Heap@@37 Mask@@60) (|SCIONPath_get_iof'| Heap@@37 self@@17))
)))
(assert (forall ((self@@18 T@Ref) ) (! (= (getPredWandId_6635_6636 (OpaqueField_State self@@18)) 0)
 :qid |stdinbpl.832:15|
 :skolemid |76|
 :pattern ( (OpaqueField_State self@@18))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16737| (|Seq#Singleton_16737| t@@5)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16737| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((self@@19 T@Ref) ) (! (= (getPredWandId_6659_6660 (OpaqueFieldList_State self@@19)) 1)
 :qid |stdinbpl.882:15|
 :skolemid |82|
 :pattern ( (OpaqueFieldList_State self@@19))
)))
(assert (forall ((self@@20 T@Ref) ) (! (= (getPredWandId_6698_6699 (SCIONPath_State self@@20)) 2)
 :qid |stdinbpl.990:15|
 :skolemid |95|
 :pattern ( (SCIONPath_State self@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10590) (Mask@@61 T@PolymorphicMapType_10611) (self@@21 T@Ref) ) (!  (=> (state Heap@@38 Mask@@61) (= (|OpaqueFieldList_contents'| Heap@@38 self@@21) (|OpaqueFieldList_contents#frame| EmptyFrame self@@21)))
 :qid |stdinbpl.595:15|
 :skolemid |60|
 :pattern ( (state Heap@@38 Mask@@61) (|OpaqueFieldList_contents'| Heap@@38 self@@21))
)))
(assert (forall ((s@@21 T@Seq_16737) (t@@7 T@Seq_16737) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16737| s@@21))) (= (|Seq#Take_16737| (|Seq#Append_16737| s@@21 t@@7) n@@17) (|Seq#Take_16737| s@@21 n@@17)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16737| (|Seq#Append_16737| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16737) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_16737| s@@23))) (= (|Seq#Length_16737| (|Seq#Update_16737| s@@23 i@@5 v@@2)) (|Seq#Length_16737| s@@23)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16737| (|Seq#Update_16737| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_16737| s@@23) (|Seq#Update_16737| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10590) (o_20 T@Ref) (f_31 T@Field_22275_22280) (v@@4 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@39 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@39) (store (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@39) o_20 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@39) (store (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@39) o_20 f_31 v@@4)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10590) (o_20@@0 T@Ref) (f_31@@0 T@Field_20399_20400) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@40) (store (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@40) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@40) (store (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@40) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10590) (o_20@@1 T@Ref) (f_31@@1 T@Field_20399_6540) (v@@6 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@41) (store (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@41) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@41) (store (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@41) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10590) (o_20@@2 T@Ref) (f_31@@2 T@Field_20399_53) (v@@7 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@42) (store (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@42) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@42) (store (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@42) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10590) (o_20@@3 T@Ref) (f_31@@3 T@Field_21888_21893) (v@@8 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@43 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@43) (store (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@43) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@43) (store (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@43) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10590) (o_20@@4 T@Ref) (f_31@@4 T@Field_18908_18909) (v@@9 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@44) (store (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@44) o_20@@4 f_31@@4 v@@9) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@44) (store (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@44) o_20@@4 f_31@@4 v@@9) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10590) (o_20@@5 T@Ref) (f_31@@5 T@Field_18908_6540) (v@@10 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@45) (store (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@45) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@45) (store (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@45) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10590) (o_20@@6 T@Ref) (f_31@@6 T@Field_18908_53) (v@@11 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@46) (store (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@46) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@46) (store (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@46) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10590) (o_20@@7 T@Ref) (f_31@@7 T@Field_21499_21504) (v@@12 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@47 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@47) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@47) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@47) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@47) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10590) (o_20@@8 T@Ref) (f_31@@8 T@Field_18098_18099) (v@@13 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@48) (store (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@48) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@48) (store (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@48) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10590) (o_20@@9 T@Ref) (f_31@@9 T@Field_18098_6540) (v@@14 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@49) (store (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@49) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@49) (store (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@49) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10590) (o_20@@10 T@Ref) (f_31@@10 T@Field_18098_53) (v@@15 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@50) (store (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@50) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@50) (store (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@50) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10590) (o_20@@11 T@Ref) (f_31@@11 T@Field_6539_21504) (v@@16 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@51 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@51) (store (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@51) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@51) (store (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@51) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_10590) (o_20@@12 T@Ref) (f_31@@12 T@Field_6539_18099) (v@@17 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@52) (store (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@52) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@52) (store (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@52) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_10590) (o_20@@13 T@Ref) (f_31@@13 T@Field_10663_10664) (v@@18 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@53) (store (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@53) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@53) (store (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@53) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_10590) (o_20@@14 T@Ref) (f_31@@14 T@Field_10650_53) (v@@19 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_10590 (store (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@54) o_20@@14 f_31@@14 v@@19) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (store (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@54) o_20@@14 f_31@@14 v@@19) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@54)))
)))
(assert (forall ((self@@22 T@Ref) ) (! (= (PredicateMaskField_6635 (OpaqueField_State self@@22)) (|OpaqueField_State#sm| self@@22))
 :qid |stdinbpl.824:15|
 :skolemid |74|
 :pattern ( (PredicateMaskField_6635 (OpaqueField_State self@@22)))
)))
(assert (forall ((self@@23 T@Ref) ) (! (= (PredicateMaskField_6659 (OpaqueFieldList_State self@@23)) (|OpaqueFieldList_State#sm| self@@23))
 :qid |stdinbpl.874:15|
 :skolemid |80|
 :pattern ( (PredicateMaskField_6659 (OpaqueFieldList_State self@@23)))
)))
(assert (forall ((self@@24 T@Ref) ) (! (= (PredicateMaskField_6698 (SCIONPath_State self@@24)) (|SCIONPath_State#sm| self@@24))
 :qid |stdinbpl.982:15|
 :skolemid |93|
 :pattern ( (PredicateMaskField_6698 (SCIONPath_State self@@24)))
)))
(assert (forall ((s@@25 T@Seq_16737) (t@@9 T@Seq_16737) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16737| s@@25))) (= (|Seq#Drop_16737| (|Seq#Append_16737| s@@25 t@@9) n@@19) (|Seq#Append_16737| (|Seq#Drop_16737| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16737| (|Seq#Append_16737| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16737) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_16737| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_16737| (|Seq#Drop_16737| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_16737| s@@27 i@@7))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16737| s@@27 n@@21) (|Seq#Index_16737| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2963| s@@28 i@@8))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16737) (s1@@7 T@Seq_16737) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16737|)) (not (= s1@@7 |Seq#Empty_16737|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16737| s0@@7))) (= (|Seq#Index_16737| (|Seq#Append_16737| s0@@7 s1@@7) n@@23) (|Seq#Index_16737| s0@@7 n@@23)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16737| (|Seq#Append_16737| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16737| s0@@7 n@@23) (|Seq#Append_16737| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16737) (s1@@9 T@Seq_16737) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16737|)) (not (= s1@@9 |Seq#Empty_16737|))) (<= 0 m)) (< m (|Seq#Length_16737| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16737| s0@@9)) (|Seq#Length_16737| s0@@9)) m) (= (|Seq#Index_16737| (|Seq#Append_16737| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16737| s0@@9))) (|Seq#Index_16737| s1@@9 m))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16737| s1@@9 m) (|Seq#Append_16737| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@15 T@Ref) (f_17 T@Field_10663_10664) (Heap@@55 T@PolymorphicMapType_10590) ) (!  (=> (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@55) o_20@@15 $allocated) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@55) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@55) o_20@@15 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@55) o_20@@15 f_17))
)))
(assert (forall ((s@@29 T@Seq_16737) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_16737| s@@29))) (= (|Seq#Index_16737| s@@29 i@@9) x@@3)) (|Seq#Contains_6544| s@@29 x@@3))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_6544| s@@29 x@@3) (|Seq#Index_16737| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@10) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16737) (s1@@11 T@Seq_16737) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16737| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16737| s0@@11 s1@@11))) (not (= (|Seq#Length_16737| s0@@11) (|Seq#Length_16737| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16737| s0@@11 s1@@11))) (= (|Seq#Length_16737| s0@@11) (|Seq#Length_16737| s1@@11))) (= (|Seq#SkolemDiff_16737| s0@@11 s1@@11) (|Seq#SkolemDiff_16737| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16737| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16737| s0@@11 s1@@11) (|Seq#Length_16737| s0@@11))) (not (= (|Seq#Index_16737| s0@@11 (|Seq#SkolemDiff_16737| s0@@11 s1@@11)) (|Seq#Index_16737| s1@@11 (|Seq#SkolemDiff_16737| s0@@11 s1@@11))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16737| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@4 T@Field_20399_20400) (v_1@@3 T@FrameType) (q T@Field_20399_20400) (w@@3 T@FrameType) (r T@Field_20399_20400) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@4 v_1@@3 q w@@3) (InsidePredicate_20399_20399 q w@@3 r u)) (InsidePredicate_20399_20399 p@@4 v_1@@3 r u))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@4 v_1@@3 q w@@3) (InsidePredicate_20399_20399 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_20399_20400) (v_1@@4 T@FrameType) (q@@0 T@Field_20399_20400) (w@@4 T@FrameType) (r@@0 T@Field_18098_18099) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_20399_18098 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_20399_18098 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_20399_18098 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_20399_20400) (v_1@@5 T@FrameType) (q@@1 T@Field_20399_20400) (w@@5 T@FrameType) (r@@1 T@Field_6539_18099) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_20399_10650 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_20399_10650 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_20399_10650 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_20399_20400) (v_1@@6 T@FrameType) (q@@2 T@Field_20399_20400) (w@@6 T@FrameType) (r@@2 T@Field_18908_18909) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_20399_6659 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_20399_6659 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_20399_6659 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_20399_20400) (v_1@@7 T@FrameType) (q@@3 T@Field_6539_18099) (w@@7 T@FrameType) (r@@3 T@Field_20399_20400) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10650_20399 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_20399_20399 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10650_20399 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_20399_20400) (v_1@@8 T@FrameType) (q@@4 T@Field_6539_18099) (w@@8 T@FrameType) (r@@4 T@Field_18098_18099) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10650_18098 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_20399_18098 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10650_18098 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_20399_20400) (v_1@@9 T@FrameType) (q@@5 T@Field_6539_18099) (w@@9 T@FrameType) (r@@5 T@Field_6539_18099) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10650_10650 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_20399_10650 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10650_10650 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_20399_20400) (v_1@@10 T@FrameType) (q@@6 T@Field_6539_18099) (w@@10 T@FrameType) (r@@6 T@Field_18908_18909) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10650_6659 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_20399_6659 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10650_6659 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_20399_20400) (v_1@@11 T@FrameType) (q@@7 T@Field_18098_18099) (w@@11 T@FrameType) (r@@7 T@Field_20399_20400) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_6698_20399 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_20399_20399 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_6698_20399 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_20399_20400) (v_1@@12 T@FrameType) (q@@8 T@Field_18098_18099) (w@@12 T@FrameType) (r@@8 T@Field_18098_18099) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_6698_18098 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_20399_18098 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_6698_18098 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_20399_20400) (v_1@@13 T@FrameType) (q@@9 T@Field_18098_18099) (w@@13 T@FrameType) (r@@9 T@Field_6539_18099) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_6698_10650 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_20399_10650 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_6698_10650 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_20399_20400) (v_1@@14 T@FrameType) (q@@10 T@Field_18098_18099) (w@@14 T@FrameType) (r@@10 T@Field_18908_18909) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_6698_6659 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_20399_6659 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_6698_6659 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_20399_20400) (v_1@@15 T@FrameType) (q@@11 T@Field_18908_18909) (w@@15 T@FrameType) (r@@11 T@Field_20399_20400) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_6659_20399 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_20399_20399 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_6659_20399 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_20399_20400) (v_1@@16 T@FrameType) (q@@12 T@Field_18908_18909) (w@@16 T@FrameType) (r@@12 T@Field_18098_18099) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_6659_18098 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_20399_18098 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_6659_18098 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_20399_20400) (v_1@@17 T@FrameType) (q@@13 T@Field_18908_18909) (w@@17 T@FrameType) (r@@13 T@Field_6539_18099) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_6659_10650 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_20399_10650 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_6659_10650 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_20399_20400) (v_1@@18 T@FrameType) (q@@14 T@Field_18908_18909) (w@@18 T@FrameType) (r@@14 T@Field_18908_18909) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_6659_6659 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_20399_6659 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_6659_6659 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_18908_18909) (v_1@@19 T@FrameType) (q@@15 T@Field_20399_20400) (w@@19 T@FrameType) (r@@15 T@Field_20399_20400) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_20399_20399 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_6659_20399 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_20399_20399 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_18908_18909) (v_1@@20 T@FrameType) (q@@16 T@Field_20399_20400) (w@@20 T@FrameType) (r@@16 T@Field_18098_18099) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_20399_18098 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_6659_18098 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_20399_18098 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_18908_18909) (v_1@@21 T@FrameType) (q@@17 T@Field_20399_20400) (w@@21 T@FrameType) (r@@17 T@Field_6539_18099) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_20399_10650 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_6659_10650 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_20399_10650 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_18908_18909) (v_1@@22 T@FrameType) (q@@18 T@Field_20399_20400) (w@@22 T@FrameType) (r@@18 T@Field_18908_18909) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_20399_6659 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_6659_6659 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_20399_6659 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_18908_18909) (v_1@@23 T@FrameType) (q@@19 T@Field_6539_18099) (w@@23 T@FrameType) (r@@19 T@Field_20399_20400) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10650_20399 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_6659_20399 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10650_20399 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_18908_18909) (v_1@@24 T@FrameType) (q@@20 T@Field_6539_18099) (w@@24 T@FrameType) (r@@20 T@Field_18098_18099) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10650_18098 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_6659_18098 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10650_18098 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_18908_18909) (v_1@@25 T@FrameType) (q@@21 T@Field_6539_18099) (w@@25 T@FrameType) (r@@21 T@Field_6539_18099) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10650_10650 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_6659_10650 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10650_10650 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_18908_18909) (v_1@@26 T@FrameType) (q@@22 T@Field_6539_18099) (w@@26 T@FrameType) (r@@22 T@Field_18908_18909) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10650_6659 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_6659_6659 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10650_6659 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_18908_18909) (v_1@@27 T@FrameType) (q@@23 T@Field_18098_18099) (w@@27 T@FrameType) (r@@23 T@Field_20399_20400) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_6698_20399 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_6659_20399 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_6698_20399 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_18908_18909) (v_1@@28 T@FrameType) (q@@24 T@Field_18098_18099) (w@@28 T@FrameType) (r@@24 T@Field_18098_18099) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_6698_18098 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_6659_18098 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_6698_18098 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_18908_18909) (v_1@@29 T@FrameType) (q@@25 T@Field_18098_18099) (w@@29 T@FrameType) (r@@25 T@Field_6539_18099) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_6698_10650 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_6659_10650 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_6698_10650 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_18908_18909) (v_1@@30 T@FrameType) (q@@26 T@Field_18098_18099) (w@@30 T@FrameType) (r@@26 T@Field_18908_18909) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_6698_6659 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_6659_6659 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_6698_6659 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_18908_18909) (v_1@@31 T@FrameType) (q@@27 T@Field_18908_18909) (w@@31 T@FrameType) (r@@27 T@Field_20399_20400) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_6659_20399 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_6659_20399 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_6659_20399 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_18908_18909) (v_1@@32 T@FrameType) (q@@28 T@Field_18908_18909) (w@@32 T@FrameType) (r@@28 T@Field_18098_18099) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_6659_18098 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_6659_18098 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_6659_18098 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_18908_18909) (v_1@@33 T@FrameType) (q@@29 T@Field_18908_18909) (w@@33 T@FrameType) (r@@29 T@Field_6539_18099) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_6659_10650 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_6659_10650 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_6659_10650 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_18908_18909) (v_1@@34 T@FrameType) (q@@30 T@Field_18908_18909) (w@@34 T@FrameType) (r@@30 T@Field_18908_18909) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_6659_6659 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_6659_6659 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_6659_6659 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_6539_18099) (v_1@@35 T@FrameType) (q@@31 T@Field_20399_20400) (w@@35 T@FrameType) (r@@31 T@Field_20399_20400) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_20399_20399 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_10650_20399 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_20399_20399 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_6539_18099) (v_1@@36 T@FrameType) (q@@32 T@Field_20399_20400) (w@@36 T@FrameType) (r@@32 T@Field_18098_18099) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_20399_18098 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_10650_18098 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_20399_18098 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_6539_18099) (v_1@@37 T@FrameType) (q@@33 T@Field_20399_20400) (w@@37 T@FrameType) (r@@33 T@Field_6539_18099) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_20399_10650 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_10650_10650 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_20399_10650 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_6539_18099) (v_1@@38 T@FrameType) (q@@34 T@Field_20399_20400) (w@@38 T@FrameType) (r@@34 T@Field_18908_18909) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_20399_6659 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_10650_6659 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_20399_6659 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_6539_18099) (v_1@@39 T@FrameType) (q@@35 T@Field_6539_18099) (w@@39 T@FrameType) (r@@35 T@Field_20399_20400) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10650_20399 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_10650_20399 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10650_20399 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_6539_18099) (v_1@@40 T@FrameType) (q@@36 T@Field_6539_18099) (w@@40 T@FrameType) (r@@36 T@Field_18098_18099) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10650_18098 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_10650_18098 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10650_18098 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_6539_18099) (v_1@@41 T@FrameType) (q@@37 T@Field_6539_18099) (w@@41 T@FrameType) (r@@37 T@Field_6539_18099) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10650_10650 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_10650_10650 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10650_10650 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_6539_18099) (v_1@@42 T@FrameType) (q@@38 T@Field_6539_18099) (w@@42 T@FrameType) (r@@38 T@Field_18908_18909) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10650_6659 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_10650_6659 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10650_6659 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_6539_18099) (v_1@@43 T@FrameType) (q@@39 T@Field_18098_18099) (w@@43 T@FrameType) (r@@39 T@Field_20399_20400) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_6698_20399 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_10650_20399 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_6698_20399 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_6539_18099) (v_1@@44 T@FrameType) (q@@40 T@Field_18098_18099) (w@@44 T@FrameType) (r@@40 T@Field_18098_18099) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_6698_18098 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_10650_18098 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_6698_18098 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_6539_18099) (v_1@@45 T@FrameType) (q@@41 T@Field_18098_18099) (w@@45 T@FrameType) (r@@41 T@Field_6539_18099) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_6698_10650 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_10650_10650 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_6698_10650 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_6539_18099) (v_1@@46 T@FrameType) (q@@42 T@Field_18098_18099) (w@@46 T@FrameType) (r@@42 T@Field_18908_18909) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_6698_6659 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_10650_6659 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_6698_6659 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_6539_18099) (v_1@@47 T@FrameType) (q@@43 T@Field_18908_18909) (w@@47 T@FrameType) (r@@43 T@Field_20399_20400) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_6659_20399 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_10650_20399 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_6659_20399 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_6539_18099) (v_1@@48 T@FrameType) (q@@44 T@Field_18908_18909) (w@@48 T@FrameType) (r@@44 T@Field_18098_18099) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_6659_18098 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_10650_18098 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_6659_18098 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_6539_18099) (v_1@@49 T@FrameType) (q@@45 T@Field_18908_18909) (w@@49 T@FrameType) (r@@45 T@Field_6539_18099) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_6659_10650 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_10650_10650 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_6659_10650 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_6539_18099) (v_1@@50 T@FrameType) (q@@46 T@Field_18908_18909) (w@@50 T@FrameType) (r@@46 T@Field_18908_18909) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_6659_6659 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_10650_6659 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_6659_6659 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_18098_18099) (v_1@@51 T@FrameType) (q@@47 T@Field_20399_20400) (w@@51 T@FrameType) (r@@47 T@Field_20399_20400) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_20399_20399 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_6698_20399 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_20399_20399 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_18098_18099) (v_1@@52 T@FrameType) (q@@48 T@Field_20399_20400) (w@@52 T@FrameType) (r@@48 T@Field_18098_18099) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_20399_18098 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_6698_18098 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_20399_18098 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_18098_18099) (v_1@@53 T@FrameType) (q@@49 T@Field_20399_20400) (w@@53 T@FrameType) (r@@49 T@Field_6539_18099) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_20399_10650 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_6698_10650 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_20399_10650 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_18098_18099) (v_1@@54 T@FrameType) (q@@50 T@Field_20399_20400) (w@@54 T@FrameType) (r@@50 T@Field_18908_18909) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_20399_6659 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_6698_6659 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_20399_6659 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_18098_18099) (v_1@@55 T@FrameType) (q@@51 T@Field_6539_18099) (w@@55 T@FrameType) (r@@51 T@Field_20399_20400) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10650_20399 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_6698_20399 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10650_20399 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_18098_18099) (v_1@@56 T@FrameType) (q@@52 T@Field_6539_18099) (w@@56 T@FrameType) (r@@52 T@Field_18098_18099) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10650_18098 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_6698_18098 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10650_18098 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_18098_18099) (v_1@@57 T@FrameType) (q@@53 T@Field_6539_18099) (w@@57 T@FrameType) (r@@53 T@Field_6539_18099) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10650_10650 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_6698_10650 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10650_10650 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_18098_18099) (v_1@@58 T@FrameType) (q@@54 T@Field_6539_18099) (w@@58 T@FrameType) (r@@54 T@Field_18908_18909) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10650_6659 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_6698_6659 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10650_6659 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_18098_18099) (v_1@@59 T@FrameType) (q@@55 T@Field_18098_18099) (w@@59 T@FrameType) (r@@55 T@Field_20399_20400) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_6698_20399 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_6698_20399 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_6698_20399 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_18098_18099) (v_1@@60 T@FrameType) (q@@56 T@Field_18098_18099) (w@@60 T@FrameType) (r@@56 T@Field_18098_18099) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_6698_18098 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_6698_18098 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_6698_18098 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_18098_18099) (v_1@@61 T@FrameType) (q@@57 T@Field_18098_18099) (w@@61 T@FrameType) (r@@57 T@Field_6539_18099) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_6698_10650 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_6698_10650 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_6698_10650 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_18098_18099) (v_1@@62 T@FrameType) (q@@58 T@Field_18098_18099) (w@@62 T@FrameType) (r@@58 T@Field_18908_18909) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_6698_6659 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_6698_6659 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_6698_6659 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_18098_18099) (v_1@@63 T@FrameType) (q@@59 T@Field_18908_18909) (w@@63 T@FrameType) (r@@59 T@Field_20399_20400) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_6659_20399 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_6698_20399 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_6659_20399 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_18098_18099) (v_1@@64 T@FrameType) (q@@60 T@Field_18908_18909) (w@@64 T@FrameType) (r@@60 T@Field_18098_18099) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_6659_18098 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_6698_18098 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_6659_18098 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_18098_18099) (v_1@@65 T@FrameType) (q@@61 T@Field_18908_18909) (w@@65 T@FrameType) (r@@61 T@Field_6539_18099) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_6659_10650 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_6698_10650 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_6659_10650 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_18098_18099) (v_1@@66 T@FrameType) (q@@62 T@Field_18908_18909) (w@@66 T@FrameType) (r@@62 T@Field_18908_18909) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_6659_6659 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_6698_6659 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_6659_6659 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_10590) (ExhaleHeap@@25 T@PolymorphicMapType_10590) (Mask@@62 T@PolymorphicMapType_10611) (pm_f_9@@7 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@25 Mask@@62) (=> (and (HasDirectPerm_20399_18099 Mask@@62 null pm_f_9@@7) (IsPredicateField_6635_6636 pm_f_9@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24@@15 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9 f_24@@15) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@56) o2_9 f_24@@15) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9 f_24@@15))
)) (forall ((o2_9@@0 T@Ref) (f_24@@16 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@0 f_24@@16) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@56) o2_9@@0 f_24@@16) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@0 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@0 f_24@@16))
))) (forall ((o2_9@@1 T@Ref) (f_24@@17 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@1 f_24@@17) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@56) o2_9@@1 f_24@@17) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@1 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@1 f_24@@17))
))) (forall ((o2_9@@2 T@Ref) (f_24@@18 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@2 f_24@@18) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@56) o2_9@@2 f_24@@18) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@2 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@2 f_24@@18))
))) (forall ((o2_9@@3 T@Ref) (f_24@@19 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@3 f_24@@19) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@3 f_24@@19) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@3 f_24@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@3 f_24@@19))
))) (forall ((o2_9@@4 T@Ref) (f_24@@20 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@4 f_24@@20) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@56) o2_9@@4 f_24@@20) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@4 f_24@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@4 f_24@@20))
))) (forall ((o2_9@@5 T@Ref) (f_24@@21 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@5 f_24@@21) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@56) o2_9@@5 f_24@@21) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@5 f_24@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@5 f_24@@21))
))) (forall ((o2_9@@6 T@Ref) (f_24@@22 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@6 f_24@@22) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@56) o2_9@@6 f_24@@22) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@6 f_24@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@6 f_24@@22))
))) (forall ((o2_9@@7 T@Ref) (f_24@@23 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@7 f_24@@23) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@7 f_24@@23) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@7 f_24@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@7 f_24@@23))
))) (forall ((o2_9@@8 T@Ref) (f_24@@24 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@8 f_24@@24) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@56) o2_9@@8 f_24@@24) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@8 f_24@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@8 f_24@@24))
))) (forall ((o2_9@@9 T@Ref) (f_24@@25 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@9 f_24@@25) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@56) o2_9@@9 f_24@@25) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@9 f_24@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@9 f_24@@25))
))) (forall ((o2_9@@10 T@Ref) (f_24@@26 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@10 f_24@@26) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@56) o2_9@@10 f_24@@26) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@10 f_24@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@10 f_24@@26))
))) (forall ((o2_9@@11 T@Ref) (f_24@@27 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@11 f_24@@27) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@11 f_24@@27) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@11 f_24@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@11 f_24@@27))
))) (forall ((o2_9@@12 T@Ref) (f_24@@28 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@12 f_24@@28) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@56) o2_9@@12 f_24@@28) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@12 f_24@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@12 f_24@@28))
))) (forall ((o2_9@@13 T@Ref) (f_24@@29 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@13 f_24@@29) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@56) o2_9@@13 f_24@@29) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@13 f_24@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@13 f_24@@29))
))) (forall ((o2_9@@14 T@Ref) (f_24@@30 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@14 f_24@@30) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) o2_9@@14 f_24@@30) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@14 f_24@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@14 f_24@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@25 Mask@@62) (IsPredicateField_6635_6636 pm_f_9@@7))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_10590) (ExhaleHeap@@26 T@PolymorphicMapType_10590) (Mask@@63 T@PolymorphicMapType_10611) (pm_f_9@@8 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@26 Mask@@63) (=> (and (HasDirectPerm_18908_18099 Mask@@63 null pm_f_9@@8) (IsPredicateField_6659_6660 pm_f_9@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@15 T@Ref) (f_24@@31 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@15 f_24@@31) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@57) o2_9@@15 f_24@@31) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@15 f_24@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@15 f_24@@31))
)) (forall ((o2_9@@16 T@Ref) (f_24@@32 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@16 f_24@@32) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@57) o2_9@@16 f_24@@32) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@16 f_24@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@16 f_24@@32))
))) (forall ((o2_9@@17 T@Ref) (f_24@@33 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@17 f_24@@33) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@57) o2_9@@17 f_24@@33) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@17 f_24@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@17 f_24@@33))
))) (forall ((o2_9@@18 T@Ref) (f_24@@34 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@18 f_24@@34) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@57) o2_9@@18 f_24@@34) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@18 f_24@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@18 f_24@@34))
))) (forall ((o2_9@@19 T@Ref) (f_24@@35 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@19 f_24@@35) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@19 f_24@@35) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@19 f_24@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@19 f_24@@35))
))) (forall ((o2_9@@20 T@Ref) (f_24@@36 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@20 f_24@@36) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@57) o2_9@@20 f_24@@36) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@20 f_24@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@20 f_24@@36))
))) (forall ((o2_9@@21 T@Ref) (f_24@@37 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@21 f_24@@37) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@57) o2_9@@21 f_24@@37) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@21 f_24@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@21 f_24@@37))
))) (forall ((o2_9@@22 T@Ref) (f_24@@38 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@22 f_24@@38) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@57) o2_9@@22 f_24@@38) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@22 f_24@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@22 f_24@@38))
))) (forall ((o2_9@@23 T@Ref) (f_24@@39 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@23 f_24@@39) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@23 f_24@@39) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@23 f_24@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@23 f_24@@39))
))) (forall ((o2_9@@24 T@Ref) (f_24@@40 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@24 f_24@@40) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@57) o2_9@@24 f_24@@40) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@24 f_24@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@24 f_24@@40))
))) (forall ((o2_9@@25 T@Ref) (f_24@@41 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@25 f_24@@41) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@57) o2_9@@25 f_24@@41) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@25 f_24@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@25 f_24@@41))
))) (forall ((o2_9@@26 T@Ref) (f_24@@42 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@26 f_24@@42) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) o2_9@@26 f_24@@42) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@26 f_24@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@26 f_24@@42))
))) (forall ((o2_9@@27 T@Ref) (f_24@@43 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@27 f_24@@43) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@27 f_24@@43) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@27 f_24@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@27 f_24@@43))
))) (forall ((o2_9@@28 T@Ref) (f_24@@44 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@28 f_24@@44) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@57) o2_9@@28 f_24@@44) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@28 f_24@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@28 f_24@@44))
))) (forall ((o2_9@@29 T@Ref) (f_24@@45 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@29 f_24@@45) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@57) o2_9@@29 f_24@@45) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@29 f_24@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@29 f_24@@45))
))) (forall ((o2_9@@30 T@Ref) (f_24@@46 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@30 f_24@@46) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@57) o2_9@@30 f_24@@46) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@30 f_24@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@30 f_24@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@26 Mask@@63) (IsPredicateField_6659_6660 pm_f_9@@8))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_10590) (ExhaleHeap@@27 T@PolymorphicMapType_10590) (Mask@@64 T@PolymorphicMapType_10611) (pm_f_9@@9 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@27 Mask@@64) (=> (and (HasDirectPerm_18098_18099 Mask@@64 null pm_f_9@@9) (IsPredicateField_6698_6699 pm_f_9@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@31 T@Ref) (f_24@@47 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@31 f_24@@47) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@58) o2_9@@31 f_24@@47) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@31 f_24@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@31 f_24@@47))
)) (forall ((o2_9@@32 T@Ref) (f_24@@48 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@32 f_24@@48) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@58) o2_9@@32 f_24@@48) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@32 f_24@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@32 f_24@@48))
))) (forall ((o2_9@@33 T@Ref) (f_24@@49 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@33 f_24@@49) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@58) o2_9@@33 f_24@@49) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@33 f_24@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@33 f_24@@49))
))) (forall ((o2_9@@34 T@Ref) (f_24@@50 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@34 f_24@@50) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@58) o2_9@@34 f_24@@50) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@34 f_24@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@34 f_24@@50))
))) (forall ((o2_9@@35 T@Ref) (f_24@@51 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@35 f_24@@51) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@35 f_24@@51) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@35 f_24@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@35 f_24@@51))
))) (forall ((o2_9@@36 T@Ref) (f_24@@52 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@36 f_24@@52) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@58) o2_9@@36 f_24@@52) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@36 f_24@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@36 f_24@@52))
))) (forall ((o2_9@@37 T@Ref) (f_24@@53 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@37 f_24@@53) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@58) o2_9@@37 f_24@@53) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@37 f_24@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@37 f_24@@53))
))) (forall ((o2_9@@38 T@Ref) (f_24@@54 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@38 f_24@@54) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) o2_9@@38 f_24@@54) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@38 f_24@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@38 f_24@@54))
))) (forall ((o2_9@@39 T@Ref) (f_24@@55 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@39 f_24@@55) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@39 f_24@@55) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@39 f_24@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@39 f_24@@55))
))) (forall ((o2_9@@40 T@Ref) (f_24@@56 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@40 f_24@@56) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@58) o2_9@@40 f_24@@56) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@40 f_24@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@40 f_24@@56))
))) (forall ((o2_9@@41 T@Ref) (f_24@@57 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@41 f_24@@57) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@58) o2_9@@41 f_24@@57) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@41 f_24@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@41 f_24@@57))
))) (forall ((o2_9@@42 T@Ref) (f_24@@58 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@42 f_24@@58) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@58) o2_9@@42 f_24@@58) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@42 f_24@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@42 f_24@@58))
))) (forall ((o2_9@@43 T@Ref) (f_24@@59 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@43 f_24@@59) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@43 f_24@@59) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@43 f_24@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@43 f_24@@59))
))) (forall ((o2_9@@44 T@Ref) (f_24@@60 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@44 f_24@@60) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@58) o2_9@@44 f_24@@60) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@44 f_24@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@44 f_24@@60))
))) (forall ((o2_9@@45 T@Ref) (f_24@@61 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@45 f_24@@61) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@58) o2_9@@45 f_24@@61) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@45 f_24@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@45 f_24@@61))
))) (forall ((o2_9@@46 T@Ref) (f_24@@62 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@46 f_24@@62) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@58) o2_9@@46 f_24@@62) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@46 f_24@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@46 f_24@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@27 Mask@@64) (IsPredicateField_6698_6699 pm_f_9@@9))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_10590) (ExhaleHeap@@28 T@PolymorphicMapType_10590) (Mask@@65 T@PolymorphicMapType_10611) (pm_f_9@@10 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@28 Mask@@65) (=> (and (HasDirectPerm_6539_18099 Mask@@65 null pm_f_9@@10) (IsPredicateField_6539_34013 pm_f_9@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@47 T@Ref) (f_24@@63 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@47 f_24@@63) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@59) o2_9@@47 f_24@@63) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@47 f_24@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@47 f_24@@63))
)) (forall ((o2_9@@48 T@Ref) (f_24@@64 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@48 f_24@@64) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@59) o2_9@@48 f_24@@64) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@48 f_24@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@48 f_24@@64))
))) (forall ((o2_9@@49 T@Ref) (f_24@@65 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@49 f_24@@65) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@59) o2_9@@49 f_24@@65) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@49 f_24@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@49 f_24@@65))
))) (forall ((o2_9@@50 T@Ref) (f_24@@66 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@50 f_24@@66) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) o2_9@@50 f_24@@66) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@50 f_24@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@50 f_24@@66))
))) (forall ((o2_9@@51 T@Ref) (f_24@@67 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@51 f_24@@67) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@51 f_24@@67) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@51 f_24@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@51 f_24@@67))
))) (forall ((o2_9@@52 T@Ref) (f_24@@68 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@52 f_24@@68) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@59) o2_9@@52 f_24@@68) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@52 f_24@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@52 f_24@@68))
))) (forall ((o2_9@@53 T@Ref) (f_24@@69 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@53 f_24@@69) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@59) o2_9@@53 f_24@@69) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@53 f_24@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@53 f_24@@69))
))) (forall ((o2_9@@54 T@Ref) (f_24@@70 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@54 f_24@@70) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@59) o2_9@@54 f_24@@70) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@54 f_24@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@54 f_24@@70))
))) (forall ((o2_9@@55 T@Ref) (f_24@@71 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@55 f_24@@71) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@55 f_24@@71) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@55 f_24@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@55 f_24@@71))
))) (forall ((o2_9@@56 T@Ref) (f_24@@72 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@56 f_24@@72) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@59) o2_9@@56 f_24@@72) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@56 f_24@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@56 f_24@@72))
))) (forall ((o2_9@@57 T@Ref) (f_24@@73 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@57 f_24@@73) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@59) o2_9@@57 f_24@@73) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@57 f_24@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@57 f_24@@73))
))) (forall ((o2_9@@58 T@Ref) (f_24@@74 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@58 f_24@@74) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@59) o2_9@@58 f_24@@74) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@58 f_24@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@58 f_24@@74))
))) (forall ((o2_9@@59 T@Ref) (f_24@@75 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@59 f_24@@75) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@59 f_24@@75) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@59 f_24@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@59 f_24@@75))
))) (forall ((o2_9@@60 T@Ref) (f_24@@76 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@60 f_24@@76) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@59) o2_9@@60 f_24@@76) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@60 f_24@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@60 f_24@@76))
))) (forall ((o2_9@@61 T@Ref) (f_24@@77 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@61 f_24@@77) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@59) o2_9@@61 f_24@@77) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@61 f_24@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@61 f_24@@77))
))) (forall ((o2_9@@62 T@Ref) (f_24@@78 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@62 f_24@@78) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@59) o2_9@@62 f_24@@78) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@62 f_24@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@62 f_24@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@28 Mask@@65) (IsPredicateField_6539_34013 pm_f_9@@10))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_10590) (ExhaleHeap@@29 T@PolymorphicMapType_10590) (Mask@@66 T@PolymorphicMapType_10611) (pm_f_9@@11 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@29 Mask@@66) (=> (and (HasDirectPerm_20399_18099 Mask@@66 null pm_f_9@@11) (IsWandField_20399_40925 pm_f_9@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@63 T@Ref) (f_24@@79 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@63 f_24@@79) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@60) o2_9@@63 f_24@@79) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@63 f_24@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@63 f_24@@79))
)) (forall ((o2_9@@64 T@Ref) (f_24@@80 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@64 f_24@@80) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@60) o2_9@@64 f_24@@80) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@64 f_24@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@64 f_24@@80))
))) (forall ((o2_9@@65 T@Ref) (f_24@@81 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@65 f_24@@81) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@60) o2_9@@65 f_24@@81) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@65 f_24@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@65 f_24@@81))
))) (forall ((o2_9@@66 T@Ref) (f_24@@82 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@66 f_24@@82) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@60) o2_9@@66 f_24@@82) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@66 f_24@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@66 f_24@@82))
))) (forall ((o2_9@@67 T@Ref) (f_24@@83 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@67 f_24@@83) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@67 f_24@@83) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@67 f_24@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@67 f_24@@83))
))) (forall ((o2_9@@68 T@Ref) (f_24@@84 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@68 f_24@@84) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@60) o2_9@@68 f_24@@84) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@68 f_24@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@68 f_24@@84))
))) (forall ((o2_9@@69 T@Ref) (f_24@@85 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@69 f_24@@85) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@60) o2_9@@69 f_24@@85) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@69 f_24@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@69 f_24@@85))
))) (forall ((o2_9@@70 T@Ref) (f_24@@86 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@70 f_24@@86) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@60) o2_9@@70 f_24@@86) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@70 f_24@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@70 f_24@@86))
))) (forall ((o2_9@@71 T@Ref) (f_24@@87 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@71 f_24@@87) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@71 f_24@@87) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@71 f_24@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@71 f_24@@87))
))) (forall ((o2_9@@72 T@Ref) (f_24@@88 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@72 f_24@@88) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@60) o2_9@@72 f_24@@88) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@72 f_24@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@72 f_24@@88))
))) (forall ((o2_9@@73 T@Ref) (f_24@@89 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@73 f_24@@89) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@60) o2_9@@73 f_24@@89) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@73 f_24@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@73 f_24@@89))
))) (forall ((o2_9@@74 T@Ref) (f_24@@90 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@74 f_24@@90) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@60) o2_9@@74 f_24@@90) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@74 f_24@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@74 f_24@@90))
))) (forall ((o2_9@@75 T@Ref) (f_24@@91 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@75 f_24@@91) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@75 f_24@@91) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@75 f_24@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@75 f_24@@91))
))) (forall ((o2_9@@76 T@Ref) (f_24@@92 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@76 f_24@@92) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@60) o2_9@@76 f_24@@92) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@76 f_24@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@76 f_24@@92))
))) (forall ((o2_9@@77 T@Ref) (f_24@@93 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@77 f_24@@93) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@60) o2_9@@77 f_24@@93) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@77 f_24@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@77 f_24@@93))
))) (forall ((o2_9@@78 T@Ref) (f_24@@94 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@78 f_24@@94) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) o2_9@@78 f_24@@94) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@78 f_24@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@78 f_24@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@29 Mask@@66) (IsWandField_20399_40925 pm_f_9@@11))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_10590) (ExhaleHeap@@30 T@PolymorphicMapType_10590) (Mask@@67 T@PolymorphicMapType_10611) (pm_f_9@@12 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@30 Mask@@67) (=> (and (HasDirectPerm_18908_18099 Mask@@67 null pm_f_9@@12) (IsWandField_18908_40568 pm_f_9@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@79 T@Ref) (f_24@@95 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@79 f_24@@95) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@61) o2_9@@79 f_24@@95) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@79 f_24@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@79 f_24@@95))
)) (forall ((o2_9@@80 T@Ref) (f_24@@96 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@80 f_24@@96) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@61) o2_9@@80 f_24@@96) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@80 f_24@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@80 f_24@@96))
))) (forall ((o2_9@@81 T@Ref) (f_24@@97 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@81 f_24@@97) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@61) o2_9@@81 f_24@@97) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@81 f_24@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@81 f_24@@97))
))) (forall ((o2_9@@82 T@Ref) (f_24@@98 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@82 f_24@@98) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@61) o2_9@@82 f_24@@98) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@82 f_24@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@82 f_24@@98))
))) (forall ((o2_9@@83 T@Ref) (f_24@@99 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@83 f_24@@99) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@83 f_24@@99) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@83 f_24@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@83 f_24@@99))
))) (forall ((o2_9@@84 T@Ref) (f_24@@100 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@84 f_24@@100) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@61) o2_9@@84 f_24@@100) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@84 f_24@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@84 f_24@@100))
))) (forall ((o2_9@@85 T@Ref) (f_24@@101 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@85 f_24@@101) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@61) o2_9@@85 f_24@@101) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@85 f_24@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@85 f_24@@101))
))) (forall ((o2_9@@86 T@Ref) (f_24@@102 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@86 f_24@@102) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@61) o2_9@@86 f_24@@102) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@86 f_24@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@86 f_24@@102))
))) (forall ((o2_9@@87 T@Ref) (f_24@@103 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@87 f_24@@103) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@87 f_24@@103) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@87 f_24@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@87 f_24@@103))
))) (forall ((o2_9@@88 T@Ref) (f_24@@104 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@88 f_24@@104) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@61) o2_9@@88 f_24@@104) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@88 f_24@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@88 f_24@@104))
))) (forall ((o2_9@@89 T@Ref) (f_24@@105 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@89 f_24@@105) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@61) o2_9@@89 f_24@@105) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@89 f_24@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@89 f_24@@105))
))) (forall ((o2_9@@90 T@Ref) (f_24@@106 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@90 f_24@@106) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) o2_9@@90 f_24@@106) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@90 f_24@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@90 f_24@@106))
))) (forall ((o2_9@@91 T@Ref) (f_24@@107 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@91 f_24@@107) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@91 f_24@@107) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@91 f_24@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@91 f_24@@107))
))) (forall ((o2_9@@92 T@Ref) (f_24@@108 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@92 f_24@@108) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@61) o2_9@@92 f_24@@108) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@92 f_24@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@92 f_24@@108))
))) (forall ((o2_9@@93 T@Ref) (f_24@@109 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@93 f_24@@109) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@61) o2_9@@93 f_24@@109) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@93 f_24@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@93 f_24@@109))
))) (forall ((o2_9@@94 T@Ref) (f_24@@110 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@94 f_24@@110) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@61) o2_9@@94 f_24@@110) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@94 f_24@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@94 f_24@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@30 Mask@@67) (IsWandField_18908_40568 pm_f_9@@12))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_10590) (ExhaleHeap@@31 T@PolymorphicMapType_10590) (Mask@@68 T@PolymorphicMapType_10611) (pm_f_9@@13 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@31 Mask@@68) (=> (and (HasDirectPerm_18098_18099 Mask@@68 null pm_f_9@@13) (IsWandField_18098_40211 pm_f_9@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@95 T@Ref) (f_24@@111 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@95 f_24@@111) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@62) o2_9@@95 f_24@@111) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@95 f_24@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@95 f_24@@111))
)) (forall ((o2_9@@96 T@Ref) (f_24@@112 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@96 f_24@@112) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@62) o2_9@@96 f_24@@112) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@96 f_24@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@96 f_24@@112))
))) (forall ((o2_9@@97 T@Ref) (f_24@@113 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@97 f_24@@113) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@62) o2_9@@97 f_24@@113) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@97 f_24@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@97 f_24@@113))
))) (forall ((o2_9@@98 T@Ref) (f_24@@114 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@98 f_24@@114) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@62) o2_9@@98 f_24@@114) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@98 f_24@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@98 f_24@@114))
))) (forall ((o2_9@@99 T@Ref) (f_24@@115 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@99 f_24@@115) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@99 f_24@@115) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@99 f_24@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@99 f_24@@115))
))) (forall ((o2_9@@100 T@Ref) (f_24@@116 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@100 f_24@@116) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@62) o2_9@@100 f_24@@116) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@100 f_24@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@100 f_24@@116))
))) (forall ((o2_9@@101 T@Ref) (f_24@@117 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@101 f_24@@117) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@62) o2_9@@101 f_24@@117) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@101 f_24@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@101 f_24@@117))
))) (forall ((o2_9@@102 T@Ref) (f_24@@118 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@102 f_24@@118) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) o2_9@@102 f_24@@118) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@102 f_24@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@102 f_24@@118))
))) (forall ((o2_9@@103 T@Ref) (f_24@@119 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@103 f_24@@119) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@103 f_24@@119) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@103 f_24@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@103 f_24@@119))
))) (forall ((o2_9@@104 T@Ref) (f_24@@120 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@104 f_24@@120) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@62) o2_9@@104 f_24@@120) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@104 f_24@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@104 f_24@@120))
))) (forall ((o2_9@@105 T@Ref) (f_24@@121 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@105 f_24@@121) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@62) o2_9@@105 f_24@@121) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@105 f_24@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@105 f_24@@121))
))) (forall ((o2_9@@106 T@Ref) (f_24@@122 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@106 f_24@@122) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@62) o2_9@@106 f_24@@122) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@106 f_24@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@106 f_24@@122))
))) (forall ((o2_9@@107 T@Ref) (f_24@@123 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@107 f_24@@123) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@107 f_24@@123) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@107 f_24@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@107 f_24@@123))
))) (forall ((o2_9@@108 T@Ref) (f_24@@124 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@108 f_24@@124) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@62) o2_9@@108 f_24@@124) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@108 f_24@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@108 f_24@@124))
))) (forall ((o2_9@@109 T@Ref) (f_24@@125 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@109 f_24@@125) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@62) o2_9@@109 f_24@@125) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@109 f_24@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@109 f_24@@125))
))) (forall ((o2_9@@110 T@Ref) (f_24@@126 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@110 f_24@@126) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@62) o2_9@@110 f_24@@126) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@110 f_24@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@110 f_24@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@31 Mask@@68) (IsWandField_18098_40211 pm_f_9@@13))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_10590) (ExhaleHeap@@32 T@PolymorphicMapType_10590) (Mask@@69 T@PolymorphicMapType_10611) (pm_f_9@@14 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@32 Mask@@69) (=> (and (HasDirectPerm_6539_18099 Mask@@69 null pm_f_9@@14) (IsWandField_6539_39854 pm_f_9@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@111 T@Ref) (f_24@@127 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@111 f_24@@127) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@63) o2_9@@111 f_24@@127) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@111 f_24@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@111 f_24@@127))
)) (forall ((o2_9@@112 T@Ref) (f_24@@128 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@112 f_24@@128) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@63) o2_9@@112 f_24@@128) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@112 f_24@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@112 f_24@@128))
))) (forall ((o2_9@@113 T@Ref) (f_24@@129 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@113 f_24@@129) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@63) o2_9@@113 f_24@@129) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@113 f_24@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@113 f_24@@129))
))) (forall ((o2_9@@114 T@Ref) (f_24@@130 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@114 f_24@@130) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) o2_9@@114 f_24@@130) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@114 f_24@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@114 f_24@@130))
))) (forall ((o2_9@@115 T@Ref) (f_24@@131 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@115 f_24@@131) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@115 f_24@@131) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@115 f_24@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@115 f_24@@131))
))) (forall ((o2_9@@116 T@Ref) (f_24@@132 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@116 f_24@@132) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@63) o2_9@@116 f_24@@132) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@116 f_24@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@116 f_24@@132))
))) (forall ((o2_9@@117 T@Ref) (f_24@@133 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@117 f_24@@133) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@63) o2_9@@117 f_24@@133) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@117 f_24@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@117 f_24@@133))
))) (forall ((o2_9@@118 T@Ref) (f_24@@134 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@118 f_24@@134) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@63) o2_9@@118 f_24@@134) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@118 f_24@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@118 f_24@@134))
))) (forall ((o2_9@@119 T@Ref) (f_24@@135 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@119 f_24@@135) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@119 f_24@@135) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@119 f_24@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@119 f_24@@135))
))) (forall ((o2_9@@120 T@Ref) (f_24@@136 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@120 f_24@@136) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@63) o2_9@@120 f_24@@136) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@120 f_24@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@120 f_24@@136))
))) (forall ((o2_9@@121 T@Ref) (f_24@@137 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@121 f_24@@137) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@63) o2_9@@121 f_24@@137) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@121 f_24@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@121 f_24@@137))
))) (forall ((o2_9@@122 T@Ref) (f_24@@138 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@122 f_24@@138) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@63) o2_9@@122 f_24@@138) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@122 f_24@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@122 f_24@@138))
))) (forall ((o2_9@@123 T@Ref) (f_24@@139 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@123 f_24@@139) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@123 f_24@@139) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@123 f_24@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@123 f_24@@139))
))) (forall ((o2_9@@124 T@Ref) (f_24@@140 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@124 f_24@@140) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@63) o2_9@@124 f_24@@140) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@124 f_24@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@124 f_24@@140))
))) (forall ((o2_9@@125 T@Ref) (f_24@@141 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@125 f_24@@141) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@63) o2_9@@125 f_24@@141) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@125 f_24@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@125 f_24@@141))
))) (forall ((o2_9@@126 T@Ref) (f_24@@142 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@126 f_24@@142) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@63) o2_9@@126 f_24@@142) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@126 f_24@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@126 f_24@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@32 Mask@@69) (IsWandField_6539_39854 pm_f_9@@14))
)))
(assert (forall ((s@@31 T@Seq_16737) ) (!  (=> (= (|Seq#Length_16737| s@@31) 0) (= s@@31 |Seq#Empty_16737|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16737| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16737) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16737| s@@33 n@@25) |Seq#Empty_16737|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16737| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@64 () T@PolymorphicMapType_10590)
(declare-fun self@@25 () T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6540 (T@Ref) T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_10611)
(declare-fun wildcard@0 () Real)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_10611)
(declare-fun wildcard@1 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_10611)
(declare-fun FrameFragment_4751 (Int) T@FrameType)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_10611)
(declare-fun getPredWandId_6539_6540 (T@Field_10663_10664) Int)
(declare-fun getPredWandId_6539_6636 (T@Field_6539_18099) Int)
(declare-fun getPredWandId_6539_53 (T@Field_10650_53) Int)
(declare-fun getPredWandId_6539_72052 (T@Field_6539_21504) Int)
(declare-fun getPredWandId_6635_6540 (T@Field_20399_6540) Int)
(declare-fun getPredWandId_6635_53 (T@Field_20399_53) Int)
(declare-fun getPredWandId_6635_72699 (T@Field_22275_22280) Int)
(declare-fun getPredWandId_6659_6540 (T@Field_18908_6540) Int)
(declare-fun getPredWandId_6659_53 (T@Field_18908_53) Int)
(declare-fun getPredWandId_6659_73346 (T@Field_21888_21893) Int)
(declare-fun getPredWandId_6698_6540 (T@Field_18098_6540) Int)
(declare-fun getPredWandId_6698_53 (T@Field_18098_53) Int)
(declare-fun getPredWandId_6698_73993 (T@Field_21499_21504) Int)
(declare-fun Heap@0 () T@PolymorphicMapType_10590)
(declare-fun newPMask@0 () T@PolymorphicMapType_11139)
(declare-fun Heap@1 () T@PolymorphicMapType_10590)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id |SCIONPath_get_iof#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_correct true))
(let ((anon7_Else_correct  (=> (vis_int Heap@@64 null) (=> (and (|SCIONPath_State#trigger_6698| Heap@@64 (SCIONPath_State self@@25)) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@64) null (SCIONPath_State self@@25)) (CombineFrames (FrameFragment_6540 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@64) null (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@0) null (SCIONPath_State self@@25))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@0) null (SCIONPath_State self@@25)))) (=> (and (> wildcard@0 NoPerm) (not (= self@@25 null))) (=> (and (and (= UnfoldingMask@0 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@0) (store (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@0) self@@25 SCIONPath__ofs (+ (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@0) self@@25 SCIONPath__ofs) wildcard@0)) (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@0) (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@0))) (state Heap@@64 UnfoldingMask@0)) (and (> wildcard@1 NoPerm) (= UnfoldingMask@1 (PolymorphicMapType_10611 (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| UnfoldingMask@0) (store (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| UnfoldingMask@0) null (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (+ (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| UnfoldingMask@0) null (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs))) wildcard@1)) (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| UnfoldingMask@0) (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| UnfoldingMask@0))))) (=> (and (and (and (InsidePredicate_6698_6659 (SCIONPath_State self@@25) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@64) null (SCIONPath_State self@@25)) (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@64) null (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)))) (state Heap@@64 UnfoldingMask@1)) (and (|OpaqueFieldList_State#trigger_6659| Heap@@64 (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs))) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@64) null (OpaqueFieldList_State (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs))) (FrameFragment_4751 (|OpaqueFieldList_State#condqp1| Heap@@64 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)))))) (and (and (state Heap@@64 UnfoldingMask@1) (forall ((x@@5 T@Ref) ) (!  (=> (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap@@64 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) x@@5) (< NoPerm (* FullPerm (* FullPerm FullPerm)))) (and (= (invRecv1 x@@5) x@@5) (qpRange1 x@@5)))
 :qid |stdinbpl.770:28|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@64) null (OpaqueField_State x@@5)))
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@1) null (OpaqueField_State x@@5)))
 :pattern ( (|Seq#ContainsTrigger_6556| (|OpaqueFieldList_contents#frame| EmptyFrame (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) x@@5))
 :pattern ( (|Seq#Contains_6544| (|OpaqueFieldList_contents#frame| EmptyFrame (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) x@@5))
))) (and (forall ((self_4_1 T@Ref) ) (!  (=> (and (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap@@64 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (invRecv1 self_4_1)) (< NoPerm (* FullPerm (* FullPerm FullPerm)))) (qpRange1 self_4_1)) (= (invRecv1 self_4_1) self_4_1))
 :qid |stdinbpl.774:28|
 :skolemid |69|
 :pattern ( (invRecv1 self_4_1))
)) (forall ((self_4_1@@0 T@Ref) ) (!  (=> (and (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap@@64 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (invRecv1 self_4_1@@0)) (< NoPerm (* FullPerm (* FullPerm FullPerm)))) (qpRange1 self_4_1@@0)) (and (=> (< NoPerm (* FullPerm (* FullPerm FullPerm))) (= (invRecv1 self_4_1@@0) self_4_1@@0)) (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) null (OpaqueField_State self_4_1@@0)) (+ (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@1) null (OpaqueField_State self_4_1@@0)) (* FullPerm (* FullPerm FullPerm))))))
 :qid |stdinbpl.780:28|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) null (OpaqueField_State self_4_1@@0)))
))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_10663_10664) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_6539_6540 f_5))) (not (= (getPredWandId_6539_6540 f_5) 0))) (= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4 f_5) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_6539_18099) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_6539_34013 f_5@@0))) (not (= (getPredWandId_6539_6636 f_5@@0) 0))) (= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@0 f_5@@0) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_10650_53) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_6539_53 f_5@@1))) (not (= (getPredWandId_6539_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@1 f_5@@1) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_6539_21504) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_6539_50864 f_5@@2))) (not (= (getPredWandId_6539_72052 f_5@@2) 0))) (= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@2 f_5@@2) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_20399_6540) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_6635_6540 f_5@@3))) (not (= (getPredWandId_6635_6540 f_5@@3) 0))) (= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@3 f_5@@3) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_20399_20400) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_6635_6636 f_5@@4))) (not (= (getPredWandId_6635_6636 f_5@@4) 0))) (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@4 f_5@@4) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_20399_53) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_6635_53 f_5@@5))) (not (= (getPredWandId_6635_53 f_5@@5) 0))) (= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@5 f_5@@5) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_22275_22280) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_6635_52190 f_5@@6))) (not (= (getPredWandId_6635_72699 f_5@@6) 0))) (= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@6 f_5@@6) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_18908_6540) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_6659_6540 f_5@@7))) (not (= (getPredWandId_6659_6540 f_5@@7) 0))) (= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@7 f_5@@7) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_18908_18909) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_6659_6660 f_5@@8))) (not (= (getPredWandId_6659_6660 f_5@@8) 0))) (= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@8 f_5@@8) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| QPMask@0) o_4@@8 f_5@@8))
))) (forall ((o_4@@9 T@Ref) (f_5@@9 T@Field_18908_53) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_6659_53 f_5@@9))) (not (= (getPredWandId_6659_53 f_5@@9) 0))) (= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@9 f_5@@9) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| QPMask@0) o_4@@9 f_5@@9)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| QPMask@0) o_4@@9 f_5@@9))
))) (forall ((o_4@@10 T@Ref) (f_5@@10 T@Field_21888_21893) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_6659_51527 f_5@@10))) (not (= (getPredWandId_6659_73346 f_5@@10) 0))) (= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@10 f_5@@10) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| QPMask@0) o_4@@10 f_5@@10)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| QPMask@0) o_4@@10 f_5@@10))
))) (forall ((o_4@@11 T@Ref) (f_5@@11 T@Field_18098_6540) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsPredicateField_6698_6540 f_5@@11))) (not (= (getPredWandId_6698_6540 f_5@@11) 0))) (= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@11 f_5@@11) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| QPMask@0) o_4@@11 f_5@@11)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| QPMask@0) o_4@@11 f_5@@11))
))) (forall ((o_4@@12 T@Ref) (f_5@@12 T@Field_18098_18099) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsPredicateField_6698_6699 f_5@@12))) (not (= (getPredWandId_6698_6699 f_5@@12) 0))) (= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@12 f_5@@12) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| QPMask@0) o_4@@12 f_5@@12)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| QPMask@0) o_4@@12 f_5@@12))
))) (forall ((o_4@@13 T@Ref) (f_5@@13 T@Field_18098_53) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsPredicateField_6698_53 f_5@@13))) (not (= (getPredWandId_6698_53 f_5@@13) 0))) (= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@13 f_5@@13) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| QPMask@0) o_4@@13 f_5@@13)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| QPMask@0) o_4@@13 f_5@@13))
))) (forall ((o_4@@14 T@Ref) (f_5@@14 T@Field_21499_21504) ) (!  (=> (or (or (not (= o_4@@14 null)) (not (IsPredicateField_6698_50215 f_5@@14))) (not (= (getPredWandId_6698_73993 f_5@@14) 0))) (= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@14 f_5@@14) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| QPMask@0) o_4@@14 f_5@@14)))
 :qid |stdinbpl.786:35|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| UnfoldingMask@1) o_4@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| QPMask@0) o_4@@14 f_5@@14))
))) (and (forall ((self_4_1@@1 T@Ref) ) (!  (=> (not (and (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap@@64 (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) self@@25 SCIONPath__ofs)) (invRecv1 self_4_1@@1)) (< NoPerm (* FullPerm (* FullPerm FullPerm)))) (qpRange1 self_4_1@@1))) (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) null (OpaqueField_State self_4_1@@1)) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| UnfoldingMask@1) null (OpaqueField_State self_4_1@@1))))
 :qid |stdinbpl.790:28|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| QPMask@0) null (OpaqueField_State self_4_1@@1)))
)) (state Heap@@64 QPMask@0))) (and (and (state Heap@@64 QPMask@0) (state Heap@@64 UnfoldingMask@1)) (and (state Heap@@64 UnfoldingMask@1) (= Heap@0 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@64) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25) (PolymorphicMapType_11139 (store (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) self@@25 SCIONPath__ofs true) (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))) (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@64) null (|SCIONPath_State#sm| self@@25))))) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@64) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@64)))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_10663_10664) ) (!  (=> (or (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15 f_20) (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15 f_20)) (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| newPMask@0) o_15 f_20))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_10650_53) ) (!  (=> (or (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_6539_18099) ) (!  (=> (or (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_6539_21504) ) (!  (=> (or (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_18098_6540) ) (!  (=> (or (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_18098_53) ) (!  (=> (or (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_18098_18099) ) (!  (=> (or (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_21499_21504) ) (!  (=> (or (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_18908_6540) ) (!  (=> (or (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_18908_53) ) (!  (=> (or (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| newPMask@0) o_15@@8 f_20@@8))
))) (forall ((o_15@@9 T@Ref) (f_20@@9 T@Field_18908_18909) ) (!  (=> (or (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@9 f_20@@9) (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@9 f_20@@9)) (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| newPMask@0) o_15@@9 f_20@@9))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| newPMask@0) o_15@@9 f_20@@9))
))) (forall ((o_15@@10 T@Ref) (f_20@@10 T@Field_21888_21893) ) (!  (=> (or (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@10 f_20@@10) (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@10 f_20@@10)) (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| newPMask@0) o_15@@10 f_20@@10))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| newPMask@0) o_15@@10 f_20@@10))
))) (forall ((o_15@@11 T@Ref) (f_20@@11 T@Field_20399_6540) ) (!  (=> (or (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@11 f_20@@11) (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@11 f_20@@11)) (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| newPMask@0) o_15@@11 f_20@@11))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| newPMask@0) o_15@@11 f_20@@11))
))) (forall ((o_15@@12 T@Ref) (f_20@@12 T@Field_20399_53) ) (!  (=> (or (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@12 f_20@@12) (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@12 f_20@@12)) (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| newPMask@0) o_15@@12 f_20@@12))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| newPMask@0) o_15@@12 f_20@@12))
))) (forall ((o_15@@13 T@Ref) (f_20@@13 T@Field_20399_20400) ) (!  (=> (or (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@13 f_20@@13) (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@13 f_20@@13)) (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| newPMask@0) o_15@@13 f_20@@13))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| newPMask@0) o_15@@13 f_20@@13))
))) (forall ((o_15@@14 T@Ref) (f_20@@14 T@Field_22275_22280) ) (!  (=> (or (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25))) o_15@@14 f_20@@14) (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) null (|OpaqueFieldList_State#sm| (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) self@@25 SCIONPath__ofs)))) o_15@@14 f_20@@14)) (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| newPMask@0) o_15@@14 f_20@@14))
 :qid |stdinbpl.805:33|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| newPMask@0) o_15@@14 f_20@@14))
))) (= Heap@1 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@0) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@0) null (|SCIONPath_State#sm| self@@25) newPMask@0) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@0) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@0)))) (and (state Heap@1 Mask@0) (= (ControlFlow 0 4) 2)))) anon5_correct))))))))))
(let ((anon7_Then_correct  (=> (and (not (vis_int Heap@@64 null)) (= (ControlFlow 0 3) 2)) anon5_correct)))
(let ((anon6_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@64 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@64) self@@25 $allocated)) (=> (and (and (= AssumeFunctionsAbove 1) (= Mask@0 (PolymorphicMapType_10611 (store (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) null (SCIONPath_State self@@25) (+ (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) null (SCIONPath_State self@@25)) FullPerm)) (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ZeroMask) (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ZeroMask)))) (and (state Heap@@64 Mask@0) (state Heap@@64 Mask@0))) (and (and (=> (= (ControlFlow 0 6) 1) anon6_Then_correct) (=> (= (ControlFlow 0 6) 3) anon7_Then_correct)) (=> (= (ControlFlow 0 6) 4) anon7_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 7) 6)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-sort T@Field_10650_53 0)
(declare-sort T@Field_10663_10664 0)
(declare-sort T@Field_18098_18099 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18908_18909 0)
(declare-sort T@Field_20399_20400 0)
(declare-sort T@Field_21499_21504 0)
(declare-sort T@Field_21888_21893 0)
(declare-sort T@Field_6539_18099 0)
(declare-sort T@Field_6539_21504 0)
(declare-sort T@Field_18098_6540 0)
(declare-sort T@Field_18098_53 0)
(declare-sort T@Field_18908_6540 0)
(declare-sort T@Field_18908_53 0)
(declare-sort T@Field_20399_6540 0)
(declare-sort T@Field_20399_53 0)
(declare-sort T@Field_22275_22280 0)
(declare-datatypes ((T@PolymorphicMapType_10611 0)) (((PolymorphicMapType_10611 (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_18099 Real)) (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_10663_10664 Real)) (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_18909 Real)) (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_20400 Real)) (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_6540 Real)) (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| (Array T@Ref T@Field_18098_53 Real)) (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| (Array T@Ref T@Field_21499_21504 Real)) (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| (Array T@Ref T@Field_6539_18099 Real)) (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| (Array T@Ref T@Field_10650_53 Real)) (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| (Array T@Ref T@Field_6539_21504 Real)) (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_6540 Real)) (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| (Array T@Ref T@Field_18908_53 Real)) (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| (Array T@Ref T@Field_21888_21893 Real)) (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_6540 Real)) (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| (Array T@Ref T@Field_20399_53 Real)) (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| (Array T@Ref T@Field_22275_22280 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11139 0)) (((PolymorphicMapType_11139 (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_10663_10664 Bool)) (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (Array T@Ref T@Field_10650_53 Bool)) (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_6539_18099 Bool)) (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (Array T@Ref T@Field_6539_21504 Bool)) (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_6540 Bool)) (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_53 Bool)) (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_18098_18099 Bool)) (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (Array T@Ref T@Field_21499_21504 Bool)) (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_6540 Bool)) (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_53 Bool)) (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_18908_18909 Bool)) (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (Array T@Ref T@Field_21888_21893 Bool)) (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_6540 Bool)) (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_53 Bool)) (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (Array T@Ref T@Field_20399_20400 Bool)) (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (Array T@Ref T@Field_22275_22280 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10590 0)) (((PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| (Array T@Ref T@Field_10650_53 Bool)) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| (Array T@Ref T@Field_10663_10664 T@Ref)) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_18099 T@FrameType)) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_18909 T@FrameType)) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_20400 T@FrameType)) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| (Array T@Ref T@Field_21499_21504 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| (Array T@Ref T@Field_21888_21893 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| (Array T@Ref T@Field_6539_18099 T@FrameType)) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| (Array T@Ref T@Field_6539_21504 T@PolymorphicMapType_11139)) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_6540 T@Ref)) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| (Array T@Ref T@Field_18098_53 Bool)) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_6540 T@Ref)) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| (Array T@Ref T@Field_18908_53 Bool)) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_6540 T@Ref)) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| (Array T@Ref T@Field_20399_53 Bool)) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| (Array T@Ref T@Field_22275_22280 T@PolymorphicMapType_11139)) ) ) ))
(declare-fun $allocated () T@Field_10650_53)
(declare-fun SCIONPath__ofs () T@Field_10663_10664)
(declare-sort T@Seq_16737 0)
(declare-fun |Seq#Length_16737| (T@Seq_16737) Int)
(declare-fun |Seq#Drop_16737| (T@Seq_16737 Int) T@Seq_16737)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590) Bool)
(declare-fun state (T@PolymorphicMapType_10590 T@PolymorphicMapType_10611) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10611) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11139)
(declare-fun SCIONPath_get_iof (T@PolymorphicMapType_10590 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun vis_int (T@PolymorphicMapType_10590 T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun |Seq#Index_16737| (T@Seq_16737 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_16737| () T@Seq_16737)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-fun OpaqueField_State (T@Ref) T@Field_20399_20400)
(declare-fun IsPredicateField_6635_6636 (T@Field_20399_20400) Bool)
(declare-fun OpaqueFieldList_State (T@Ref) T@Field_18908_18909)
(declare-fun IsPredicateField_6659_6660 (T@Field_18908_18909) Bool)
(declare-fun SCIONPath_State (T@Ref) T@Field_18098_18099)
(declare-fun IsPredicateField_6698_6699 (T@Field_18098_18099) Bool)
(declare-fun |OpaqueFieldList_contents'| (T@PolymorphicMapType_10590 T@Ref) T@Seq_16737)
(declare-fun dummyFunction_16827 (T@Seq_16737) Bool)
(declare-fun |OpaqueFieldList_contents#triggerStateless| (T@Ref) T@Seq_16737)
(declare-fun |is_int'| (T@PolymorphicMapType_10590 T@Ref) Bool)
(declare-fun dummyFunction_3412 (Bool) Bool)
(declare-fun |is_int#triggerStateless| (T@Ref) Bool)
(declare-fun |SCIONPath_get_iof'| (T@PolymorphicMapType_10590 T@Ref) T@Ref)
(declare-fun dummyFunction_6612 (T@Ref) Bool)
(declare-fun |SCIONPath_get_iof#triggerStateless| (T@Ref) T@Ref)
(declare-fun |OpaqueField_State#trigger_6635| (T@PolymorphicMapType_10590 T@Field_20399_20400) Bool)
(declare-fun |OpaqueField_State#everUsed_6635| (T@Field_20399_20400) Bool)
(declare-fun |OpaqueFieldList_State#trigger_6659| (T@PolymorphicMapType_10590 T@Field_18908_18909) Bool)
(declare-fun |OpaqueFieldList_State#everUsed_6659| (T@Field_18908_18909) Bool)
(declare-fun |SCIONPath_State#trigger_6698| (T@PolymorphicMapType_10590 T@Field_18098_18099) Bool)
(declare-fun |SCIONPath_State#everUsed_6698| (T@Field_18098_18099) Bool)
(declare-fun |Seq#Update_16737| (T@Seq_16737 Int T@Ref) T@Seq_16737)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_16737| (T@Seq_16737 Int) T@Seq_16737)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |OpaqueFieldList_State#condqp1| (T@PolymorphicMapType_10590 T@Ref) Int)
(declare-fun |Seq#Contains_6544| (T@Seq_16737 T@Ref) Bool)
(declare-fun OpaqueFieldList_contents (T@PolymorphicMapType_10590 T@Ref) T@Seq_16737)
(declare-fun |sk_OpaqueFieldList_State#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun |Seq#Skolem_6544| (T@Seq_16737 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10590 T@PolymorphicMapType_10590 T@PolymorphicMapType_10611) Bool)
(declare-fun PredicateMaskField_6635 (T@Field_20399_20400) T@Field_22275_22280)
(declare-fun HasDirectPerm_20399_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_20400) Bool)
(declare-fun PredicateMaskField_6659 (T@Field_18908_18909) T@Field_21888_21893)
(declare-fun HasDirectPerm_18908_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_18909) Bool)
(declare-fun PredicateMaskField_6698 (T@Field_18098_18099) T@Field_21499_21504)
(declare-fun HasDirectPerm_18098_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_18099) Bool)
(declare-fun IsPredicateField_6539_34013 (T@Field_6539_18099) Bool)
(declare-fun PredicateMaskField_6539 (T@Field_6539_18099) T@Field_6539_21504)
(declare-fun HasDirectPerm_6539_18099 (T@PolymorphicMapType_10611 T@Ref T@Field_6539_18099) Bool)
(declare-fun IsWandField_20399_40925 (T@Field_20399_20400) Bool)
(declare-fun WandMaskField_20399 (T@Field_20399_20400) T@Field_22275_22280)
(declare-fun IsWandField_18908_40568 (T@Field_18908_18909) Bool)
(declare-fun WandMaskField_18908 (T@Field_18908_18909) T@Field_21888_21893)
(declare-fun IsWandField_18098_40211 (T@Field_18098_18099) Bool)
(declare-fun WandMaskField_18098 (T@Field_18098_18099) T@Field_21499_21504)
(declare-fun IsWandField_6539_39854 (T@Field_6539_18099) Bool)
(declare-fun WandMaskField_6539 (T@Field_6539_18099) T@Field_6539_21504)
(declare-fun |Seq#Singleton_16737| (T@Ref) T@Seq_16737)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |OpaqueField_State#sm| (T@Ref) T@Field_22275_22280)
(declare-fun |OpaqueFieldList_State#sm| (T@Ref) T@Field_21888_21893)
(declare-fun |SCIONPath_State#sm| (T@Ref) T@Field_21499_21504)
(declare-fun |Seq#Append_16737| (T@Seq_16737 T@Seq_16737) T@Seq_16737)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_10590)
(declare-fun ZeroMask () T@PolymorphicMapType_10611)
(declare-fun InsidePredicate_20399_20399 (T@Field_20399_20400 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_10650 (T@Field_6539_18099 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_6659 (T@Field_18908_18909 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_18098 (T@Field_18098_18099 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun IsPredicateField_6539_6540 (T@Field_10663_10664) Bool)
(declare-fun IsWandField_6539_6540 (T@Field_10663_10664) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6635_52190 (T@Field_22275_22280) Bool)
(declare-fun IsWandField_6635_52206 (T@Field_22275_22280) Bool)
(declare-fun IsPredicateField_6635_53 (T@Field_20399_53) Bool)
(declare-fun IsWandField_6635_53 (T@Field_20399_53) Bool)
(declare-fun IsPredicateField_6635_6540 (T@Field_20399_6540) Bool)
(declare-fun IsWandField_6635_6540 (T@Field_20399_6540) Bool)
(declare-fun IsPredicateField_6659_51527 (T@Field_21888_21893) Bool)
(declare-fun IsWandField_6659_51543 (T@Field_21888_21893) Bool)
(declare-fun IsPredicateField_6659_53 (T@Field_18908_53) Bool)
(declare-fun IsWandField_6659_53 (T@Field_18908_53) Bool)
(declare-fun IsPredicateField_6659_6540 (T@Field_18908_6540) Bool)
(declare-fun IsWandField_6659_6540 (T@Field_18908_6540) Bool)
(declare-fun IsPredicateField_6539_50864 (T@Field_6539_21504) Bool)
(declare-fun IsWandField_6539_50880 (T@Field_6539_21504) Bool)
(declare-fun IsPredicateField_6539_53 (T@Field_10650_53) Bool)
(declare-fun IsWandField_6539_53 (T@Field_10650_53) Bool)
(declare-fun IsPredicateField_6698_50215 (T@Field_21499_21504) Bool)
(declare-fun IsWandField_6698_50231 (T@Field_21499_21504) Bool)
(declare-fun IsPredicateField_6698_53 (T@Field_18098_53) Bool)
(declare-fun IsWandField_6698_53 (T@Field_18098_53) Bool)
(declare-fun IsPredicateField_6698_6540 (T@Field_18098_6540) Bool)
(declare-fun IsWandField_6698_6540 (T@Field_18098_6540) Bool)
(declare-fun HasDirectPerm_20399_33725 (T@PolymorphicMapType_10611 T@Ref T@Field_22275_22280) Bool)
(declare-fun HasDirectPerm_20399_53 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_53) Bool)
(declare-fun HasDirectPerm_20399_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_20399_6540) Bool)
(declare-fun HasDirectPerm_18908_32828 (T@PolymorphicMapType_10611 T@Ref T@Field_21888_21893) Bool)
(declare-fun HasDirectPerm_18908_53 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_53) Bool)
(declare-fun HasDirectPerm_18908_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_18908_6540) Bool)
(declare-fun HasDirectPerm_18098_31931 (T@PolymorphicMapType_10611 T@Ref T@Field_21499_21504) Bool)
(declare-fun HasDirectPerm_18098_53 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_53) Bool)
(declare-fun HasDirectPerm_18098_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_18098_6540) Bool)
(declare-fun HasDirectPerm_6539_30991 (T@PolymorphicMapType_10611 T@Ref T@Field_6539_21504) Bool)
(declare-fun HasDirectPerm_6539_53 (T@PolymorphicMapType_10611 T@Ref T@Field_10650_53) Bool)
(declare-fun HasDirectPerm_6539_6540 (T@PolymorphicMapType_10611 T@Ref T@Field_10663_10664) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10611 T@PolymorphicMapType_10611 T@PolymorphicMapType_10611) Bool)
(declare-fun |Seq#Equal_16737| (T@Seq_16737 T@Seq_16737) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |is_int#frame| (T@FrameType T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_6556| (T@Seq_16737 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun |SCIONPath_get_iof#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_6635_6636 (T@Field_20399_20400) Int)
(declare-fun getPredWandId_6659_6660 (T@Field_18908_18909) Int)
(declare-fun getPredWandId_6698_6699 (T@Field_18098_18099) Int)
(declare-fun |OpaqueFieldList_contents#frame| (T@FrameType T@Ref) T@Seq_16737)
(declare-fun |Seq#SkolemDiff_16737| (T@Seq_16737 T@Seq_16737) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(declare-fun InsidePredicate_20399_18098 (T@Field_20399_20400 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_20399_10650 (T@Field_20399_20400 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_20399_6659 (T@Field_20399_20400 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_20399 (T@Field_6539_18099 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_18098 (T@Field_6539_18099 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_10650_6659 (T@Field_6539_18099 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_20399 (T@Field_18098_18099 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_10650 (T@Field_18098_18099 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6698_6659 (T@Field_18098_18099 T@FrameType T@Field_18908_18909 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_20399 (T@Field_18908_18909 T@FrameType T@Field_20399_20400 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_18098 (T@Field_18908_18909 T@FrameType T@Field_18098_18099 T@FrameType) Bool)
(declare-fun InsidePredicate_6659_10650 (T@Field_18908_18909 T@FrameType T@Field_6539_18099 T@FrameType) Bool)
(assert (forall ((s T@Seq_16737) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_16737| s)) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) (- (|Seq#Length_16737| s) n))) (=> (< (|Seq#Length_16737| s) n) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_16737| (|Seq#Drop_16737| s n)) (|Seq#Length_16737| s))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_16737| (|Seq#Drop_16737| s n)))
 :pattern ( (|Seq#Length_16737| s) (|Seq#Drop_16737| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10590) (Heap1 T@PolymorphicMapType_10590) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10590) (Mask T@PolymorphicMapType_10611) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10590) (Heap1@@0 T@PolymorphicMapType_10590) (Heap2 T@PolymorphicMapType_10590) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22275_22280) ) (!  (not (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20399_20400) ) (!  (not (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20399_53) ) (!  (not (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20399_6540) ) (!  (not (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_21888_21893) ) (!  (not (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_18908_18909) ) (!  (not (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_18908_53) ) (!  (not (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18908_6540) ) (!  (not (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_21499_21504) ) (!  (not (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_18098_18099) ) (!  (not (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18098_53) ) (!  (not (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18098_6540) ) (!  (not (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6539_21504) ) (!  (not (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6539_18099) ) (!  (not (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10650_53) ) (!  (not (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10663_10664) ) (!  (not (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10590) (Mask@@0 T@PolymorphicMapType_10611) (self T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (SCIONPath_get_iof Heap@@0 self) (ite  (not (vis_int Heap@@0 null)) null null)))
 :qid |stdinbpl.678:15|
 :skolemid |66|
 :pattern ( (state Heap@@0 Mask@@0) (SCIONPath_get_iof Heap@@0 self))
)))
(assert (forall ((s@@1 T@Seq_16737) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_16737| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_16737| (|Seq#Drop_16737| s@@1 n@@1) j) (|Seq#Index_16737| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_16737| (|Seq#Drop_16737| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_16737| |Seq#Empty_16737|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((self@@0 T@Ref) ) (! (IsPredicateField_6635_6636 (OpaqueField_State self@@0))
 :qid |stdinbpl.828:15|
 :skolemid |75|
 :pattern ( (OpaqueField_State self@@0))
)))
(assert (forall ((self@@1 T@Ref) ) (! (IsPredicateField_6659_6660 (OpaqueFieldList_State self@@1))
 :qid |stdinbpl.878:15|
 :skolemid |81|
 :pattern ( (OpaqueFieldList_State self@@1))
)))
(assert (forall ((self@@2 T@Ref) ) (! (IsPredicateField_6698_6699 (SCIONPath_State self@@2))
 :qid |stdinbpl.986:15|
 :skolemid |94|
 :pattern ( (SCIONPath_State self@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10590) (self@@3 T@Ref) ) (! (dummyFunction_16827 (|OpaqueFieldList_contents#triggerStateless| self@@3))
 :qid |stdinbpl.588:15|
 :skolemid |59|
 :pattern ( (|OpaqueFieldList_contents'| Heap@@1 self@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10590) (r_1 T@Ref) ) (! (dummyFunction_3412 (|is_int#triggerStateless| r_1))
 :qid |stdinbpl.630:15|
 :skolemid |62|
 :pattern ( (|is_int'| Heap@@2 r_1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10590) (self@@4 T@Ref) ) (! (dummyFunction_6612 (|SCIONPath_get_iof#triggerStateless| self@@4))
 :qid |stdinbpl.672:15|
 :skolemid |65|
 :pattern ( (|SCIONPath_get_iof'| Heap@@3 self@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10590) (self@@5 T@Ref) ) (! (|OpaqueField_State#everUsed_6635| (OpaqueField_State self@@5))
 :qid |stdinbpl.847:15|
 :skolemid |79|
 :pattern ( (|OpaqueField_State#trigger_6635| Heap@@4 (OpaqueField_State self@@5)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10590) (self@@6 T@Ref) ) (! (|OpaqueFieldList_State#everUsed_6659| (OpaqueFieldList_State self@@6))
 :qid |stdinbpl.897:15|
 :skolemid |85|
 :pattern ( (|OpaqueFieldList_State#trigger_6659| Heap@@5 (OpaqueFieldList_State self@@6)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10590) (self@@7 T@Ref) ) (! (|SCIONPath_State#everUsed_6698| (SCIONPath_State self@@7))
 :qid |stdinbpl.1005:15|
 :skolemid |98|
 :pattern ( (|SCIONPath_State#trigger_6698| Heap@@6 (SCIONPath_State self@@7)))
)))
(assert (forall ((s@@3 T@Seq_16737) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_16737| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3) (|Seq#Index_16737| s@@3 n@@3)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_16737| (|Seq#Update_16737| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_16737| s@@3 n@@3) (|Seq#Update_16737| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_16737) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_16737| s@@5)) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_16737| s@@5) n@@5) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) (|Seq#Length_16737| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_16737| (|Seq#Take_16737| s@@5 n@@5)))
 :pattern ( (|Seq#Take_16737| s@@5 n@@5) (|Seq#Length_16737| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.563:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10590) (Heap1Heap T@PolymorphicMapType_10590) (self@@8 T@Ref) ) (!  (=> (and (=  (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap2Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm))  (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap1Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_6544| (OpaqueFieldList_contents Heap2Heap self@@8) (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap2Heap) null (OpaqueField_State (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8)))) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap1Heap) null (OpaqueField_State (|sk_OpaqueFieldList_State#condqp1| (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8))))))) (= (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8)))
 :qid |stdinbpl.908:15|
 :skolemid |86|
 :pattern ( (|OpaqueFieldList_State#condqp1| Heap2Heap self@@8) (|OpaqueFieldList_State#condqp1| Heap1Heap self@@8) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s@@7 T@Seq_16737) (x T@Ref) ) (!  (=> (|Seq#Contains_6544| s@@7 x) (and (and (<= 0 (|Seq#Skolem_6544| s@@7 x)) (< (|Seq#Skolem_6544| s@@7 x) (|Seq#Length_16737| s@@7))) (= (|Seq#Index_16737| s@@7 (|Seq#Skolem_6544| s@@7 x)) x)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_6544| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@0 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@0)) (< (|Seq#Skolem_2963| s@@8 x@@0) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10590) (self@@9 T@Ref) ) (!  (and (= (OpaqueFieldList_contents Heap@@7 self@@9) (|OpaqueFieldList_contents'| Heap@@7 self@@9)) (dummyFunction_16827 (|OpaqueFieldList_contents#triggerStateless| self@@9)))
 :qid |stdinbpl.584:15|
 :skolemid |58|
 :pattern ( (OpaqueFieldList_contents Heap@@7 self@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10590) (self@@10 T@Ref) ) (!  (and (= (SCIONPath_get_iof Heap@@8 self@@10) (|SCIONPath_get_iof'| Heap@@8 self@@10)) (dummyFunction_6612 (|SCIONPath_get_iof#triggerStateless| self@@10)))
 :qid |stdinbpl.668:15|
 :skolemid |64|
 :pattern ( (SCIONPath_get_iof Heap@@8 self@@10))
)))
(assert (forall ((s@@9 T@Seq_16737) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_16737| s@@9 n@@7) s@@9))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_16737| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.258:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10590) (ExhaleHeap T@PolymorphicMapType_10590) (Mask@@1 T@PolymorphicMapType_10611) (pm_f_9 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20399_18099 Mask@@1 null pm_f_9) (IsPredicateField_6635_6636 pm_f_9)) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@9) null (PredicateMaskField_6635 pm_f_9)) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap) null (PredicateMaskField_6635 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap Mask@@1) (IsPredicateField_6635_6636 pm_f_9) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap) null (PredicateMaskField_6635 pm_f_9)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10590) (ExhaleHeap@@0 T@PolymorphicMapType_10590) (Mask@@2 T@PolymorphicMapType_10611) (pm_f_9@@0 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_18908_18099 Mask@@2 null pm_f_9@@0) (IsPredicateField_6659_6660 pm_f_9@@0)) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@10) null (PredicateMaskField_6659 pm_f_9@@0)) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@0) null (PredicateMaskField_6659 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@0 Mask@@2) (IsPredicateField_6659_6660 pm_f_9@@0) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@0) null (PredicateMaskField_6659 pm_f_9@@0)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10590) (ExhaleHeap@@1 T@PolymorphicMapType_10590) (Mask@@3 T@PolymorphicMapType_10611) (pm_f_9@@1 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_18098_18099 Mask@@3 null pm_f_9@@1) (IsPredicateField_6698_6699 pm_f_9@@1)) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@11) null (PredicateMaskField_6698 pm_f_9@@1)) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@1) null (PredicateMaskField_6698 pm_f_9@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@1 Mask@@3) (IsPredicateField_6698_6699 pm_f_9@@1) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@1) null (PredicateMaskField_6698 pm_f_9@@1)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10590) (ExhaleHeap@@2 T@PolymorphicMapType_10590) (Mask@@4 T@PolymorphicMapType_10611) (pm_f_9@@2 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_6539_18099 Mask@@4 null pm_f_9@@2) (IsPredicateField_6539_34013 pm_f_9@@2)) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@12) null (PredicateMaskField_6539 pm_f_9@@2)) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@2) null (PredicateMaskField_6539 pm_f_9@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@2 Mask@@4) (IsPredicateField_6539_34013 pm_f_9@@2) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@2) null (PredicateMaskField_6539 pm_f_9@@2)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10590) (ExhaleHeap@@3 T@PolymorphicMapType_10590) (Mask@@5 T@PolymorphicMapType_10611) (pm_f_9@@3 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_20399_18099 Mask@@5 null pm_f_9@@3) (IsWandField_20399_40925 pm_f_9@@3)) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@13) null (WandMaskField_20399 pm_f_9@@3)) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@3) null (WandMaskField_20399 pm_f_9@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@5) (IsWandField_20399_40925 pm_f_9@@3) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@3) null (WandMaskField_20399 pm_f_9@@3)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10590) (ExhaleHeap@@4 T@PolymorphicMapType_10590) (Mask@@6 T@PolymorphicMapType_10611) (pm_f_9@@4 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_18908_18099 Mask@@6 null pm_f_9@@4) (IsWandField_18908_40568 pm_f_9@@4)) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@14) null (WandMaskField_18908 pm_f_9@@4)) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@4) null (WandMaskField_18908 pm_f_9@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@6) (IsWandField_18908_40568 pm_f_9@@4) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@4) null (WandMaskField_18908 pm_f_9@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10590) (ExhaleHeap@@5 T@PolymorphicMapType_10590) (Mask@@7 T@PolymorphicMapType_10611) (pm_f_9@@5 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_18098_18099 Mask@@7 null pm_f_9@@5) (IsWandField_18098_40211 pm_f_9@@5)) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@15) null (WandMaskField_18098 pm_f_9@@5)) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@5) null (WandMaskField_18098 pm_f_9@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@7) (IsWandField_18098_40211 pm_f_9@@5) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@5) null (WandMaskField_18098 pm_f_9@@5)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10590) (ExhaleHeap@@6 T@PolymorphicMapType_10590) (Mask@@8 T@PolymorphicMapType_10611) (pm_f_9@@6 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6539_18099 Mask@@8 null pm_f_9@@6) (IsWandField_6539_39854 pm_f_9@@6)) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@16) null (WandMaskField_6539 pm_f_9@@6)) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@6) null (WandMaskField_6539 pm_f_9@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@8) (IsWandField_6539_39854 pm_f_9@@6) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@6) null (WandMaskField_6539 pm_f_9@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_6544| (|Seq#Singleton_16737| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_6544| (|Seq#Singleton_16737| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_16737) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_16737| s@@11))) (= (|Seq#Index_16737| (|Seq#Take_16737| s@@11 n@@9) j@@3) (|Seq#Index_16737| s@@11 j@@3)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_16737| (|Seq#Take_16737| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_16737| s@@11 j@@3) (|Seq#Take_16737| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((self@@11 T@Ref) (self2 T@Ref) ) (!  (=> (= (OpaqueField_State self@@11) (OpaqueField_State self2)) (= self@@11 self2))
 :qid |stdinbpl.838:15|
 :skolemid |77|
 :pattern ( (OpaqueField_State self@@11) (OpaqueField_State self2))
)))
(assert (forall ((self@@12 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|OpaqueField_State#sm| self@@12) (|OpaqueField_State#sm| self2@@0)) (= self@@12 self2@@0))
 :qid |stdinbpl.842:15|
 :skolemid |78|
 :pattern ( (|OpaqueField_State#sm| self@@12) (|OpaqueField_State#sm| self2@@0))
)))
(assert (forall ((self@@13 T@Ref) (self2@@1 T@Ref) ) (!  (=> (= (OpaqueFieldList_State self@@13) (OpaqueFieldList_State self2@@1)) (= self@@13 self2@@1))
 :qid |stdinbpl.888:15|
 :skolemid |83|
 :pattern ( (OpaqueFieldList_State self@@13) (OpaqueFieldList_State self2@@1))
)))
(assert (forall ((self@@14 T@Ref) (self2@@2 T@Ref) ) (!  (=> (= (|OpaqueFieldList_State#sm| self@@14) (|OpaqueFieldList_State#sm| self2@@2)) (= self@@14 self2@@2))
 :qid |stdinbpl.892:15|
 :skolemid |84|
 :pattern ( (|OpaqueFieldList_State#sm| self@@14) (|OpaqueFieldList_State#sm| self2@@2))
)))
(assert (forall ((self@@15 T@Ref) (self2@@3 T@Ref) ) (!  (=> (= (SCIONPath_State self@@15) (SCIONPath_State self2@@3)) (= self@@15 self2@@3))
 :qid |stdinbpl.996:15|
 :skolemid |96|
 :pattern ( (SCIONPath_State self@@15) (SCIONPath_State self2@@3))
)))
(assert (forall ((self@@16 T@Ref) (self2@@4 T@Ref) ) (!  (=> (= (|SCIONPath_State#sm| self@@16) (|SCIONPath_State#sm| self2@@4)) (= self@@16 self2@@4))
 :qid |stdinbpl.1000:15|
 :skolemid |97|
 :pattern ( (|SCIONPath_State#sm| self@@16) (|SCIONPath_State#sm| self2@@4))
)))
(assert (forall ((s@@13 T@Seq_16737) (t T@Seq_16737) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_16737| s@@13))) (< n@@11 (|Seq#Length_16737| (|Seq#Append_16737| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_16737| s@@13)) (|Seq#Length_16737| s@@13)) n@@11) (= (|Seq#Take_16737| (|Seq#Append_16737| s@@13 t) n@@11) (|Seq#Append_16737| s@@13 (|Seq#Take_16737| t (|Seq#Sub| n@@11 (|Seq#Length_16737| s@@13)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_16737| (|Seq#Append_16737| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10590) (ExhaleHeap@@7 T@PolymorphicMapType_10590) (Mask@@9 T@PolymorphicMapType_10611) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@17) o_27 $allocated) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_20399_20400) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20399_20399 p v_1 p w))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20399_20399 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6539_18099) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10650_10650 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10650_10650 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18908_18909) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6659_6659 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6659_6659 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_18098_18099) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_6698_18098 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6698_18098 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((s0 T@Seq_16737) (s1 T@Seq_16737) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_16737|)) (not (= s1 |Seq#Empty_16737|))) (<= (|Seq#Length_16737| s0) n@@13)) (< n@@13 (|Seq#Length_16737| (|Seq#Append_16737| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_16737| s0)) (|Seq#Length_16737| s0)) n@@13) (= (|Seq#Index_16737| (|Seq#Append_16737| s0 s1) n@@13) (|Seq#Index_16737| s1 (|Seq#Sub| n@@13 (|Seq#Length_16737| s0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_16737| (|Seq#Append_16737| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6539_6540 SCIONPath__ofs)))
(assert  (not (IsWandField_6539_6540 SCIONPath__ofs)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10590) (ExhaleHeap@@8 T@PolymorphicMapType_10590) (Mask@@10 T@PolymorphicMapType_10611) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@18 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10611) (o_2@@15 T@Ref) (f_4@@15 T@Field_22275_22280) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6635_52190 f_4@@15))) (not (IsWandField_6635_52206 f_4@@15))) (<= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@11) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10611) (o_2@@16 T@Ref) (f_4@@16 T@Field_20399_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6635_53 f_4@@16))) (not (IsWandField_6635_53 f_4@@16))) (<= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@12) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10611) (o_2@@17 T@Ref) (f_4@@17 T@Field_20399_6540) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6635_6540 f_4@@17))) (not (IsWandField_6635_6540 f_4@@17))) (<= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@13) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10611) (o_2@@18 T@Ref) (f_4@@18 T@Field_20399_20400) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6635_6636 f_4@@18))) (not (IsWandField_20399_40925 f_4@@18))) (<= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@14) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10611) (o_2@@19 T@Ref) (f_4@@19 T@Field_21888_21893) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6659_51527 f_4@@19))) (not (IsWandField_6659_51543 f_4@@19))) (<= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@15) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10611) (o_2@@20 T@Ref) (f_4@@20 T@Field_18908_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6659_53 f_4@@20))) (not (IsWandField_6659_53 f_4@@20))) (<= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@16) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10611) (o_2@@21 T@Ref) (f_4@@21 T@Field_18908_6540) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6659_6540 f_4@@21))) (not (IsWandField_6659_6540 f_4@@21))) (<= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@17) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10611) (o_2@@22 T@Ref) (f_4@@22 T@Field_18908_18909) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6659_6660 f_4@@22))) (not (IsWandField_18908_40568 f_4@@22))) (<= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@18) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10611) (o_2@@23 T@Ref) (f_4@@23 T@Field_6539_21504) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6539_50864 f_4@@23))) (not (IsWandField_6539_50880 f_4@@23))) (<= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@19) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10611) (o_2@@24 T@Ref) (f_4@@24 T@Field_10650_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6539_53 f_4@@24))) (not (IsWandField_6539_53 f_4@@24))) (<= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@20) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10611) (o_2@@25 T@Ref) (f_4@@25 T@Field_10663_10664) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6539_6540 f_4@@25))) (not (IsWandField_6539_6540 f_4@@25))) (<= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@21) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10611) (o_2@@26 T@Ref) (f_4@@26 T@Field_6539_18099) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_6539_34013 f_4@@26))) (not (IsWandField_6539_39854 f_4@@26))) (<= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@22) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10611) (o_2@@27 T@Ref) (f_4@@27 T@Field_21499_21504) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_6698_50215 f_4@@27))) (not (IsWandField_6698_50231 f_4@@27))) (<= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@23) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10611) (o_2@@28 T@Ref) (f_4@@28 T@Field_18098_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_6698_53 f_4@@28))) (not (IsWandField_6698_53 f_4@@28))) (<= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@24) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10611) (o_2@@29 T@Ref) (f_4@@29 T@Field_18098_6540) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_6698_6540 f_4@@29))) (not (IsWandField_6698_6540 f_4@@29))) (<= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@25) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10611) (o_2@@30 T@Ref) (f_4@@30 T@Field_18098_18099) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_6698_6699 f_4@@30))) (not (IsWandField_18098_40211 f_4@@30))) (<= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@26) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10611) (o_2@@31 T@Ref) (f_4@@31 T@Field_22275_22280) ) (! (= (HasDirectPerm_20399_33725 Mask@@27 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| Mask@@27) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_33725 Mask@@27 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10611) (o_2@@32 T@Ref) (f_4@@32 T@Field_20399_20400) ) (! (= (HasDirectPerm_20399_18099 Mask@@28 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| Mask@@28) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_18099 Mask@@28 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10611) (o_2@@33 T@Ref) (f_4@@33 T@Field_20399_53) ) (! (= (HasDirectPerm_20399_53 Mask@@29 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| Mask@@29) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_53 Mask@@29 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10611) (o_2@@34 T@Ref) (f_4@@34 T@Field_20399_6540) ) (! (= (HasDirectPerm_20399_6540 Mask@@30 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| Mask@@30) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20399_6540 Mask@@30 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_10611) (o_2@@35 T@Ref) (f_4@@35 T@Field_21888_21893) ) (! (= (HasDirectPerm_18908_32828 Mask@@31 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| Mask@@31) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_32828 Mask@@31 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_10611) (o_2@@36 T@Ref) (f_4@@36 T@Field_18908_18909) ) (! (= (HasDirectPerm_18908_18099 Mask@@32 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| Mask@@32) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_18099 Mask@@32 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_10611) (o_2@@37 T@Ref) (f_4@@37 T@Field_18908_53) ) (! (= (HasDirectPerm_18908_53 Mask@@33 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| Mask@@33) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_53 Mask@@33 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_10611) (o_2@@38 T@Ref) (f_4@@38 T@Field_18908_6540) ) (! (= (HasDirectPerm_18908_6540 Mask@@34 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| Mask@@34) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18908_6540 Mask@@34 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_10611) (o_2@@39 T@Ref) (f_4@@39 T@Field_21499_21504) ) (! (= (HasDirectPerm_18098_31931 Mask@@35 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| Mask@@35) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_31931 Mask@@35 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_10611) (o_2@@40 T@Ref) (f_4@@40 T@Field_18098_18099) ) (! (= (HasDirectPerm_18098_18099 Mask@@36 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| Mask@@36) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_18099 Mask@@36 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_10611) (o_2@@41 T@Ref) (f_4@@41 T@Field_18098_53) ) (! (= (HasDirectPerm_18098_53 Mask@@37 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| Mask@@37) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_53 Mask@@37 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_10611) (o_2@@42 T@Ref) (f_4@@42 T@Field_18098_6540) ) (! (= (HasDirectPerm_18098_6540 Mask@@38 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| Mask@@38) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18098_6540 Mask@@38 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_10611) (o_2@@43 T@Ref) (f_4@@43 T@Field_6539_21504) ) (! (= (HasDirectPerm_6539_30991 Mask@@39 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| Mask@@39) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_30991 Mask@@39 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_10611) (o_2@@44 T@Ref) (f_4@@44 T@Field_6539_18099) ) (! (= (HasDirectPerm_6539_18099 Mask@@40 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| Mask@@40) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_18099 Mask@@40 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_10611) (o_2@@45 T@Ref) (f_4@@45 T@Field_10650_53) ) (! (= (HasDirectPerm_6539_53 Mask@@41 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| Mask@@41) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_53 Mask@@41 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_10611) (o_2@@46 T@Ref) (f_4@@46 T@Field_10663_10664) ) (! (= (HasDirectPerm_6539_6540 Mask@@42 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| Mask@@42) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6539_6540 Mask@@42 o_2@@46 f_4@@46))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.188:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.561:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10590) (ExhaleHeap@@9 T@PolymorphicMapType_10590) (Mask@@43 T@PolymorphicMapType_10611) (o_27@@0 T@Ref) (f_24 T@Field_22275_22280) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (=> (HasDirectPerm_20399_33725 Mask@@43 o_27@@0 f_24) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@19) o_27@@0 f_24) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@9) o_27@@0 f_24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@9 Mask@@43) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@9) o_27@@0 f_24))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10590) (ExhaleHeap@@10 T@PolymorphicMapType_10590) (Mask@@44 T@PolymorphicMapType_10611) (o_27@@1 T@Ref) (f_24@@0 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (=> (HasDirectPerm_20399_18099 Mask@@44 o_27@@1 f_24@@0) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@20) o_27@@1 f_24@@0) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@10) o_27@@1 f_24@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@10 Mask@@44) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@10) o_27@@1 f_24@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10590) (ExhaleHeap@@11 T@PolymorphicMapType_10590) (Mask@@45 T@PolymorphicMapType_10611) (o_27@@2 T@Ref) (f_24@@1 T@Field_20399_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (=> (HasDirectPerm_20399_53 Mask@@45 o_27@@2 f_24@@1) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@21) o_27@@2 f_24@@1) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@11) o_27@@2 f_24@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@11 Mask@@45) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@11) o_27@@2 f_24@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10590) (ExhaleHeap@@12 T@PolymorphicMapType_10590) (Mask@@46 T@PolymorphicMapType_10611) (o_27@@3 T@Ref) (f_24@@2 T@Field_20399_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (=> (HasDirectPerm_20399_6540 Mask@@46 o_27@@3 f_24@@2) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@22) o_27@@3 f_24@@2) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@12) o_27@@3 f_24@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@12 Mask@@46) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@12) o_27@@3 f_24@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10590) (ExhaleHeap@@13 T@PolymorphicMapType_10590) (Mask@@47 T@PolymorphicMapType_10611) (o_27@@4 T@Ref) (f_24@@3 T@Field_21888_21893) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (=> (HasDirectPerm_18908_32828 Mask@@47 o_27@@4 f_24@@3) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@23) o_27@@4 f_24@@3) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@13) o_27@@4 f_24@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@13 Mask@@47) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@13) o_27@@4 f_24@@3))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10590) (ExhaleHeap@@14 T@PolymorphicMapType_10590) (Mask@@48 T@PolymorphicMapType_10611) (o_27@@5 T@Ref) (f_24@@4 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (=> (HasDirectPerm_18908_18099 Mask@@48 o_27@@5 f_24@@4) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@24) o_27@@5 f_24@@4) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@14) o_27@@5 f_24@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@14 Mask@@48) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@14) o_27@@5 f_24@@4))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10590) (ExhaleHeap@@15 T@PolymorphicMapType_10590) (Mask@@49 T@PolymorphicMapType_10611) (o_27@@6 T@Ref) (f_24@@5 T@Field_18908_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (=> (HasDirectPerm_18908_53 Mask@@49 o_27@@6 f_24@@5) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@25) o_27@@6 f_24@@5) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@15) o_27@@6 f_24@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@15 Mask@@49) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@15) o_27@@6 f_24@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10590) (ExhaleHeap@@16 T@PolymorphicMapType_10590) (Mask@@50 T@PolymorphicMapType_10611) (o_27@@7 T@Ref) (f_24@@6 T@Field_18908_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (=> (HasDirectPerm_18908_6540 Mask@@50 o_27@@7 f_24@@6) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@26) o_27@@7 f_24@@6) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@16) o_27@@7 f_24@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@16 Mask@@50) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@16) o_27@@7 f_24@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10590) (ExhaleHeap@@17 T@PolymorphicMapType_10590) (Mask@@51 T@PolymorphicMapType_10611) (o_27@@8 T@Ref) (f_24@@7 T@Field_21499_21504) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (=> (HasDirectPerm_18098_31931 Mask@@51 o_27@@8 f_24@@7) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@27) o_27@@8 f_24@@7) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@17) o_27@@8 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@17 Mask@@51) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@17) o_27@@8 f_24@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10590) (ExhaleHeap@@18 T@PolymorphicMapType_10590) (Mask@@52 T@PolymorphicMapType_10611) (o_27@@9 T@Ref) (f_24@@8 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (=> (HasDirectPerm_18098_18099 Mask@@52 o_27@@9 f_24@@8) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@28) o_27@@9 f_24@@8) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@18) o_27@@9 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@18 Mask@@52) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@18) o_27@@9 f_24@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10590) (ExhaleHeap@@19 T@PolymorphicMapType_10590) (Mask@@53 T@PolymorphicMapType_10611) (o_27@@10 T@Ref) (f_24@@9 T@Field_18098_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (=> (HasDirectPerm_18098_53 Mask@@53 o_27@@10 f_24@@9) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@29) o_27@@10 f_24@@9) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@19) o_27@@10 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@19 Mask@@53) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@19) o_27@@10 f_24@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10590) (ExhaleHeap@@20 T@PolymorphicMapType_10590) (Mask@@54 T@PolymorphicMapType_10611) (o_27@@11 T@Ref) (f_24@@10 T@Field_18098_6540) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (=> (HasDirectPerm_18098_6540 Mask@@54 o_27@@11 f_24@@10) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@30) o_27@@11 f_24@@10) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@20) o_27@@11 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@20 Mask@@54) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@20) o_27@@11 f_24@@10))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10590) (ExhaleHeap@@21 T@PolymorphicMapType_10590) (Mask@@55 T@PolymorphicMapType_10611) (o_27@@12 T@Ref) (f_24@@11 T@Field_6539_21504) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (=> (HasDirectPerm_6539_30991 Mask@@55 o_27@@12 f_24@@11) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@31) o_27@@12 f_24@@11) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@21) o_27@@12 f_24@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@21 Mask@@55) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@21) o_27@@12 f_24@@11))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10590) (ExhaleHeap@@22 T@PolymorphicMapType_10590) (Mask@@56 T@PolymorphicMapType_10611) (o_27@@13 T@Ref) (f_24@@12 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (=> (HasDirectPerm_6539_18099 Mask@@56 o_27@@13 f_24@@12) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@32) o_27@@13 f_24@@12) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@22) o_27@@13 f_24@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@22 Mask@@56) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@22) o_27@@13 f_24@@12))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10590) (ExhaleHeap@@23 T@PolymorphicMapType_10590) (Mask@@57 T@PolymorphicMapType_10611) (o_27@@14 T@Ref) (f_24@@13 T@Field_10650_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (=> (HasDirectPerm_6539_53 Mask@@57 o_27@@14 f_24@@13) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@33) o_27@@14 f_24@@13) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@23) o_27@@14 f_24@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@23 Mask@@57) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@23) o_27@@14 f_24@@13))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10590) (ExhaleHeap@@24 T@PolymorphicMapType_10590) (Mask@@58 T@PolymorphicMapType_10611) (o_27@@15 T@Ref) (f_24@@14 T@Field_10663_10664) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (=> (HasDirectPerm_6539_6540 Mask@@58 o_27@@15 f_24@@14) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@34) o_27@@15 f_24@@14) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@24) o_27@@15 f_24@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@24 Mask@@58) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@24) o_27@@15 f_24@@14))
)))
(assert (forall ((s0@@1 T@Seq_16737) (s1@@1 T@Seq_16737) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_16737|)) (not (= s1@@1 |Seq#Empty_16737|))) (= (|Seq#Length_16737| (|Seq#Append_16737| s0@@1 s1@@1)) (+ (|Seq#Length_16737| s0@@1) (|Seq#Length_16737| s1@@1))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_16737| (|Seq#Append_16737| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_22275_22280) ) (! (= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_20399_53) ) (! (= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_20399_6540) ) (! (= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_20399_20400) ) (! (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_21888_21893) ) (! (= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_18908_53) ) (! (= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_18908_6540) ) (! (= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_18908_18909) ) (! (= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_6539_21504) ) (! (= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_10650_53) ) (! (= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_10663_10664) ) (! (= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_6539_18099) ) (! (= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_21499_21504) ) (! (= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_18098_53) ) (! (= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_18098_6540) ) (! (= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_18098_18099) ) (! (= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((s@@15 T@Seq_16737) (t@@1 T@Seq_16737) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_16737| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_16737| s@@15)) (|Seq#Length_16737| s@@15)) n@@15) (= (|Seq#Drop_16737| (|Seq#Append_16737| s@@15 t@@1) n@@15) (|Seq#Drop_16737| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_16737| s@@15))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_16737| (|Seq#Append_16737| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10611) (SummandMask1 T@PolymorphicMapType_10611) (SummandMask2 T@PolymorphicMapType_10611) (o_2@@63 T@Ref) (f_4@@63 T@Field_22275_22280) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ResultMask) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask1) o_2@@63 f_4@@63) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask2) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| ResultMask) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask1) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10611_6635_48508#PolymorphicMapType_10611| SummandMask2) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10611) (SummandMask1@@0 T@PolymorphicMapType_10611) (SummandMask2@@0 T@PolymorphicMapType_10611) (o_2@@64 T@Ref) (f_4@@64 T@Field_20399_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ResultMask@@0) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask1@@0) o_2@@64 f_4@@64) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask2@@0) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| ResultMask@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask1@@0) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10611_6635_53#PolymorphicMapType_10611| SummandMask2@@0) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10611) (SummandMask1@@1 T@PolymorphicMapType_10611) (SummandMask2@@1 T@PolymorphicMapType_10611) (o_2@@65 T@Ref) (f_4@@65 T@Field_20399_6540) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ResultMask@@1) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask1@@1) o_2@@65 f_4@@65) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask2@@1) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| ResultMask@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask1@@1) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10611_6635_6540#PolymorphicMapType_10611| SummandMask2@@1) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10611) (SummandMask1@@2 T@PolymorphicMapType_10611) (SummandMask2@@2 T@PolymorphicMapType_10611) (o_2@@66 T@Ref) (f_4@@66 T@Field_20399_20400) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ResultMask@@2) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask1@@2) o_2@@66 f_4@@66) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask2@@2) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| ResultMask@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask1@@2) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10611_6635_6636#PolymorphicMapType_10611| SummandMask2@@2) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10611) (SummandMask1@@3 T@PolymorphicMapType_10611) (SummandMask2@@3 T@PolymorphicMapType_10611) (o_2@@67 T@Ref) (f_4@@67 T@Field_21888_21893) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ResultMask@@3) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask1@@3) o_2@@67 f_4@@67) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask2@@3) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| ResultMask@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask1@@3) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10611_6659_48177#PolymorphicMapType_10611| SummandMask2@@3) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10611) (SummandMask1@@4 T@PolymorphicMapType_10611) (SummandMask2@@4 T@PolymorphicMapType_10611) (o_2@@68 T@Ref) (f_4@@68 T@Field_18908_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ResultMask@@4) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask1@@4) o_2@@68 f_4@@68) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask2@@4) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| ResultMask@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask1@@4) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10611_6659_53#PolymorphicMapType_10611| SummandMask2@@4) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10611) (SummandMask1@@5 T@PolymorphicMapType_10611) (SummandMask2@@5 T@PolymorphicMapType_10611) (o_2@@69 T@Ref) (f_4@@69 T@Field_18908_6540) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ResultMask@@5) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask1@@5) o_2@@69 f_4@@69) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask2@@5) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| ResultMask@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask1@@5) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10611_6659_6540#PolymorphicMapType_10611| SummandMask2@@5) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10611) (SummandMask1@@6 T@PolymorphicMapType_10611) (SummandMask2@@6 T@PolymorphicMapType_10611) (o_2@@70 T@Ref) (f_4@@70 T@Field_18908_18909) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ResultMask@@6) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask1@@6) o_2@@70 f_4@@70) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask2@@6) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| ResultMask@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask1@@6) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10611_6659_6660#PolymorphicMapType_10611| SummandMask2@@6) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10611) (SummandMask1@@7 T@PolymorphicMapType_10611) (SummandMask2@@7 T@PolymorphicMapType_10611) (o_2@@71 T@Ref) (f_4@@71 T@Field_6539_21504) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ResultMask@@7) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask1@@7) o_2@@71 f_4@@71) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask2@@7) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| ResultMask@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask1@@7) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10611_6539_47846#PolymorphicMapType_10611| SummandMask2@@7) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10611) (SummandMask1@@8 T@PolymorphicMapType_10611) (SummandMask2@@8 T@PolymorphicMapType_10611) (o_2@@72 T@Ref) (f_4@@72 T@Field_10650_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ResultMask@@8) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask1@@8) o_2@@72 f_4@@72) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask2@@8) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| ResultMask@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask1@@8) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10611_6539_53#PolymorphicMapType_10611| SummandMask2@@8) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_10611) (SummandMask1@@9 T@PolymorphicMapType_10611) (SummandMask2@@9 T@PolymorphicMapType_10611) (o_2@@73 T@Ref) (f_4@@73 T@Field_10663_10664) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ResultMask@@9) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask1@@9) o_2@@73 f_4@@73) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask2@@9) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| ResultMask@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask1@@9) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_10611_6539_6540#PolymorphicMapType_10611| SummandMask2@@9) o_2@@73 f_4@@73))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_10611) (SummandMask1@@10 T@PolymorphicMapType_10611) (SummandMask2@@10 T@PolymorphicMapType_10611) (o_2@@74 T@Ref) (f_4@@74 T@Field_6539_18099) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ResultMask@@10) o_2@@74 f_4@@74) (+ (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask1@@10) o_2@@74 f_4@@74) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask2@@10) o_2@@74 f_4@@74))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| ResultMask@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask1@@10) o_2@@74 f_4@@74))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_10611_6539_6699#PolymorphicMapType_10611| SummandMask2@@10) o_2@@74 f_4@@74))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_10611) (SummandMask1@@11 T@PolymorphicMapType_10611) (SummandMask2@@11 T@PolymorphicMapType_10611) (o_2@@75 T@Ref) (f_4@@75 T@Field_21499_21504) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ResultMask@@11) o_2@@75 f_4@@75) (+ (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask1@@11) o_2@@75 f_4@@75) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask2@@11) o_2@@75 f_4@@75))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| ResultMask@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask1@@11) o_2@@75 f_4@@75))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_10611_6698_47515#PolymorphicMapType_10611| SummandMask2@@11) o_2@@75 f_4@@75))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_10611) (SummandMask1@@12 T@PolymorphicMapType_10611) (SummandMask2@@12 T@PolymorphicMapType_10611) (o_2@@76 T@Ref) (f_4@@76 T@Field_18098_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ResultMask@@12) o_2@@76 f_4@@76) (+ (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask1@@12) o_2@@76 f_4@@76) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask2@@12) o_2@@76 f_4@@76))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| ResultMask@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask1@@12) o_2@@76 f_4@@76))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_10611_6698_53#PolymorphicMapType_10611| SummandMask2@@12) o_2@@76 f_4@@76))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_10611) (SummandMask1@@13 T@PolymorphicMapType_10611) (SummandMask2@@13 T@PolymorphicMapType_10611) (o_2@@77 T@Ref) (f_4@@77 T@Field_18098_6540) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ResultMask@@13) o_2@@77 f_4@@77) (+ (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask1@@13) o_2@@77 f_4@@77) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask2@@13) o_2@@77 f_4@@77))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| ResultMask@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask1@@13) o_2@@77 f_4@@77))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_10611_6698_6540#PolymorphicMapType_10611| SummandMask2@@13) o_2@@77 f_4@@77))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_10611) (SummandMask1@@14 T@PolymorphicMapType_10611) (SummandMask2@@14 T@PolymorphicMapType_10611) (o_2@@78 T@Ref) (f_4@@78 T@Field_18098_18099) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ResultMask@@14) o_2@@78 f_4@@78) (+ (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask1@@14) o_2@@78 f_4@@78) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask2@@14) o_2@@78 f_4@@78))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| ResultMask@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask1@@14) o_2@@78 f_4@@78))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_10611_6698_6699#PolymorphicMapType_10611| SummandMask2@@14) o_2@@78 f_4@@78))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.560:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_16737) (b T@Seq_16737) ) (!  (=> (|Seq#Equal_16737| a b) (= a b))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_16737| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10590) (Mask@@59 T@PolymorphicMapType_10611) (r_1@@0 T@Ref) ) (!  (=> (state Heap@@35 Mask@@59) (= (|is_int'| Heap@@35 r_1@@0) (|is_int#frame| EmptyFrame r_1@@0)))
 :qid |stdinbpl.637:15|
 :skolemid |63|
 :pattern ( (state Heap@@35 Mask@@59) (|is_int'| Heap@@35 r_1@@0))
)))
(assert (forall ((s@@17 T@Seq_16737) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_16737| s@@17))) (|Seq#ContainsTrigger_6556| s@@17 (|Seq#Index_16737| s@@17 i@@3)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_16737| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@4)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_16737) (s1@@3 T@Seq_16737) ) (!  (and (=> (= s0@@3 |Seq#Empty_16737|) (= (|Seq#Append_16737| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_16737|) (= (|Seq#Append_16737| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_16737| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_16737| (|Seq#Singleton_16737| t@@3) 0) t@@3)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_16737| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_16737) ) (! (<= 0 (|Seq#Length_16737| s@@19))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_16737| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10590) (r_1@@1 T@Ref) ) (!  (and (= (vis_int Heap@@36 r_1@@1) (|is_int'| Heap@@36 r_1@@1)) (dummyFunction_3412 (|is_int#triggerStateless| r_1@@1)))
 :qid |stdinbpl.626:15|
 :skolemid |61|
 :pattern ( (vis_int Heap@@36 r_1@@1))
)))
(assert (forall ((s0@@5 T@Seq_16737) (s1@@5 T@Seq_16737) ) (!  (=> (|Seq#Equal_16737| s0@@5 s1@@5) (and (= (|Seq#Length_16737| s0@@5) (|Seq#Length_16737| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_16737| s0@@5))) (= (|Seq#Index_16737| s0@@5 j@@6) (|Seq#Index_16737| s1@@5 j@@6)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_16737| s0@@5 j@@6))
 :pattern ( (|Seq#Index_16737| s1@@5 j@@6))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_16737| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10590) (Mask@@60 T@PolymorphicMapType_10611) (self@@17 T@Ref) ) (!  (=> (state Heap@@37 Mask@@60) (= (|SCIONPath_get_iof'| Heap@@37 self@@17) (|SCIONPath_get_iof#frame| (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@37) null (SCIONPath_State self@@17)) self@@17)))
 :qid |stdinbpl.685:15|
 :skolemid |67|
 :pattern ( (state Heap@@37 Mask@@60) (|SCIONPath_get_iof'| Heap@@37 self@@17))
)))
(assert (forall ((self@@18 T@Ref) ) (! (= (getPredWandId_6635_6636 (OpaqueField_State self@@18)) 0)
 :qid |stdinbpl.832:15|
 :skolemid |76|
 :pattern ( (OpaqueField_State self@@18))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_16737| (|Seq#Singleton_16737| t@@5)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_16737| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((self@@19 T@Ref) ) (! (= (getPredWandId_6659_6660 (OpaqueFieldList_State self@@19)) 1)
 :qid |stdinbpl.882:15|
 :skolemid |82|
 :pattern ( (OpaqueFieldList_State self@@19))
)))
(assert (forall ((self@@20 T@Ref) ) (! (= (getPredWandId_6698_6699 (SCIONPath_State self@@20)) 2)
 :qid |stdinbpl.990:15|
 :skolemid |95|
 :pattern ( (SCIONPath_State self@@20))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10590) (Mask@@61 T@PolymorphicMapType_10611) (self@@21 T@Ref) ) (!  (=> (state Heap@@38 Mask@@61) (= (|OpaqueFieldList_contents'| Heap@@38 self@@21) (|OpaqueFieldList_contents#frame| EmptyFrame self@@21)))
 :qid |stdinbpl.595:15|
 :skolemid |60|
 :pattern ( (state Heap@@38 Mask@@61) (|OpaqueFieldList_contents'| Heap@@38 self@@21))
)))
(assert (forall ((s@@21 T@Seq_16737) (t@@7 T@Seq_16737) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_16737| s@@21))) (= (|Seq#Take_16737| (|Seq#Append_16737| s@@21 t@@7) n@@17) (|Seq#Take_16737| s@@21 n@@17)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_16737| (|Seq#Append_16737| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_16737) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_16737| s@@23))) (= (|Seq#Length_16737| (|Seq#Update_16737| s@@23 i@@5 v@@2)) (|Seq#Length_16737| s@@23)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_16737| (|Seq#Update_16737| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_16737| s@@23) (|Seq#Update_16737| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10590) (o_20 T@Ref) (f_31 T@Field_22275_22280) (v@@4 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@39 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@39) (store (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@39) o_20 f_31 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@39) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@39) (store (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@39) o_20 f_31 v@@4)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10590) (o_20@@0 T@Ref) (f_31@@0 T@Field_20399_20400) (v@@5 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@40) (store (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@40) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@40) (store (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@40) o_20@@0 f_31@@0 v@@5) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@40) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10590) (o_20@@1 T@Ref) (f_31@@1 T@Field_20399_6540) (v@@6 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@41) (store (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@41) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@41) (store (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@41) o_20@@1 f_31@@1 v@@6) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@41) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10590) (o_20@@2 T@Ref) (f_31@@2 T@Field_20399_53) (v@@7 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@42) (store (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@42) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@42) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@42) (store (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@42) o_20@@2 f_31@@2 v@@7) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10590) (o_20@@3 T@Ref) (f_31@@3 T@Field_21888_21893) (v@@8 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@43 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@43) (store (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@43) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@43) (store (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@43) o_20@@3 f_31@@3 v@@8) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@43) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_10590) (o_20@@4 T@Ref) (f_31@@4 T@Field_18908_18909) (v@@9 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@44) (store (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@44) o_20@@4 f_31@@4 v@@9) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@44) (store (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@44) o_20@@4 f_31@@4 v@@9) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@44) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10590) (o_20@@5 T@Ref) (f_31@@5 T@Field_18908_6540) (v@@10 T@Ref) ) (! (succHeap Heap@@45 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@45) (store (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@45) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@45) (store (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@45) o_20@@5 f_31@@5 v@@10) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@45) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10590) (o_20@@6 T@Ref) (f_31@@6 T@Field_18908_53) (v@@11 Bool) ) (! (succHeap Heap@@46 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@46) (store (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@46) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@46) (store (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@46) o_20@@6 f_31@@6 v@@11) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@46) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_10590) (o_20@@7 T@Ref) (f_31@@7 T@Field_21499_21504) (v@@12 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@47 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@47) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@47) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@47) (store (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@47) o_20@@7 f_31@@7 v@@12) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@47) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_10590) (o_20@@8 T@Ref) (f_31@@8 T@Field_18098_18099) (v@@13 T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@48) (store (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@48) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@48) (store (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@48) o_20@@8 f_31@@8 v@@13) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@48) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_10590) (o_20@@9 T@Ref) (f_31@@9 T@Field_18098_6540) (v@@14 T@Ref) ) (! (succHeap Heap@@49 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@49) (store (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@49) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@49) (store (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@49) o_20@@9 f_31@@9 v@@14) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@49) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_10590) (o_20@@10 T@Ref) (f_31@@10 T@Field_18098_53) (v@@15 Bool) ) (! (succHeap Heap@@50 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@50) (store (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@50) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@50) (store (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@50) o_20@@10 f_31@@10 v@@15) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@50) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_10590) (o_20@@11 T@Ref) (f_31@@11 T@Field_6539_21504) (v@@16 T@PolymorphicMapType_11139) ) (! (succHeap Heap@@51 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@51) (store (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@51) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@51) (store (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@51) o_20@@11 f_31@@11 v@@16) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@51) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_10590) (o_20@@12 T@Ref) (f_31@@12 T@Field_6539_18099) (v@@17 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@52) (store (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@52) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@52) (store (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@52) o_20@@12 f_31@@12 v@@17) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@52) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_10590) (o_20@@13 T@Ref) (f_31@@13 T@Field_10663_10664) (v@@18 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@53) (store (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@53) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@53) (store (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@53) o_20@@13 f_31@@13 v@@18) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@53) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_10590) (o_20@@14 T@Ref) (f_31@@14 T@Field_10650_53) (v@@19 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_10590 (store (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@54) o_20@@14 f_31@@14 v@@19) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10590 (store (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@54) o_20@@14 f_31@@14 v@@19) (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@54) (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@54)))
)))
(assert (forall ((self@@22 T@Ref) ) (! (= (PredicateMaskField_6635 (OpaqueField_State self@@22)) (|OpaqueField_State#sm| self@@22))
 :qid |stdinbpl.824:15|
 :skolemid |74|
 :pattern ( (PredicateMaskField_6635 (OpaqueField_State self@@22)))
)))
(assert (forall ((self@@23 T@Ref) ) (! (= (PredicateMaskField_6659 (OpaqueFieldList_State self@@23)) (|OpaqueFieldList_State#sm| self@@23))
 :qid |stdinbpl.874:15|
 :skolemid |80|
 :pattern ( (PredicateMaskField_6659 (OpaqueFieldList_State self@@23)))
)))
(assert (forall ((self@@24 T@Ref) ) (! (= (PredicateMaskField_6698 (SCIONPath_State self@@24)) (|SCIONPath_State#sm| self@@24))
 :qid |stdinbpl.982:15|
 :skolemid |93|
 :pattern ( (PredicateMaskField_6698 (SCIONPath_State self@@24)))
)))
(assert (forall ((s@@25 T@Seq_16737) (t@@9 T@Seq_16737) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_16737| s@@25))) (= (|Seq#Drop_16737| (|Seq#Append_16737| s@@25 t@@9) n@@19) (|Seq#Append_16737| (|Seq#Drop_16737| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_16737| (|Seq#Append_16737| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_16737) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_16737| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_16737| (|Seq#Drop_16737| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_16737| s@@27 i@@7))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_16737| s@@27 n@@21) (|Seq#Index_16737| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2963| s@@28 i@@8))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_16737) (s1@@7 T@Seq_16737) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_16737|)) (not (= s1@@7 |Seq#Empty_16737|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_16737| s0@@7))) (= (|Seq#Index_16737| (|Seq#Append_16737| s0@@7 s1@@7) n@@23) (|Seq#Index_16737| s0@@7 n@@23)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_16737| (|Seq#Append_16737| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_16737| s0@@7 n@@23) (|Seq#Append_16737| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_16737) (s1@@9 T@Seq_16737) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_16737|)) (not (= s1@@9 |Seq#Empty_16737|))) (<= 0 m)) (< m (|Seq#Length_16737| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_16737| s0@@9)) (|Seq#Length_16737| s0@@9)) m) (= (|Seq#Index_16737| (|Seq#Append_16737| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_16737| s0@@9))) (|Seq#Index_16737| s1@@9 m))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_16737| s1@@9 m) (|Seq#Append_16737| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((o_20@@15 T@Ref) (f_17 T@Field_10663_10664) (Heap@@55 T@PolymorphicMapType_10590) ) (!  (=> (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@55) o_20@@15 $allocated) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@55) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@55) o_20@@15 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@55) o_20@@15 f_17))
)))
(assert (forall ((s@@29 T@Seq_16737) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_16737| s@@29))) (= (|Seq#Index_16737| s@@29 i@@9) x@@3)) (|Seq#Contains_6544| s@@29 x@@3))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_6544| s@@29 x@@3) (|Seq#Index_16737| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@10) x@@4)) (|Seq#Contains_2963| s@@30 x@@4))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@4) (|Seq#Index_2963| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_16737) (s1@@11 T@Seq_16737) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_16737| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16737| s0@@11 s1@@11))) (not (= (|Seq#Length_16737| s0@@11) (|Seq#Length_16737| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_16737| s0@@11 s1@@11))) (= (|Seq#Length_16737| s0@@11) (|Seq#Length_16737| s1@@11))) (= (|Seq#SkolemDiff_16737| s0@@11 s1@@11) (|Seq#SkolemDiff_16737| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_16737| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_16737| s0@@11 s1@@11) (|Seq#Length_16737| s0@@11))) (not (= (|Seq#Index_16737| s0@@11 (|Seq#SkolemDiff_16737| s0@@11 s1@@11)) (|Seq#Index_16737| s1@@11 (|Seq#SkolemDiff_16737| s0@@11 s1@@11))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_16737| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@4 T@Field_20399_20400) (v_1@@3 T@FrameType) (q T@Field_20399_20400) (w@@3 T@FrameType) (r T@Field_20399_20400) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@4 v_1@@3 q w@@3) (InsidePredicate_20399_20399 q w@@3 r u)) (InsidePredicate_20399_20399 p@@4 v_1@@3 r u))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@4 v_1@@3 q w@@3) (InsidePredicate_20399_20399 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_20399_20400) (v_1@@4 T@FrameType) (q@@0 T@Field_20399_20400) (w@@4 T@FrameType) (r@@0 T@Field_18098_18099) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_20399_18098 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_20399_18098 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_20399_18098 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_20399_20400) (v_1@@5 T@FrameType) (q@@1 T@Field_20399_20400) (w@@5 T@FrameType) (r@@1 T@Field_6539_18099) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_20399_10650 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_20399_10650 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_20399_10650 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_20399_20400) (v_1@@6 T@FrameType) (q@@2 T@Field_20399_20400) (w@@6 T@FrameType) (r@@2 T@Field_18908_18909) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_20399 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_20399_6659 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_20399_6659 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_20399 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_20399_6659 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_20399_20400) (v_1@@7 T@FrameType) (q@@3 T@Field_6539_18099) (w@@7 T@FrameType) (r@@3 T@Field_20399_20400) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10650_20399 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_20399_20399 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_10650_20399 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_20399_20400) (v_1@@8 T@FrameType) (q@@4 T@Field_6539_18099) (w@@8 T@FrameType) (r@@4 T@Field_18098_18099) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10650_18098 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_20399_18098 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_10650_18098 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_20399_20400) (v_1@@9 T@FrameType) (q@@5 T@Field_6539_18099) (w@@9 T@FrameType) (r@@5 T@Field_6539_18099) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10650_10650 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_20399_10650 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_10650_10650 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_20399_20400) (v_1@@10 T@FrameType) (q@@6 T@Field_6539_18099) (w@@10 T@FrameType) (r@@6 T@Field_18908_18909) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_10650 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10650_6659 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_20399_6659 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_10650 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_10650_6659 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_20399_20400) (v_1@@11 T@FrameType) (q@@7 T@Field_18098_18099) (w@@11 T@FrameType) (r@@7 T@Field_20399_20400) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_6698_20399 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_20399_20399 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_6698_20399 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_20399_20400) (v_1@@12 T@FrameType) (q@@8 T@Field_18098_18099) (w@@12 T@FrameType) (r@@8 T@Field_18098_18099) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_6698_18098 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_20399_18098 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_6698_18098 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_20399_20400) (v_1@@13 T@FrameType) (q@@9 T@Field_18098_18099) (w@@13 T@FrameType) (r@@9 T@Field_6539_18099) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_6698_10650 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_20399_10650 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_6698_10650 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_20399_20400) (v_1@@14 T@FrameType) (q@@10 T@Field_18098_18099) (w@@14 T@FrameType) (r@@10 T@Field_18908_18909) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_18098 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_6698_6659 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_20399_6659 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_18098 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_6698_6659 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_20399_20400) (v_1@@15 T@FrameType) (q@@11 T@Field_18908_18909) (w@@15 T@FrameType) (r@@11 T@Field_20399_20400) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_6659_20399 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_20399_20399 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_6659_20399 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_20399_20400) (v_1@@16 T@FrameType) (q@@12 T@Field_18908_18909) (w@@16 T@FrameType) (r@@12 T@Field_18098_18099) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_6659_18098 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_20399_18098 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_6659_18098 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_20399_20400) (v_1@@17 T@FrameType) (q@@13 T@Field_18908_18909) (w@@17 T@FrameType) (r@@13 T@Field_6539_18099) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_6659_10650 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_20399_10650 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_6659_10650 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_20399_20400) (v_1@@18 T@FrameType) (q@@14 T@Field_18908_18909) (w@@18 T@FrameType) (r@@14 T@Field_18908_18909) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_20399_6659 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_6659_6659 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_20399_6659 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20399_6659 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_6659_6659 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_18908_18909) (v_1@@19 T@FrameType) (q@@15 T@Field_20399_20400) (w@@19 T@FrameType) (r@@15 T@Field_20399_20400) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_20399_20399 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_6659_20399 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_20399_20399 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_18908_18909) (v_1@@20 T@FrameType) (q@@16 T@Field_20399_20400) (w@@20 T@FrameType) (r@@16 T@Field_18098_18099) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_20399_18098 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_6659_18098 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_20399_18098 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_18908_18909) (v_1@@21 T@FrameType) (q@@17 T@Field_20399_20400) (w@@21 T@FrameType) (r@@17 T@Field_6539_18099) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_20399_10650 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_6659_10650 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_20399_10650 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_18908_18909) (v_1@@22 T@FrameType) (q@@18 T@Field_20399_20400) (w@@22 T@FrameType) (r@@18 T@Field_18908_18909) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_20399 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_20399_6659 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_6659_6659 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_20399 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_20399_6659 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_18908_18909) (v_1@@23 T@FrameType) (q@@19 T@Field_6539_18099) (w@@23 T@FrameType) (r@@19 T@Field_20399_20400) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10650_20399 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_6659_20399 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_10650_20399 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_18908_18909) (v_1@@24 T@FrameType) (q@@20 T@Field_6539_18099) (w@@24 T@FrameType) (r@@20 T@Field_18098_18099) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10650_18098 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_6659_18098 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_10650_18098 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_18908_18909) (v_1@@25 T@FrameType) (q@@21 T@Field_6539_18099) (w@@25 T@FrameType) (r@@21 T@Field_6539_18099) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10650_10650 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_6659_10650 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_10650_10650 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_18908_18909) (v_1@@26 T@FrameType) (q@@22 T@Field_6539_18099) (w@@26 T@FrameType) (r@@22 T@Field_18908_18909) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_10650 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10650_6659 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_6659_6659 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_10650 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_10650_6659 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_18908_18909) (v_1@@27 T@FrameType) (q@@23 T@Field_18098_18099) (w@@27 T@FrameType) (r@@23 T@Field_20399_20400) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_6698_20399 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_6659_20399 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_6698_20399 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_18908_18909) (v_1@@28 T@FrameType) (q@@24 T@Field_18098_18099) (w@@28 T@FrameType) (r@@24 T@Field_18098_18099) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_6698_18098 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_6659_18098 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_6698_18098 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_18908_18909) (v_1@@29 T@FrameType) (q@@25 T@Field_18098_18099) (w@@29 T@FrameType) (r@@25 T@Field_6539_18099) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_6698_10650 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_6659_10650 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_6698_10650 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_18908_18909) (v_1@@30 T@FrameType) (q@@26 T@Field_18098_18099) (w@@30 T@FrameType) (r@@26 T@Field_18908_18909) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_18098 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_6698_6659 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_6659_6659 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_18098 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_6698_6659 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_18908_18909) (v_1@@31 T@FrameType) (q@@27 T@Field_18908_18909) (w@@31 T@FrameType) (r@@27 T@Field_20399_20400) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_6659_20399 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_6659_20399 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_6659_20399 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_18908_18909) (v_1@@32 T@FrameType) (q@@28 T@Field_18908_18909) (w@@32 T@FrameType) (r@@28 T@Field_18098_18099) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_6659_18098 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_6659_18098 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_6659_18098 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_18908_18909) (v_1@@33 T@FrameType) (q@@29 T@Field_18908_18909) (w@@33 T@FrameType) (r@@29 T@Field_6539_18099) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_6659_10650 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_6659_10650 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_6659_10650 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_18908_18909) (v_1@@34 T@FrameType) (q@@30 T@Field_18908_18909) (w@@34 T@FrameType) (r@@30 T@Field_18908_18909) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_6659_6659 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_6659_6659 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_6659_6659 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6659_6659 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_6659_6659 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_6539_18099) (v_1@@35 T@FrameType) (q@@31 T@Field_20399_20400) (w@@35 T@FrameType) (r@@31 T@Field_20399_20400) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_20399_20399 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_10650_20399 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_20399_20399 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_6539_18099) (v_1@@36 T@FrameType) (q@@32 T@Field_20399_20400) (w@@36 T@FrameType) (r@@32 T@Field_18098_18099) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_20399_18098 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_10650_18098 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_20399_18098 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_6539_18099) (v_1@@37 T@FrameType) (q@@33 T@Field_20399_20400) (w@@37 T@FrameType) (r@@33 T@Field_6539_18099) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_20399_10650 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_10650_10650 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_20399_10650 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_6539_18099) (v_1@@38 T@FrameType) (q@@34 T@Field_20399_20400) (w@@38 T@FrameType) (r@@34 T@Field_18908_18909) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_20399 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_20399_6659 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_10650_6659 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_20399 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_20399_6659 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_6539_18099) (v_1@@39 T@FrameType) (q@@35 T@Field_6539_18099) (w@@39 T@FrameType) (r@@35 T@Field_20399_20400) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10650_20399 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_10650_20399 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_10650_20399 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_6539_18099) (v_1@@40 T@FrameType) (q@@36 T@Field_6539_18099) (w@@40 T@FrameType) (r@@36 T@Field_18098_18099) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10650_18098 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_10650_18098 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_10650_18098 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_6539_18099) (v_1@@41 T@FrameType) (q@@37 T@Field_6539_18099) (w@@41 T@FrameType) (r@@37 T@Field_6539_18099) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10650_10650 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_10650_10650 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_10650_10650 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_6539_18099) (v_1@@42 T@FrameType) (q@@38 T@Field_6539_18099) (w@@42 T@FrameType) (r@@38 T@Field_18908_18909) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_10650 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10650_6659 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_10650_6659 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_10650 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_10650_6659 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_6539_18099) (v_1@@43 T@FrameType) (q@@39 T@Field_18098_18099) (w@@43 T@FrameType) (r@@39 T@Field_20399_20400) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_6698_20399 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_10650_20399 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_6698_20399 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_6539_18099) (v_1@@44 T@FrameType) (q@@40 T@Field_18098_18099) (w@@44 T@FrameType) (r@@40 T@Field_18098_18099) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_6698_18098 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_10650_18098 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_6698_18098 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_6539_18099) (v_1@@45 T@FrameType) (q@@41 T@Field_18098_18099) (w@@45 T@FrameType) (r@@41 T@Field_6539_18099) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_6698_10650 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_10650_10650 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_6698_10650 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_6539_18099) (v_1@@46 T@FrameType) (q@@42 T@Field_18098_18099) (w@@46 T@FrameType) (r@@42 T@Field_18908_18909) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_18098 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_6698_6659 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_10650_6659 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_18098 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_6698_6659 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_6539_18099) (v_1@@47 T@FrameType) (q@@43 T@Field_18908_18909) (w@@47 T@FrameType) (r@@43 T@Field_20399_20400) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_6659_20399 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_10650_20399 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_6659_20399 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_6539_18099) (v_1@@48 T@FrameType) (q@@44 T@Field_18908_18909) (w@@48 T@FrameType) (r@@44 T@Field_18098_18099) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_6659_18098 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_10650_18098 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_6659_18098 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_6539_18099) (v_1@@49 T@FrameType) (q@@45 T@Field_18908_18909) (w@@49 T@FrameType) (r@@45 T@Field_6539_18099) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_6659_10650 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_10650_10650 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_6659_10650 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_6539_18099) (v_1@@50 T@FrameType) (q@@46 T@Field_18908_18909) (w@@50 T@FrameType) (r@@46 T@Field_18908_18909) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_10650_6659 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_6659_6659 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_10650_6659 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10650_6659 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_6659_6659 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_18098_18099) (v_1@@51 T@FrameType) (q@@47 T@Field_20399_20400) (w@@51 T@FrameType) (r@@47 T@Field_20399_20400) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_20399_20399 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_6698_20399 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_20399_20399 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_18098_18099) (v_1@@52 T@FrameType) (q@@48 T@Field_20399_20400) (w@@52 T@FrameType) (r@@48 T@Field_18098_18099) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_20399_18098 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_6698_18098 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_20399_18098 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_18098_18099) (v_1@@53 T@FrameType) (q@@49 T@Field_20399_20400) (w@@53 T@FrameType) (r@@49 T@Field_6539_18099) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_20399_10650 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_6698_10650 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_20399_10650 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_18098_18099) (v_1@@54 T@FrameType) (q@@50 T@Field_20399_20400) (w@@54 T@FrameType) (r@@50 T@Field_18908_18909) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_20399 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_20399_6659 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_6698_6659 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_20399 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_20399_6659 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_18098_18099) (v_1@@55 T@FrameType) (q@@51 T@Field_6539_18099) (w@@55 T@FrameType) (r@@51 T@Field_20399_20400) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10650_20399 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_6698_20399 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_10650_20399 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_18098_18099) (v_1@@56 T@FrameType) (q@@52 T@Field_6539_18099) (w@@56 T@FrameType) (r@@52 T@Field_18098_18099) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10650_18098 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_6698_18098 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_10650_18098 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_18098_18099) (v_1@@57 T@FrameType) (q@@53 T@Field_6539_18099) (w@@57 T@FrameType) (r@@53 T@Field_6539_18099) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10650_10650 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_6698_10650 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_10650_10650 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_18098_18099) (v_1@@58 T@FrameType) (q@@54 T@Field_6539_18099) (w@@58 T@FrameType) (r@@54 T@Field_18908_18909) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_10650 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10650_6659 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_6698_6659 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_10650 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_10650_6659 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_18098_18099) (v_1@@59 T@FrameType) (q@@55 T@Field_18098_18099) (w@@59 T@FrameType) (r@@55 T@Field_20399_20400) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_6698_20399 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_6698_20399 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_6698_20399 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_18098_18099) (v_1@@60 T@FrameType) (q@@56 T@Field_18098_18099) (w@@60 T@FrameType) (r@@56 T@Field_18098_18099) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_6698_18098 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_6698_18098 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_6698_18098 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_18098_18099) (v_1@@61 T@FrameType) (q@@57 T@Field_18098_18099) (w@@61 T@FrameType) (r@@57 T@Field_6539_18099) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_6698_10650 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_6698_10650 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_6698_10650 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_18098_18099) (v_1@@62 T@FrameType) (q@@58 T@Field_18098_18099) (w@@62 T@FrameType) (r@@58 T@Field_18908_18909) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_18098 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_6698_6659 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_6698_6659 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_18098 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_6698_6659 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_18098_18099) (v_1@@63 T@FrameType) (q@@59 T@Field_18908_18909) (w@@63 T@FrameType) (r@@59 T@Field_20399_20400) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_6659_20399 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_6698_20399 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_6659_20399 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_18098_18099) (v_1@@64 T@FrameType) (q@@60 T@Field_18908_18909) (w@@64 T@FrameType) (r@@60 T@Field_18098_18099) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_6659_18098 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_6698_18098 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_6659_18098 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_18098_18099) (v_1@@65 T@FrameType) (q@@61 T@Field_18908_18909) (w@@65 T@FrameType) (r@@61 T@Field_6539_18099) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_6659_10650 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_6698_10650 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_6659_10650 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_18098_18099) (v_1@@66 T@FrameType) (q@@62 T@Field_18908_18909) (w@@66 T@FrameType) (r@@62 T@Field_18908_18909) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_6698_6659 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_6659_6659 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_6698_6659 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6698_6659 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_6659_6659 q@@62 w@@66 r@@62 u@@62))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_10590) (ExhaleHeap@@25 T@PolymorphicMapType_10590) (Mask@@62 T@PolymorphicMapType_10611) (pm_f_9@@7 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@25 Mask@@62) (=> (and (HasDirectPerm_20399_18099 Mask@@62 null pm_f_9@@7) (IsPredicateField_6635_6636 pm_f_9@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24@@15 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9 f_24@@15) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@56) o2_9 f_24@@15) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9 f_24@@15))
)) (forall ((o2_9@@0 T@Ref) (f_24@@16 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@0 f_24@@16) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@56) o2_9@@0 f_24@@16) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@0 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@0 f_24@@16))
))) (forall ((o2_9@@1 T@Ref) (f_24@@17 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@1 f_24@@17) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@56) o2_9@@1 f_24@@17) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@1 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@1 f_24@@17))
))) (forall ((o2_9@@2 T@Ref) (f_24@@18 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@2 f_24@@18) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@56) o2_9@@2 f_24@@18) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@2 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@2 f_24@@18))
))) (forall ((o2_9@@3 T@Ref) (f_24@@19 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@3 f_24@@19) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@3 f_24@@19) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@3 f_24@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@3 f_24@@19))
))) (forall ((o2_9@@4 T@Ref) (f_24@@20 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@4 f_24@@20) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@56) o2_9@@4 f_24@@20) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@4 f_24@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@4 f_24@@20))
))) (forall ((o2_9@@5 T@Ref) (f_24@@21 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@5 f_24@@21) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@56) o2_9@@5 f_24@@21) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@5 f_24@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@5 f_24@@21))
))) (forall ((o2_9@@6 T@Ref) (f_24@@22 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@6 f_24@@22) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@56) o2_9@@6 f_24@@22) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@6 f_24@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@6 f_24@@22))
))) (forall ((o2_9@@7 T@Ref) (f_24@@23 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@7 f_24@@23) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@7 f_24@@23) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@7 f_24@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@7 f_24@@23))
))) (forall ((o2_9@@8 T@Ref) (f_24@@24 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@8 f_24@@24) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@56) o2_9@@8 f_24@@24) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@8 f_24@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@8 f_24@@24))
))) (forall ((o2_9@@9 T@Ref) (f_24@@25 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@9 f_24@@25) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@56) o2_9@@9 f_24@@25) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@9 f_24@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@9 f_24@@25))
))) (forall ((o2_9@@10 T@Ref) (f_24@@26 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@10 f_24@@26) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@56) o2_9@@10 f_24@@26) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@10 f_24@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@10 f_24@@26))
))) (forall ((o2_9@@11 T@Ref) (f_24@@27 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@11 f_24@@27) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@56) o2_9@@11 f_24@@27) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@11 f_24@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@11 f_24@@27))
))) (forall ((o2_9@@12 T@Ref) (f_24@@28 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@12 f_24@@28) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@56) o2_9@@12 f_24@@28) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@12 f_24@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@12 f_24@@28))
))) (forall ((o2_9@@13 T@Ref) (f_24@@29 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@13 f_24@@29) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@56) o2_9@@13 f_24@@29) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@13 f_24@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@13 f_24@@29))
))) (forall ((o2_9@@14 T@Ref) (f_24@@30 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) null (PredicateMaskField_6635 pm_f_9@@7))) o2_9@@14 f_24@@30) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@56) o2_9@@14 f_24@@30) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@14 f_24@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@25) o2_9@@14 f_24@@30))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@25 Mask@@62) (IsPredicateField_6635_6636 pm_f_9@@7))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_10590) (ExhaleHeap@@26 T@PolymorphicMapType_10590) (Mask@@63 T@PolymorphicMapType_10611) (pm_f_9@@8 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@26 Mask@@63) (=> (and (HasDirectPerm_18908_18099 Mask@@63 null pm_f_9@@8) (IsPredicateField_6659_6660 pm_f_9@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@15 T@Ref) (f_24@@31 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@15 f_24@@31) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@57) o2_9@@15 f_24@@31) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@15 f_24@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@15 f_24@@31))
)) (forall ((o2_9@@16 T@Ref) (f_24@@32 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@16 f_24@@32) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@57) o2_9@@16 f_24@@32) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@16 f_24@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@16 f_24@@32))
))) (forall ((o2_9@@17 T@Ref) (f_24@@33 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@17 f_24@@33) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@57) o2_9@@17 f_24@@33) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@17 f_24@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@17 f_24@@33))
))) (forall ((o2_9@@18 T@Ref) (f_24@@34 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@18 f_24@@34) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@57) o2_9@@18 f_24@@34) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@18 f_24@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@18 f_24@@34))
))) (forall ((o2_9@@19 T@Ref) (f_24@@35 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@19 f_24@@35) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@19 f_24@@35) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@19 f_24@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@19 f_24@@35))
))) (forall ((o2_9@@20 T@Ref) (f_24@@36 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@20 f_24@@36) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@57) o2_9@@20 f_24@@36) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@20 f_24@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@20 f_24@@36))
))) (forall ((o2_9@@21 T@Ref) (f_24@@37 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@21 f_24@@37) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@57) o2_9@@21 f_24@@37) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@21 f_24@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@21 f_24@@37))
))) (forall ((o2_9@@22 T@Ref) (f_24@@38 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@22 f_24@@38) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@57) o2_9@@22 f_24@@38) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@22 f_24@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@22 f_24@@38))
))) (forall ((o2_9@@23 T@Ref) (f_24@@39 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@23 f_24@@39) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@23 f_24@@39) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@23 f_24@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@23 f_24@@39))
))) (forall ((o2_9@@24 T@Ref) (f_24@@40 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@24 f_24@@40) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@57) o2_9@@24 f_24@@40) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@24 f_24@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@24 f_24@@40))
))) (forall ((o2_9@@25 T@Ref) (f_24@@41 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@25 f_24@@41) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@57) o2_9@@25 f_24@@41) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@25 f_24@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@25 f_24@@41))
))) (forall ((o2_9@@26 T@Ref) (f_24@@42 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@26 f_24@@42) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) o2_9@@26 f_24@@42) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@26 f_24@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@26 f_24@@42))
))) (forall ((o2_9@@27 T@Ref) (f_24@@43 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@27 f_24@@43) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@57) o2_9@@27 f_24@@43) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@27 f_24@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@27 f_24@@43))
))) (forall ((o2_9@@28 T@Ref) (f_24@@44 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@28 f_24@@44) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@57) o2_9@@28 f_24@@44) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@28 f_24@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@28 f_24@@44))
))) (forall ((o2_9@@29 T@Ref) (f_24@@45 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@29 f_24@@45) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@57) o2_9@@29 f_24@@45) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@29 f_24@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@29 f_24@@45))
))) (forall ((o2_9@@30 T@Ref) (f_24@@46 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@57) null (PredicateMaskField_6659 pm_f_9@@8))) o2_9@@30 f_24@@46) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@57) o2_9@@30 f_24@@46) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@30 f_24@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@26) o2_9@@30 f_24@@46))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@26 Mask@@63) (IsPredicateField_6659_6660 pm_f_9@@8))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_10590) (ExhaleHeap@@27 T@PolymorphicMapType_10590) (Mask@@64 T@PolymorphicMapType_10611) (pm_f_9@@9 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@27 Mask@@64) (=> (and (HasDirectPerm_18098_18099 Mask@@64 null pm_f_9@@9) (IsPredicateField_6698_6699 pm_f_9@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@31 T@Ref) (f_24@@47 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@31 f_24@@47) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@58) o2_9@@31 f_24@@47) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@31 f_24@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@31 f_24@@47))
)) (forall ((o2_9@@32 T@Ref) (f_24@@48 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@32 f_24@@48) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@58) o2_9@@32 f_24@@48) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@32 f_24@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@32 f_24@@48))
))) (forall ((o2_9@@33 T@Ref) (f_24@@49 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@33 f_24@@49) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@58) o2_9@@33 f_24@@49) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@33 f_24@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@33 f_24@@49))
))) (forall ((o2_9@@34 T@Ref) (f_24@@50 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@34 f_24@@50) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@58) o2_9@@34 f_24@@50) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@34 f_24@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@34 f_24@@50))
))) (forall ((o2_9@@35 T@Ref) (f_24@@51 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@35 f_24@@51) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@35 f_24@@51) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@35 f_24@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@35 f_24@@51))
))) (forall ((o2_9@@36 T@Ref) (f_24@@52 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@36 f_24@@52) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@58) o2_9@@36 f_24@@52) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@36 f_24@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@36 f_24@@52))
))) (forall ((o2_9@@37 T@Ref) (f_24@@53 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@37 f_24@@53) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@58) o2_9@@37 f_24@@53) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@37 f_24@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@37 f_24@@53))
))) (forall ((o2_9@@38 T@Ref) (f_24@@54 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@38 f_24@@54) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) o2_9@@38 f_24@@54) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@38 f_24@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@38 f_24@@54))
))) (forall ((o2_9@@39 T@Ref) (f_24@@55 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@39 f_24@@55) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@39 f_24@@55) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@39 f_24@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@39 f_24@@55))
))) (forall ((o2_9@@40 T@Ref) (f_24@@56 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@40 f_24@@56) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@58) o2_9@@40 f_24@@56) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@40 f_24@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@40 f_24@@56))
))) (forall ((o2_9@@41 T@Ref) (f_24@@57 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@41 f_24@@57) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@58) o2_9@@41 f_24@@57) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@41 f_24@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@41 f_24@@57))
))) (forall ((o2_9@@42 T@Ref) (f_24@@58 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@42 f_24@@58) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@58) o2_9@@42 f_24@@58) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@42 f_24@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@42 f_24@@58))
))) (forall ((o2_9@@43 T@Ref) (f_24@@59 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@43 f_24@@59) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@58) o2_9@@43 f_24@@59) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@43 f_24@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@43 f_24@@59))
))) (forall ((o2_9@@44 T@Ref) (f_24@@60 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@44 f_24@@60) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@58) o2_9@@44 f_24@@60) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@44 f_24@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@44 f_24@@60))
))) (forall ((o2_9@@45 T@Ref) (f_24@@61 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@45 f_24@@61) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@58) o2_9@@45 f_24@@61) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@45 f_24@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@45 f_24@@61))
))) (forall ((o2_9@@46 T@Ref) (f_24@@62 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@58) null (PredicateMaskField_6698 pm_f_9@@9))) o2_9@@46 f_24@@62) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@58) o2_9@@46 f_24@@62) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@46 f_24@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@27) o2_9@@46 f_24@@62))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@27 Mask@@64) (IsPredicateField_6698_6699 pm_f_9@@9))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_10590) (ExhaleHeap@@28 T@PolymorphicMapType_10590) (Mask@@65 T@PolymorphicMapType_10611) (pm_f_9@@10 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@28 Mask@@65) (=> (and (HasDirectPerm_6539_18099 Mask@@65 null pm_f_9@@10) (IsPredicateField_6539_34013 pm_f_9@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@47 T@Ref) (f_24@@63 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@47 f_24@@63) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@59) o2_9@@47 f_24@@63) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@47 f_24@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@47 f_24@@63))
)) (forall ((o2_9@@48 T@Ref) (f_24@@64 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@48 f_24@@64) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@59) o2_9@@48 f_24@@64) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@48 f_24@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@48 f_24@@64))
))) (forall ((o2_9@@49 T@Ref) (f_24@@65 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@49 f_24@@65) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@59) o2_9@@49 f_24@@65) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@49 f_24@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@49 f_24@@65))
))) (forall ((o2_9@@50 T@Ref) (f_24@@66 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@50 f_24@@66) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) o2_9@@50 f_24@@66) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@50 f_24@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@50 f_24@@66))
))) (forall ((o2_9@@51 T@Ref) (f_24@@67 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@51 f_24@@67) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@51 f_24@@67) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@51 f_24@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@51 f_24@@67))
))) (forall ((o2_9@@52 T@Ref) (f_24@@68 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@52 f_24@@68) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@59) o2_9@@52 f_24@@68) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@52 f_24@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@52 f_24@@68))
))) (forall ((o2_9@@53 T@Ref) (f_24@@69 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@53 f_24@@69) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@59) o2_9@@53 f_24@@69) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@53 f_24@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@53 f_24@@69))
))) (forall ((o2_9@@54 T@Ref) (f_24@@70 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@54 f_24@@70) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@59) o2_9@@54 f_24@@70) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@54 f_24@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@54 f_24@@70))
))) (forall ((o2_9@@55 T@Ref) (f_24@@71 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@55 f_24@@71) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@55 f_24@@71) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@55 f_24@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@55 f_24@@71))
))) (forall ((o2_9@@56 T@Ref) (f_24@@72 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@56 f_24@@72) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@59) o2_9@@56 f_24@@72) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@56 f_24@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@56 f_24@@72))
))) (forall ((o2_9@@57 T@Ref) (f_24@@73 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@57 f_24@@73) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@59) o2_9@@57 f_24@@73) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@57 f_24@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@57 f_24@@73))
))) (forall ((o2_9@@58 T@Ref) (f_24@@74 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@58 f_24@@74) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@59) o2_9@@58 f_24@@74) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@58 f_24@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@58 f_24@@74))
))) (forall ((o2_9@@59 T@Ref) (f_24@@75 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@59 f_24@@75) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@59) o2_9@@59 f_24@@75) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@59 f_24@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@59 f_24@@75))
))) (forall ((o2_9@@60 T@Ref) (f_24@@76 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@60 f_24@@76) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@59) o2_9@@60 f_24@@76) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@60 f_24@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@60 f_24@@76))
))) (forall ((o2_9@@61 T@Ref) (f_24@@77 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@61 f_24@@77) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@59) o2_9@@61 f_24@@77) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@61 f_24@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@61 f_24@@77))
))) (forall ((o2_9@@62 T@Ref) (f_24@@78 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@59) null (PredicateMaskField_6539 pm_f_9@@10))) o2_9@@62 f_24@@78) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@59) o2_9@@62 f_24@@78) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@62 f_24@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@28) o2_9@@62 f_24@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@28 Mask@@65) (IsPredicateField_6539_34013 pm_f_9@@10))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_10590) (ExhaleHeap@@29 T@PolymorphicMapType_10590) (Mask@@66 T@PolymorphicMapType_10611) (pm_f_9@@11 T@Field_20399_20400) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@29 Mask@@66) (=> (and (HasDirectPerm_20399_18099 Mask@@66 null pm_f_9@@11) (IsWandField_20399_40925 pm_f_9@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@63 T@Ref) (f_24@@79 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@63 f_24@@79) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@60) o2_9@@63 f_24@@79) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@63 f_24@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@63 f_24@@79))
)) (forall ((o2_9@@64 T@Ref) (f_24@@80 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@64 f_24@@80) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@60) o2_9@@64 f_24@@80) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@64 f_24@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@64 f_24@@80))
))) (forall ((o2_9@@65 T@Ref) (f_24@@81 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@65 f_24@@81) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@60) o2_9@@65 f_24@@81) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@65 f_24@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@65 f_24@@81))
))) (forall ((o2_9@@66 T@Ref) (f_24@@82 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@66 f_24@@82) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@60) o2_9@@66 f_24@@82) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@66 f_24@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@66 f_24@@82))
))) (forall ((o2_9@@67 T@Ref) (f_24@@83 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@67 f_24@@83) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@67 f_24@@83) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@67 f_24@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@67 f_24@@83))
))) (forall ((o2_9@@68 T@Ref) (f_24@@84 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@68 f_24@@84) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@60) o2_9@@68 f_24@@84) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@68 f_24@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@68 f_24@@84))
))) (forall ((o2_9@@69 T@Ref) (f_24@@85 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@69 f_24@@85) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@60) o2_9@@69 f_24@@85) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@69 f_24@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@69 f_24@@85))
))) (forall ((o2_9@@70 T@Ref) (f_24@@86 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@70 f_24@@86) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@60) o2_9@@70 f_24@@86) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@70 f_24@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@70 f_24@@86))
))) (forall ((o2_9@@71 T@Ref) (f_24@@87 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@71 f_24@@87) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@71 f_24@@87) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@71 f_24@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@71 f_24@@87))
))) (forall ((o2_9@@72 T@Ref) (f_24@@88 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@72 f_24@@88) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@60) o2_9@@72 f_24@@88) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@72 f_24@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@72 f_24@@88))
))) (forall ((o2_9@@73 T@Ref) (f_24@@89 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@73 f_24@@89) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@60) o2_9@@73 f_24@@89) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@73 f_24@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@73 f_24@@89))
))) (forall ((o2_9@@74 T@Ref) (f_24@@90 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@74 f_24@@90) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@60) o2_9@@74 f_24@@90) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@74 f_24@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@74 f_24@@90))
))) (forall ((o2_9@@75 T@Ref) (f_24@@91 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@75 f_24@@91) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@60) o2_9@@75 f_24@@91) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@75 f_24@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@75 f_24@@91))
))) (forall ((o2_9@@76 T@Ref) (f_24@@92 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@76 f_24@@92) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@60) o2_9@@76 f_24@@92) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@76 f_24@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@76 f_24@@92))
))) (forall ((o2_9@@77 T@Ref) (f_24@@93 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@77 f_24@@93) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@60) o2_9@@77 f_24@@93) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@77 f_24@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@77 f_24@@93))
))) (forall ((o2_9@@78 T@Ref) (f_24@@94 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) null (WandMaskField_20399 pm_f_9@@11))) o2_9@@78 f_24@@94) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@60) o2_9@@78 f_24@@94) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@78 f_24@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@29) o2_9@@78 f_24@@94))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@29 Mask@@66) (IsWandField_20399_40925 pm_f_9@@11))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_10590) (ExhaleHeap@@30 T@PolymorphicMapType_10590) (Mask@@67 T@PolymorphicMapType_10611) (pm_f_9@@12 T@Field_18908_18909) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@30 Mask@@67) (=> (and (HasDirectPerm_18908_18099 Mask@@67 null pm_f_9@@12) (IsWandField_18908_40568 pm_f_9@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@79 T@Ref) (f_24@@95 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@79 f_24@@95) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@61) o2_9@@79 f_24@@95) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@79 f_24@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@79 f_24@@95))
)) (forall ((o2_9@@80 T@Ref) (f_24@@96 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@80 f_24@@96) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@61) o2_9@@80 f_24@@96) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@80 f_24@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@80 f_24@@96))
))) (forall ((o2_9@@81 T@Ref) (f_24@@97 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@81 f_24@@97) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@61) o2_9@@81 f_24@@97) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@81 f_24@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@81 f_24@@97))
))) (forall ((o2_9@@82 T@Ref) (f_24@@98 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@82 f_24@@98) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@61) o2_9@@82 f_24@@98) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@82 f_24@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@82 f_24@@98))
))) (forall ((o2_9@@83 T@Ref) (f_24@@99 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@83 f_24@@99) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@83 f_24@@99) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@83 f_24@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@83 f_24@@99))
))) (forall ((o2_9@@84 T@Ref) (f_24@@100 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@84 f_24@@100) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@61) o2_9@@84 f_24@@100) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@84 f_24@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@84 f_24@@100))
))) (forall ((o2_9@@85 T@Ref) (f_24@@101 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@85 f_24@@101) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@61) o2_9@@85 f_24@@101) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@85 f_24@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@85 f_24@@101))
))) (forall ((o2_9@@86 T@Ref) (f_24@@102 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@86 f_24@@102) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@61) o2_9@@86 f_24@@102) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@86 f_24@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@86 f_24@@102))
))) (forall ((o2_9@@87 T@Ref) (f_24@@103 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@87 f_24@@103) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@87 f_24@@103) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@87 f_24@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@87 f_24@@103))
))) (forall ((o2_9@@88 T@Ref) (f_24@@104 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@88 f_24@@104) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@61) o2_9@@88 f_24@@104) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@88 f_24@@104)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@88 f_24@@104))
))) (forall ((o2_9@@89 T@Ref) (f_24@@105 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@89 f_24@@105) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@61) o2_9@@89 f_24@@105) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@89 f_24@@105)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@89 f_24@@105))
))) (forall ((o2_9@@90 T@Ref) (f_24@@106 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@90 f_24@@106) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) o2_9@@90 f_24@@106) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@90 f_24@@106)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@90 f_24@@106))
))) (forall ((o2_9@@91 T@Ref) (f_24@@107 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@91 f_24@@107) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@61) o2_9@@91 f_24@@107) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@91 f_24@@107)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@91 f_24@@107))
))) (forall ((o2_9@@92 T@Ref) (f_24@@108 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@92 f_24@@108) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@61) o2_9@@92 f_24@@108) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@92 f_24@@108)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@92 f_24@@108))
))) (forall ((o2_9@@93 T@Ref) (f_24@@109 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@93 f_24@@109) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@61) o2_9@@93 f_24@@109) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@93 f_24@@109)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@93 f_24@@109))
))) (forall ((o2_9@@94 T@Ref) (f_24@@110 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@61) null (WandMaskField_18908 pm_f_9@@12))) o2_9@@94 f_24@@110) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@61) o2_9@@94 f_24@@110) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@94 f_24@@110)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@30) o2_9@@94 f_24@@110))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@30 Mask@@67) (IsWandField_18908_40568 pm_f_9@@12))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_10590) (ExhaleHeap@@31 T@PolymorphicMapType_10590) (Mask@@68 T@PolymorphicMapType_10611) (pm_f_9@@13 T@Field_18098_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@31 Mask@@68) (=> (and (HasDirectPerm_18098_18099 Mask@@68 null pm_f_9@@13) (IsWandField_18098_40211 pm_f_9@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@95 T@Ref) (f_24@@111 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@95 f_24@@111) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@62) o2_9@@95 f_24@@111) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@95 f_24@@111)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@95 f_24@@111))
)) (forall ((o2_9@@96 T@Ref) (f_24@@112 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@96 f_24@@112) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@62) o2_9@@96 f_24@@112) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@96 f_24@@112)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@96 f_24@@112))
))) (forall ((o2_9@@97 T@Ref) (f_24@@113 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@97 f_24@@113) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@62) o2_9@@97 f_24@@113) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@97 f_24@@113)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@97 f_24@@113))
))) (forall ((o2_9@@98 T@Ref) (f_24@@114 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@98 f_24@@114) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@62) o2_9@@98 f_24@@114) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@98 f_24@@114)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@98 f_24@@114))
))) (forall ((o2_9@@99 T@Ref) (f_24@@115 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@99 f_24@@115) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@99 f_24@@115) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@99 f_24@@115)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@99 f_24@@115))
))) (forall ((o2_9@@100 T@Ref) (f_24@@116 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@100 f_24@@116) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@62) o2_9@@100 f_24@@116) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@100 f_24@@116)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@100 f_24@@116))
))) (forall ((o2_9@@101 T@Ref) (f_24@@117 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@101 f_24@@117) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@62) o2_9@@101 f_24@@117) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@101 f_24@@117)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@101 f_24@@117))
))) (forall ((o2_9@@102 T@Ref) (f_24@@118 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@102 f_24@@118) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) o2_9@@102 f_24@@118) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@102 f_24@@118)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@102 f_24@@118))
))) (forall ((o2_9@@103 T@Ref) (f_24@@119 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@103 f_24@@119) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@103 f_24@@119) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@103 f_24@@119)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@103 f_24@@119))
))) (forall ((o2_9@@104 T@Ref) (f_24@@120 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@104 f_24@@120) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@62) o2_9@@104 f_24@@120) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@104 f_24@@120)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@104 f_24@@120))
))) (forall ((o2_9@@105 T@Ref) (f_24@@121 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@105 f_24@@121) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@62) o2_9@@105 f_24@@121) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@105 f_24@@121)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@105 f_24@@121))
))) (forall ((o2_9@@106 T@Ref) (f_24@@122 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@106 f_24@@122) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@62) o2_9@@106 f_24@@122) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@106 f_24@@122)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@106 f_24@@122))
))) (forall ((o2_9@@107 T@Ref) (f_24@@123 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@107 f_24@@123) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@62) o2_9@@107 f_24@@123) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@107 f_24@@123)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@107 f_24@@123))
))) (forall ((o2_9@@108 T@Ref) (f_24@@124 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@108 f_24@@124) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@62) o2_9@@108 f_24@@124) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@108 f_24@@124)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@108 f_24@@124))
))) (forall ((o2_9@@109 T@Ref) (f_24@@125 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@109 f_24@@125) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@62) o2_9@@109 f_24@@125) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@109 f_24@@125)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@109 f_24@@125))
))) (forall ((o2_9@@110 T@Ref) (f_24@@126 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@62) null (WandMaskField_18098 pm_f_9@@13))) o2_9@@110 f_24@@126) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@62) o2_9@@110 f_24@@126) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@110 f_24@@126)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@31) o2_9@@110 f_24@@126))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@31 Mask@@68) (IsWandField_18098_40211 pm_f_9@@13))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_10590) (ExhaleHeap@@32 T@PolymorphicMapType_10590) (Mask@@69 T@PolymorphicMapType_10611) (pm_f_9@@14 T@Field_6539_18099) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@32 Mask@@69) (=> (and (HasDirectPerm_6539_18099 Mask@@69 null pm_f_9@@14) (IsWandField_6539_39854 pm_f_9@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_9@@111 T@Ref) (f_24@@127 T@Field_10663_10664) ) (!  (=> (select (|PolymorphicMapType_11139_6539_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@111 f_24@@127) (= (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| Heap@@63) o2_9@@111 f_24@@127) (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@111 f_24@@127)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6338_6339#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@111 f_24@@127))
)) (forall ((o2_9@@112 T@Ref) (f_24@@128 T@Field_10650_53) ) (!  (=> (select (|PolymorphicMapType_11139_6539_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@112 f_24@@128) (= (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| Heap@@63) o2_9@@112 f_24@@128) (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@112 f_24@@128)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6335_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@112 f_24@@128))
))) (forall ((o2_9@@113 T@Ref) (f_24@@129 T@Field_6539_18099) ) (!  (=> (select (|PolymorphicMapType_11139_6539_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@113 f_24@@129) (= (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| Heap@@63) o2_9@@113 f_24@@129) (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@113 f_24@@129)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_18099#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@113 f_24@@129))
))) (forall ((o2_9@@114 T@Ref) (f_24@@130 T@Field_6539_21504) ) (!  (=> (select (|PolymorphicMapType_11139_6539_35934#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@114 f_24@@130) (= (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) o2_9@@114 f_24@@130) (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@114 f_24@@130)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@114 f_24@@130))
))) (forall ((o2_9@@115 T@Ref) (f_24@@131 T@Field_18098_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18098_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@115 f_24@@131) (= (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@115 f_24@@131) (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@115 f_24@@131)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@115 f_24@@131))
))) (forall ((o2_9@@116 T@Ref) (f_24@@132 T@Field_18098_53) ) (!  (=> (select (|PolymorphicMapType_11139_18098_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@116 f_24@@132) (= (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| Heap@@63) o2_9@@116 f_24@@132) (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@116 f_24@@132)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18098_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@116 f_24@@132))
))) (forall ((o2_9@@117 T@Ref) (f_24@@133 T@Field_18098_18099) ) (!  (=> (select (|PolymorphicMapType_11139_18098_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@117 f_24@@133) (= (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| Heap@@63) o2_9@@117 f_24@@133) (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@117 f_24@@133)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6698_6699#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@117 f_24@@133))
))) (forall ((o2_9@@118 T@Ref) (f_24@@134 T@Field_21499_21504) ) (!  (=> (select (|PolymorphicMapType_11139_18098_36784#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@118 f_24@@134) (= (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| Heap@@63) o2_9@@118 f_24@@134) (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@118 f_24@@134)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6702_21591#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@118 f_24@@134))
))) (forall ((o2_9@@119 T@Ref) (f_24@@135 T@Field_18908_6540) ) (!  (=> (select (|PolymorphicMapType_11139_18908_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@119 f_24@@135) (= (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@119 f_24@@135) (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@119 f_24@@135)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@119 f_24@@135))
))) (forall ((o2_9@@120 T@Ref) (f_24@@136 T@Field_18908_53) ) (!  (=> (select (|PolymorphicMapType_11139_18908_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@120 f_24@@136) (= (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| Heap@@63) o2_9@@120 f_24@@136) (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@120 f_24@@136)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_18908_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@120 f_24@@136))
))) (forall ((o2_9@@121 T@Ref) (f_24@@137 T@Field_18908_18909) ) (!  (=> (select (|PolymorphicMapType_11139_18908_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@121 f_24@@137) (= (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| Heap@@63) o2_9@@121 f_24@@137) (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@121 f_24@@137)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6659_6660#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@121 f_24@@137))
))) (forall ((o2_9@@122 T@Ref) (f_24@@138 T@Field_21888_21893) ) (!  (=> (select (|PolymorphicMapType_11139_18908_37634#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@122 f_24@@138) (= (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| Heap@@63) o2_9@@122 f_24@@138) (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@122 f_24@@138)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6663_21928#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@122 f_24@@138))
))) (forall ((o2_9@@123 T@Ref) (f_24@@139 T@Field_20399_6540) ) (!  (=> (select (|PolymorphicMapType_11139_20399_6540#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@123 f_24@@139) (= (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| Heap@@63) o2_9@@123 f_24@@139) (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@123 f_24@@139)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_6540#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@123 f_24@@139))
))) (forall ((o2_9@@124 T@Ref) (f_24@@140 T@Field_20399_53) ) (!  (=> (select (|PolymorphicMapType_11139_20399_53#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@124 f_24@@140) (= (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| Heap@@63) o2_9@@124 f_24@@140) (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@124 f_24@@140)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_53#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@124 f_24@@140))
))) (forall ((o2_9@@125 T@Ref) (f_24@@141 T@Field_20399_20400) ) (!  (=> (select (|PolymorphicMapType_11139_20399_18099#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@125 f_24@@141) (= (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| Heap@@63) o2_9@@125 f_24@@141) (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@125 f_24@@141)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_6635_6636#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@125 f_24@@141))
))) (forall ((o2_9@@126 T@Ref) (f_24@@142 T@Field_22275_22280) ) (!  (=> (select (|PolymorphicMapType_11139_20399_38484#PolymorphicMapType_11139| (select (|PolymorphicMapType_10590_6539_31033#PolymorphicMapType_10590| Heap@@63) null (WandMaskField_6539 pm_f_9@@14))) o2_9@@126 f_24@@142) (= (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| Heap@@63) o2_9@@126 f_24@@142) (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@126 f_24@@142)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10590_20399_33767#PolymorphicMapType_10590| ExhaleHeap@@32) o2_9@@126 f_24@@142))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@32 Mask@@69) (IsWandField_6539_39854 pm_f_9@@14))
)))
(assert (forall ((s@@31 T@Seq_16737) ) (!  (=> (= (|Seq#Length_16737| s@@31) 0) (= s@@31 |Seq#Empty_16737|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_16737| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_16737) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_16737| s@@33 n@@25) |Seq#Empty_16737|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_16737| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

